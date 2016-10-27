#!/usr/bin/env ruby
require 'pp'
require 'libeagle'
def method_names(obj)
  obj.public_methods.
      find_all { |m| m.to_s[/^.?object_/] }.
      map { |s| s.to_s.gsub(/=$/, "") }.sort.uniq
end
def property_names(obj)
  obj.public_methods.
      find_all { |m| m.to_s[/^.?attribute_/] }.
      map { |s| s.to_s.gsub(/.*attribute_([^=]*)=?/, "\\1") }.sort.uniq
end
def properties_to_hash(obj, properties = nil) 
  h = Hash.new
  if properties == nil then properties = property_names(obj) end
  properties.each do |p|
        method_object = obj.method( "attribute_#{p}".to_sym )
        v = method_object.call
        if v.to_s.match /^-?[0-9.]*$/ then v = v.to_f end
        h.store(p.to_sym, v)
  end
  puts h
  h      
end
def get_property(obj, name)
   begin
	 method_object = obj.method( "attribute_#{name}".to_sym )
	  method_object.call
	rescue
	  nil
	end
end
def object_list_names(obj)
  begin
    method_names(obj).map { |s| s.gsub(/^.?object_([^=]*)=?$/, "\\1") }
  rescue
    [] 
  end
end
"""                                                                         """
""" get_object_list ------------------------------------------------------- """
"""                                                                         """
def get_object_list(obj, list_name)
  obj.instance_variable_get "@object_"+list_name.to_s.gsub(/^:/, "")
end
def elements_to_hasharr(obj_list, with_ref = false)
  if not obj_list.is_a? Array then return [] end
  attribute_names = property_names(obj_list.first)
#pp attribute_names
  obj_list.map do |e|
    h = properties_to_hash(e, attribute_names)
    if with_ref then h[:ref] = e end
    h
  end
end
#def elements_to_hashtable(obj_list, with_ref = false)
#  attribute_names = property_names(obj_list.first)
#  ht = Hash.new
#  obj_list.each do |e|
#    begin
#      n = get_property(e, "name")
#    rescue
#      n = get_property(e, "part")
#    end
#    h = properties_to_hash(e, attribute_names)
#    if with_ref then h[:ref] = e end
#    ht.store(n, h)
#  end
#  ht
#end
#"""                                                                         """
""" get_subobj      ------------------------------------------------------- """
"""                                                                         """
def get_subobj(obj, *list_names)
  list_names.each do |list_name|
    list_name = list_name.to_s
    method_object = obj.method( "object_#{list_name}".to_sym )   
    obj = method_object.call
  end
  obj
end
def get_subobj_list(lobj, list_name)
  list_name = list_name.to_s
#  if list_name.end_with? "s" then list_name = list_name.chop end
#  begin
#    method_object = obj.method( "object_#{list_name}s".to_sym )
#    
#    lobj = method_object.call
#
    method_object = lobj.method( "object_#{list_name}".to_sym )
        lobj = method_object.call
#    pp method_names(lobj)
#    puts "get_subobj_list #{obj.to_s} #{list_name}: #{lobj.class}"
    if not lobj.instance_of? Enumerable then
      lobj = [ lobj ]
    end
#    objects = lobj.instance_variable_get "@object_"+list_name
    elements_to_hasharr(lobj)
#  rescue
#    []
#  end
end
def print_obj_tree(obj, s = "", n = "")
class_name = obj.class.to_s.gsub(/.*::/, "")
puts class_name
  eagle_obj = obj.class.to_s.match(/Eagle/) or obj.is_a? LibEagle::Base
  if obj.is_a? Array then
    obj.each do |c,i|
#      i = elements_to_hasharr(i)
      puts "#{s}/[#{c}]#{i}"
    end
  elsif obj.is_a? String or obj.is_a? Integer or obj.is_a? Float
    puts "#{s}/#{obj.to_s}"
  else
    id = get_subobj(obj, :id)
    s += "/#{obj.class}[@id=#{id}]"
    puts s
    #if n != "" then s += " (#{n})" end
     names = object_list_names(obj)
names.delete "id"
  if false and names.size == 1 then
    o = get_subobj(obj, names.first)
    if o.is_a? Array and o.size > 0 then
    h = elements_to_hasharr(o)
      pp h
#     print_obj_tree(h, s)
     end
  else
      names.each do |l|
      #if l == "id" then next end
          o = get_subobj(obj, l)
          if o != nil then print_obj_tree(o, s, l) end
      end
  end
  end
end
def put_array_hash(h, k, v) 
  if not h.has_key? k then
    h.store(k, [v])
  else
    if not h[k].include? v then
      h[k].push v
    end
  end
end
begin
  if ARGV.length == 0 then
    $stderr.puts "ERROR: No argument"
    exit 2
  end
  def read_schematic(file_name)
    eagle = LibEagle::Parser.parseFile(file_name)
    instance_hasharr = elements_to_hasharr get_subobj(eagle, :drawing, :schematic, :sheets, :sheet, :instances, :instance)
#     out = PP.pp(instance_hasharr, '')
#    puts "Instances: #{out}"
    File.write file_name.gsub(/\./, "_")+".xml",  eagle.saveXML
      return instance_hasharr
    end
    def read_board(file_name, instance_list)
       eagle = LibEagle::Parser.parseFile(file_name)
         elements_arr =  get_subobj(eagle, :drawing, :board, :elements, :element)
         signals_arr =  get_subobj(eagle, :drawing, :board, :signals, :signal)
         elements = elements_arr.map do |e|
	    name = e.attribute_name
            inst = instance_list.select { |i| i[:part] == name }.first
           h = { 
			 :name => name,
			 :x => (e.attribute_x = inst[:x].to_f),
			 :y => (e.attribute_y = inst[:y].to_f),
           }
#p = property_names(e)
            puts "Inst: #{h[:name]}"
		  h
         end
         signals = Hash.new
         signals_arr.each do |s|
		    signame = s.attribute_name
  #         property_names(s).each do |p|
		   siglists = Hash.new
		   object_list_names(s).each do |l|     
				ha = elements_to_hasharr( get_subobj(s, l) )      
				siglists.store(l.to_sym, ha)
			end
			signals.store(signame,  siglists)
   #	        put_array_hash (signals_by_name, s.attribute_name, 
         end
         pp signals
     #   out = PP.pp(elements_to_hasharr(elements_arr), '')
     #  puts "Elements: #{out}"
     elements
#    output_filename = file_name.gsub(/\./, "_")+".xml"
#    File.write output_filename,  eagle.saveXML
#    $stderr.puts "Output written to: #{output_filename}"
  end
    schematic_file = ARGV[0].gsub(/\.[^.]*$/, "")+".sch"
  instances = read_schematic(schematic_file)
move_cmds = []
  instances.each do |inst| 
       x = (inst[:x] / 25.4).round(3)
       y = (inst[:y] / 25.4).round(3)
      move_cmds.push "MOVE #{inst[:part]} (#{x} #{y}); "
  end
  puts move_cmds.join("; ")
     board_file = ARGV[0].gsub(/\.[^.]*$/, "")+".brd"
  elements = read_board(board_file, instances)
end