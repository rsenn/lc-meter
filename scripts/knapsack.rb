require 'optparse'

require "set"
require "pp"

class Item
  attr_accessor :name, :value

  def initialize(name, value)
    @name = name
    @value = value
  end
end

#
# Class that does the combinations
# 
class Combination
  def initialize(items = [])
    @items = items
  end

  def items
    @items.sort_by { |item| item.name }
  end

  def total_value
    @total_value ||= @items.inject(0) { |sum, item| sum + item.value }
  end
end


class Menu
  attr_reader :items, :combinations, :target_value

  def initialize(filename, target = "", must_occur = [], shouldnt_occur = [])
    unless File.exists?(filename)
      raise ArgumentError, "File #{filename} doesn't exist."
    end
    @filename = filename

    @combinations = Set.new
    @must_occur = []
    @shouldnt_occur = []

    parse_data
    
    puts "Submitted target: #{target}"
    if target != "" then @target_value = to_cents(target) end

  if must_occur.size > 0 then @must_occur = must_occur.map{ |o| to_cents(o) } end
  if shouldnt_occur.size > 0 then @shouldnt_occur = shouldnt_occur.map{ |o| to_cents(o) } end
  
    create_combinations
  end

def calculate_combinations(target = nil) 
  #@combinations = Set.new
  
  if not target.nil? then
   @target_value = to_cents(target.to_s)
  end
  c = create_combinations
#    pp c
  print_results c
end

def get_target
  to_amount(@target_value)
end

def print_results(comb = nil)
  #  output =  "Combinations which sum to #{to_amount(@target_value)}:"
  out = []

  (comb.nil? ? @combinations : comb).each_with_index do |combination, index|

    item_counts = Hash.new(0)
    combination.each do |item|
      item_counts[item] += 1
    end

    expects = true
    item_arr  = []
    amounts = []
    item_counts.each do |item, quantity|      
        #output_line.push("\t#{quantity} x #{to_amount(item.value)} #{item.name}")
        a = to_amount(item.value)
        item_arr.push "#{quantity}x#{a}"
        
        if not amounts.include? item.value then amounts.push item.value end

        end

        @must_occur.each do |o| 
           if not amounts.include? o then  expects = false end
        end
        @shouldnt_occur.each do |o|
          if amounts.include? o then  expects = false end
        end


         if not expects then next end      

          out.push "Combination [#{to_amount(@target_value)}] ##{index + 1}: "+item_arr.join(" + ")+" (set size=#{combination.size})"
        end
        out.join("\n")
      end

      private

      def parse_data
        items = []

        File.open(@filename).each do |line|
          if line.start_with?("#") or line.start_with?(";") then next end

          if @target_value.nil?
            @target_value = to_cents(line)
            raise ArgumentError, "Target value must be at least 0." if @target_value < 0
            
            puts "Target value: #{@target_value}"
          else
            name, value = line.split(",")
            value = to_cents(value)
            raise ArgumentError, "Value must be greater than 0." if value <= 0
            items << Item.new(name, value)
          end
        end

        @items = items.sort_by { |item| item.value }.reverse

    #pp @items
  end

  def to_cents(dollars)
    (dollars.delete("$").delete("V").to_f * 100).round(0)
  end

  def to_amount(cents)
    cents.to_f / 100
  end

  """ creates combinations """
  def create_combinations
    (0..(@items.count-1)).each do |index|
      find_combinations(@items[index], @items[index..-1], Combination.new([]))
    end
    c = @combinations
    @combinations = Set.new
    c
  end

  def find_combinations(next_item, items, combination)
    capacity = @target_value - combination.total_value

    if capacity == 0
      @combinations << combination.items
    elsif capacity > 0
      items = items.select { |item| item.value <= capacity }

      items.each do |item|
        items_with_next_item = combination.items.dup.push(next_item)
        next_combination = Combination.new(items_with_next_item)

        find_combinations(item, items, next_combination)
      end
    end
  end
end


begin
  options = {}
  options[:target] = []
  options[:expect] = []
  options[:exclude] = []  
  
  OptionParser.new do |opts|
    opts.banner = "Usage: main.rb [options]"
    opts.separator ""
    opts.separator "Specific options:"
    opts.on("-v", "--[no-]verbose", "Run verbosely") do |v|  options[:verbose] = v   end
    opts.on("-x N,N", "--exclude", Array, "Values that mustn't occur") do |o| options[:exclude].concat o end
    opts.on("-e N,N", "--occur", Array, "Values that must occur") do |o| options[:expect].concat o end
    opts.on("-t N,N", "--target", Array, "Target value") do |t| options[:target].concat t end

    # No argument, shows at tail.  This will print an options summary.
    # Try it and see!
    opts.on_tail("-h", "--help", "Show this message") do
      puts opts
      exit
    end

  end.parse!

  p options
  file = ARGV.shift

  options[:target].concat ARGV

  targets = options[:target]

  menu = Menu.new(file, targets.size > 0 ? targets.first : "", options[:expect], options[:exclude])
rescue ArgumentError => error
  puts "There was an error with your input!"
  puts "\t#{error.message}"
end
  #puts menu.print_results
  
  if targets.size == 0 then
    targets.push menu.get_target.to_s
  end
  
  targets.map { |a| a.to_f.round(2) }.each do |t|
  
    begin
    
      puts "target: #{t}"
      o =  menu.calculate_combinations(t)
      t = (t + 0.1).round(1)
    
    end until o != "" or targets.size > 1
   if o != "" then puts o end
  
   
  end

