<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="7.2.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="2" name="Route2" color="1" fill="3" visible="no" active="no"/>
<layer number="3" name="Route3" color="4" fill="3" visible="no" active="no"/>
<layer number="4" name="Route4" color="1" fill="4" visible="no" active="no"/>
<layer number="5" name="Route5" color="4" fill="4" visible="no" active="no"/>
<layer number="6" name="Route6" color="1" fill="8" visible="no" active="no"/>
<layer number="7" name="Route7" color="4" fill="8" visible="no" active="no"/>
<layer number="8" name="Route8" color="1" fill="2" visible="no" active="no"/>
<layer number="9" name="Route9" color="4" fill="2" visible="no" active="no"/>
<layer number="10" name="Route10" color="1" fill="7" visible="no" active="no"/>
<layer number="11" name="Route11" color="4" fill="7" visible="no" active="no"/>
<layer number="12" name="Route12" color="1" fill="5" visible="no" active="no"/>
<layer number="13" name="Route13" color="4" fill="5" visible="no" active="no"/>
<layer number="14" name="Route14" color="1" fill="6" visible="no" active="no"/>
<layer number="15" name="Route15" color="4" fill="6" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="90" name="Modules" color="5" fill="10" visible="no" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="no" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
<layer number="99" name="SpiceOrder" color="5" fill="1" visible="no" active="yes"/>
<layer number="250" name="trash" color="7" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S" xrefpart="/%S.%C%R">
<libraries>
<library name="rcl">
<description>&lt;b&gt;Resistors, Capacitors, Inductors&lt;/b&gt;&lt;p&gt;
Based on the previous libraries:
&lt;ul&gt;
&lt;li&gt;r.lbr
&lt;li&gt;cap.lbr 
&lt;li&gt;cap-fe.lbr
&lt;li&gt;captant.lbr
&lt;li&gt;polcap.lbr
&lt;li&gt;ipc-smd.lbr
&lt;/ul&gt;
All SMD packages are defined according to the IPC specifications and  CECC&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;&lt;p&gt;
&lt;p&gt;
for Electrolyt Capacitors see also :&lt;p&gt;
www.bccomponents.com &lt;p&gt;
www.panasonic.com&lt;p&gt;
www.kemet.com&lt;p&gt;
http://www.secc.co.jp/pdf/os_e/2004/e_os_all.pdf &lt;b&gt;(SANYO)&lt;/b&gt;
&lt;p&gt;
for trimmer refence see : &lt;u&gt;www.electrospec-inc.com/cross_references/trimpotcrossref.asp&lt;/u&gt;&lt;p&gt;

&lt;table border=0 cellspacing=0 cellpadding=0 width="100%" cellpaddding=0&gt;
&lt;tr valign="top"&gt;

&lt;! &lt;td width="10"&gt;&amp;nbsp;&lt;/td&gt;
&lt;td width="90%"&gt;

&lt;b&gt;&lt;font color="#0000FF" size="4"&gt;TRIM-POT CROSS REFERENCE&lt;/font&gt;&lt;/b&gt;
&lt;P&gt;
&lt;TABLE BORDER=0 CELLSPACING=1 CELLPADDING=2&gt;
  &lt;TR&gt;
    &lt;TD COLSPAN=8&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;RECTANGULAR MULTI-TURN&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;B&gt;
      &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;BOURNS&lt;/FONT&gt;
      &lt;/B&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;B&gt;
      &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;BI&amp;nbsp;TECH&lt;/FONT&gt;
      &lt;/B&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;B&gt;
      &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;DALE-VISHAY&lt;/FONT&gt;
      &lt;/B&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;B&gt;
      &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;PHILIPS/MEPCO&lt;/FONT&gt;
      &lt;/B&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;B&gt;
      &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;MURATA&lt;/FONT&gt;
      &lt;/B&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;B&gt;
      &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;PANASONIC&lt;/FONT&gt;
      &lt;/B&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;B&gt;
      &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;SPECTROL&lt;/FONT&gt;
      &lt;/B&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;B&gt;
      &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;MILSPEC&lt;/FONT&gt;
      &lt;/B&gt;
    &lt;/TD&gt;&lt;TD&gt;&amp;nbsp;&lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3 &gt;
      3005P&lt;BR&gt;
      3006P&lt;BR&gt;
      3006W&lt;BR&gt;
      3006Y&lt;BR&gt;
      3009P&lt;BR&gt;
      3009W&lt;BR&gt;
      3009Y&lt;BR&gt;
      3057J&lt;BR&gt;
      3057L&lt;BR&gt;
      3057P&lt;BR&gt;
      3057Y&lt;BR&gt;
      3059J&lt;BR&gt;
      3059L&lt;BR&gt;
      3059P&lt;BR&gt;
      3059Y&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      89P&lt;BR&gt;
      89W&lt;BR&gt;
      89X&lt;BR&gt;
      89PH&lt;BR&gt;
      76P&lt;BR&gt;
      89XH&lt;BR&gt;
      78SLT&lt;BR&gt;
      78L&amp;nbsp;ALT&lt;BR&gt;
      56P&amp;nbsp;ALT&lt;BR&gt;
      78P&amp;nbsp;ALT&lt;BR&gt;
      T8S&lt;BR&gt;
      78L&lt;BR&gt;
      56P&lt;BR&gt;
      78P&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      T18/784&lt;BR&gt;
      783&lt;BR&gt;
      781&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      2199&lt;BR&gt;
      1697/1897&lt;BR&gt;
      1680/1880&lt;BR&gt;
      2187&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      8035EKP/CT20/RJ-20P&lt;BR&gt;
      -&lt;BR&gt;
      RJ-20X&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      1211L&lt;BR&gt;
      8012EKQ&amp;nbsp;ALT&lt;BR&gt;
      8012EKR&amp;nbsp;ALT&lt;BR&gt;
      1211P&lt;BR&gt;
      8012EKJ&lt;BR&gt;
      8012EKL&lt;BR&gt;
      8012EKQ&lt;BR&gt;
      8012EKR&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      2101P&lt;BR&gt;
      2101W&lt;BR&gt;
      2101Y&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      2102L&lt;BR&gt;
      2102S&lt;BR&gt;
      2102Y&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      EVMCOG&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      43P&lt;BR&gt;
      43W&lt;BR&gt;
      43Y&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      40L&lt;BR&gt;
      40P&lt;BR&gt;
      40Y&lt;BR&gt;
      70Y-T602&lt;BR&gt;
      70L&lt;BR&gt;
      70P&lt;BR&gt;
      70Y&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      RT/RTR12&lt;BR&gt;
      RT/RTR12&lt;BR&gt;
      RT/RTR12&lt;BR&gt;
      -&lt;BR&gt;
      RJ/RJR12&lt;BR&gt;
      RJ/RJR12&lt;BR&gt;
      RJ/RJR12&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD COLSPAN=8&gt;&amp;nbsp;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD COLSPAN=8&gt;
      &lt;FONT SIZE=4 FACE=ARIAL&gt;&lt;B&gt;SQUARE MULTI-TURN&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
   &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BOURN&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BI&amp;nbsp;TECH&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;DALE-VISHAY&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PHILIPS/MEPCO&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;MURATA&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PANASONIC&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;SPECTROL&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;MILSPEC&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      3250L&lt;BR&gt;
      3250P&lt;BR&gt;
      3250W&lt;BR&gt;
      3250X&lt;BR&gt;
      3252P&lt;BR&gt;
      3252W&lt;BR&gt;
      3252X&lt;BR&gt;
      3260P&lt;BR&gt;
      3260W&lt;BR&gt;
      3260X&lt;BR&gt;
      3262P&lt;BR&gt;
      3262W&lt;BR&gt;
      3262X&lt;BR&gt;
      3266P&lt;BR&gt;
      3266W&lt;BR&gt;
      3266X&lt;BR&gt;
      3290H&lt;BR&gt;
      3290P&lt;BR&gt;
      3290W&lt;BR&gt;
      3292P&lt;BR&gt;
      3292W&lt;BR&gt;
      3292X&lt;BR&gt;
      3296P&lt;BR&gt;
      3296W&lt;BR&gt;
      3296X&lt;BR&gt;
      3296Y&lt;BR&gt;
      3296Z&lt;BR&gt;
      3299P&lt;BR&gt;
      3299W&lt;BR&gt;
      3299X&lt;BR&gt;
      3299Y&lt;BR&gt;
      3299Z&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      66P&amp;nbsp;ALT&lt;BR&gt;
      66W&amp;nbsp;ALT&lt;BR&gt;
      66X&amp;nbsp;ALT&lt;BR&gt;
      66P&amp;nbsp;ALT&lt;BR&gt;
      66W&amp;nbsp;ALT&lt;BR&gt;
      66X&amp;nbsp;ALT&lt;BR&gt;
      -&lt;BR&gt;
      64W&amp;nbsp;ALT&lt;BR&gt;
      -&lt;BR&gt;
      64P&amp;nbsp;ALT&lt;BR&gt;
      64W&amp;nbsp;ALT&lt;BR&gt;
      64X&amp;nbsp;ALT&lt;BR&gt;
      64P&lt;BR&gt;
      64W&lt;BR&gt;
      64X&lt;BR&gt;
      66X&amp;nbsp;ALT&lt;BR&gt;
      66P&amp;nbsp;ALT&lt;BR&gt;
      66W&amp;nbsp;ALT&lt;BR&gt;
      66P&lt;BR&gt;
      66W&lt;BR&gt;
      66X&lt;BR&gt;
      67P&lt;BR&gt;
      67W&lt;BR&gt;
      67X&lt;BR&gt;
      67Y&lt;BR&gt;
      67Z&lt;BR&gt;
      68P&lt;BR&gt;
      68W&lt;BR&gt;
      68X&lt;BR&gt;
      67Y&amp;nbsp;ALT&lt;BR&gt;
      67Z&amp;nbsp;ALT&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      5050&lt;BR&gt;
      5091&lt;BR&gt;
      5080&lt;BR&gt;
      5087&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      T63YB&lt;BR&gt;
      T63XB&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      5887&lt;BR&gt;
      5891&lt;BR&gt;
      5880&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      T93Z&lt;BR&gt;
      T93YA&lt;BR&gt;
      T93XA&lt;BR&gt;
      T93YB&lt;BR&gt;
      T93XB&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      8026EKP&lt;BR&gt;
      8026EKW&lt;BR&gt;
      8026EKM&lt;BR&gt;
      8026EKP&lt;BR&gt;
      8026EKB&lt;BR&gt;
      8026EKM&lt;BR&gt;
      1309X&lt;BR&gt;
      1309P&lt;BR&gt;
      1309W&lt;BR&gt;
      8024EKP&lt;BR&gt;
      8024EKW&lt;BR&gt;
      8024EKN&lt;BR&gt;
      RJ-9P/CT9P&lt;BR&gt;
      RJ-9W&lt;BR&gt;
      RJ-9X&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      3103P&lt;BR&gt;
      3103Y&lt;BR&gt;
      3103Z&lt;BR&gt;
      3103P&lt;BR&gt;
      3103Y&lt;BR&gt;
      3103Z&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      3105P/3106P&lt;BR&gt;
      3105W/3106W&lt;BR&gt;
      3105X/3106X&lt;BR&gt;
      3105Y/3106Y&lt;BR&gt;
      3105Z/3105Z&lt;BR&gt;
      3102P&lt;BR&gt;
      3102W&lt;BR&gt;
      3102X&lt;BR&gt;
      3102Y&lt;BR&gt;
      3102Z&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      EVMCBG&lt;BR&gt;
      EVMCCG&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      55-1-X&lt;BR&gt;
      55-4-X&lt;BR&gt;
      55-3-X&lt;BR&gt;
      55-2-X&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      50-2-X&lt;BR&gt;
      50-4-X&lt;BR&gt;
      50-3-X&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      64P&lt;BR&gt;
      64W&lt;BR&gt;
      64X&lt;BR&gt;
      64Y&lt;BR&gt;
      64Z&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      RT/RTR22&lt;BR&gt;
      RT/RTR22&lt;BR&gt;
      RT/RTR22&lt;BR&gt;
      RT/RTR22&lt;BR&gt;
      RJ/RJR22&lt;BR&gt;
      RJ/RJR22&lt;BR&gt;
      RJ/RJR22&lt;BR&gt;
      RT/RTR26&lt;BR&gt;
      RT/RTR26&lt;BR&gt;
      RT/RTR26&lt;BR&gt;
      RJ/RJR26&lt;BR&gt;
      RJ/RJR26&lt;BR&gt;
      RJ/RJR26&lt;BR&gt;
      RJ/RJR26&lt;BR&gt;
      RJ/RJR26&lt;BR&gt;
      RJ/RJR26&lt;BR&gt;
      RT/RTR24&lt;BR&gt;
      RT/RTR24&lt;BR&gt;
      RT/RTR24&lt;BR&gt;
      RJ/RJR24&lt;BR&gt;
      RJ/RJR24&lt;BR&gt;
      RJ/RJR24&lt;BR&gt;
      RJ/RJR24&lt;BR&gt;
      RJ/RJR24&lt;BR&gt;
      RJ/RJR24&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD COLSPAN=8&gt;&amp;nbsp;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD COLSPAN=8&gt;
      &lt;FONT SIZE=4 FACE=ARIAL&gt;&lt;B&gt;SINGLE TURN&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BOURN&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BI&amp;nbsp;TECH&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;DALE-VISHAY&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PHILIPS/MEPCO&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;MURATA&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PANASONIC&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;SPECTROL&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;MILSPEC&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      3323P&lt;BR&gt;
      3323S&lt;BR&gt;
      3323W&lt;BR&gt;
      3329H&lt;BR&gt;
      3329P&lt;BR&gt;
      3329W&lt;BR&gt;
      3339H&lt;BR&gt;
      3339P&lt;BR&gt;
      3339W&lt;BR&gt;
      3352E&lt;BR&gt;
      3352H&lt;BR&gt;
      3352K&lt;BR&gt;
      3352P&lt;BR&gt;
      3352T&lt;BR&gt;
      3352V&lt;BR&gt;
      3352W&lt;BR&gt;
      3362H&lt;BR&gt;
      3362M&lt;BR&gt;
      3362P&lt;BR&gt;
      3362R&lt;BR&gt;
      3362S&lt;BR&gt;
      3362U&lt;BR&gt;
      3362W&lt;BR&gt;
      3362X&lt;BR&gt;
      3386B&lt;BR&gt;
      3386C&lt;BR&gt;
      3386F&lt;BR&gt;
      3386H&lt;BR&gt;
      3386K&lt;BR&gt;
      3386M&lt;BR&gt;
      3386P&lt;BR&gt;
      3386S&lt;BR&gt;
      3386W&lt;BR&gt;
      3386X&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      25P&lt;BR&gt;
      25S&lt;BR&gt;
      25RX&lt;BR&gt;
      82P&lt;BR&gt;
      82M&lt;BR&gt;
      82PA&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      91E&lt;BR&gt;
      91X&lt;BR&gt;
      91T&lt;BR&gt;
      91B&lt;BR&gt;
      91A&lt;BR&gt;
      91V&lt;BR&gt;
      91W&lt;BR&gt;
      25W&lt;BR&gt;
      25V&lt;BR&gt;
      25P&lt;BR&gt;
      -&lt;BR&gt;
      25S&lt;BR&gt;
      25U&lt;BR&gt;
      25RX&lt;BR&gt;
      25X&lt;BR&gt;
      72XW&lt;BR&gt;
      72XL&lt;BR&gt;
      72PM&lt;BR&gt;
      72RX&lt;BR&gt;
      -&lt;BR&gt;
      72PX&lt;BR&gt;
      72P&lt;BR&gt;
      72RXW&lt;BR&gt;
      72RXL&lt;BR&gt;
      72X&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      T7YB&lt;BR&gt;
      T7YA&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      TXD&lt;BR&gt;
      TYA&lt;BR&gt;
      TYP&lt;BR&gt;
      -&lt;BR&gt;
      TYD&lt;BR&gt;
      TX&lt;BR&gt;
      -&lt;BR&gt;
      150SX&lt;BR&gt;
      100SX&lt;BR&gt;
      102T&lt;BR&gt;
      101S&lt;BR&gt;
      190T&lt;BR&gt;
      150TX&lt;BR&gt;
      101&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      101SX&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      ET6P&lt;BR&gt;
      ET6S&lt;BR&gt;
      ET6X&lt;BR&gt;
      RJ-6W/8014EMW&lt;BR&gt;
      RJ-6P/8014EMP&lt;BR&gt;
      RJ-6X/8014EMX&lt;BR&gt;
      TM7W&lt;BR&gt;
      TM7P&lt;BR&gt;
      TM7X&lt;BR&gt;
      -&lt;BR&gt;
      8017SMS&lt;BR&gt;
      -&lt;BR&gt;
      8017SMB&lt;BR&gt;
      8017SMA&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      CT-6W&lt;BR&gt;
      CT-6H&lt;BR&gt;
      CT-6P&lt;BR&gt;
      CT-6R&lt;BR&gt;
      -&lt;BR&gt;
      CT-6V&lt;BR&gt;
      CT-6X&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      8038EKV&lt;BR&gt;
      -&lt;BR&gt;
      8038EKX&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      8038EKP&lt;BR&gt;
      8038EKZ&lt;BR&gt;
      8038EKW&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      3321H&lt;BR&gt;
      3321P&lt;BR&gt;
      3321N&lt;BR&gt;
      1102H&lt;BR&gt;
      1102P&lt;BR&gt;
      1102T&lt;BR&gt;
      RVA0911V304A&lt;BR&gt;
      -&lt;BR&gt;
      RVA0911H413A&lt;BR&gt;
      RVG0707V100A&lt;BR&gt;
      RVA0607V(H)306A&lt;BR&gt;
      RVA1214H213A&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      3104B&lt;BR&gt;
      3104C&lt;BR&gt;
      3104F&lt;BR&gt;
      3104H&lt;BR&gt;
      -&lt;BR&gt;
      3104M&lt;BR&gt;
      3104P&lt;BR&gt;
      3104S&lt;BR&gt;
      3104W&lt;BR&gt;
      3104X&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      EVMQ0G&lt;BR&gt;
      EVMQIG&lt;BR&gt;
      EVMQ3G&lt;BR&gt;
      EVMS0G&lt;BR&gt;
      EVMQ0G&lt;BR&gt;
      EVMG0G&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      EVMK4GA00B&lt;BR&gt;
      EVM30GA00B&lt;BR&gt;
      EVMK0GA00B&lt;BR&gt;
      EVM38GA00B&lt;BR&gt;
      EVMB6&lt;BR&gt;
      EVLQ0&lt;BR&gt;
      -&lt;BR&gt;
      EVMMSG&lt;BR&gt;
      EVMMBG&lt;BR&gt;
      EVMMAG&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      EVMMCS&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      EVMM1&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      EVMM0&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      EVMM3&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      62-3-1&lt;BR&gt;
      62-1-2&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      67R&lt;BR&gt;
      -&lt;BR&gt;
      67P&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      67X&lt;BR&gt;
      63V&lt;BR&gt;
      63S&lt;BR&gt;
      63M&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      63H&lt;BR&gt;
      63P&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      63X&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      RJ/RJR50&lt;BR&gt;
      RJ/RJR50&lt;BR&gt;
      RJ/RJR50&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
&lt;/TABLE&gt;
&lt;P&gt;&amp;nbsp;&lt;P&gt;
&lt;TABLE BORDER=0 CELLSPACING=1 CELLPADDING=3&gt;
  &lt;TR&gt;
    &lt;TD COLSPAN=7&gt;
      &lt;FONT color="#0000FF" SIZE=4 FACE=ARIAL&gt;&lt;B&gt;SMD TRIM-POT CROSS REFERENCE&lt;/B&gt;&lt;/FONT&gt;
      &lt;P&gt;
      &lt;FONT SIZE=4 FACE=ARIAL&gt;&lt;B&gt;MULTI-TURN&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BOURNS&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BI&amp;nbsp;TECH&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;DALE-VISHAY&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PHILIPS/MEPCO&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PANASONIC&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;TOCOS&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;AUX/KYOCERA&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      3224G&lt;BR&gt;
      3224J&lt;BR&gt;
      3224W&lt;BR&gt;
      3269P&lt;BR&gt;
      3269W&lt;BR&gt;
      3269X&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      44G&lt;BR&gt;
      44J&lt;BR&gt;
      44W&lt;BR&gt;
      84P&lt;BR&gt;
      84W&lt;BR&gt;
      84X&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      ST63Z&lt;BR&gt;
      ST63Y&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      ST5P&lt;BR&gt;
      ST5W&lt;BR&gt;
      ST5X&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD COLSPAN=7&gt;&amp;nbsp;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD COLSPAN=7&gt;
      &lt;FONT SIZE=4 FACE=ARIAL&gt;&lt;B&gt;SINGLE TURN&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BOURNS&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BI&amp;nbsp;TECH&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;DALE-VISHAY&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PHILIPS/MEPCO&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PANASONIC&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;TOCOS&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;AUX/KYOCERA&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      3314G&lt;BR&gt;
      3314J&lt;BR&gt;
      3364A/B&lt;BR&gt;
      3364C/D&lt;BR&gt;
      3364W/X&lt;BR&gt;
      3313G&lt;BR&gt;
      3313J&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      23B&lt;BR&gt;
      23A&lt;BR&gt;
      21X&lt;BR&gt;
      21W&lt;BR&gt;
      -&lt;BR&gt;
      22B&lt;BR&gt;
      22A&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      ST5YL/ST53YL&lt;BR&gt;
      ST5YJ/5T53YJ&lt;BR&gt;
      ST-23A&lt;BR&gt;
      ST-22B&lt;BR&gt;
      ST-22&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      ST-4B&lt;BR&gt;
      ST-4A&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      ST-3B&lt;BR&gt;
      ST-3A&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      EVM-6YS&lt;BR&gt;
      EVM-1E&lt;BR&gt;
      EVM-1G&lt;BR&gt;
      EVM-1D&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      G4B&lt;BR&gt;
      G4A&lt;BR&gt;
      TR04-3S1&lt;BR&gt;
      TRG04-2S1&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      DVR-43A&lt;BR&gt;
      CVR-42C&lt;BR&gt;
      CVR-42A/C&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
&lt;/TABLE&gt;
&lt;P&gt;
&lt;FONT SIZE=4 FACE=ARIAL&gt;&lt;B&gt;ALT =&amp;nbsp;ALTERNATE&lt;/B&gt;&lt;/FONT&gt;
&lt;P&gt;

&amp;nbsp;
&lt;P&gt;
&lt;/td&gt;
&lt;/tr&gt;
&lt;/table&gt;</description>
<packages>
<package name="C0402">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;</description>
<wire x1="-0.245" y1="0.224" x2="0.245" y2="0.224" width="0.1524" layer="51"/>
<wire x1="0.245" y1="-0.224" x2="-0.245" y2="-0.224" width="0.1524" layer="51"/>
<wire x1="-1.473" y1="0.483" x2="1.473" y2="0.483" width="0.0508" layer="39"/>
<wire x1="1.473" y1="0.483" x2="1.473" y2="-0.483" width="0.0508" layer="39"/>
<wire x1="1.473" y1="-0.483" x2="-1.473" y2="-0.483" width="0.0508" layer="39"/>
<wire x1="-1.473" y1="-0.483" x2="-1.473" y2="0.483" width="0.0508" layer="39"/>
<smd name="1" x="-0.65" y="0" dx="0.7" dy="0.9" layer="1"/>
<smd name="2" x="0.65" y="0" dx="0.7" dy="0.9" layer="1"/>
<text x="-0.635" y="0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-1.905" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.554" y1="-0.3048" x2="-0.254" y2="0.2951" layer="51"/>
<rectangle x1="0.2588" y1="-0.3048" x2="0.5588" y2="0.2951" layer="51"/>
<rectangle x1="-0.1999" y1="-0.3" x2="0.1999" y2="0.3" layer="35"/>
</package>
<package name="C0504">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;</description>
<wire x1="-1.473" y1="0.983" x2="1.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="0.983" x2="1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="-0.983" x2="-1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.473" y1="-0.983" x2="-1.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="-0.294" y1="0.559" x2="0.294" y2="0.559" width="0.1016" layer="51"/>
<wire x1="-0.294" y1="-0.559" x2="0.294" y2="-0.559" width="0.1016" layer="51"/>
<smd name="1" x="-0.7" y="0" dx="1" dy="1.3" layer="1"/>
<smd name="2" x="0.7" y="0" dx="1" dy="1.3" layer="1"/>
<text x="-0.635" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.6604" y1="-0.6223" x2="-0.2804" y2="0.6276" layer="51"/>
<rectangle x1="0.2794" y1="-0.6223" x2="0.6594" y2="0.6276" layer="51"/>
<rectangle x1="-0.1001" y1="-0.4001" x2="0.1001" y2="0.4001" layer="35"/>
</package>
<package name="C0603">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;</description>
<wire x1="-1.473" y1="0.983" x2="1.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="0.983" x2="1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="-0.983" x2="-1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.473" y1="-0.983" x2="-1.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="-0.356" y1="0.432" x2="0.356" y2="0.432" width="0.1016" layer="51"/>
<wire x1="-0.356" y1="-0.419" x2="0.356" y2="-0.419" width="0.1016" layer="51"/>
<smd name="1" x="-0.85" y="0" dx="1.1" dy="1" layer="1"/>
<smd name="2" x="0.85" y="0" dx="1.1" dy="1" layer="1"/>
<text x="-0.635" y="0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-1.905" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.8382" y1="-0.4699" x2="-0.3381" y2="0.4801" layer="51"/>
<rectangle x1="0.3302" y1="-0.4699" x2="0.8303" y2="0.4801" layer="51"/>
<rectangle x1="-0.1999" y1="-0.3" x2="0.1999" y2="0.3" layer="35"/>
</package>
<package name="C0805">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;</description>
<wire x1="-1.973" y1="0.983" x2="1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="-0.983" x2="-1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.973" y1="-0.983" x2="-1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="-0.381" y1="0.66" x2="0.381" y2="0.66" width="0.1016" layer="51"/>
<wire x1="-0.356" y1="-0.66" x2="0.381" y2="-0.66" width="0.1016" layer="51"/>
<wire x1="1.973" y1="0.983" x2="1.973" y2="-0.983" width="0.0508" layer="39"/>
<smd name="1" x="-0.95" y="0" dx="1.3" dy="1.5" layer="1"/>
<smd name="2" x="0.95" y="0" dx="1.3" dy="1.5" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.0922" y1="-0.7239" x2="-0.3421" y2="0.7262" layer="51"/>
<rectangle x1="0.3556" y1="-0.7239" x2="1.1057" y2="0.7262" layer="51"/>
<rectangle x1="-0.1001" y1="-0.4001" x2="0.1001" y2="0.4001" layer="35"/>
</package>
<package name="C1206">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;</description>
<wire x1="-2.473" y1="0.983" x2="2.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-0.983" x2="-2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-0.983" x2="-2.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="0.983" x2="2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-0.965" y1="0.787" x2="0.965" y2="0.787" width="0.1016" layer="51"/>
<wire x1="-0.965" y1="-0.787" x2="0.965" y2="-0.787" width="0.1016" layer="51"/>
<smd name="1" x="-1.4" y="0" dx="1.6" dy="1.8" layer="1"/>
<smd name="2" x="1.4" y="0" dx="1.6" dy="1.8" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.7018" y1="-0.8509" x2="-0.9517" y2="0.8491" layer="51"/>
<rectangle x1="0.9517" y1="-0.8491" x2="1.7018" y2="0.8509" layer="51"/>
<rectangle x1="-0.1999" y1="-0.4001" x2="0.1999" y2="0.4001" layer="35"/>
</package>
<package name="C1210">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;</description>
<wire x1="-2.473" y1="1.483" x2="2.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-1.483" x2="-2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-1.483" x2="-2.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="-0.9652" y1="1.2446" x2="0.9652" y2="1.2446" width="0.1016" layer="51"/>
<wire x1="-0.9652" y1="-1.2446" x2="0.9652" y2="-1.2446" width="0.1016" layer="51"/>
<wire x1="2.473" y1="1.483" x2="2.473" y2="-1.483" width="0.0508" layer="39"/>
<smd name="1" x="-1.4" y="0" dx="1.6" dy="2.7" layer="1"/>
<smd name="2" x="1.4" y="0" dx="1.6" dy="2.7" layer="1"/>
<text x="-1.905" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.7018" y1="-1.2954" x2="-0.9517" y2="1.3045" layer="51"/>
<rectangle x1="0.9517" y1="-1.3045" x2="1.7018" y2="1.2954" layer="51"/>
<rectangle x1="-0.1999" y1="-0.4001" x2="0.1999" y2="0.4001" layer="35"/>
</package>
<package name="C1310">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;</description>
<wire x1="-1.473" y1="0.983" x2="1.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="0.983" x2="1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="-0.983" x2="-1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.473" y1="-0.983" x2="-1.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="-0.294" y1="0.559" x2="0.294" y2="0.559" width="0.1016" layer="51"/>
<wire x1="-0.294" y1="-0.559" x2="0.294" y2="-0.559" width="0.1016" layer="51"/>
<smd name="1" x="-0.7" y="0" dx="1" dy="1.3" layer="1"/>
<smd name="2" x="0.7" y="0" dx="1" dy="1.3" layer="1"/>
<text x="-0.635" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.6604" y1="-0.6223" x2="-0.2804" y2="0.6276" layer="51"/>
<rectangle x1="0.2794" y1="-0.6223" x2="0.6594" y2="0.6276" layer="51"/>
<rectangle x1="-0.1001" y1="-0.3" x2="0.1001" y2="0.3" layer="35"/>
</package>
<package name="C1608">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;</description>
<wire x1="-1.473" y1="0.983" x2="1.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="0.983" x2="1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="-0.983" x2="-1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.473" y1="-0.983" x2="-1.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="-0.356" y1="0.432" x2="0.356" y2="0.432" width="0.1016" layer="51"/>
<wire x1="-0.356" y1="-0.419" x2="0.356" y2="-0.419" width="0.1016" layer="51"/>
<smd name="1" x="-0.85" y="0" dx="1.1" dy="1" layer="1"/>
<smd name="2" x="0.85" y="0" dx="1.1" dy="1" layer="1"/>
<text x="-0.635" y="0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-1.905" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.8382" y1="-0.4699" x2="-0.3381" y2="0.4801" layer="51"/>
<rectangle x1="0.3302" y1="-0.4699" x2="0.8303" y2="0.4801" layer="51"/>
<rectangle x1="-0.1999" y1="-0.3" x2="0.1999" y2="0.3" layer="35"/>
</package>
<package name="C1812">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;</description>
<wire x1="-2.973" y1="1.983" x2="2.973" y2="1.983" width="0.0508" layer="39"/>
<wire x1="2.973" y1="-1.983" x2="-2.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="-2.973" y1="-1.983" x2="-2.973" y2="1.983" width="0.0508" layer="39"/>
<wire x1="-1.4732" y1="1.6002" x2="1.4732" y2="1.6002" width="0.1016" layer="51"/>
<wire x1="-1.4478" y1="-1.6002" x2="1.4732" y2="-1.6002" width="0.1016" layer="51"/>
<wire x1="2.973" y1="1.983" x2="2.973" y2="-1.983" width="0.0508" layer="39"/>
<smd name="1" x="-1.95" y="0" dx="1.9" dy="3.4" layer="1"/>
<smd name="2" x="1.95" y="0" dx="1.9" dy="3.4" layer="1"/>
<text x="-1.905" y="2.54" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-3.81" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-2.3876" y1="-1.651" x2="-1.4376" y2="1.649" layer="51"/>
<rectangle x1="1.4478" y1="-1.651" x2="2.3978" y2="1.649" layer="51"/>
<rectangle x1="-0.3" y1="-0.4001" x2="0.3" y2="0.4001" layer="35"/>
</package>
<package name="C1825">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;</description>
<wire x1="-2.973" y1="3.483" x2="2.973" y2="3.483" width="0.0508" layer="39"/>
<wire x1="2.973" y1="-3.483" x2="-2.973" y2="-3.483" width="0.0508" layer="39"/>
<wire x1="-2.973" y1="-3.483" x2="-2.973" y2="3.483" width="0.0508" layer="39"/>
<wire x1="-1.4986" y1="3.2766" x2="1.4732" y2="3.2766" width="0.1016" layer="51"/>
<wire x1="-1.4732" y1="-3.2766" x2="1.4986" y2="-3.2766" width="0.1016" layer="51"/>
<wire x1="2.973" y1="3.483" x2="2.973" y2="-3.483" width="0.0508" layer="39"/>
<smd name="1" x="-1.95" y="0" dx="1.9" dy="6.8" layer="1"/>
<smd name="2" x="1.95" y="0" dx="1.9" dy="6.8" layer="1"/>
<text x="-1.905" y="3.81" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-5.08" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-2.413" y1="-3.3528" x2="-1.463" y2="3.3472" layer="51"/>
<rectangle x1="1.4478" y1="-3.3528" x2="2.3978" y2="3.3472" layer="51"/>
<rectangle x1="-0.7" y1="-0.7" x2="0.7" y2="0.7" layer="35"/>
</package>
<package name="C2012">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;</description>
<wire x1="-1.973" y1="0.983" x2="1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="0.983" x2="1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="-0.983" x2="-1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.973" y1="-0.983" x2="-1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="-0.381" y1="0.66" x2="0.381" y2="0.66" width="0.1016" layer="51"/>
<wire x1="-0.356" y1="-0.66" x2="0.381" y2="-0.66" width="0.1016" layer="51"/>
<smd name="1" x="-0.85" y="0" dx="1.3" dy="1.5" layer="1"/>
<smd name="2" x="0.85" y="0" dx="1.3" dy="1.5" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.0922" y1="-0.7239" x2="-0.3421" y2="0.7262" layer="51"/>
<rectangle x1="0.3556" y1="-0.7239" x2="1.1057" y2="0.7262" layer="51"/>
<rectangle x1="-0.1001" y1="-0.4001" x2="0.1001" y2="0.4001" layer="35"/>
</package>
<package name="C3216">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;</description>
<wire x1="-2.473" y1="0.983" x2="2.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-0.983" x2="-2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-0.983" x2="-2.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="0.983" x2="2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-0.965" y1="0.787" x2="0.965" y2="0.787" width="0.1016" layer="51"/>
<wire x1="-0.965" y1="-0.787" x2="0.965" y2="-0.787" width="0.1016" layer="51"/>
<smd name="1" x="-1.4" y="0" dx="1.6" dy="1.8" layer="1"/>
<smd name="2" x="1.4" y="0" dx="1.6" dy="1.8" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.7018" y1="-0.8509" x2="-0.9517" y2="0.8491" layer="51"/>
<rectangle x1="0.9517" y1="-0.8491" x2="1.7018" y2="0.8509" layer="51"/>
<rectangle x1="-0.3" y1="-0.5001" x2="0.3" y2="0.5001" layer="35"/>
</package>
<package name="C3225">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;</description>
<wire x1="-2.473" y1="1.483" x2="2.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-1.483" x2="-2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-1.483" x2="-2.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="-0.9652" y1="1.2446" x2="0.9652" y2="1.2446" width="0.1016" layer="51"/>
<wire x1="-0.9652" y1="-1.2446" x2="0.9652" y2="-1.2446" width="0.1016" layer="51"/>
<wire x1="2.473" y1="1.483" x2="2.473" y2="-1.483" width="0.0508" layer="39"/>
<smd name="1" x="-1.4" y="0" dx="1.6" dy="2.7" layer="1"/>
<smd name="2" x="1.4" y="0" dx="1.6" dy="2.7" layer="1"/>
<text x="-1.905" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.7018" y1="-1.2954" x2="-0.9517" y2="1.3045" layer="51"/>
<rectangle x1="0.9517" y1="-1.3045" x2="1.7018" y2="1.2954" layer="51"/>
<rectangle x1="-0.1999" y1="-0.5001" x2="0.1999" y2="0.5001" layer="35"/>
</package>
<package name="C4532">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;</description>
<wire x1="-2.973" y1="1.983" x2="2.973" y2="1.983" width="0.0508" layer="39"/>
<wire x1="2.973" y1="-1.983" x2="-2.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="-2.973" y1="-1.983" x2="-2.973" y2="1.983" width="0.0508" layer="39"/>
<wire x1="-1.4732" y1="1.6002" x2="1.4732" y2="1.6002" width="0.1016" layer="51"/>
<wire x1="-1.4478" y1="-1.6002" x2="1.4732" y2="-1.6002" width="0.1016" layer="51"/>
<wire x1="2.973" y1="1.983" x2="2.973" y2="-1.983" width="0.0508" layer="39"/>
<smd name="1" x="-1.95" y="0" dx="1.9" dy="3.4" layer="1"/>
<smd name="2" x="1.95" y="0" dx="1.9" dy="3.4" layer="1"/>
<text x="-1.905" y="2.54" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-3.81" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-2.3876" y1="-1.651" x2="-1.4376" y2="1.649" layer="51"/>
<rectangle x1="1.4478" y1="-1.651" x2="2.3978" y2="1.649" layer="51"/>
<rectangle x1="-0.4001" y1="-0.7" x2="0.4001" y2="0.7" layer="35"/>
</package>
<package name="C4564">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;</description>
<wire x1="-2.973" y1="3.483" x2="2.973" y2="3.483" width="0.0508" layer="39"/>
<wire x1="2.973" y1="-3.483" x2="-2.973" y2="-3.483" width="0.0508" layer="39"/>
<wire x1="-2.973" y1="-3.483" x2="-2.973" y2="3.483" width="0.0508" layer="39"/>
<wire x1="-1.4986" y1="3.2766" x2="1.4732" y2="3.2766" width="0.1016" layer="51"/>
<wire x1="-1.4732" y1="-3.2766" x2="1.4986" y2="-3.2766" width="0.1016" layer="51"/>
<wire x1="2.973" y1="3.483" x2="2.973" y2="-3.483" width="0.0508" layer="39"/>
<smd name="1" x="-1.95" y="0" dx="1.9" dy="6.8" layer="1"/>
<smd name="2" x="1.95" y="0" dx="1.9" dy="6.8" layer="1"/>
<text x="-1.905" y="3.81" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-5.08" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-2.413" y1="-3.3528" x2="-1.463" y2="3.3472" layer="51"/>
<rectangle x1="1.4478" y1="-3.3528" x2="2.3978" y2="3.3472" layer="51"/>
<rectangle x1="-0.5001" y1="-1" x2="0.5001" y2="1" layer="35"/>
</package>
<package name="C025-024X044">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 2.5 mm, outline 2.4 x 4.4 mm</description>
<wire x1="-2.159" y1="-0.635" x2="-2.159" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.159" y1="0.635" x2="-1.651" y2="1.143" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.159" y1="-0.635" x2="-1.651" y2="-1.143" width="0.1524" layer="21" curve="90"/>
<wire x1="1.651" y1="1.143" x2="-1.651" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-0.635" x2="2.159" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.651" y1="-1.143" x2="-1.651" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="1.651" y1="1.143" x2="2.159" y2="0.635" width="0.1524" layer="21" curve="-90"/>
<wire x1="1.651" y1="-1.143" x2="2.159" y2="-0.635" width="0.1524" layer="21" curve="90"/>
<wire x1="-0.3048" y1="0.762" x2="-0.3048" y2="-0.762" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0.762" x2="0.3302" y2="-0.762" width="0.3048" layer="21"/>
<wire x1="1.27" y1="0" x2="0.3302" y2="0" width="0.1524" layer="51"/>
<wire x1="-1.27" y1="0" x2="-0.3048" y2="0" width="0.1524" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-1.778" y="1.397" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.778" y="-2.667" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C025-025X050">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 2.5 mm, outline 2.5 x 5 mm</description>
<wire x1="-2.159" y1="1.27" x2="2.159" y2="1.27" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-1.27" x2="-2.159" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="2.413" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="1.016" x2="-2.413" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.159" y1="1.27" x2="2.413" y2="1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.413" y1="1.016" x2="-2.159" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<wire x1="2.159" y1="-1.27" x2="2.413" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.413" y1="-1.016" x2="-2.159" y2="-1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="0.762" y1="0" x2="0.381" y2="0" width="0.1524" layer="51"/>
<wire x1="0.381" y1="0" x2="0.254" y2="0" width="0.1524" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="0.762" width="0.254" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0.762" x2="-0.254" y2="0" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.381" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="0" x2="-0.762" y2="0" width="0.1524" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.286" y="1.524" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.286" y="-2.794" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C025-030X050">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 2.5 mm, outline 3 x 5 mm</description>
<wire x1="-2.159" y1="1.524" x2="2.159" y2="1.524" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-1.524" x2="-2.159" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.27" x2="2.413" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="1.27" x2="-2.413" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="2.159" y1="1.524" x2="2.413" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.413" y1="1.27" x2="-2.159" y2="1.524" width="0.1524" layer="21" curve="-90"/>
<wire x1="2.159" y1="-1.524" x2="2.413" y2="-1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.413" y1="-1.27" x2="-2.159" y2="-1.524" width="0.1524" layer="21" curve="90"/>
<wire x1="0.762" y1="0" x2="0.381" y2="0" width="0.1524" layer="51"/>
<wire x1="0.381" y1="0" x2="0.254" y2="0" width="0.1524" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="0.762" width="0.254" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0.762" x2="-0.254" y2="0" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.381" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="0" x2="-0.762" y2="0" width="0.1524" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.286" y="1.905" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.286" y="-3.048" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C025-040X050">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 2.5 mm, outline 4 x 5 mm</description>
<wire x1="-2.159" y1="1.905" x2="2.159" y2="1.905" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-1.905" x2="-2.159" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.651" x2="2.413" y2="-1.651" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="1.651" x2="-2.413" y2="-1.651" width="0.1524" layer="21"/>
<wire x1="2.159" y1="1.905" x2="2.413" y2="1.651" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.413" y1="1.651" x2="-2.159" y2="1.905" width="0.1524" layer="21" curve="-90"/>
<wire x1="2.159" y1="-1.905" x2="2.413" y2="-1.651" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.413" y1="-1.651" x2="-2.159" y2="-1.905" width="0.1524" layer="21" curve="90"/>
<wire x1="0.762" y1="0" x2="0.381" y2="0" width="0.1524" layer="51"/>
<wire x1="0.381" y1="0" x2="0.254" y2="0" width="0.1524" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="0.762" width="0.254" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0.762" x2="-0.254" y2="0" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.381" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="0" x2="-0.762" y2="0" width="0.1524" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.286" y="2.159" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.286" y="-3.429" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C025-050X050">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 2.5 mm, outline 5 x 5 mm</description>
<wire x1="-2.159" y1="2.286" x2="2.159" y2="2.286" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-2.286" x2="-2.159" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="2.413" y1="2.032" x2="2.413" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="2.032" x2="-2.413" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="2.159" y1="2.286" x2="2.413" y2="2.032" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.413" y1="2.032" x2="-2.159" y2="2.286" width="0.1524" layer="21" curve="-90"/>
<wire x1="2.159" y1="-2.286" x2="2.413" y2="-2.032" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.413" y1="-2.032" x2="-2.159" y2="-2.286" width="0.1524" layer="21" curve="90"/>
<wire x1="0.762" y1="0" x2="0.381" y2="0" width="0.1524" layer="51"/>
<wire x1="0.381" y1="0" x2="0.254" y2="0" width="0.1524" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="0.762" width="0.254" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0.762" x2="-0.254" y2="0" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.381" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="0" x2="-0.762" y2="0" width="0.1524" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.286" y="2.54" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.286" y="-3.81" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C025-060X050">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 2.5 mm, outline 6 x 5 mm</description>
<wire x1="-2.159" y1="2.794" x2="2.159" y2="2.794" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-2.794" x2="-2.159" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="2.413" y1="2.54" x2="2.413" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="2.54" x2="-2.413" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="2.159" y1="2.794" x2="2.413" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.413" y1="2.54" x2="-2.159" y2="2.794" width="0.1524" layer="21" curve="-90"/>
<wire x1="2.159" y1="-2.794" x2="2.413" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.413" y1="-2.54" x2="-2.159" y2="-2.794" width="0.1524" layer="21" curve="90"/>
<wire x1="0.762" y1="0" x2="0.381" y2="0" width="0.1524" layer="51"/>
<wire x1="0.381" y1="0" x2="0.254" y2="0" width="0.1524" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="0.762" width="0.254" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0.762" x2="-0.254" y2="0" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.381" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="0" x2="-0.762" y2="0" width="0.1524" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.286" y="3.048" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.032" y="-2.413" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C025_050-024X070">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 2.5 mm + 5 mm, outline 2.4 x 7 mm</description>
<wire x1="-2.159" y1="-0.635" x2="-2.159" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-2.159" y1="0.635" x2="-1.651" y2="1.143" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.159" y1="-0.635" x2="-1.651" y2="-1.143" width="0.1524" layer="21" curve="90"/>
<wire x1="1.651" y1="1.143" x2="-1.651" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-0.635" x2="2.159" y2="0.635" width="0.1524" layer="51"/>
<wire x1="1.651" y1="-1.143" x2="-1.651" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="1.651" y1="1.143" x2="2.159" y2="0.635" width="0.1524" layer="21" curve="-90"/>
<wire x1="-4.191" y1="-1.143" x2="-3.9624" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="-4.191" y1="1.143" x2="-3.9624" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-4.699" y1="-0.635" x2="-4.191" y2="-1.143" width="0.1524" layer="21" curve="90"/>
<wire x1="1.651" y1="-1.143" x2="2.159" y2="-0.635" width="0.1524" layer="21" curve="90"/>
<wire x1="-4.699" y1="0.635" x2="-4.191" y2="1.143" width="0.1524" layer="21" curve="-90"/>
<wire x1="-4.699" y1="-0.635" x2="-4.699" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="1.143" x2="-2.5654" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="-1.143" x2="-2.5654" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="-0.3048" y1="0.762" x2="-0.3048" y2="-0.762" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0.762" x2="0.3302" y2="-0.762" width="0.3048" layer="21"/>
<wire x1="1.27" y1="0" x2="0.3302" y2="0" width="0.1524" layer="51"/>
<wire x1="-1.27" y1="0" x2="-0.3048" y2="0" width="0.1524" layer="51"/>
<pad name="1" x="-3.81" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="3" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-3.81" y="1.397" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.81" y="-2.667" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C025_050-025X075">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 2.5 + 5 mm, outline 2.5 x 7.5 mm</description>
<wire x1="-2.159" y1="1.27" x2="2.159" y2="1.27" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-1.27" x2="-2.159" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="1.016" x2="-2.413" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.159" y1="1.27" x2="2.413" y2="1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.413" y1="1.016" x2="-2.159" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<wire x1="2.159" y1="-1.27" x2="2.413" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.413" y1="-1.016" x2="-2.159" y2="-1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="0.381" y1="0" x2="0.254" y2="0" width="0.1524" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="0.762" width="0.254" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0.762" x2="-0.254" y2="0" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.381" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="0" x2="-0.762" y2="0" width="0.1524" layer="51"/>
<wire x1="4.953" y1="1.016" x2="4.953" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="4.699" y1="1.27" x2="4.953" y2="1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.699" y1="-1.27" x2="4.953" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="2.794" y1="1.27" x2="4.699" y2="1.27" width="0.1524" layer="21"/>
<wire x1="4.699" y1="-1.27" x2="2.794" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="2.413" y2="0.762" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-0.762" x2="2.413" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.413" y1="0.254" x2="2.413" y2="-0.254" width="0.1524" layer="21"/>
<wire x1="1.778" y1="0" x2="2.286" y2="0" width="0.1524" layer="51"/>
<wire x1="2.286" y1="0" x2="2.794" y2="0" width="0.1524" layer="21"/>
<wire x1="2.794" y1="0" x2="3.302" y2="0" width="0.1524" layer="51"/>
<wire x1="0.762" y1="0" x2="0.381" y2="0" width="0.1524" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="3" x="3.81" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.159" y="1.651" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.159" y="-2.794" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C025_050-035X075">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 2.5 + 5 mm, outline 3.5 x 7.5 mm</description>
<wire x1="-2.159" y1="1.778" x2="2.159" y2="1.778" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-1.778" x2="-2.159" y2="-1.778" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="1.524" x2="-2.413" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="2.159" y1="1.778" x2="2.413" y2="1.524" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.413" y1="1.524" x2="-2.159" y2="1.778" width="0.1524" layer="21" curve="-90"/>
<wire x1="2.159" y1="-1.778" x2="2.413" y2="-1.524" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.413" y1="-1.524" x2="-2.159" y2="-1.778" width="0.1524" layer="21" curve="90"/>
<wire x1="0.381" y1="0" x2="0.254" y2="0" width="0.1524" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="0.762" width="0.254" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0.762" x2="-0.254" y2="0" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.381" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="0" x2="-0.762" y2="0" width="0.1524" layer="51"/>
<wire x1="4.953" y1="1.524" x2="4.953" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="4.699" y1="1.778" x2="4.953" y2="1.524" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.699" y1="-1.778" x2="4.953" y2="-1.524" width="0.1524" layer="21" curve="90"/>
<wire x1="2.794" y1="1.778" x2="4.699" y2="1.778" width="0.1524" layer="21"/>
<wire x1="4.699" y1="-1.778" x2="2.794" y2="-1.778" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.524" x2="2.413" y2="1.016" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="2.413" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="2.413" y1="0.508" x2="2.413" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="0.381" y1="0" x2="0.762" y2="0" width="0.1524" layer="51"/>
<wire x1="2.286" y1="0" x2="2.794" y2="0" width="0.1524" layer="21"/>
<wire x1="2.794" y1="0" x2="3.302" y2="0" width="0.1524" layer="51"/>
<wire x1="2.286" y1="0" x2="1.778" y2="0" width="0.1524" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="3" x="3.81" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.286" y="2.159" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.286" y="-3.302" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C025_050-045X075">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 2.5 + 5 mm, outline 4.5 x 7.5 mm</description>
<wire x1="-2.159" y1="2.286" x2="2.159" y2="2.286" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-2.286" x2="-2.159" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="2.032" x2="-2.413" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="2.159" y1="2.286" x2="2.413" y2="2.032" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.413" y1="2.032" x2="-2.159" y2="2.286" width="0.1524" layer="21" curve="-90"/>
<wire x1="2.159" y1="-2.286" x2="2.413" y2="-2.032" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.413" y1="-2.032" x2="-2.159" y2="-2.286" width="0.1524" layer="21" curve="90"/>
<wire x1="0.381" y1="0" x2="0.254" y2="0" width="0.1524" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="0.762" width="0.254" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0.762" x2="-0.254" y2="0" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.381" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="0" x2="-0.762" y2="0" width="0.1524" layer="51"/>
<wire x1="4.953" y1="2.032" x2="4.953" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="4.699" y1="2.286" x2="4.953" y2="2.032" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.699" y1="-2.286" x2="4.953" y2="-2.032" width="0.1524" layer="21" curve="90"/>
<wire x1="2.794" y1="2.286" x2="4.699" y2="2.286" width="0.1524" layer="21"/>
<wire x1="4.699" y1="-2.286" x2="2.794" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="2.413" y1="2.032" x2="2.413" y2="1.397" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.397" x2="2.413" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="2.413" y1="0.762" x2="2.413" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="2.286" y1="0" x2="2.794" y2="0" width="0.1524" layer="21"/>
<wire x1="2.794" y1="0" x2="3.302" y2="0" width="0.1524" layer="51"/>
<wire x1="0.381" y1="0" x2="0.762" y2="0" width="0.1524" layer="51"/>
<wire x1="2.286" y1="0" x2="1.778" y2="0" width="0.1524" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="3" x="3.81" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.286" y="2.667" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.286" y="-3.81" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C025_050-055X075">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 2.5 + 5 mm, outline 5.5 x 7.5 mm</description>
<wire x1="-2.159" y1="2.794" x2="2.159" y2="2.794" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-2.794" x2="-2.159" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="2.54" x2="-2.413" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="2.159" y1="2.794" x2="2.413" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.413" y1="2.54" x2="-2.159" y2="2.794" width="0.1524" layer="21" curve="-90"/>
<wire x1="2.159" y1="-2.794" x2="2.413" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.413" y1="-2.54" x2="-2.159" y2="-2.794" width="0.1524" layer="21" curve="90"/>
<wire x1="0.381" y1="0" x2="0.254" y2="0" width="0.1524" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="0.762" width="0.254" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0.762" x2="-0.254" y2="0" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.381" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="0" x2="-0.762" y2="0" width="0.1524" layer="51"/>
<wire x1="4.953" y1="2.54" x2="4.953" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="4.699" y1="2.794" x2="4.953" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.699" y1="-2.794" x2="4.953" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="2.794" y1="2.794" x2="4.699" y2="2.794" width="0.1524" layer="21"/>
<wire x1="4.699" y1="-2.794" x2="2.794" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="2.413" y1="2.54" x2="2.413" y2="2.032" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-2.032" x2="2.413" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="2.413" y1="0.762" x2="2.413" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="1.778" y1="0" x2="2.286" y2="0" width="0.1524" layer="51"/>
<wire x1="2.286" y1="0" x2="2.794" y2="0" width="0.1524" layer="21"/>
<wire x1="2.794" y1="0" x2="3.302" y2="0" width="0.1524" layer="51"/>
<wire x1="0.381" y1="0" x2="0.762" y2="0" width="0.1524" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="3" x="3.81" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.286" y="3.175" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.032" y="-2.286" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C050-024X044">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 5 mm, outline 2.4 x 4.4 mm</description>
<wire x1="-2.159" y1="-0.635" x2="-2.159" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-2.159" y1="0.635" x2="-1.651" y2="1.143" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.159" y1="-0.635" x2="-1.651" y2="-1.143" width="0.1524" layer="21" curve="90"/>
<wire x1="1.651" y1="1.143" x2="-1.651" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-0.635" x2="2.159" y2="0.635" width="0.1524" layer="51"/>
<wire x1="1.651" y1="-1.143" x2="-1.651" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="1.651" y1="1.143" x2="2.159" y2="0.635" width="0.1524" layer="21" curve="-90"/>
<wire x1="1.651" y1="-1.143" x2="2.159" y2="-0.635" width="0.1524" layer="21" curve="90"/>
<wire x1="-0.3048" y1="0.762" x2="-0.3048" y2="0" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-0.3048" y2="-0.762" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0.762" x2="0.3302" y2="0" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="0.3302" y2="-0.762" width="0.3048" layer="21"/>
<wire x1="1.27" y1="0" x2="0.3302" y2="0" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="0" x2="-0.3048" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.159" y="1.397" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.159" y="-2.667" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="2.159" y1="-0.381" x2="2.54" y2="0.381" layer="51"/>
<rectangle x1="-2.54" y1="-0.381" x2="-2.159" y2="0.381" layer="51"/>
</package>
<package name="C050-025X075">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 5 mm, outline 2.5 x 7.5 mm</description>
<wire x1="-0.3048" y1="0.635" x2="-0.3048" y2="0" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-0.3048" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="0.3302" y1="0.635" x2="0.3302" y2="0" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="0.3302" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.683" y1="1.016" x2="-3.683" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="-1.27" x2="3.429" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="3.683" y1="-1.016" x2="3.683" y2="1.016" width="0.1524" layer="21"/>
<wire x1="3.429" y1="1.27" x2="-3.429" y2="1.27" width="0.1524" layer="21"/>
<wire x1="3.429" y1="1.27" x2="3.683" y2="1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="3.429" y1="-1.27" x2="3.683" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="-1.016" x2="-3.429" y2="-1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="1.016" x2="-3.429" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" shape="octagon"/>
<text x="-3.429" y="1.651" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.429" y="-2.794" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C050-045X075">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 5 mm, outline 4.5 x 7.5 mm</description>
<wire x1="-0.3048" y1="0.635" x2="-0.3048" y2="0" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-0.3048" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="0.3302" y1="0.635" x2="0.3302" y2="0" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="0.3302" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.683" y1="2.032" x2="-3.683" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="-2.286" x2="3.429" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="3.683" y1="-2.032" x2="3.683" y2="2.032" width="0.1524" layer="21"/>
<wire x1="3.429" y1="2.286" x2="-3.429" y2="2.286" width="0.1524" layer="21"/>
<wire x1="3.429" y1="2.286" x2="3.683" y2="2.032" width="0.1524" layer="21" curve="-90"/>
<wire x1="3.429" y1="-2.286" x2="3.683" y2="-2.032" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="-2.032" x2="-3.429" y2="-2.286" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="2.032" x2="-3.429" y2="2.286" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" shape="octagon"/>
<text x="-3.556" y="2.667" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.556" y="-3.81" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C050-030X075">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 5 mm, outline 3 x 7.5 mm</description>
<wire x1="-0.3048" y1="0.635" x2="-0.3048" y2="0" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-0.3048" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="0.3302" y1="0.635" x2="0.3302" y2="0" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="0.3302" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.683" y1="1.27" x2="-3.683" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="-1.524" x2="3.429" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="3.683" y1="-1.27" x2="3.683" y2="1.27" width="0.1524" layer="21"/>
<wire x1="3.429" y1="1.524" x2="-3.429" y2="1.524" width="0.1524" layer="21"/>
<wire x1="3.429" y1="1.524" x2="3.683" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<wire x1="3.429" y1="-1.524" x2="3.683" y2="-1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="-1.27" x2="-3.429" y2="-1.524" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="1.27" x2="-3.429" y2="1.524" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" shape="octagon"/>
<text x="-3.556" y="1.905" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.556" y="-3.048" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C050-050X075">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 5 mm, outline 5 x 7.5 mm</description>
<wire x1="-0.3048" y1="0.635" x2="-0.3048" y2="0" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-0.3048" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="0.3302" y1="0.635" x2="0.3302" y2="0" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="0.3302" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.683" y1="2.286" x2="-3.683" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="-2.54" x2="3.429" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="3.683" y1="-2.286" x2="3.683" y2="2.286" width="0.1524" layer="21"/>
<wire x1="3.429" y1="2.54" x2="-3.429" y2="2.54" width="0.1524" layer="21"/>
<wire x1="3.429" y1="2.54" x2="3.683" y2="2.286" width="0.1524" layer="21" curve="-90"/>
<wire x1="3.429" y1="-2.54" x2="3.683" y2="-2.286" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="-2.286" x2="-3.429" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="2.286" x2="-3.429" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" shape="octagon"/>
<text x="-3.429" y="2.921" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.175" y="-2.159" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C050-055X075">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 5 mm, outline 5.5 x 7.5 mm</description>
<wire x1="-0.3048" y1="0.635" x2="-0.3048" y2="0" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-0.3048" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="0.3302" y1="0.635" x2="0.3302" y2="0" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="0.3302" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.683" y1="2.54" x2="-3.683" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="-2.794" x2="3.429" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="3.683" y1="-2.54" x2="3.683" y2="2.54" width="0.1524" layer="21"/>
<wire x1="3.429" y1="2.794" x2="-3.429" y2="2.794" width="0.1524" layer="21"/>
<wire x1="3.429" y1="2.794" x2="3.683" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<wire x1="3.429" y1="-2.794" x2="3.683" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="-2.54" x2="-3.429" y2="-2.794" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="2.54" x2="-3.429" y2="2.794" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" shape="octagon"/>
<text x="-3.429" y="3.175" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.302" y="-2.286" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C050-075X075">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 5 mm, outline 7.5 x 7.5 mm</description>
<wire x1="-1.524" y1="0" x2="-0.4572" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.4572" y1="0" x2="-0.4572" y2="0.762" width="0.4064" layer="21"/>
<wire x1="-0.4572" y1="0" x2="-0.4572" y2="-0.762" width="0.4064" layer="21"/>
<wire x1="0.4318" y1="0.762" x2="0.4318" y2="0" width="0.4064" layer="21"/>
<wire x1="0.4318" y1="0" x2="1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="0.4318" y1="0" x2="0.4318" y2="-0.762" width="0.4064" layer="21"/>
<wire x1="-3.683" y1="3.429" x2="-3.683" y2="-3.429" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="-3.683" x2="3.429" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="3.683" y1="-3.429" x2="3.683" y2="3.429" width="0.1524" layer="21"/>
<wire x1="3.429" y1="3.683" x2="-3.429" y2="3.683" width="0.1524" layer="21"/>
<wire x1="3.429" y1="3.683" x2="3.683" y2="3.429" width="0.1524" layer="21" curve="-90"/>
<wire x1="3.429" y1="-3.683" x2="3.683" y2="-3.429" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="-3.429" x2="-3.429" y2="-3.683" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="3.429" x2="-3.429" y2="3.683" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" shape="octagon"/>
<text x="-3.429" y="4.064" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.175" y="-2.921" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C050H075X075">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
Horizontal, grid 5 mm, outline 7.5 x 7.5 mm</description>
<wire x1="-3.683" y1="7.112" x2="-3.683" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-3.683" y1="0.508" x2="-3.302" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-3.302" y1="0.508" x2="-1.778" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-1.778" y1="0.508" x2="1.778" y2="0.508" width="0.1524" layer="21"/>
<wire x1="1.778" y1="0.508" x2="3.302" y2="0.508" width="0.1524" layer="51"/>
<wire x1="3.302" y1="0.508" x2="3.683" y2="0.508" width="0.1524" layer="21"/>
<wire x1="3.683" y1="0.508" x2="3.683" y2="7.112" width="0.1524" layer="21"/>
<wire x1="3.175" y1="7.62" x2="-3.175" y2="7.62" width="0.1524" layer="21"/>
<wire x1="-0.3048" y1="2.413" x2="-0.3048" y2="1.778" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="1.778" x2="-0.3048" y2="1.143" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="1.778" x2="-1.651" y2="1.778" width="0.1524" layer="21"/>
<wire x1="0.3302" y1="2.413" x2="0.3302" y2="1.778" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="1.778" x2="0.3302" y2="1.143" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="1.778" x2="1.651" y2="1.778" width="0.1524" layer="21"/>
<wire x1="-3.683" y1="7.112" x2="-3.175" y2="7.62" width="0.1524" layer="21" curve="-90"/>
<wire x1="3.175" y1="7.62" x2="3.683" y2="7.112" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.54" y1="0" x2="-2.54" y2="0.254" width="0.508" layer="51"/>
<wire x1="2.54" y1="0" x2="2.54" y2="0.254" width="0.508" layer="51"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" shape="octagon"/>
<text x="-3.302" y="8.001" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.175" y="3.175" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-2.794" y1="0.127" x2="-2.286" y2="0.508" layer="51"/>
<rectangle x1="2.286" y1="0.127" x2="2.794" y2="0.508" layer="51"/>
</package>
<package name="C075-032X103">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 7.5 mm, outline 3.2 x 10.3 mm</description>
<wire x1="4.826" y1="1.524" x2="-4.826" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="1.27" x2="-5.08" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="-1.524" x2="4.826" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-1.27" x2="5.08" y2="1.27" width="0.1524" layer="21"/>
<wire x1="4.826" y1="1.524" x2="5.08" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.826" y1="-1.524" x2="5.08" y2="-1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.08" y1="-1.27" x2="-4.826" y2="-1.524" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.08" y1="1.27" x2="-4.826" y2="1.524" width="0.1524" layer="21" curve="-90"/>
<wire x1="0.508" y1="0" x2="2.54" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0" x2="-0.508" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.508" y1="0.889" x2="-0.508" y2="0" width="0.4064" layer="21"/>
<wire x1="-0.508" y1="0" x2="-0.508" y2="-0.889" width="0.4064" layer="21"/>
<wire x1="0.508" y1="0.889" x2="0.508" y2="0" width="0.4064" layer="21"/>
<wire x1="0.508" y1="0" x2="0.508" y2="-0.889" width="0.4064" layer="21"/>
<pad name="1" x="-3.81" y="0" drill="0.9144" shape="octagon"/>
<pad name="2" x="3.81" y="0" drill="0.9144" shape="octagon"/>
<text x="-4.826" y="1.905" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-4.826" y="-3.048" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C075-042X103">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 7.5 mm, outline 4.2 x 10.3 mm</description>
<wire x1="4.826" y1="2.032" x2="-4.826" y2="2.032" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="1.778" x2="-5.08" y2="-1.778" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="-2.032" x2="4.826" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-1.778" x2="5.08" y2="1.778" width="0.1524" layer="21"/>
<wire x1="4.826" y1="2.032" x2="5.08" y2="1.778" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.826" y1="-2.032" x2="5.08" y2="-1.778" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.08" y1="-1.778" x2="-4.826" y2="-2.032" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.08" y1="1.778" x2="-4.826" y2="2.032" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.27" y1="0" x2="2.667" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.667" y1="0" x2="-2.159" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.159" y1="1.27" x2="-2.159" y2="0" width="0.4064" layer="21"/>
<wire x1="-2.159" y1="0" x2="-2.159" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="0" width="0.4064" layer="21"/>
<wire x1="-1.27" y1="0" x2="-1.27" y2="-1.27" width="0.4064" layer="21"/>
<pad name="1" x="-3.81" y="0" drill="0.9144" shape="octagon"/>
<pad name="2" x="3.81" y="0" drill="0.9144" shape="octagon"/>
<text x="-4.699" y="2.413" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-0.635" y="-1.651" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C075-052X106">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 7.5 mm, outline 5.2 x 10.6 mm</description>
<wire x1="4.953" y1="2.54" x2="-4.953" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-5.207" y1="2.286" x2="-5.207" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="-4.953" y1="-2.54" x2="4.953" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="5.207" y1="-2.286" x2="5.207" y2="2.286" width="0.1524" layer="21"/>
<wire x1="4.953" y1="2.54" x2="5.207" y2="2.286" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.953" y1="-2.54" x2="5.207" y2="-2.286" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.207" y1="-2.286" x2="-4.953" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.207" y1="2.286" x2="-4.953" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.27" y1="0" x2="2.667" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.667" y1="0" x2="-2.159" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.159" y1="1.27" x2="-2.159" y2="0" width="0.4064" layer="21"/>
<wire x1="-2.159" y1="0" x2="-2.159" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="0" width="0.4064" layer="21"/>
<wire x1="-1.27" y1="0" x2="-1.27" y2="-1.27" width="0.4064" layer="21"/>
<pad name="1" x="-3.81" y="0" drill="0.9144" shape="octagon"/>
<pad name="2" x="3.81" y="0" drill="0.9144" shape="octagon"/>
<text x="-4.826" y="2.921" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-0.635" y="-2.032" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C102-043X133">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 10.2 mm, outline 4.3 x 13.3 mm</description>
<wire x1="-3.175" y1="1.27" x2="-3.175" y2="0" width="0.4064" layer="21"/>
<wire x1="-2.286" y1="1.27" x2="-2.286" y2="0" width="0.4064" layer="21"/>
<wire x1="3.81" y1="0" x2="-2.286" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="0" x2="-2.286" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-3.81" y1="0" x2="-3.175" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="0" x2="-3.175" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-6.096" y1="2.032" x2="6.096" y2="2.032" width="0.1524" layer="21"/>
<wire x1="6.604" y1="1.524" x2="6.604" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="6.096" y1="-2.032" x2="-6.096" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="-6.604" y1="-1.524" x2="-6.604" y2="1.524" width="0.1524" layer="21"/>
<wire x1="6.096" y1="2.032" x2="6.604" y2="1.524" width="0.1524" layer="21" curve="-90"/>
<wire x1="6.096" y1="-2.032" x2="6.604" y2="-1.524" width="0.1524" layer="21" curve="90"/>
<wire x1="-6.604" y1="-1.524" x2="-6.096" y2="-2.032" width="0.1524" layer="21" curve="90"/>
<wire x1="-6.604" y1="1.524" x2="-6.096" y2="2.032" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-5.08" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="5.08" y="0" drill="1.016" shape="octagon"/>
<text x="-6.096" y="2.413" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.524" y="-1.651" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C102-054X133">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 10.2 mm, outline 5.4 x 13.3 mm</description>
<wire x1="-3.175" y1="1.27" x2="-3.175" y2="0" width="0.4064" layer="21"/>
<wire x1="-2.286" y1="1.27" x2="-2.286" y2="0" width="0.4064" layer="21"/>
<wire x1="3.81" y1="0" x2="-2.286" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="0" x2="-2.286" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-3.81" y1="0" x2="-3.175" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="0" x2="-3.175" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-6.096" y1="2.54" x2="6.096" y2="2.54" width="0.1524" layer="21"/>
<wire x1="6.604" y1="2.032" x2="6.604" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="6.096" y1="-2.54" x2="-6.096" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-6.604" y1="-2.032" x2="-6.604" y2="2.032" width="0.1524" layer="21"/>
<wire x1="6.096" y1="2.54" x2="6.604" y2="2.032" width="0.1524" layer="21" curve="-90"/>
<wire x1="6.096" y1="-2.54" x2="6.604" y2="-2.032" width="0.1524" layer="21" curve="90"/>
<wire x1="-6.604" y1="-2.032" x2="-6.096" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-6.604" y1="2.032" x2="-6.096" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-5.08" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="5.08" y="0" drill="1.016" shape="octagon"/>
<text x="-6.096" y="2.921" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.524" y="-1.905" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C102-064X133">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 10.2 mm, outline 6.4 x 13.3 mm</description>
<wire x1="-3.175" y1="1.27" x2="-3.175" y2="0" width="0.4064" layer="21"/>
<wire x1="-2.286" y1="1.27" x2="-2.286" y2="0" width="0.4064" layer="21"/>
<wire x1="3.81" y1="0" x2="-2.286" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="0" x2="-2.286" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-3.81" y1="0" x2="-3.175" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="0" x2="-3.175" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-6.096" y1="3.048" x2="6.096" y2="3.048" width="0.1524" layer="21"/>
<wire x1="6.604" y1="2.54" x2="6.604" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="6.096" y1="-3.048" x2="-6.096" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-6.604" y1="-2.54" x2="-6.604" y2="2.54" width="0.1524" layer="21"/>
<wire x1="6.096" y1="3.048" x2="6.604" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<wire x1="6.096" y1="-3.048" x2="6.604" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-6.604" y1="-2.54" x2="-6.096" y2="-3.048" width="0.1524" layer="21" curve="90"/>
<wire x1="-6.604" y1="2.54" x2="-6.096" y2="3.048" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-5.08" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="5.08" y="0" drill="1.016" shape="octagon"/>
<text x="-6.096" y="3.429" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.524" y="-2.032" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C102_152-062X184">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 10.2 mm + 15.2 mm, outline 6.2 x 18.4 mm</description>
<wire x1="-2.286" y1="1.27" x2="-2.286" y2="0" width="0.4064" layer="21"/>
<wire x1="-2.286" y1="0" x2="-2.286" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-3.175" y1="1.27" x2="-3.175" y2="0" width="0.4064" layer="21"/>
<wire x1="-3.175" y1="0" x2="-3.175" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-3.683" y1="0" x2="-3.175" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="0" x2="3.683" y2="0" width="0.1524" layer="21"/>
<wire x1="6.477" y1="0" x2="8.636" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.096" y1="3.048" x2="6.223" y2="3.048" width="0.1524" layer="21"/>
<wire x1="6.223" y1="-3.048" x2="-6.096" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-6.604" y1="-2.54" x2="-6.604" y2="2.54" width="0.1524" layer="21"/>
<wire x1="6.223" y1="3.048" x2="6.731" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<wire x1="6.223" y1="-3.048" x2="6.731" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-6.604" y1="-2.54" x2="-6.096" y2="-3.048" width="0.1524" layer="21" curve="90"/>
<wire x1="-6.604" y1="2.54" x2="-6.096" y2="3.048" width="0.1524" layer="21" curve="-90"/>
<wire x1="6.731" y1="2.54" x2="6.731" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="11.176" y1="3.048" x2="11.684" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<wire x1="11.176" y1="-3.048" x2="11.684" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="11.176" y1="-3.048" x2="7.112" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="7.112" y1="3.048" x2="11.176" y2="3.048" width="0.1524" layer="21"/>
<wire x1="11.684" y1="2.54" x2="11.684" y2="-2.54" width="0.1524" layer="21"/>
<pad name="1" x="-5.08" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="5.08" y="0" drill="1.016" shape="octagon"/>
<pad name="3" x="10.033" y="0" drill="1.016" shape="octagon"/>
<text x="-5.969" y="3.429" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.524" y="-2.286" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C150-054X183">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 15 mm, outline 5.4 x 18.3 mm</description>
<wire x1="-5.08" y1="1.27" x2="-5.08" y2="0" width="0.4064" layer="21"/>
<wire x1="-5.08" y1="0" x2="-5.08" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="1.27" x2="-4.191" y2="0" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="0" x2="-4.191" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="0" x2="6.096" y2="0" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0" x2="-6.096" y2="0" width="0.1524" layer="21"/>
<wire x1="9.017" y1="2.032" x2="9.017" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="8.509" y1="-2.54" x2="-8.509" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-9.017" y1="-2.032" x2="-9.017" y2="2.032" width="0.1524" layer="21"/>
<wire x1="-8.509" y1="2.54" x2="8.509" y2="2.54" width="0.1524" layer="21"/>
<wire x1="8.509" y1="2.54" x2="9.017" y2="2.032" width="0.1524" layer="21" curve="-90"/>
<wire x1="8.509" y1="-2.54" x2="9.017" y2="-2.032" width="0.1524" layer="21" curve="90"/>
<wire x1="-9.017" y1="-2.032" x2="-8.509" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-9.017" y1="2.032" x2="-8.509" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-7.493" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="7.493" y="0" drill="1.016" shape="octagon"/>
<text x="-8.382" y="2.921" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.429" y="-2.032" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C150-064X183">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 15 mm, outline 6.4 x 18.3 mm</description>
<wire x1="-5.08" y1="1.27" x2="-5.08" y2="0" width="0.4064" layer="21"/>
<wire x1="-5.08" y1="0" x2="-5.08" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="1.27" x2="-4.191" y2="0" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="0" x2="-4.191" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="0" x2="6.096" y2="0" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0" x2="-6.096" y2="0" width="0.1524" layer="21"/>
<wire x1="9.017" y1="2.54" x2="9.017" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="8.509" y1="-3.048" x2="-8.509" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-9.017" y1="-2.54" x2="-9.017" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-8.509" y1="3.048" x2="8.509" y2="3.048" width="0.1524" layer="21"/>
<wire x1="8.509" y1="3.048" x2="9.017" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<wire x1="8.509" y1="-3.048" x2="9.017" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-9.017" y1="-2.54" x2="-8.509" y2="-3.048" width="0.1524" layer="21" curve="90"/>
<wire x1="-9.017" y1="2.54" x2="-8.509" y2="3.048" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-7.493" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="7.493" y="0" drill="1.016" shape="octagon"/>
<text x="-8.509" y="3.429" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.429" y="-2.032" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C150-072X183">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 15 mm, outline 7.2 x 18.3 mm</description>
<wire x1="-5.08" y1="1.27" x2="-5.08" y2="0" width="0.4064" layer="21"/>
<wire x1="-5.08" y1="0" x2="-5.08" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="1.27" x2="-4.191" y2="0" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="0" x2="-4.191" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="0" x2="6.096" y2="0" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0" x2="-6.096" y2="0" width="0.1524" layer="21"/>
<wire x1="9.017" y1="3.048" x2="9.017" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="8.509" y1="-3.556" x2="-8.509" y2="-3.556" width="0.1524" layer="21"/>
<wire x1="-9.017" y1="-3.048" x2="-9.017" y2="3.048" width="0.1524" layer="21"/>
<wire x1="-8.509" y1="3.556" x2="8.509" y2="3.556" width="0.1524" layer="21"/>
<wire x1="8.509" y1="3.556" x2="9.017" y2="3.048" width="0.1524" layer="21" curve="-90"/>
<wire x1="8.509" y1="-3.556" x2="9.017" y2="-3.048" width="0.1524" layer="21" curve="90"/>
<wire x1="-9.017" y1="-3.048" x2="-8.509" y2="-3.556" width="0.1524" layer="21" curve="90"/>
<wire x1="-9.017" y1="3.048" x2="-8.509" y2="3.556" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-7.493" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="7.493" y="0" drill="1.016" shape="octagon"/>
<text x="-8.509" y="3.937" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.429" y="-2.286" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C150-084X183">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 15 mm, outline 8.4 x 18.3 mm</description>
<wire x1="-5.08" y1="1.27" x2="-5.08" y2="0" width="0.4064" layer="21"/>
<wire x1="-5.08" y1="0" x2="-5.08" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="1.27" x2="-4.191" y2="0" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="0" x2="-4.191" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="0" x2="6.096" y2="0" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0" x2="-6.096" y2="0" width="0.1524" layer="21"/>
<wire x1="9.017" y1="3.556" x2="9.017" y2="-3.556" width="0.1524" layer="21"/>
<wire x1="8.509" y1="-4.064" x2="-8.509" y2="-4.064" width="0.1524" layer="21"/>
<wire x1="-9.017" y1="-3.556" x2="-9.017" y2="3.556" width="0.1524" layer="21"/>
<wire x1="-8.509" y1="4.064" x2="8.509" y2="4.064" width="0.1524" layer="21"/>
<wire x1="8.509" y1="4.064" x2="9.017" y2="3.556" width="0.1524" layer="21" curve="-90"/>
<wire x1="8.509" y1="-4.064" x2="9.017" y2="-3.556" width="0.1524" layer="21" curve="90"/>
<wire x1="-9.017" y1="-3.556" x2="-8.509" y2="-4.064" width="0.1524" layer="21" curve="90"/>
<wire x1="-9.017" y1="3.556" x2="-8.509" y2="4.064" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-7.493" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="7.493" y="0" drill="1.016" shape="octagon"/>
<text x="-8.509" y="4.445" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.429" y="-2.54" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C150-091X182">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 15 mm, outline 9.1 x 18.2 mm</description>
<wire x1="-5.08" y1="1.27" x2="-5.08" y2="0" width="0.4064" layer="21"/>
<wire x1="-5.08" y1="0" x2="-5.08" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="1.27" x2="-4.191" y2="0" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="0" x2="-4.191" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="0" x2="6.096" y2="0" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0" x2="-6.096" y2="0" width="0.1524" layer="21"/>
<wire x1="9.017" y1="3.937" x2="9.017" y2="-3.937" width="0.1524" layer="21"/>
<wire x1="8.509" y1="-4.445" x2="-8.509" y2="-4.445" width="0.1524" layer="21"/>
<wire x1="-9.017" y1="-3.937" x2="-9.017" y2="3.937" width="0.1524" layer="21"/>
<wire x1="-8.509" y1="4.445" x2="8.509" y2="4.445" width="0.1524" layer="21"/>
<wire x1="8.509" y1="4.445" x2="9.017" y2="3.937" width="0.1524" layer="21" curve="-90"/>
<wire x1="8.509" y1="-4.445" x2="9.017" y2="-3.937" width="0.1524" layer="21" curve="90"/>
<wire x1="-9.017" y1="-3.937" x2="-8.509" y2="-4.445" width="0.1524" layer="21" curve="90"/>
<wire x1="-9.017" y1="3.937" x2="-8.509" y2="4.445" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-7.493" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="7.493" y="0" drill="1.016" shape="octagon"/>
<text x="-8.509" y="4.826" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.429" y="-2.54" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C225-062X268">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 22.5 mm, outline 6.2 x 26.8 mm</description>
<wire x1="-12.827" y1="3.048" x2="12.827" y2="3.048" width="0.1524" layer="21"/>
<wire x1="13.335" y1="2.54" x2="13.335" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="12.827" y1="-3.048" x2="-12.827" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="-2.54" x2="-13.335" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="12.827" y1="3.048" x2="13.335" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<wire x1="12.827" y1="-3.048" x2="13.335" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-13.335" y1="-2.54" x2="-12.827" y2="-3.048" width="0.1524" layer="21" curve="90"/>
<wire x1="-13.335" y1="2.54" x2="-12.827" y2="3.048" width="0.1524" layer="21" curve="-90"/>
<wire x1="-9.652" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="9.652" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-11.303" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="11.303" y="0" drill="1.016" shape="octagon"/>
<text x="-12.7" y="3.429" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C225-074X268">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 22.5 mm, outline 7.4 x 26.8 mm</description>
<wire x1="-12.827" y1="3.556" x2="12.827" y2="3.556" width="0.1524" layer="21"/>
<wire x1="13.335" y1="3.048" x2="13.335" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="12.827" y1="-3.556" x2="-12.827" y2="-3.556" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="-3.048" x2="-13.335" y2="3.048" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="12.827" y1="3.556" x2="13.335" y2="3.048" width="0.1524" layer="21" curve="-90"/>
<wire x1="12.827" y1="-3.556" x2="13.335" y2="-3.048" width="0.1524" layer="21" curve="90"/>
<wire x1="-13.335" y1="-3.048" x2="-12.827" y2="-3.556" width="0.1524" layer="21" curve="90"/>
<wire x1="-13.335" y1="3.048" x2="-12.827" y2="3.556" width="0.1524" layer="21" curve="-90"/>
<wire x1="-9.652" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="9.652" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-11.303" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="11.303" y="0" drill="1.016" shape="octagon"/>
<text x="-12.827" y="3.937" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C225-087X268">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 22.5 mm, outline 8.7 x 26.8 mm</description>
<wire x1="-12.827" y1="4.318" x2="12.827" y2="4.318" width="0.1524" layer="21"/>
<wire x1="13.335" y1="3.81" x2="13.335" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="12.827" y1="-4.318" x2="-12.827" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="-3.81" x2="-13.335" y2="3.81" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="12.827" y1="4.318" x2="13.335" y2="3.81" width="0.1524" layer="21" curve="-90"/>
<wire x1="12.827" y1="-4.318" x2="13.335" y2="-3.81" width="0.1524" layer="21" curve="90"/>
<wire x1="-13.335" y1="-3.81" x2="-12.827" y2="-4.318" width="0.1524" layer="21" curve="90"/>
<wire x1="-13.335" y1="3.81" x2="-12.827" y2="4.318" width="0.1524" layer="21" curve="-90"/>
<wire x1="-9.652" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="9.652" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-11.303" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="11.303" y="0" drill="1.016" shape="octagon"/>
<text x="-12.827" y="4.699" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C225-108X268">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 22.5 mm, outline 10.8 x 26.8 mm</description>
<wire x1="-12.827" y1="5.334" x2="12.827" y2="5.334" width="0.1524" layer="21"/>
<wire x1="13.335" y1="4.826" x2="13.335" y2="-4.826" width="0.1524" layer="21"/>
<wire x1="12.827" y1="-5.334" x2="-12.827" y2="-5.334" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="-4.826" x2="-13.335" y2="4.826" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="12.827" y1="5.334" x2="13.335" y2="4.826" width="0.1524" layer="21" curve="-90"/>
<wire x1="12.827" y1="-5.334" x2="13.335" y2="-4.826" width="0.1524" layer="21" curve="90"/>
<wire x1="-13.335" y1="-4.826" x2="-12.827" y2="-5.334" width="0.1524" layer="21" curve="90"/>
<wire x1="-13.335" y1="4.826" x2="-12.827" y2="5.334" width="0.1524" layer="21" curve="-90"/>
<wire x1="-9.652" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="9.652" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-11.303" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="11.303" y="0" drill="1.016" shape="octagon"/>
<text x="-12.954" y="5.715" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C225-113X268">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 22.5 mm, outline 11.3 x 26.8 mm</description>
<wire x1="-12.827" y1="5.588" x2="12.827" y2="5.588" width="0.1524" layer="21"/>
<wire x1="13.335" y1="5.08" x2="13.335" y2="-5.08" width="0.1524" layer="21"/>
<wire x1="12.827" y1="-5.588" x2="-12.827" y2="-5.588" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="-5.08" x2="-13.335" y2="5.08" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="12.827" y1="5.588" x2="13.335" y2="5.08" width="0.1524" layer="21" curve="-90"/>
<wire x1="12.827" y1="-5.588" x2="13.335" y2="-5.08" width="0.1524" layer="21" curve="90"/>
<wire x1="-13.335" y1="-5.08" x2="-12.827" y2="-5.588" width="0.1524" layer="21" curve="90"/>
<wire x1="-13.335" y1="5.08" x2="-12.827" y2="5.588" width="0.1524" layer="21" curve="-90"/>
<wire x1="-9.652" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="9.652" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-11.303" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="11.303" y="0" drill="1.016" shape="octagon"/>
<text x="-12.954" y="5.969" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C275-093X316">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 27.5 mm, outline 9.3 x 31.6 mm</description>
<wire x1="-15.24" y1="4.572" x2="15.24" y2="4.572" width="0.1524" layer="21"/>
<wire x1="15.748" y1="4.064" x2="15.748" y2="-4.064" width="0.1524" layer="21"/>
<wire x1="15.24" y1="-4.572" x2="-15.24" y2="-4.572" width="0.1524" layer="21"/>
<wire x1="-15.748" y1="-4.064" x2="-15.748" y2="4.064" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="15.24" y1="4.572" x2="15.748" y2="4.064" width="0.1524" layer="21" curve="-90"/>
<wire x1="15.24" y1="-4.572" x2="15.748" y2="-4.064" width="0.1524" layer="21" curve="90"/>
<wire x1="-15.748" y1="-4.064" x2="-15.24" y2="-4.572" width="0.1524" layer="21" curve="90"/>
<wire x1="-15.748" y1="4.064" x2="-15.24" y2="4.572" width="0.1524" layer="21" curve="-90"/>
<wire x1="-11.557" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="11.557" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-13.716" y="0" drill="1.1938" shape="octagon"/>
<pad name="2" x="13.716" y="0" drill="1.1938" shape="octagon"/>
<text x="-15.24" y="4.953" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C275-113X316">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 27.5 mm, outline 11.3 x 31.6 mm</description>
<wire x1="-15.24" y1="5.588" x2="15.24" y2="5.588" width="0.1524" layer="21"/>
<wire x1="15.748" y1="5.08" x2="15.748" y2="-5.08" width="0.1524" layer="21"/>
<wire x1="15.24" y1="-5.588" x2="-15.24" y2="-5.588" width="0.1524" layer="21"/>
<wire x1="-15.748" y1="-5.08" x2="-15.748" y2="5.08" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="15.24" y1="5.588" x2="15.748" y2="5.08" width="0.1524" layer="21" curve="-90"/>
<wire x1="15.24" y1="-5.588" x2="15.748" y2="-5.08" width="0.1524" layer="21" curve="90"/>
<wire x1="-15.748" y1="-5.08" x2="-15.24" y2="-5.588" width="0.1524" layer="21" curve="90"/>
<wire x1="-15.748" y1="5.08" x2="-15.24" y2="5.588" width="0.1524" layer="21" curve="-90"/>
<wire x1="-11.557" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="11.557" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-13.716" y="0" drill="1.1938" shape="octagon"/>
<pad name="2" x="13.716" y="0" drill="1.1938" shape="octagon"/>
<text x="-15.24" y="5.969" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C275-134X316">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 27.5 mm, outline 13.4 x 31.6 mm</description>
<wire x1="-15.24" y1="6.604" x2="15.24" y2="6.604" width="0.1524" layer="21"/>
<wire x1="15.748" y1="6.096" x2="15.748" y2="-6.096" width="0.1524" layer="21"/>
<wire x1="15.24" y1="-6.604" x2="-15.24" y2="-6.604" width="0.1524" layer="21"/>
<wire x1="-15.748" y1="-6.096" x2="-15.748" y2="6.096" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="15.24" y1="6.604" x2="15.748" y2="6.096" width="0.1524" layer="21" curve="-90"/>
<wire x1="15.24" y1="-6.604" x2="15.748" y2="-6.096" width="0.1524" layer="21" curve="90"/>
<wire x1="-15.748" y1="-6.096" x2="-15.24" y2="-6.604" width="0.1524" layer="21" curve="90"/>
<wire x1="-15.748" y1="6.096" x2="-15.24" y2="6.604" width="0.1524" layer="21" curve="-90"/>
<wire x1="-11.557" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="11.557" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-13.716" y="0" drill="1.1938" shape="octagon"/>
<pad name="2" x="13.716" y="0" drill="1.1938" shape="octagon"/>
<text x="-15.24" y="6.985" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C275-205X316">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 27.5 mm, outline 20.5 x 31.6 mm</description>
<wire x1="-15.24" y1="10.16" x2="15.24" y2="10.16" width="0.1524" layer="21"/>
<wire x1="15.748" y1="9.652" x2="15.748" y2="-9.652" width="0.1524" layer="21"/>
<wire x1="15.24" y1="-10.16" x2="-15.24" y2="-10.16" width="0.1524" layer="21"/>
<wire x1="-15.748" y1="-9.652" x2="-15.748" y2="9.652" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="15.24" y1="10.16" x2="15.748" y2="9.652" width="0.1524" layer="21" curve="-90"/>
<wire x1="15.24" y1="-10.16" x2="15.748" y2="-9.652" width="0.1524" layer="21" curve="90"/>
<wire x1="-15.748" y1="-9.652" x2="-15.24" y2="-10.16" width="0.1524" layer="21" curve="90"/>
<wire x1="-15.748" y1="9.652" x2="-15.24" y2="10.16" width="0.1524" layer="21" curve="-90"/>
<wire x1="-11.557" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="11.557" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-13.716" y="0" drill="1.1938" shape="octagon"/>
<pad name="2" x="13.716" y="0" drill="1.1938" shape="octagon"/>
<text x="-15.24" y="10.541" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-4.318" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C325-137X374">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 32.5 mm, outline 13.7 x 37.4 mm</description>
<wire x1="-14.2748" y1="0" x2="-12.7" y2="0" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="1.905" x2="-12.7" y2="0" width="0.4064" layer="21"/>
<wire x1="-11.811" y1="1.905" x2="-11.811" y2="0" width="0.4064" layer="21"/>
<wire x1="-11.811" y1="0" x2="14.2748" y2="0" width="0.1524" layer="21"/>
<wire x1="-11.811" y1="0" x2="-11.811" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-12.7" y1="0" x2="-12.7" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="18.542" y1="6.731" x2="18.542" y2="-6.731" width="0.1524" layer="21"/>
<wire x1="-18.542" y1="6.731" x2="-18.542" y2="-6.731" width="0.1524" layer="21"/>
<wire x1="-18.542" y1="-6.731" x2="18.542" y2="-6.731" width="0.1524" layer="21"/>
<wire x1="18.542" y1="6.731" x2="-18.542" y2="6.731" width="0.1524" layer="21"/>
<pad name="1" x="-16.256" y="0" drill="1.1938" shape="octagon"/>
<pad name="2" x="16.256" y="0" drill="1.1938" shape="octagon"/>
<text x="-18.2372" y="7.0612" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-10.8458" y="-2.8702" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C325-162X374">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 32.5 mm, outline 16.2 x 37.4 mm</description>
<wire x1="-14.2748" y1="0" x2="-12.7" y2="0" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="1.905" x2="-12.7" y2="0" width="0.4064" layer="21"/>
<wire x1="-11.811" y1="1.905" x2="-11.811" y2="0" width="0.4064" layer="21"/>
<wire x1="-11.811" y1="0" x2="14.2748" y2="0" width="0.1524" layer="21"/>
<wire x1="-11.811" y1="0" x2="-11.811" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-12.7" y1="0" x2="-12.7" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="18.542" y1="8.001" x2="18.542" y2="-8.001" width="0.1524" layer="21"/>
<wire x1="-18.542" y1="8.001" x2="-18.542" y2="-8.001" width="0.1524" layer="21"/>
<wire x1="-18.542" y1="-8.001" x2="18.542" y2="-8.001" width="0.1524" layer="21"/>
<wire x1="18.542" y1="8.001" x2="-18.542" y2="8.001" width="0.1524" layer="21"/>
<pad name="1" x="-16.256" y="0" drill="1.1938" shape="octagon"/>
<pad name="2" x="16.256" y="0" drill="1.1938" shape="octagon"/>
<text x="-18.3642" y="8.3312" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-10.8458" y="-2.8702" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C325-182X374">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 32.5 mm, outline 18.2 x 37.4 mm</description>
<wire x1="-14.2748" y1="0" x2="-12.7" y2="0" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="1.905" x2="-12.7" y2="0" width="0.4064" layer="21"/>
<wire x1="-11.811" y1="1.905" x2="-11.811" y2="0" width="0.4064" layer="21"/>
<wire x1="-11.811" y1="0" x2="14.2748" y2="0" width="0.1524" layer="21"/>
<wire x1="-11.811" y1="0" x2="-11.811" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-12.7" y1="0" x2="-12.7" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="18.542" y1="9.017" x2="18.542" y2="-9.017" width="0.1524" layer="21"/>
<wire x1="-18.542" y1="9.017" x2="-18.542" y2="-9.017" width="0.1524" layer="21"/>
<wire x1="-18.542" y1="-9.017" x2="18.542" y2="-9.017" width="0.1524" layer="21"/>
<wire x1="18.542" y1="9.017" x2="-18.542" y2="9.017" width="0.1524" layer="21"/>
<pad name="1" x="-16.256" y="0" drill="1.1938" shape="octagon"/>
<pad name="2" x="16.256" y="0" drill="1.1938" shape="octagon"/>
<text x="-18.3642" y="9.3472" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-10.8458" y="-2.8702" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C375-192X418">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 37.5 mm, outline 19.2 x 41.8 mm</description>
<wire x1="-20.32" y1="8.509" x2="20.32" y2="8.509" width="0.1524" layer="21"/>
<wire x1="20.828" y1="8.001" x2="20.828" y2="-8.001" width="0.1524" layer="21"/>
<wire x1="20.32" y1="-8.509" x2="-20.32" y2="-8.509" width="0.1524" layer="21"/>
<wire x1="-20.828" y1="-8.001" x2="-20.828" y2="8.001" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="20.32" y1="8.509" x2="20.828" y2="8.001" width="0.1524" layer="21" curve="-90"/>
<wire x1="20.32" y1="-8.509" x2="20.828" y2="-8.001" width="0.1524" layer="21" curve="90"/>
<wire x1="-20.828" y1="-8.001" x2="-20.32" y2="-8.509" width="0.1524" layer="21" curve="90"/>
<wire x1="-20.828" y1="8.001" x2="-20.32" y2="8.509" width="0.1524" layer="21" curve="-90"/>
<wire x1="-16.002" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="16.002" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-18.796" y="0" drill="1.3208" shape="octagon"/>
<pad name="2" x="18.796" y="0" drill="1.3208" shape="octagon"/>
<text x="-20.447" y="8.89" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C375-203X418">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 37.5 mm, outline 20.3 x 41.8 mm</description>
<wire x1="-20.32" y1="10.16" x2="20.32" y2="10.16" width="0.1524" layer="21"/>
<wire x1="20.828" y1="9.652" x2="20.828" y2="-9.652" width="0.1524" layer="21"/>
<wire x1="20.32" y1="-10.16" x2="-20.32" y2="-10.16" width="0.1524" layer="21"/>
<wire x1="-20.828" y1="-9.652" x2="-20.828" y2="9.652" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="20.32" y1="10.16" x2="20.828" y2="9.652" width="0.1524" layer="21" curve="-90"/>
<wire x1="20.32" y1="-10.16" x2="20.828" y2="-9.652" width="0.1524" layer="21" curve="90"/>
<wire x1="-20.828" y1="-9.652" x2="-20.32" y2="-10.16" width="0.1524" layer="21" curve="90"/>
<wire x1="-20.828" y1="9.652" x2="-20.32" y2="10.16" width="0.1524" layer="21" curve="-90"/>
<wire x1="-16.002" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="16.002" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-18.796" y="0" drill="1.3208" shape="octagon"/>
<pad name="2" x="18.796" y="0" drill="1.3208" shape="octagon"/>
<text x="-20.32" y="10.541" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C050-035X075">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 5 mm, outline 3.5 x 7.5 mm</description>
<wire x1="-0.3048" y1="0.635" x2="-0.3048" y2="0" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-0.3048" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="0.3302" y1="0.635" x2="0.3302" y2="0" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="0.3302" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.683" y1="1.524" x2="-3.683" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="-1.778" x2="3.429" y2="-1.778" width="0.1524" layer="21"/>
<wire x1="3.683" y1="-1.524" x2="3.683" y2="1.524" width="0.1524" layer="21"/>
<wire x1="3.429" y1="1.778" x2="-3.429" y2="1.778" width="0.1524" layer="21"/>
<wire x1="3.429" y1="1.778" x2="3.683" y2="1.524" width="0.1524" layer="21" curve="-90"/>
<wire x1="3.429" y1="-1.778" x2="3.683" y2="-1.524" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="-1.524" x2="-3.429" y2="-1.778" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="1.524" x2="-3.429" y2="1.778" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" shape="octagon"/>
<text x="-3.556" y="2.159" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.556" y="-3.429" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C375-155X418">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 37.5 mm, outline 15.5 x 41.8 mm</description>
<wire x1="-20.32" y1="7.62" x2="20.32" y2="7.62" width="0.1524" layer="21"/>
<wire x1="20.828" y1="7.112" x2="20.828" y2="-7.112" width="0.1524" layer="21"/>
<wire x1="20.32" y1="-7.62" x2="-20.32" y2="-7.62" width="0.1524" layer="21"/>
<wire x1="-20.828" y1="-7.112" x2="-20.828" y2="7.112" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="20.32" y1="7.62" x2="20.828" y2="7.112" width="0.1524" layer="21" curve="-90"/>
<wire x1="20.32" y1="-7.62" x2="20.828" y2="-7.112" width="0.1524" layer="21" curve="90"/>
<wire x1="-20.828" y1="-7.112" x2="-20.32" y2="-7.62" width="0.1524" layer="21" curve="90"/>
<wire x1="-20.828" y1="7.112" x2="-20.32" y2="7.62" width="0.1524" layer="21" curve="-90"/>
<wire x1="-16.002" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="16.002" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-18.796" y="0" drill="1.3208" shape="octagon"/>
<pad name="2" x="18.796" y="0" drill="1.3208" shape="octagon"/>
<text x="-20.447" y="8.001" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C075-063X106">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 7.5 mm, outline 6.3 x 10.6 mm</description>
<wire x1="4.953" y1="3.048" x2="-4.953" y2="3.048" width="0.1524" layer="21"/>
<wire x1="-5.207" y1="2.794" x2="-5.207" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="-4.953" y1="-3.048" x2="4.953" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="5.207" y1="-2.794" x2="5.207" y2="2.794" width="0.1524" layer="21"/>
<wire x1="4.953" y1="3.048" x2="5.207" y2="2.794" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.953" y1="-3.048" x2="5.207" y2="-2.794" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.207" y1="-2.794" x2="-4.953" y2="-3.048" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.207" y1="2.794" x2="-4.953" y2="3.048" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.27" y1="0" x2="2.667" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.667" y1="0" x2="-2.159" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.159" y1="1.27" x2="-2.159" y2="0" width="0.4064" layer="21"/>
<wire x1="-2.159" y1="0" x2="-2.159" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="0" width="0.4064" layer="21"/>
<wire x1="-1.27" y1="0" x2="-1.27" y2="-1.27" width="0.4064" layer="21"/>
<pad name="1" x="-3.81" y="0" drill="0.9144" shape="octagon"/>
<pad name="2" x="3.81" y="0" drill="0.9144" shape="octagon"/>
<text x="-4.826" y="3.429" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-0.635" y="-2.54" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C275-154X316">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 27.5 mm, outline 15.4 x 31.6 mm</description>
<wire x1="-15.24" y1="7.62" x2="15.24" y2="7.62" width="0.1524" layer="21"/>
<wire x1="15.748" y1="7.112" x2="15.748" y2="-7.112" width="0.1524" layer="21"/>
<wire x1="15.24" y1="-7.62" x2="-15.24" y2="-7.62" width="0.1524" layer="21"/>
<wire x1="-15.748" y1="-7.112" x2="-15.748" y2="7.112" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="15.24" y1="7.62" x2="15.748" y2="7.112" width="0.1524" layer="21" curve="-90"/>
<wire x1="15.24" y1="-7.62" x2="15.748" y2="-7.112" width="0.1524" layer="21" curve="90"/>
<wire x1="-15.748" y1="-7.112" x2="-15.24" y2="-7.62" width="0.1524" layer="21" curve="90"/>
<wire x1="-15.748" y1="7.112" x2="-15.24" y2="7.62" width="0.1524" layer="21" curve="-90"/>
<wire x1="-11.557" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="11.557" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-13.716" y="0" drill="1.1938" shape="octagon"/>
<pad name="2" x="13.716" y="0" drill="1.1938" shape="octagon"/>
<text x="-15.24" y="8.001" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C275-173X316">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 27.5 mm, outline 17.3 x 31.6 mm</description>
<wire x1="-15.24" y1="8.509" x2="15.24" y2="8.509" width="0.1524" layer="21"/>
<wire x1="15.748" y1="8.001" x2="15.748" y2="-8.001" width="0.1524" layer="21"/>
<wire x1="15.24" y1="-8.509" x2="-15.24" y2="-8.509" width="0.1524" layer="21"/>
<wire x1="-15.748" y1="-8.001" x2="-15.748" y2="8.001" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="15.24" y1="8.509" x2="15.748" y2="8.001" width="0.1524" layer="21" curve="-90"/>
<wire x1="15.24" y1="-8.509" x2="15.748" y2="-8.001" width="0.1524" layer="21" curve="90"/>
<wire x1="-15.748" y1="-8.001" x2="-15.24" y2="-8.509" width="0.1524" layer="21" curve="90"/>
<wire x1="-15.748" y1="8.001" x2="-15.24" y2="8.509" width="0.1524" layer="21" curve="-90"/>
<wire x1="-11.557" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="11.557" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-13.716" y="0" drill="1.1938" shape="octagon"/>
<pad name="2" x="13.716" y="0" drill="1.1938" shape="octagon"/>
<text x="-15.24" y="8.89" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C0402K">
<description>&lt;b&gt;Ceramic Chip Capacitor KEMET 0204 reflow solder&lt;/b&gt;&lt;p&gt;
Metric Code Size 1005</description>
<wire x1="-0.425" y1="0.2" x2="0.425" y2="0.2" width="0.1016" layer="51"/>
<wire x1="0.425" y1="-0.2" x2="-0.425" y2="-0.2" width="0.1016" layer="51"/>
<smd name="1" x="-0.6" y="0" dx="0.925" dy="0.74" layer="1"/>
<smd name="2" x="0.6" y="0" dx="0.925" dy="0.74" layer="1"/>
<text x="-0.5" y="0.425" size="1.016" layer="25">&gt;NAME</text>
<text x="-0.5" y="-1.45" size="1.016" layer="27">&gt;VALUE</text>
<rectangle x1="-0.5" y1="-0.25" x2="-0.225" y2="0.25" layer="51"/>
<rectangle x1="0.225" y1="-0.25" x2="0.5" y2="0.25" layer="51"/>
</package>
<package name="C0603K">
<description>&lt;b&gt;Ceramic Chip Capacitor KEMET 0603 reflow solder&lt;/b&gt;&lt;p&gt;
Metric Code Size 1608</description>
<wire x1="-0.725" y1="0.35" x2="0.725" y2="0.35" width="0.1016" layer="51"/>
<wire x1="0.725" y1="-0.35" x2="-0.725" y2="-0.35" width="0.1016" layer="51"/>
<smd name="1" x="-0.875" y="0" dx="1.05" dy="1.08" layer="1"/>
<smd name="2" x="0.875" y="0" dx="1.05" dy="1.08" layer="1"/>
<text x="-0.8" y="0.65" size="1.016" layer="25">&gt;NAME</text>
<text x="-0.8" y="-1.65" size="1.016" layer="27">&gt;VALUE</text>
<rectangle x1="-0.8" y1="-0.4" x2="-0.45" y2="0.4" layer="51"/>
<rectangle x1="0.45" y1="-0.4" x2="0.8" y2="0.4" layer="51"/>
</package>
<package name="C0805K">
<description>&lt;b&gt;Ceramic Chip Capacitor KEMET 0805 reflow solder&lt;/b&gt;&lt;p&gt;
Metric Code Size 2012</description>
<wire x1="-0.925" y1="0.6" x2="0.925" y2="0.6" width="0.1016" layer="51"/>
<wire x1="0.925" y1="-0.6" x2="-0.925" y2="-0.6" width="0.1016" layer="51"/>
<smd name="1" x="-1" y="0" dx="1.3" dy="1.6" layer="1"/>
<smd name="2" x="1" y="0" dx="1.3" dy="1.6" layer="1"/>
<text x="-1" y="0.875" size="1.016" layer="25">&gt;NAME</text>
<text x="-1" y="-1.9" size="1.016" layer="27">&gt;VALUE</text>
<rectangle x1="-1" y1="-0.65" x2="-0.5" y2="0.65" layer="51"/>
<rectangle x1="0.5" y1="-0.65" x2="1" y2="0.65" layer="51"/>
</package>
<package name="C1206K">
<description>&lt;b&gt;Ceramic Chip Capacitor KEMET 1206 reflow solder&lt;/b&gt;&lt;p&gt;
Metric Code Size 3216</description>
<wire x1="-1.525" y1="0.75" x2="1.525" y2="0.75" width="0.1016" layer="51"/>
<wire x1="1.525" y1="-0.75" x2="-1.525" y2="-0.75" width="0.1016" layer="51"/>
<smd name="1" x="-1.5" y="0" dx="1.5" dy="2" layer="1"/>
<smd name="2" x="1.5" y="0" dx="1.5" dy="2" layer="1"/>
<text x="-1.6" y="1.1" size="1.016" layer="25">&gt;NAME</text>
<text x="-1.6" y="-2.1" size="1.016" layer="27">&gt;VALUE</text>
<rectangle x1="-1.6" y1="-0.8" x2="-1.1" y2="0.8" layer="51"/>
<rectangle x1="1.1" y1="-0.8" x2="1.6" y2="0.8" layer="51"/>
</package>
<package name="C1210K">
<description>&lt;b&gt;Ceramic Chip Capacitor KEMET 1210 reflow solder&lt;/b&gt;&lt;p&gt;
Metric Code Size 3225</description>
<wire x1="-1.525" y1="1.175" x2="1.525" y2="1.175" width="0.1016" layer="51"/>
<wire x1="1.525" y1="-1.175" x2="-1.525" y2="-1.175" width="0.1016" layer="51"/>
<smd name="1" x="-1.5" y="0" dx="1.5" dy="2.9" layer="1"/>
<smd name="2" x="1.5" y="0" dx="1.5" dy="2.9" layer="1"/>
<text x="-1.6" y="1.55" size="1.016" layer="25">&gt;NAME</text>
<text x="-1.6" y="-2.575" size="1.016" layer="27">&gt;VALUE</text>
<rectangle x1="-1.6" y1="-1.25" x2="-1.1" y2="1.25" layer="51"/>
<rectangle x1="1.1" y1="-1.25" x2="1.6" y2="1.25" layer="51"/>
</package>
<package name="C1812K">
<description>&lt;b&gt;Ceramic Chip Capacitor KEMET 1812 reflow solder&lt;/b&gt;&lt;p&gt;
Metric Code Size 4532</description>
<wire x1="-2.175" y1="1.525" x2="2.175" y2="1.525" width="0.1016" layer="51"/>
<wire x1="2.175" y1="-1.525" x2="-2.175" y2="-1.525" width="0.1016" layer="51"/>
<smd name="1" x="-2.05" y="0" dx="1.8" dy="3.7" layer="1"/>
<smd name="2" x="2.05" y="0" dx="1.8" dy="3.7" layer="1"/>
<text x="-2.25" y="1.95" size="1.016" layer="25">&gt;NAME</text>
<text x="-2.25" y="-2.975" size="1.016" layer="27">&gt;VALUE</text>
<rectangle x1="-2.25" y1="-1.6" x2="-1.65" y2="1.6" layer="51"/>
<rectangle x1="1.65" y1="-1.6" x2="2.25" y2="1.6" layer="51"/>
</package>
<package name="C1825K">
<description>&lt;b&gt;Ceramic Chip Capacitor KEMET 1825 reflow solder&lt;/b&gt;&lt;p&gt;
Metric Code Size 4564</description>
<wire x1="-1.525" y1="3.125" x2="1.525" y2="3.125" width="0.1016" layer="51"/>
<wire x1="1.525" y1="-3.125" x2="-1.525" y2="-3.125" width="0.1016" layer="51"/>
<smd name="1" x="-1.5" y="0" dx="1.8" dy="6.9" layer="1"/>
<smd name="2" x="1.5" y="0" dx="1.8" dy="6.9" layer="1"/>
<text x="-1.6" y="3.55" size="1.016" layer="25">&gt;NAME</text>
<text x="-1.6" y="-4.625" size="1.016" layer="27">&gt;VALUE</text>
<rectangle x1="-1.6" y1="-3.2" x2="-1.1" y2="3.2" layer="51"/>
<rectangle x1="1.1" y1="-3.2" x2="1.6" y2="3.2" layer="51"/>
</package>
<package name="C2220K">
<description>&lt;b&gt;Ceramic Chip Capacitor KEMET 2220 reflow solder&lt;/b&gt;&lt;p&gt;Metric Code Size 5650</description>
<wire x1="-2.725" y1="2.425" x2="2.725" y2="2.425" width="0.1016" layer="51"/>
<wire x1="2.725" y1="-2.425" x2="-2.725" y2="-2.425" width="0.1016" layer="51"/>
<smd name="1" x="-2.55" y="0" dx="1.85" dy="5.5" layer="1"/>
<smd name="2" x="2.55" y="0" dx="1.85" dy="5.5" layer="1"/>
<text x="-2.8" y="2.95" size="1.016" layer="25">&gt;NAME</text>
<text x="-2.8" y="-3.975" size="1.016" layer="27">&gt;VALUE</text>
<rectangle x1="-2.8" y1="-2.5" x2="-2.2" y2="2.5" layer="51"/>
<rectangle x1="2.2" y1="-2.5" x2="2.8" y2="2.5" layer="51"/>
</package>
<package name="C2225K">
<description>&lt;b&gt;Ceramic Chip Capacitor KEMET 2225 reflow solder&lt;/b&gt;&lt;p&gt;Metric Code Size 5664</description>
<wire x1="-2.725" y1="3.075" x2="2.725" y2="3.075" width="0.1016" layer="51"/>
<wire x1="2.725" y1="-3.075" x2="-2.725" y2="-3.075" width="0.1016" layer="51"/>
<smd name="1" x="-2.55" y="0" dx="1.85" dy="6.8" layer="1"/>
<smd name="2" x="2.55" y="0" dx="1.85" dy="6.8" layer="1"/>
<text x="-2.8" y="3.6" size="1.016" layer="25">&gt;NAME</text>
<text x="-2.8" y="-4.575" size="1.016" layer="27">&gt;VALUE</text>
<rectangle x1="-2.8" y1="-3.15" x2="-2.2" y2="3.15" layer="51"/>
<rectangle x1="2.2" y1="-3.15" x2="2.8" y2="3.15" layer="51"/>
</package>
<package name="HPC0201">
<description>&lt;b&gt; &lt;/b&gt;&lt;p&gt;
Source: http://www.vishay.com/docs/10129/hpc0201a.pdf</description>
<smd name="1" x="-0.18" y="0" dx="0.2" dy="0.35" layer="1"/>
<smd name="2" x="0.18" y="0" dx="0.2" dy="0.35" layer="1"/>
<text x="-0.75" y="0.74" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.785" y="-1.865" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.305" y1="-0.15" x2="0.305" y2="0.15" layer="51"/>
</package>
<package name="C0201">
<description>Source: http://www.avxcorp.com/docs/catalogs/cx5r.pdf</description>
<smd name="1" x="-0.25" y="0" dx="0.25" dy="0.35" layer="1"/>
<smd name="2" x="0.25" y="0" dx="0.25" dy="0.35" layer="1"/>
<text x="-0.635" y="0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-1.905" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.3" y1="-0.15" x2="-0.15" y2="0.15" layer="51"/>
<rectangle x1="0.15" y1="-0.15" x2="0.3" y2="0.15" layer="51"/>
<rectangle x1="-0.15" y1="0.1" x2="0.15" y2="0.15" layer="51"/>
<rectangle x1="-0.15" y1="-0.15" x2="0.15" y2="-0.1" layer="51"/>
</package>
<package name="C1808">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
Source: AVX .. aphvc.pdf</description>
<wire x1="-1.4732" y1="0.9502" x2="1.4732" y2="0.9502" width="0.1016" layer="51"/>
<wire x1="-1.4478" y1="-0.9502" x2="1.4732" y2="-0.9502" width="0.1016" layer="51"/>
<smd name="1" x="-1.95" y="0" dx="1.6" dy="2.2" layer="1"/>
<smd name="2" x="1.95" y="0" dx="1.6" dy="2.2" layer="1"/>
<text x="-2.233" y="1.827" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.233" y="-2.842" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-2.275" y1="-1.015" x2="-1.225" y2="1.015" layer="51"/>
<rectangle x1="1.225" y1="-1.015" x2="2.275" y2="1.015" layer="51"/>
</package>
<package name="C3640">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
Source: AVX .. aphvc.pdf</description>
<wire x1="-3.8322" y1="5.0496" x2="3.8322" y2="5.0496" width="0.1016" layer="51"/>
<wire x1="-3.8322" y1="-5.0496" x2="3.8322" y2="-5.0496" width="0.1016" layer="51"/>
<smd name="1" x="-4.267" y="0" dx="2.6" dy="10.7" layer="1"/>
<smd name="2" x="4.267" y="0" dx="2.6" dy="10.7" layer="1"/>
<text x="-4.647" y="6.465" size="1.27" layer="25">&gt;NAME</text>
<text x="-4.647" y="-7.255" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-4.57" y1="-5.1" x2="-3.05" y2="5.1" layer="51"/>
<rectangle x1="3.05" y1="-5.1" x2="4.5688" y2="5.1" layer="51"/>
</package>
<package name="C01005">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;</description>
<rectangle x1="-0.1999" y1="-0.3" x2="0.1999" y2="0.3" layer="35"/>
<smd name="1" x="-0.1625" y="0" dx="0.2" dy="0.25" layer="1"/>
<smd name="2" x="0.1625" y="0" dx="0.2" dy="0.25" layer="1"/>
<text x="-0.4" y="0.3" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.4" y="-1.6" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.2" y1="-0.1" x2="-0.075" y2="0.1" layer="51"/>
<rectangle x1="0.075" y1="-0.1" x2="0.2" y2="0.1" layer="51"/>
<rectangle x1="-0.15" y1="0.05" x2="0.15" y2="0.1" layer="51"/>
<rectangle x1="-0.15" y1="-0.1" x2="0.15" y2="-0.05" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="C-EU">
<wire x1="0" y1="0" x2="0" y2="-0.508" width="0.1524" layer="94"/>
<wire x1="0" y1="-2.54" x2="0" y2="-2.032" width="0.1524" layer="94"/>
<text x="1.524" y="0.381" size="1.778" layer="95">&gt;NAME</text>
<text x="1.524" y="-4.699" size="1.778" layer="96">&gt;VALUE</text>
<rectangle x1="-2.032" y1="-2.032" x2="2.032" y2="-1.524" layer="94"/>
<rectangle x1="-2.032" y1="-1.016" x2="2.032" y2="-0.508" layer="94"/>
<pin name="1" x="0" y="2.54" visible="off" length="short" direction="pas" swaplevel="1" rot="R270"/>
<pin name="2" x="0" y="-5.08" visible="off" length="short" direction="pas" swaplevel="1" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="C-EU" prefix="C" uservalue="yes">
<description>&lt;B&gt;CAPACITOR&lt;/B&gt;, European symbol</description>
<gates>
<gate name="G$1" symbol="C-EU" x="0" y="0"/>
</gates>
<devices>
<device name="C0402" package="C0402">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="C0504" package="C0504">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="C0603" package="C0603">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="C0805" package="C0805">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="C1206" package="C1206">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="C1210" package="C1210">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="C1310" package="C1310">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="C1608" package="C1608">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="C1812" package="C1812">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="C1825" package="C1825">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="C2012" package="C2012">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="C3216" package="C3216">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="C3225" package="C3225">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="C4532" package="C4532">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="C4564" package="C4564">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="025-024X044" package="C025-024X044">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="025-025X050" package="C025-025X050">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="025-030X050" package="C025-030X050">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="025-040X050" package="C025-040X050">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="025-050X050" package="C025-050X050">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="025-060X050" package="C025-060X050">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="C025_050-024X070" package="C025_050-024X070">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="025_050-025X075" package="C025_050-025X075">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="025_050-035X075" package="C025_050-035X075">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="025_050-045X075" package="C025_050-045X075">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="025_050-055X075" package="C025_050-055X075">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="050-024X044" package="C050-024X044">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="050-025X075" package="C050-025X075">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="050-045X075" package="C050-045X075">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="050-030X075" package="C050-030X075">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="050-050X075" package="C050-050X075">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="050-055X075" package="C050-055X075">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="050-075X075" package="C050-075X075">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="050H075X075" package="C050H075X075">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="075-032X103" package="C075-032X103">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="075-042X103" package="C075-042X103">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="075-052X106" package="C075-052X106">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="102-043X133" package="C102-043X133">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="102-054X133" package="C102-054X133">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="102-064X133" package="C102-064X133">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="102_152-062X184" package="C102_152-062X184">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="150-054X183" package="C150-054X183">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="150-064X183" package="C150-064X183">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="150-072X183" package="C150-072X183">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="150-084X183" package="C150-084X183">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="150-091X182" package="C150-091X182">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="225-062X268" package="C225-062X268">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="225-074X268" package="C225-074X268">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="225-087X268" package="C225-087X268">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="225-108X268" package="C225-108X268">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="225-113X268" package="C225-113X268">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="275-093X316" package="C275-093X316">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="275-113X316" package="C275-113X316">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="275-134X316" package="C275-134X316">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="275-205X316" package="C275-205X316">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="325-137X374" package="C325-137X374">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="325-162X374" package="C325-162X374">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="325-182X374" package="C325-182X374">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="375-192X418" package="C375-192X418">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="375-203X418" package="C375-203X418">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="050-035X075" package="C050-035X075">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="375-155X418" package="C375-155X418">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="075-063X106" package="C075-063X106">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="275-154X316" package="C275-154X316">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="275-173X316" package="C275-173X316">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="C0402K" package="C0402K">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="C0603K" package="C0603K">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="C0805K" package="C0805K">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="C1206K" package="C1206K">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="C1210K" package="C1210K">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="C1812K" package="C1812K">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="C1825K" package="C1825K">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="C2220K" package="C2220K">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="C2225K" package="C2225K">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="HPC0201" package="HPC0201">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="C0201" package="C0201">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="C1808" package="C1808">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="C3640" package="C3640">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="01005" package="C01005">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply1">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
 GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
 Please keep in mind, that these devices are necessary for the
 automatic wiring of the supply signals.&lt;p&gt;
 The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
 In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
 &lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="GND">
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
<symbol name="VCC">
<wire x1="1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="VCC" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="GND" prefix="GND">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="VCC" prefix="P+">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="VCC" symbol="VCC" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="relay">
<description>&lt;b&gt;Relays&lt;/b&gt;&lt;p&gt;
&lt;ul&gt;
&lt;li&gt;Eichhoff
&lt;li&gt;Finder
&lt;li&gt;Fujitsu
&lt;li&gt;HAMLIN
&lt;li&gt;OMRON
&lt;li&gt;Matsushita
&lt;li&gt;NAiS
&lt;li&gt;Siemens
&lt;li&gt;Schrack
&lt;/ul&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="DS2Y">
<description>&lt;b&gt;MINIATURE RELAY&lt;/b&gt; NAiS&lt;p&gt;
Source: http://www.mew-europe.com/..  en_ds_61005_0023.pdf</description>
<wire x1="-9.9" y1="4.85" x2="9.9" y2="4.85" width="0.2032" layer="21"/>
<wire x1="9.9" y1="4.85" x2="9.9" y2="-4.85" width="0.2032" layer="21"/>
<wire x1="9.9" y1="-4.85" x2="-9.9" y2="-4.85" width="0.2032" layer="21"/>
<wire x1="-9.9" y1="-4.85" x2="-9.9" y2="4.85" width="0.2032" layer="21"/>
<pad name="1" x="-8.89" y="-3.81" drill="0.9"/>
<pad name="4" x="-1.27" y="-3.81" drill="0.9"/>
<pad name="6" x="3.81" y="-3.81" drill="0.9"/>
<pad name="8" x="8.89" y="-3.81" drill="0.9"/>
<pad name="9" x="8.89" y="3.81" drill="0.9"/>
<pad name="11" x="3.81" y="3.81" drill="0.9"/>
<pad name="13" x="-1.27" y="3.81" drill="0.9"/>
<pad name="16" x="-8.89" y="3.81" drill="0.9"/>
<text x="-8.89" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-8.89" y="-1.27" size="1.27" layer="27">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="K+-">
<wire x1="-3.81" y1="-1.905" x2="-1.905" y2="-1.905" width="0.254" layer="94"/>
<wire x1="3.81" y1="-1.905" x2="3.81" y2="1.905" width="0.254" layer="94"/>
<wire x1="3.81" y1="1.905" x2="1.905" y2="1.905" width="0.254" layer="94"/>
<wire x1="-3.81" y1="1.905" x2="-3.81" y2="-1.905" width="0.254" layer="94"/>
<wire x1="0" y1="-2.54" x2="0" y2="-1.905" width="0.1524" layer="94"/>
<wire x1="0" y1="-1.905" x2="3.81" y2="-1.905" width="0.254" layer="94"/>
<wire x1="0" y1="2.54" x2="0" y2="1.905" width="0.1524" layer="94"/>
<wire x1="0" y1="1.905" x2="-3.81" y2="1.905" width="0.254" layer="94"/>
<wire x1="-1.905" y1="-1.905" x2="1.905" y2="1.905" width="0.1524" layer="94"/>
<wire x1="-1.905" y1="-1.905" x2="0" y2="-1.905" width="0.254" layer="94"/>
<wire x1="1.905" y1="1.905" x2="0" y2="1.905" width="0.254" layer="94"/>
<wire x1="-1.016" y1="2.667" x2="-0.508" y2="2.667" width="0.1524" layer="94"/>
<wire x1="-0.762" y1="2.921" x2="-0.762" y2="2.413" width="0.1524" layer="94"/>
<wire x1="-1.016" y1="-2.667" x2="-0.508" y2="-2.667" width="0.1524" layer="94"/>
<text x="1.27" y="2.921" size="1.778" layer="96">&gt;VALUE</text>
<text x="1.27" y="5.08" size="1.778" layer="95">&gt;PART</text>
<pin name="-" x="0" y="-5.08" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="+" x="0" y="5.08" visible="pad" length="short" direction="pas" rot="R270"/>
</symbol>
<symbol name="U">
<wire x1="3.175" y1="5.08" x2="1.905" y2="5.08" width="0.254" layer="94"/>
<wire x1="-3.175" y1="5.08" x2="-1.905" y2="5.08" width="0.254" layer="94"/>
<wire x1="0" y1="1.27" x2="2.54" y2="5.715" width="0.254" layer="94"/>
<wire x1="0" y1="1.27" x2="0" y2="0" width="0.254" layer="94"/>
<circle x="0" y="1.27" radius="0.127" width="0.4064" layer="94"/>
<text x="2.54" y="0" size="1.778" layer="95">&gt;PART</text>
<pin name="O" x="5.08" y="5.08" visible="pad" length="short" direction="pas" rot="R180"/>
<pin name="S" x="-5.08" y="5.08" visible="pad" length="short" direction="pas"/>
<pin name="P" x="0" y="-2.54" visible="pad" length="short" direction="pas" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="DS2Y-S-DC*" prefix="K">
<description>&lt;b&gt;MINIATURE RELAY&lt;/b&gt; NAiS&lt;p&gt;
Source: http://www.mew-europe.com/..  en_ds_61005_0023.pdf</description>
<gates>
<gate name="1" symbol="K+-" x="-7.62" y="0" addlevel="must"/>
<gate name="2" symbol="U" x="10.16" y="5.08" addlevel="always" swaplevel="1"/>
<gate name="3" symbol="U" x="10.16" y="-7.62" addlevel="always" swaplevel="1"/>
</gates>
<devices>
<device name="" package="DS2Y">
<connects>
<connect gate="1" pin="+" pad="1"/>
<connect gate="1" pin="-" pad="16"/>
<connect gate="2" pin="O" pad="6"/>
<connect gate="2" pin="P" pad="4"/>
<connect gate="2" pin="S" pad="8"/>
<connect gate="3" pin="O" pad="11"/>
<connect gate="3" pin="P" pad="13"/>
<connect gate="3" pin="S" pad="9"/>
</connects>
<technologies>
<technology name="1.5V">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="DS2Y-S-DC1.5V" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="10C5827" constant="no"/>
</technology>
<technology name="12V">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="DS2Y-S-DC12V" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="13P3261" constant="no"/>
</technology>
<technology name="24V">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="DS2Y-S-DC24V" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="13P3264" constant="no"/>
</technology>
<technology name="3V">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="DS2Y-S-DC3V" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="10C5832" constant="no"/>
</technology>
<technology name="48V">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="DS2Y-S-DC48V" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="13P3267" constant="no"/>
</technology>
<technology name="5V">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="DS2Y-S-DC5V" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="13P3268" constant="no"/>
</technology>
<technology name="6V">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="DS2Y-S-DC6V" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="13P3271" constant="no"/>
</technology>
<technology name="9V">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="DS2Y-S-DC9V" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="13P3272" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="mcu">
<description>&lt;b&gt;Switches&lt;/b&gt;&lt;p&gt;
Marquardt, Siemens, C&amp;K, ITT, and others&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="PB-5">
<pad name="4" x="-2.54" y="2.54" drill="0.7" diameter="1.6764" rot="R180"/>
<pad name="2" x="-2.54" y="-2.54" drill="0.7" diameter="1.6764" rot="R180"/>
<pad name="3" x="2.54" y="2.54" drill="0.7" diameter="1.6764" rot="R180"/>
<pad name="1" x="2.54" y="-2.54" drill="0.7" diameter="1.6764" rot="R180"/>
<wire x1="-3.4925" y1="4.1275" x2="-3.4925" y2="3.4925" width="0.127" layer="21"/>
<wire x1="-3.4925" y1="3.4925" x2="-4.1275" y2="3.4925" width="0.127" layer="21"/>
<wire x1="-4.1275" y1="3.4925" x2="-4.1275" y2="-3.4925" width="0.127" layer="21"/>
<wire x1="-4.1275" y1="-3.4925" x2="-3.4925" y2="-3.4925" width="0.127" layer="21"/>
<wire x1="-3.4925" y1="-3.4925" x2="-3.4925" y2="-4.1275" width="0.127" layer="21"/>
<wire x1="-3.4925" y1="-4.1275" x2="3.4925" y2="-4.1275" width="0.127" layer="21"/>
<wire x1="3.4925" y1="-4.1275" x2="3.4925" y2="-3.4925" width="0.127" layer="21"/>
<wire x1="3.4925" y1="-3.4925" x2="4.1275" y2="-3.4925" width="0.127" layer="21"/>
<wire x1="4.1275" y1="-3.4925" x2="4.1275" y2="3.4925" width="0.127" layer="21"/>
<wire x1="4.1275" y1="3.4925" x2="3.4925" y2="3.4925" width="0.127" layer="21"/>
<wire x1="3.4925" y1="3.4925" x2="3.4925" y2="4.1275" width="0.127" layer="21"/>
<wire x1="3.4925" y1="4.1275" x2="-3.4925" y2="4.1275" width="0.127" layer="21"/>
<circle x="0" y="0" radius="1.27" width="0.127" layer="21"/>
<wire x1="-2.84988125" y1="1.42875" x2="-2.8575" y2="-1.42875" width="0.127" layer="21"/>
<wire x1="-2.8575" y1="-1.42875" x2="-1.42875" y2="-1.42875" width="0.127" layer="21"/>
<wire x1="-1.42875" y1="-1.42875" x2="-1.42875" y2="-2.8575" width="0.127" layer="21"/>
<wire x1="-1.42113125" y1="-2.849878125" x2="1.42113125" y2="-2.849878125" width="0.127" layer="21"/>
<wire x1="1.42875" y1="-2.8575" x2="1.42875" y2="-1.42875" width="0.127" layer="21"/>
<wire x1="1.42875" y1="-1.42875" x2="2.8575" y2="-1.42875" width="0.127" layer="21"/>
<wire x1="2.8575" y1="-1.42875" x2="2.8575" y2="1.42113125" width="0.127" layer="21"/>
<wire x1="2.84988125" y1="1.42875" x2="1.42875" y2="1.42875" width="0.127" layer="21"/>
<wire x1="1.42875" y1="1.42875" x2="1.42875" y2="2.8575" width="0.127" layer="21"/>
<wire x1="1.42875" y1="2.8575" x2="-1.42875" y2="2.8575" width="0.127" layer="21"/>
<wire x1="-1.42875" y1="2.8575" x2="-1.42875" y2="1.42875" width="0.127" layer="21"/>
<wire x1="-1.42875" y1="1.42875" x2="-2.84988125" y2="1.42875" width="0.127" layer="21"/>
<wire x1="-4.1275" y1="3.4925" x2="-4.1275" y2="4.1275" width="0.127" layer="21"/>
<wire x1="-4.1275" y1="4.1275" x2="-3.4925" y2="4.1275" width="0.127" layer="21"/>
<wire x1="3.4925" y1="4.1275" x2="4.1275" y2="4.1275" width="0.127" layer="21"/>
<wire x1="4.1275" y1="4.1275" x2="4.1275" y2="3.4925" width="0.127" layer="21"/>
<wire x1="4.1275" y1="-3.4925" x2="4.1275" y2="-4.1275" width="0.127" layer="21"/>
<wire x1="4.1275" y1="-4.1275" x2="3.4925" y2="-4.1275" width="0.127" layer="21"/>
<wire x1="-4.1275" y1="-3.4925" x2="-4.1275" y2="-4.1275" width="0.127" layer="21"/>
<wire x1="-4.1275" y1="-4.1275" x2="-3.4925" y2="-4.1275" width="0.127" layer="21"/>
<text x="-4.1275" y="4.3815" size="1.27" layer="21">&gt;NAME</text>
</package>
<package name="DIL28-3">
<description>&lt;B&gt;Dual In Line&lt;/B&gt;&lt;p&gt;
package type P</description>
<wire x1="-17.78" y1="-1.27" x2="-17.78" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="1.27" x2="-17.78" y2="-1.27" width="0.1524" layer="21" curve="-180"/>
<wire x1="17.78" y1="-2.54" x2="17.78" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="2.54" x2="-17.78" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="2.54" x2="17.78" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-17.653" y1="-2.54" x2="17.78" y2="-2.54" width="0.1524" layer="21"/>
<pad name="1" x="-16.51" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="2" x="-13.97" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="3" x="-11.43" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="4" x="-8.89" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="5" x="-6.35" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="6" x="-3.81" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="7" x="-1.27" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="8" x="1.27" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="9" x="3.81" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="10" x="6.35" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="11" x="8.89" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="12" x="11.43" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="13" x="13.97" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="14" x="16.51" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="15" x="16.51" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="16" x="13.97" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="17" x="11.43" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="18" x="8.89" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="19" x="6.35" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="20" x="3.81" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="21" x="1.27" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="22" x="-1.27" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="23" x="-3.81" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="24" x="-6.35" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="25" x="-8.89" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="26" x="-11.43" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="27" x="-13.97" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="28" x="-16.51" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<text x="-17.907" y="-2.54" size="1.778" layer="25" rot="R90">&gt;NAME</text>
<text x="-15.748" y="-0.9398" size="1.778" layer="27">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="TS2">
<wire x1="0" y1="1.905" x2="0" y2="2.54" width="0.254" layer="94"/>
<wire x1="-4.445" y1="1.905" x2="-3.175" y2="1.905" width="0.254" layer="94"/>
<wire x1="-4.445" y1="-1.905" x2="-3.175" y2="-1.905" width="0.254" layer="94"/>
<wire x1="-4.445" y1="1.905" x2="-4.445" y2="0" width="0.254" layer="94"/>
<wire x1="-4.445" y1="0" x2="-4.445" y2="-1.905" width="0.254" layer="94"/>
<wire x1="-2.54" y1="0" x2="-1.905" y2="0" width="0.1524" layer="94"/>
<wire x1="-1.27" y1="0" x2="-0.635" y2="0" width="0.1524" layer="94"/>
<wire x1="-4.445" y1="0" x2="-3.175" y2="0" width="0.1524" layer="94"/>
<wire x1="2.54" y1="2.54" x2="0" y2="2.54" width="0.1524" layer="94"/>
<wire x1="2.54" y1="-2.54" x2="0" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="0" y1="-2.54" x2="-1.27" y2="1.905" width="0.254" layer="94"/>
<circle x="0" y="-2.54" radius="0.127" width="0.4064" layer="94"/>
<circle x="0" y="2.54" radius="0.127" width="0.4064" layer="94"/>
<text x="-6.35" y="-2.54" size="1.778" layer="95" rot="R90">&gt;NAME</text>
<text x="-3.81" y="3.175" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="P" x="0" y="-5.08" visible="pad" length="short" direction="pas" swaplevel="2" rot="R90"/>
<pin name="S" x="0" y="5.08" visible="pad" length="short" direction="pas" swaplevel="1" rot="R270"/>
<pin name="S1" x="2.54" y="5.08" visible="pad" length="short" direction="pas" swaplevel="1" rot="R270"/>
<pin name="P1" x="2.54" y="-5.08" visible="pad" length="short" direction="pas" swaplevel="2" rot="R90"/>
</symbol>
<symbol name="PIC16F876A-X/SP">
<pin name="*MCLR/VPP" x="-27.94" y="17.78" direction="pas"/>
<pin name="RA0/AN0" x="-27.94" y="15.24" direction="pas"/>
<pin name="RA1/AN1" x="-27.94" y="12.7" direction="pas"/>
<pin name="RA2/AN2/VREF-/CVREF" x="-27.94" y="10.16" direction="pas"/>
<pin name="RA3/AN3/VREF+" x="-27.94" y="7.62" direction="pas"/>
<pin name="RA4/T0CKI/C1OUT" x="-27.94" y="5.08" direction="pas"/>
<pin name="RA5/AN4/*SS/C2OUT" x="-27.94" y="2.54" direction="pas"/>
<pin name="VSS_2" x="-27.94" y="0" direction="pas"/>
<pin name="OSC1/CLKI" x="-27.94" y="-2.54" direction="pas"/>
<pin name="OSC2/CLKO" x="-27.94" y="-5.08" direction="pas"/>
<pin name="RC0/T1OSO/T1CKI" x="-27.94" y="-7.62" direction="pas"/>
<pin name="RC1/T1OSI/CCP2" x="-27.94" y="-10.16" direction="pas"/>
<pin name="RC2/CCP1" x="-27.94" y="-12.7" direction="pas"/>
<pin name="RC3/SCK/SCL" x="-27.94" y="-15.24" direction="pas"/>
<pin name="RC4/SDI/SDA" x="25.4" y="-15.24" direction="pas" rot="R180"/>
<pin name="RC5/SDO" x="25.4" y="-12.7" direction="pas" rot="R180"/>
<pin name="RC6/TX/CK" x="25.4" y="-10.16" direction="pas" rot="R180"/>
<pin name="RC7/RX/DT" x="25.4" y="-7.62" direction="pas" rot="R180"/>
<pin name="VSS" x="25.4" y="-5.08" direction="pas" rot="R180"/>
<pin name="VDD" x="25.4" y="-2.54" direction="pas" rot="R180"/>
<pin name="RB0/INT" x="25.4" y="0" direction="pas" rot="R180"/>
<pin name="RB1" x="25.4" y="2.54" direction="pas" rot="R180"/>
<pin name="RB2" x="25.4" y="5.08" direction="pas" rot="R180"/>
<pin name="RB3/PGM" x="25.4" y="7.62" direction="pas" rot="R180"/>
<pin name="RB4" x="25.4" y="10.16" direction="pas" rot="R180"/>
<pin name="RB5" x="25.4" y="12.7" direction="pas" rot="R180"/>
<pin name="RB6/PGC" x="25.4" y="15.24" direction="pas" rot="R180"/>
<pin name="RB7/PGD" x="25.4" y="17.78" direction="pas" rot="R180"/>
<wire x1="-20.32" y1="20.32" x2="-20.32" y2="-20.32" width="0.1524" layer="94"/>
<wire x1="-20.32" y1="-20.32" x2="17.78" y2="-20.32" width="0.1524" layer="94"/>
<wire x1="17.78" y1="-20.32" x2="17.78" y2="20.32" width="0.1524" layer="94"/>
<wire x1="17.78" y1="20.32" x2="-20.32" y2="20.32" width="0.1524" layer="94"/>
<text x="-22.86" y="27.94" size="2.0828" layer="95" ratio="6" rot="SR0">&gt;NAME</text>
<text x="-20.32" y="21.59" size="2.0828" layer="96" ratio="6" rot="SR0">&gt;VALUE</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="PB-SPST">
<gates>
<gate name="G$1" symbol="TS2" x="0" y="0"/>
</gates>
<devices>
<device name="" package="PB-5">
<connects>
<connect gate="G$1" pin="P" pad="1"/>
<connect gate="G$1" pin="P1" pad="2"/>
<connect gate="G$1" pin="S" pad="3"/>
<connect gate="G$1" pin="S1" pad="4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="PIC16F876A-X/SP">
<gates>
<gate name="A" symbol="PIC16F876A-X/SP" x="0" y="0"/>
</gates>
<devices>
<device name="" package="DIL28-3">
<connects>
<connect gate="A" pin="*MCLR/VPP" pad="1"/>
<connect gate="A" pin="OSC1/CLKI" pad="9"/>
<connect gate="A" pin="OSC2/CLKO" pad="10"/>
<connect gate="A" pin="RA0/AN0" pad="2"/>
<connect gate="A" pin="RA1/AN1" pad="3"/>
<connect gate="A" pin="RA2/AN2/VREF-/CVREF" pad="4"/>
<connect gate="A" pin="RA3/AN3/VREF+" pad="5"/>
<connect gate="A" pin="RA4/T0CKI/C1OUT" pad="6"/>
<connect gate="A" pin="RA5/AN4/*SS/C2OUT" pad="7"/>
<connect gate="A" pin="RB0/INT" pad="21"/>
<connect gate="A" pin="RB1" pad="22"/>
<connect gate="A" pin="RB2" pad="23"/>
<connect gate="A" pin="RB3/PGM" pad="24"/>
<connect gate="A" pin="RB4" pad="25"/>
<connect gate="A" pin="RB5" pad="26"/>
<connect gate="A" pin="RB6/PGC" pad="27"/>
<connect gate="A" pin="RB7/PGD" pad="28"/>
<connect gate="A" pin="RC0/T1OSO/T1CKI" pad="11"/>
<connect gate="A" pin="RC1/T1OSI/CCP2" pad="12"/>
<connect gate="A" pin="RC2/CCP1" pad="13"/>
<connect gate="A" pin="RC3/SCK/SCL" pad="14"/>
<connect gate="A" pin="RC4/SDI/SDA" pad="15"/>
<connect gate="A" pin="RC5/SDO" pad="16"/>
<connect gate="A" pin="RC6/TX/CK" pad="17"/>
<connect gate="A" pin="RC7/RX/DT" pad="18"/>
<connect gate="A" pin="VDD" pad="20"/>
<connect gate="A" pin="VSS" pad="19"/>
<connect gate="A" pin="VSS_2" pad="8"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="con-molex">
<description>&lt;b&gt;Molex Connectors&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="70543-02">
<description>&lt;b&gt;C-Grid SL Connector&lt;/b&gt;&lt;p&gt;
 vertical, 2 pin</description>
<wire x1="3.81" y1="-2.8575" x2="3.81" y2="2.8575" width="0.254" layer="21"/>
<wire x1="3.81" y1="2.8575" x2="-3.81" y2="2.8575" width="0.254" layer="21"/>
<wire x1="-3.81" y1="2.8575" x2="-3.81" y2="-2.8575" width="0.254" layer="21"/>
<wire x1="-3.81" y1="-2.8575" x2="-3.4925" y2="-2.8575" width="0.254" layer="21"/>
<wire x1="-3.4925" y1="-2.8575" x2="-3.4925" y2="-3.81" width="0.254" layer="21"/>
<wire x1="-3.4925" y1="-3.81" x2="3.4925" y2="-3.81" width="0.254" layer="21"/>
<wire x1="3.4925" y1="-3.81" x2="3.4925" y2="-2.8575" width="0.254" layer="21"/>
<wire x1="3.4925" y1="-2.8575" x2="3.81" y2="-2.8575" width="0.254" layer="21"/>
<wire x1="-3.175" y1="2.2225" x2="-3.175" y2="-2.2225" width="0.0508" layer="51"/>
<wire x1="3.175" y1="2.2225" x2="3.175" y2="-2.2225" width="0.0508" layer="51"/>
<wire x1="-3.175" y1="2.2225" x2="3.175" y2="2.2225" width="0.0508" layer="51"/>
<wire x1="-3.175" y1="-2.2225" x2="-2.8575" y2="-2.2225" width="0.0508" layer="51"/>
<wire x1="-2.8575" y1="-2.2225" x2="2.8575" y2="-2.2225" width="0.0508" layer="51"/>
<wire x1="2.8575" y1="-2.2225" x2="3.175" y2="-2.2225" width="0.0508" layer="51"/>
<wire x1="2.8575" y1="-3.175" x2="-2.8575" y2="-3.175" width="0.0508" layer="51"/>
<wire x1="-2.8575" y1="-2.2225" x2="-2.8575" y2="-3.175" width="0.0508" layer="51"/>
<wire x1="2.8575" y1="-2.2225" x2="2.8575" y2="-3.175" width="0.0508" layer="51"/>
<pad name="2" x="1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="1" x="-1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-4.445" y="-2.54" size="1.016" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="-3.4925" y="3.4925" size="0.8128" layer="27" ratio="10">&gt;VALUE</text>
<text x="-2.8575" y="-1.5875" size="1.016" layer="51" ratio="10">1</text>
<rectangle x1="1.0319" y1="-0.2381" x2="1.5081" y2="0.2381" layer="51"/>
<rectangle x1="-1.5081" y1="-0.2381" x2="-1.0319" y2="0.2381" layer="51"/>
</package>
<package name="70553-02">
<description>&lt;b&gt;C-Grid SL Connector&lt;/b&gt;&lt;p&gt;
 right angle, 2 pin</description>
<wire x1="3.9688" y1="5.8738" x2="-3.9688" y2="5.8738" width="0.254" layer="21"/>
<wire x1="-1.27" y1="2.54" x2="-1.27" y2="-3.175" width="0.254" layer="21"/>
<wire x1="-1.27" y1="-3.175" x2="1.27" y2="-3.175" width="0.254" layer="21"/>
<wire x1="1.27" y1="-3.175" x2="1.27" y2="2.54" width="0.254" layer="21"/>
<wire x1="-3.9688" y1="5.8738" x2="-3.9688" y2="2.54" width="0.254" layer="21"/>
<wire x1="-3.9688" y1="2.54" x2="-3.175" y2="2.54" width="0.254" layer="21"/>
<wire x1="-3.175" y1="2.54" x2="-1.27" y2="2.54" width="0.254" layer="21"/>
<wire x1="1.27" y1="2.54" x2="3.175" y2="2.54" width="0.254" layer="21"/>
<wire x1="3.175" y1="2.54" x2="3.9688" y2="2.54" width="0.254" layer="21"/>
<wire x1="3.9688" y1="2.54" x2="3.9688" y2="5.8738" width="0.254" layer="21"/>
<wire x1="-3.175" y1="2.54" x2="-3.175" y2="3.175" width="0.254" layer="21"/>
<wire x1="-3.175" y1="3.175" x2="-1.905" y2="4.445" width="0.254" layer="21" curve="-90"/>
<wire x1="-1.905" y1="4.445" x2="1.905" y2="4.445" width="0.254" layer="21"/>
<wire x1="1.905" y1="4.445" x2="3.175" y2="3.175" width="0.254" layer="21" curve="-90"/>
<wire x1="3.175" y1="3.175" x2="3.175" y2="2.54" width="0.254" layer="21"/>
<wire x1="-3.9688" y1="2.54" x2="-3.9688" y2="-5.715" width="0.254" layer="21"/>
<wire x1="-3.9688" y1="-5.715" x2="3.9688" y2="-5.715" width="0.254" layer="21"/>
<wire x1="3.9688" y1="-5.715" x2="3.9688" y2="2.54" width="0.254" layer="21"/>
<wire x1="-2.8575" y1="-5.715" x2="-2.8575" y2="-6.35" width="0.254" layer="51"/>
<wire x1="-2.8575" y1="-6.35" x2="-2.8575" y2="-7.9375" width="0.254" layer="51"/>
<wire x1="2.8575" y1="-7.9375" x2="2.8575" y2="-6.35" width="0.254" layer="51"/>
<wire x1="2.8575" y1="-6.35" x2="2.8575" y2="-5.715" width="0.254" layer="51"/>
<wire x1="-2.8575" y1="-6.35" x2="-1.905" y2="-6.35" width="0.254" layer="51"/>
<wire x1="-1.905" y1="-6.35" x2="-0.635" y2="-6.35" width="0.127" layer="51"/>
<wire x1="-0.635" y1="-6.35" x2="0.635" y2="-6.35" width="0.254" layer="51"/>
<wire x1="0.635" y1="-6.35" x2="1.905" y2="-6.35" width="0.127" layer="51"/>
<wire x1="1.905" y1="-6.35" x2="2.8575" y2="-6.35" width="0.254" layer="51"/>
<wire x1="-1.905" y1="-6.35" x2="-1.905" y2="-7.6835" width="0.254" layer="51"/>
<wire x1="-1.905" y1="-7.6835" x2="-2.159" y2="-7.9375" width="0.254" layer="51" curve="-90"/>
<wire x1="-2.159" y1="-7.9375" x2="-2.8575" y2="-7.9375" width="0.254" layer="51"/>
<wire x1="-0.635" y1="-6.35" x2="-0.635" y2="-7.6835" width="0.254" layer="51"/>
<wire x1="-0.635" y1="-7.6835" x2="-0.381" y2="-7.9375" width="0.254" layer="51" curve="90"/>
<wire x1="0.635" y1="-6.35" x2="0.635" y2="-7.6835" width="0.254" layer="51"/>
<wire x1="0.635" y1="-7.6835" x2="0.381" y2="-7.9375" width="0.254" layer="51" curve="-90"/>
<wire x1="0.381" y1="-7.9375" x2="-0.381" y2="-7.9375" width="0.254" layer="51"/>
<wire x1="1.905" y1="-6.35" x2="1.905" y2="-7.6835" width="0.254" layer="51"/>
<wire x1="1.905" y1="-7.6835" x2="2.159" y2="-7.9375" width="0.254" layer="51" curve="90"/>
<wire x1="2.159" y1="-7.9375" x2="2.8575" y2="-7.9375" width="0.254" layer="51"/>
<pad name="2" x="1.27" y="-7.62" drill="1.0922" shape="long" rot="R90"/>
<pad name="1" x="-1.27" y="-7.62" drill="1.0922" shape="long" rot="R90"/>
<text x="-4.445" y="-5.715" size="1.016" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="5.715" y="-5.715" size="0.8128" layer="27" ratio="10" rot="R90">&gt;VALUE</text>
<rectangle x1="-1.5875" y1="-7.62" x2="-0.9525" y2="-6.35" layer="51"/>
<rectangle x1="0.9525" y1="-7.62" x2="1.5875" y2="-6.35" layer="51"/>
<polygon width="0.0508" layer="21">
<vertex x="-3.81" y="5.8738"/>
<vertex x="-3.3338" y="3.9689"/>
<vertex x="-2.8575" y="5.8738"/>
</polygon>
</package>
<package name="15-91-02">
<description>&lt;b&gt;C-Grid SL Connector&lt;/b&gt;&lt;p&gt;
 right angle SMD, 2 pin</description>
<wire x1="3.9688" y1="5.08" x2="-3.9688" y2="5.08" width="0.254" layer="21"/>
<wire x1="-1.27" y1="1.905" x2="-1.27" y2="-3.81" width="0.254" layer="51"/>
<wire x1="-1.27" y1="-3.81" x2="1.27" y2="-3.81" width="0.254" layer="51"/>
<wire x1="1.27" y1="-3.81" x2="1.27" y2="1.905" width="0.254" layer="51"/>
<wire x1="-3.9688" y1="5.08" x2="-3.9688" y2="2.2225" width="0.254" layer="21"/>
<wire x1="-3.9688" y1="2.2225" x2="-3.9688" y2="1.905" width="0.254" layer="51"/>
<wire x1="-3.9688" y1="1.905" x2="-3.175" y2="1.905" width="0.254" layer="51"/>
<wire x1="-3.175" y1="1.905" x2="-1.27" y2="1.905" width="0.254" layer="51"/>
<wire x1="1.27" y1="1.905" x2="3.175" y2="1.905" width="0.254" layer="51"/>
<wire x1="3.175" y1="1.905" x2="3.9688" y2="1.905" width="0.254" layer="51"/>
<wire x1="3.9688" y1="1.905" x2="3.9688" y2="2.2225" width="0.254" layer="51"/>
<wire x1="3.9688" y1="2.2225" x2="3.9688" y2="5.08" width="0.254" layer="21"/>
<wire x1="-3.175" y1="1.905" x2="-3.175" y2="2.54" width="0.254" layer="51"/>
<wire x1="-3.175" y1="2.54" x2="-1.905" y2="3.81" width="0.254" layer="51" curve="-90"/>
<wire x1="-1.905" y1="3.81" x2="1.905" y2="3.81" width="0.254" layer="51"/>
<wire x1="1.905" y1="3.81" x2="3.175" y2="2.54" width="0.254" layer="51" curve="-90"/>
<wire x1="3.175" y1="2.54" x2="3.175" y2="1.905" width="0.254" layer="51"/>
<wire x1="-3.9688" y1="-0.635" x2="-3.9688" y2="-6.35" width="0.254" layer="21"/>
<wire x1="-3.9688" y1="-6.35" x2="3.9688" y2="-6.35" width="0.254" layer="21"/>
<wire x1="3.9688" y1="-6.35" x2="3.9688" y2="-0.635" width="0.254" layer="21"/>
<wire x1="-2.54" y1="-6.35" x2="-2.54" y2="-8.5725" width="0.254" layer="51"/>
<wire x1="2.54" y1="-8.5725" x2="2.54" y2="-6.35" width="0.254" layer="51"/>
<wire x1="-2.54" y1="-6.985" x2="-1.905" y2="-6.985" width="0.254" layer="51"/>
<wire x1="-0.635" y1="-6.985" x2="0.635" y2="-6.985" width="0.254" layer="51"/>
<wire x1="1.905" y1="-6.985" x2="2.54" y2="-6.985" width="0.254" layer="51"/>
<wire x1="-1.905" y1="-6.985" x2="-1.905" y2="-8.3185" width="0.254" layer="51"/>
<wire x1="-1.905" y1="-8.3185" x2="-2.159" y2="-8.5725" width="0.254" layer="51" curve="-90"/>
<wire x1="-2.159" y1="-8.5725" x2="-2.54" y2="-8.5725" width="0.254" layer="51"/>
<wire x1="0.635" y1="-6.985" x2="0.635" y2="-8.3185" width="0.254" layer="51"/>
<wire x1="0.635" y1="-8.3185" x2="0.381" y2="-8.5725" width="0.254" layer="51" curve="-90"/>
<wire x1="0.381" y1="-8.5725" x2="-0.381" y2="-8.5725" width="0.254" layer="51"/>
<wire x1="-0.381" y1="-8.5725" x2="-0.635" y2="-8.3185" width="0.254" layer="51" curve="-90"/>
<wire x1="-0.635" y1="-8.3185" x2="-0.635" y2="-6.985" width="0.254" layer="51"/>
<wire x1="1.905" y1="-6.985" x2="1.905" y2="-8.3185" width="0.254" layer="51"/>
<wire x1="1.905" y1="-8.3185" x2="2.159" y2="-8.5725" width="0.254" layer="51" curve="90"/>
<wire x1="2.159" y1="-8.5725" x2="2.54" y2="-8.5725" width="0.254" layer="51"/>
<wire x1="-3.9688" y1="-0.635" x2="-3.9688" y2="1.905" width="0.254" layer="51"/>
<wire x1="3.9688" y1="-0.635" x2="3.9688" y2="1.905" width="0.254" layer="51"/>
<wire x1="-1.905" y1="-6.985" x2="-0.635" y2="-6.985" width="0.254" layer="51"/>
<wire x1="0.635" y1="-6.985" x2="1.905" y2="-6.985" width="0.254" layer="51"/>
<smd name="1" x="-1.27" y="-10.795" dx="5.334" dy="1.651" layer="1" rot="R90"/>
<smd name="2" x="1.27" y="-10.795" dx="5.334" dy="1.651" layer="1" rot="R90"/>
<text x="-4.445" y="-6.35" size="1.016" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="5.715" y="-6.35" size="0.8128" layer="27" ratio="10" rot="R90">&gt;VALUE</text>
<rectangle x1="-1.5875" y1="-10.795" x2="-0.9525" y2="-6.985" layer="51"/>
<rectangle x1="0.9525" y1="-10.795" x2="1.5875" y2="-6.985" layer="51"/>
<hole x="-2.667" y="0.8382" drill="3.4036"/>
<hole x="2.667" y="0.8382" drill="3.4036"/>
<polygon width="0.2032" layer="21">
<vertex x="-3.81" y="5.08"/>
<vertex x="-3.3337" y="3.4926"/>
<vertex x="-2.8575" y="5.08"/>
</polygon>
</package>
</packages>
<symbols>
<symbol name="MV">
<wire x1="1.27" y1="0" x2="0" y2="0" width="0.6096" layer="94"/>
<text x="2.54" y="-0.762" size="1.524" layer="95">&gt;NAME</text>
<text x="-0.762" y="1.397" size="1.778" layer="96">&gt;VALUE</text>
<pin name="S" x="-2.54" y="0" visible="off" length="short" direction="pas"/>
</symbol>
<symbol name="M">
<wire x1="1.27" y1="0" x2="0" y2="0" width="0.6096" layer="94"/>
<text x="2.54" y="-0.762" size="1.524" layer="95">&gt;NAME</text>
<pin name="S" x="-2.54" y="0" visible="off" length="short" direction="pas"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="C-GRID-02" prefix="X">
<description>&lt;b&gt;CONNECTOR&lt;/b&gt;&lt;p&gt;
wire to board 2.54 mm (0.100") pitch header</description>
<gates>
<gate name="-2" symbol="M" x="2.54" y="15.24" addlevel="always" swaplevel="1"/>
<gate name="-1" symbol="MV" x="2.54" y="17.78" addlevel="always" swaplevel="1"/>
</gates>
<devices>
<device name="-70543" package="70543-02">
<connects>
<connect gate="-1" pin="S" pad="1"/>
<connect gate="-2" pin="S" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
<device name="-70553" package="70553-02">
<connects>
<connect gate="-1" pin="S" pad="1"/>
<connect gate="-2" pin="S" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
<device name="-15-19" package="15-91-02">
<connects>
<connect gate="-1" pin="S" pad="1"/>
<connect gate="-2" pin="S" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="r">
<description>&lt;b&gt;Resistors, Capacitors, Inductors&lt;/b&gt;&lt;p&gt;
 Based on the previous libraries:
 &lt;ul&gt;
 &lt;li&gt;r.lbr
 &lt;li&gt;cap.lbr 
 &lt;li&gt;cap-fe.lbr
 &lt;li&gt;captant.lbr
 &lt;li&gt;polcap.lbr
 &lt;li&gt;ipc-smd.lbr
 &lt;/ul&gt;
 All SMD packages are defined according to the IPC specifications and  CECC&lt;p&gt;
 &lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;&lt;p&gt;
 &lt;p&gt;
 for Electrolyt Capacitors see also :&lt;p&gt;
 www.bccomponents.com &lt;p&gt;
 www.panasonic.com&lt;p&gt;
 www.kemet.com&lt;p&gt;
 &lt;p&gt;
 for trimmer refence see : &lt;u&gt;www.electrospec-inc.com/cross_references/trimpotcrossref.asp&lt;/u&gt;&lt;p&gt;
 
 &lt;map name="nav_main"&gt;
 &lt;area shape="rect" coords="0,1,140,23" href="../military_specs.asp" title=""&gt;
 &lt;area shape="rect" coords="0,24,140,51" href="../about.asp" title=""&gt;
 &lt;area shape="rect" coords="1,52,140,77" href="../rfq.asp" title=""&gt;
 &lt;area shape="rect" coords="0,78,139,103" href="../products.asp" title=""&gt;
 &lt;area shape="rect" coords="1,102,138,128" href="../excess_inventory.asp" title=""&gt;
 &lt;area shape="rect" coords="1,129,138,150" href="../edge.asp" title=""&gt;
 &lt;area shape="rect" coords="1,151,139,178" href="../industry_links.asp" title=""&gt;
 &lt;area shape="rect" coords="0,179,139,201" href="../comments.asp" title=""&gt;
 &lt;area shape="rect" coords="1,203,138,231" href="../directory.asp" title=""&gt;
 &lt;area shape="default" nohref&gt;
 &lt;/map&gt;
 
 &lt;html&gt;
 
 &lt;title&gt;&lt;/title&gt;
 
 &lt;LINK REL="StyleSheet" TYPE="text/css" HREF="style-sheet.css"&gt;
 
 &lt;body bgcolor="#ffffff" text="#000000" marginwidth="0" marginheight="0" topmargin="0" leftmargin="0"&gt;
 &lt;table border=0 cellspacing=0 cellpadding=0 width="100%" cellpaddding=0 height="55%"&gt;
 &lt;tr valign="top"&gt;
 
 &lt;/td&gt;
 &lt;! &lt;td width="10"&gt;&amp;nbsp;&lt;/td&gt;
 &lt;td width="90%"&gt;
 
 &lt;b&gt;&lt;font color="#0000FF" size="4"&gt;TRIM-POT CROSS REFERENCE&lt;/font&gt;&lt;/b&gt;
 &lt;P&gt;
 &lt;TABLE BORDER=0 CELLSPACING=1 CELLPADDING=2&gt;
 &lt;TR&gt;
 &lt;TD COLSPAN=8&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;RECTANGULAR MULTI-TURN&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;TR&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;B&gt;
 &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;BOURNS&lt;/FONT&gt;
 &lt;/B&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;B&gt;
 &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;BI&amp;nbsp;TECH&lt;/FONT&gt;
 &lt;/B&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;B&gt;
 &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;DALE-VISHAY&lt;/FONT&gt;
 &lt;/B&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;B&gt;
 &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;PHILIPS/MEPCO&lt;/FONT&gt;
 &lt;/B&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;B&gt;
 &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;MURATA&lt;/FONT&gt;
 &lt;/B&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;B&gt;
 &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;PANASONIC&lt;/FONT&gt;
 &lt;/B&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;B&gt;
 &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;SPECTROL&lt;/FONT&gt;
 &lt;/B&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;B&gt;
 &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;MILSPEC&lt;/FONT&gt;
 &lt;/B&gt;
 &lt;/TD&gt;&lt;TD&gt;&amp;nbsp;&lt;/TD&gt;
 &lt;/TR&gt;
 &lt;TR&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3 &gt;
 3005P&lt;BR&gt;
 3006P&lt;BR&gt;
 3006W&lt;BR&gt;
 3006Y&lt;BR&gt;
 3009P&lt;BR&gt;
 3009W&lt;BR&gt;
 3009Y&lt;BR&gt;
 3057J&lt;BR&gt;
 3057L&lt;BR&gt;
 3057P&lt;BR&gt;
 3057Y&lt;BR&gt;
 3059J&lt;BR&gt;
 3059L&lt;BR&gt;
 3059P&lt;BR&gt;
 3059Y&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 89P&lt;BR&gt;
 89W&lt;BR&gt;
 89X&lt;BR&gt;
 89PH&lt;BR&gt;
 76P&lt;BR&gt;
 89XH&lt;BR&gt;
 78SLT&lt;BR&gt;
 78L&amp;nbsp;ALT&lt;BR&gt;
 56P&amp;nbsp;ALT&lt;BR&gt;
 78P&amp;nbsp;ALT&lt;BR&gt;
 T8S&lt;BR&gt;
 78L&lt;BR&gt;
 56P&lt;BR&gt;
 78P&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 T18/784&lt;BR&gt;
 783&lt;BR&gt;
 781&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 2199&lt;BR&gt;
 1697/1897&lt;BR&gt;
 1680/1880&lt;BR&gt;
 2187&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 8035EKP/CT20/RJ-20P&lt;BR&gt;
 -&lt;BR&gt;
 RJ-20X&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 1211L&lt;BR&gt;
 8012EKQ&amp;nbsp;ALT&lt;BR&gt;
 8012EKR&amp;nbsp;ALT&lt;BR&gt;
 1211P&lt;BR&gt;
 8012EKJ&lt;BR&gt;
 8012EKL&lt;BR&gt;
 8012EKQ&lt;BR&gt;
 8012EKR&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 2101P&lt;BR&gt;
 2101W&lt;BR&gt;
 2101Y&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 2102L&lt;BR&gt;
 2102S&lt;BR&gt;
 2102Y&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 EVMCOG&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 43P&lt;BR&gt;
 43W&lt;BR&gt;
 43Y&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 40L&lt;BR&gt;
 40P&lt;BR&gt;
 40Y&lt;BR&gt;
 70Y-T602&lt;BR&gt;
 70L&lt;BR&gt;
 70P&lt;BR&gt;
 70Y&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 RT/RTR12&lt;BR&gt;
 RT/RTR12&lt;BR&gt;
 RT/RTR12&lt;BR&gt;
 -&lt;BR&gt;
 RJ/RJR12&lt;BR&gt;
 RJ/RJR12&lt;BR&gt;
 RJ/RJR12&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;TR&gt;
 &lt;TD COLSPAN=8&gt;&amp;nbsp;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;TR&gt;
 &lt;TD COLSPAN=8&gt;
 &lt;FONT SIZE=4 FACE=ARIAL&gt;&lt;B&gt;SQUARE MULTI-TURN&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;TR&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BOURN&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BI&amp;nbsp;TECH&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;DALE-VISHAY&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PHILIPS/MEPCO&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;MURATA&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PANASONIC&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;SPECTROL&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;MILSPEC&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;TR&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 3250L&lt;BR&gt;
 3250P&lt;BR&gt;
 3250W&lt;BR&gt;
 3250X&lt;BR&gt;
 3252P&lt;BR&gt;
 3252W&lt;BR&gt;
 3252X&lt;BR&gt;
 3260P&lt;BR&gt;
 3260W&lt;BR&gt;
 3260X&lt;BR&gt;
 3262P&lt;BR&gt;
 3262W&lt;BR&gt;
 3262X&lt;BR&gt;
 3266P&lt;BR&gt;
 3266W&lt;BR&gt;
 3266X&lt;BR&gt;
 3290H&lt;BR&gt;
 3290P&lt;BR&gt;
 3290W&lt;BR&gt;
 3292P&lt;BR&gt;
 3292W&lt;BR&gt;
 3292X&lt;BR&gt;
 3296P&lt;BR&gt;
 3296W&lt;BR&gt;
 3296X&lt;BR&gt;
 3296Y&lt;BR&gt;
 3296Z&lt;BR&gt;
 3299P&lt;BR&gt;
 3299W&lt;BR&gt;
 3299X&lt;BR&gt;
 3299Y&lt;BR&gt;
 3299Z&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 66P&amp;nbsp;ALT&lt;BR&gt;
 66W&amp;nbsp;ALT&lt;BR&gt;
 66X&amp;nbsp;ALT&lt;BR&gt;
 66P&amp;nbsp;ALT&lt;BR&gt;
 66W&amp;nbsp;ALT&lt;BR&gt;
 66X&amp;nbsp;ALT&lt;BR&gt;
 -&lt;BR&gt;
 64W&amp;nbsp;ALT&lt;BR&gt;
 -&lt;BR&gt;
 64P&amp;nbsp;ALT&lt;BR&gt;
 64W&amp;nbsp;ALT&lt;BR&gt;
 64X&amp;nbsp;ALT&lt;BR&gt;
 64P&lt;BR&gt;
 64W&lt;BR&gt;
 64X&lt;BR&gt;
 66X&amp;nbsp;ALT&lt;BR&gt;
 66P&amp;nbsp;ALT&lt;BR&gt;
 66W&amp;nbsp;ALT&lt;BR&gt;
 66P&lt;BR&gt;
 66W&lt;BR&gt;
 66X&lt;BR&gt;
 67P&lt;BR&gt;
 67W&lt;BR&gt;
 67X&lt;BR&gt;
 67Y&lt;BR&gt;
 67Z&lt;BR&gt;
 68P&lt;BR&gt;
 68W&lt;BR&gt;
 68X&lt;BR&gt;
 67Y&amp;nbsp;ALT&lt;BR&gt;
 67Z&amp;nbsp;ALT&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 5050&lt;BR&gt;
 5091&lt;BR&gt;
 5080&lt;BR&gt;
 5087&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 T63YB&lt;BR&gt;
 T63XB&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 5887&lt;BR&gt;
 5891&lt;BR&gt;
 5880&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 T93Z&lt;BR&gt;
 T93YA&lt;BR&gt;
 T93XA&lt;BR&gt;
 T93YB&lt;BR&gt;
 T93XB&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 8026EKP&lt;BR&gt;
 8026EKW&lt;BR&gt;
 8026EKM&lt;BR&gt;
 8026EKP&lt;BR&gt;
 8026EKB&lt;BR&gt;
 8026EKM&lt;BR&gt;
 1309X&lt;BR&gt;
 1309P&lt;BR&gt;
 1309W&lt;BR&gt;
 8024EKP&lt;BR&gt;
 8024EKW&lt;BR&gt;
 8024EKN&lt;BR&gt;
 RJ-9P/CT9P&lt;BR&gt;
 RJ-9W&lt;BR&gt;
 RJ-9X&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 3103P&lt;BR&gt;
 3103Y&lt;BR&gt;
 3103Z&lt;BR&gt;
 3103P&lt;BR&gt;
 3103Y&lt;BR&gt;
 3103Z&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 3105P/3106P&lt;BR&gt;
 3105W/3106W&lt;BR&gt;
 3105X/3106X&lt;BR&gt;
 3105Y/3106Y&lt;BR&gt;
 3105Z/3105Z&lt;BR&gt;
 3102P&lt;BR&gt;
 3102W&lt;BR&gt;
 3102X&lt;BR&gt;
 3102Y&lt;BR&gt;
 3102Z&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 EVMCBG&lt;BR&gt;
 EVMCCG&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 55-1-X&lt;BR&gt;
 55-4-X&lt;BR&gt;
 55-3-X&lt;BR&gt;
 55-2-X&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 50-2-X&lt;BR&gt;
 50-4-X&lt;BR&gt;
 50-3-X&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 64P&lt;BR&gt;
 64W&lt;BR&gt;
 64X&lt;BR&gt;
 64Y&lt;BR&gt;
 64Z&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 RT/RTR22&lt;BR&gt;
 RT/RTR22&lt;BR&gt;
 RT/RTR22&lt;BR&gt;
 RT/RTR22&lt;BR&gt;
 RJ/RJR22&lt;BR&gt;
 RJ/RJR22&lt;BR&gt;
 RJ/RJR22&lt;BR&gt;
 RT/RTR26&lt;BR&gt;
 RT/RTR26&lt;BR&gt;
 RT/RTR26&lt;BR&gt;
 RJ/RJR26&lt;BR&gt;
 RJ/RJR26&lt;BR&gt;
 RJ/RJR26&lt;BR&gt;
 RJ/RJR26&lt;BR&gt;
 RJ/RJR26&lt;BR&gt;
 RJ/RJR26&lt;BR&gt;
 RT/RTR24&lt;BR&gt;
 RT/RTR24&lt;BR&gt;
 RT/RTR24&lt;BR&gt;
 RJ/RJR24&lt;BR&gt;
 RJ/RJR24&lt;BR&gt;
 RJ/RJR24&lt;BR&gt;
 RJ/RJR24&lt;BR&gt;
 RJ/RJR24&lt;BR&gt;
 RJ/RJR24&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;TR&gt;
 &lt;TD COLSPAN=8&gt;&amp;nbsp;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;TR&gt;
 &lt;TD COLSPAN=8&gt;
 &lt;FONT SIZE=4 FACE=ARIAL&gt;&lt;B&gt;SINGLE TURN&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;TR&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BOURN&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BI&amp;nbsp;TECH&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;DALE-VISHAY&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PHILIPS/MEPCO&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;MURATA&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PANASONIC&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;SPECTROL&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;MILSPEC&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;TR&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 3323P&lt;BR&gt;
 3323S&lt;BR&gt;
 3323W&lt;BR&gt;
 3329H&lt;BR&gt;
 3329P&lt;BR&gt;
 3329W&lt;BR&gt;
 3339H&lt;BR&gt;
 3339P&lt;BR&gt;
 3339W&lt;BR&gt;
 3352E&lt;BR&gt;
 3352H&lt;BR&gt;
 3352K&lt;BR&gt;
 3352P&lt;BR&gt;
 3352T&lt;BR&gt;
 3352V&lt;BR&gt;
 3352W&lt;BR&gt;
 3362H&lt;BR&gt;
 3362M&lt;BR&gt;
 3362P&lt;BR&gt;
 3362R&lt;BR&gt;
 3362S&lt;BR&gt;
 3362U&lt;BR&gt;
 3362W&lt;BR&gt;
 3362X&lt;BR&gt;
 3386B&lt;BR&gt;
 3386C&lt;BR&gt;
 3386F&lt;BR&gt;
 3386H&lt;BR&gt;
 3386K&lt;BR&gt;
 3386M&lt;BR&gt;
 3386P&lt;BR&gt;
 3386S&lt;BR&gt;
 3386W&lt;BR&gt;
 3386X&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 25P&lt;BR&gt;
 25S&lt;BR&gt;
 25RX&lt;BR&gt;
 82P&lt;BR&gt;
 82M&lt;BR&gt;
 82PA&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 91E&lt;BR&gt;
 91X&lt;BR&gt;
 91T&lt;BR&gt;
 91B&lt;BR&gt;
 91A&lt;BR&gt;
 91V&lt;BR&gt;
 91W&lt;BR&gt;
 25W&lt;BR&gt;
 25V&lt;BR&gt;
 25P&lt;BR&gt;
 -&lt;BR&gt;
 25S&lt;BR&gt;
 25U&lt;BR&gt;
 25RX&lt;BR&gt;
 25X&lt;BR&gt;
 72XW&lt;BR&gt;
 72XL&lt;BR&gt;
 72PM&lt;BR&gt;
 72RX&lt;BR&gt;
 -&lt;BR&gt;
 72PX&lt;BR&gt;
 72P&lt;BR&gt;
 72RXW&lt;BR&gt;
 72RXL&lt;BR&gt;
 72X&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 T7YB&lt;BR&gt;
 T7YA&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 TXD&lt;BR&gt;
 TYA&lt;BR&gt;
 TYP&lt;BR&gt;
 -&lt;BR&gt;
 TYD&lt;BR&gt;
 TX&lt;BR&gt;
 -&lt;BR&gt;
 150SX&lt;BR&gt;
 100SX&lt;BR&gt;
 102T&lt;BR&gt;
 101S&lt;BR&gt;
 190T&lt;BR&gt;
 150TX&lt;BR&gt;
 101&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 101SX&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 ET6P&lt;BR&gt;
 ET6S&lt;BR&gt;
 ET6X&lt;BR&gt;
 RJ-6W/8014EMW&lt;BR&gt;
 RJ-6P/8014EMP&lt;BR&gt;
 RJ-6X/8014EMX&lt;BR&gt;
 TM7W&lt;BR&gt;
 TM7P&lt;BR&gt;
 TM7X&lt;BR&gt;
 -&lt;BR&gt;
 8017SMS&lt;BR&gt;
 -&lt;BR&gt;
 8017SMB&lt;BR&gt;
 8017SMA&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 CT-6W&lt;BR&gt;
 CT-6H&lt;BR&gt;
 CT-6P&lt;BR&gt;
 CT-6R&lt;BR&gt;
 -&lt;BR&gt;
 CT-6V&lt;BR&gt;
 CT-6X&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 8038EKV&lt;BR&gt;
 -&lt;BR&gt;
 8038EKX&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 8038EKP&lt;BR&gt;
 8038EKZ&lt;BR&gt;
 8038EKW&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 3321H&lt;BR&gt;
 3321P&lt;BR&gt;
 3321N&lt;BR&gt;
 1102H&lt;BR&gt;
 1102P&lt;BR&gt;
 1102T&lt;BR&gt;
 RVA0911V304A&lt;BR&gt;
 -&lt;BR&gt;
 RVA0911H413A&lt;BR&gt;
 RVG0707V100A&lt;BR&gt;
 RVA0607V(H)306A&lt;BR&gt;
 RVA1214H213A&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 3104B&lt;BR&gt;
 3104C&lt;BR&gt;
 3104F&lt;BR&gt;
 3104H&lt;BR&gt;
 -&lt;BR&gt;
 3104M&lt;BR&gt;
 3104P&lt;BR&gt;
 3104S&lt;BR&gt;
 3104W&lt;BR&gt;
 3104X&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 EVMQ0G&lt;BR&gt;
 EVMQIG&lt;BR&gt;
 EVMQ3G&lt;BR&gt;
 EVMS0G&lt;BR&gt;
 EVMQ0G&lt;BR&gt;
 EVMG0G&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 EVMK4GA00B&lt;BR&gt;
 EVM30GA00B&lt;BR&gt;
 EVMK0GA00B&lt;BR&gt;
 EVM38GA00B&lt;BR&gt;
 EVMB6&lt;BR&gt;
 EVLQ0&lt;BR&gt;
 -&lt;BR&gt;
 EVMMSG&lt;BR&gt;
 EVMMBG&lt;BR&gt;
 EVMMAG&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 EVMMCS&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 EVMM1&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 EVMM0&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 EVMM3&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 62-3-1&lt;BR&gt;
 62-1-2&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 67R&lt;BR&gt;
 -&lt;BR&gt;
 67P&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 67X&lt;BR&gt;
 63V&lt;BR&gt;
 63S&lt;BR&gt;
 63M&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 63H&lt;BR&gt;
 63P&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 63X&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 RJ/RJR50&lt;BR&gt;
 RJ/RJR50&lt;BR&gt;
 RJ/RJR50&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;/TABLE&gt;
 &lt;P&gt;&amp;nbsp;&lt;P&gt;
 &lt;TABLE BORDER=0 CELLSPACING=1 CELLPADDING=3&gt;
 &lt;TR&gt;
 &lt;TD COLSPAN=7&gt;
 &lt;FONT color="#0000FF" SIZE=4 FACE=ARIAL&gt;&lt;B&gt;SMD TRIM-POT CROSS REFERENCE&lt;/B&gt;&lt;/FONT&gt;
 &lt;P&gt;
 &lt;FONT SIZE=4 FACE=ARIAL&gt;&lt;B&gt;MULTI-TURN&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;TR&gt;
 &lt;TD&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BOURNS&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BI&amp;nbsp;TECH&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;DALE-VISHAY&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PHILIPS/MEPCO&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PANASONIC&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;TOCOS&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;AUX/KYOCERA&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;TR&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 3224G&lt;BR&gt;
 3224J&lt;BR&gt;
 3224W&lt;BR&gt;
 3269P&lt;BR&gt;
 3269W&lt;BR&gt;
 3269X&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 44G&lt;BR&gt;
 44J&lt;BR&gt;
 44W&lt;BR&gt;
 84P&lt;BR&gt;
 84W&lt;BR&gt;
 84X&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 ST63Z&lt;BR&gt;
 ST63Y&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 ST5P&lt;BR&gt;
 ST5W&lt;BR&gt;
 ST5X&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;TR&gt;
 &lt;TD COLSPAN=7&gt;&amp;nbsp;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;TR&gt;
 &lt;TD COLSPAN=7&gt;
 &lt;FONT SIZE=4 FACE=ARIAL&gt;&lt;B&gt;SINGLE TURN&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;TR&gt;
 &lt;TD&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BOURNS&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BI&amp;nbsp;TECH&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;DALE-VISHAY&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PHILIPS/MEPCO&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PANASONIC&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;TOCOS&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;AUX/KYOCERA&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;TR&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 3314G&lt;BR&gt;
 3314J&lt;BR&gt;
 3364A/B&lt;BR&gt;
 3364C/D&lt;BR&gt;
 3364W/X&lt;BR&gt;
 3313G&lt;BR&gt;
 3313J&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 23B&lt;BR&gt;
 23A&lt;BR&gt;
 21X&lt;BR&gt;
 21W&lt;BR&gt;
 -&lt;BR&gt;
 22B&lt;BR&gt;
 22A&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 ST5YL/ST53YL&lt;BR&gt;
 ST5YJ/5T53YJ&lt;BR&gt;
 ST-23A&lt;BR&gt;
 ST-22B&lt;BR&gt;
 ST-22&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 ST-4B&lt;BR&gt;
 ST-4A&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 ST-3B&lt;BR&gt;
 ST-3A&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 EVM-6YS&lt;BR&gt;
 EVM-1E&lt;BR&gt;
 EVM-1G&lt;BR&gt;
 EVM-1D&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 G4B&lt;BR&gt;
 G4A&lt;BR&gt;
 TR04-3S1&lt;BR&gt;
 TRG04-2S1&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 DVR-43A&lt;BR&gt;
 CVR-42C&lt;BR&gt;
 CVR-42A/C&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;/TABLE&gt;
 &lt;P&gt;
 &lt;FONT SIZE=4 FACE=ARIAL&gt;&lt;B&gt;ALT =&amp;nbsp;ALTERNATE&lt;/B&gt;&lt;/FONT&gt;
 &lt;P&gt;
 
 &amp;nbsp;
 &lt;P&gt;
 &lt;/td&gt;
 &lt;/tr&gt;
 &lt;/table&gt;
 &lt;/BODY&gt;&lt;/HTML&gt;</description>
<packages>
<package name="0202/10">
<wire x1="-0.381" y1="-1.27" x2="-0.635" y2="-1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="0.381" y1="-1.27" x2="0.635" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="0.635" y1="1.016" x2="0.381" y2="1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="-0.635" y1="1.016" x2="-0.381" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="0" y="-5.08" drill="0.8128" shape="octagon" rot="R90"/>
<pad name="2" x="0" y="5.08" drill="0.8128" shape="octagon" rot="R90"/>
<text x="-1.27" y="0" size="0.8128" layer="25" ratio="10" rot="R270" align="center">&gt;NAME</text>
<text x="0" y="0" size="0.6096" layer="27" ratio="10" rot="R90" align="center">&gt;VALUE</text>
<wire x1="0" y1="5.08" x2="0" y2="1.651" width="0.254" layer="51"/>
<wire x1="0" y1="-5.08" x2="0" y2="-1.651" width="0.254" layer="51"/>
<wire x1="-0.381" y1="-1.27" x2="-0.635" y2="-1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="0.381" y1="-1.27" x2="0.635" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="0.635" y1="1.016" x2="0.381" y2="1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="-0.635" y1="1.016" x2="-0.381" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<wire x1="0.381" y1="-1.27" x2="-0.381" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.016" x2="-0.635" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.016" x2="0.635" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="0.381" y1="1.27" x2="-0.381" y2="1.27" width="0.1524" layer="21"/>
<rectangle x1="-0.1905" y1="1.3335" x2="0.1905" y2="1.5875" layer="21" rot="R90"/>
<rectangle x1="-0.1905" y1="-1.5875" x2="0.1905" y2="-1.3335" layer="21" rot="R90"/>
</package>
<package name="0204/5">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
 type 0204, grid 5 mm</description>
<wire x1="-1.778" y1="0.635" x2="-1.524" y2="0.889" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.778" y1="-0.635" x2="-1.524" y2="-0.889" width="0.1524" layer="21" curve="90"/>
<wire x1="1.524" y1="-0.889" x2="1.778" y2="-0.635" width="0.1524" layer="21" curve="90"/>
<wire x1="1.524" y1="0.889" x2="1.778" y2="0.635" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.0066" y="1.1684" size="0.9906" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.1336" y="-2.3114" size="0.9906" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-2.032" y1="-0.254" x2="-1.778" y2="0.254" layer="51"/>
<rectangle x1="1.778" y1="-0.254" x2="2.032" y2="0.254" layer="51"/>
<wire x1="2.54" y1="0" x2="2.032" y2="0" width="0.508" layer="51"/>
<wire x1="-2.54" y1="0" x2="-2.032" y2="0" width="0.508" layer="51"/>
<wire x1="-1.778" y1="0.635" x2="-1.524" y2="0.889" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.778" y1="-0.635" x2="-1.524" y2="-0.889" width="0.1524" layer="21" curve="90"/>
<wire x1="1.524" y1="-0.889" x2="1.778" y2="-0.635" width="0.1524" layer="21" curve="90"/>
<wire x1="1.524" y1="0.889" x2="1.778" y2="0.635" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.778" y1="-0.635" x2="-1.778" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-1.524" y1="0.889" x2="-1.27" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-1.143" y1="0.762" x2="-1.27" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="-0.889" x2="-1.27" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="-1.143" y1="-0.762" x2="-1.27" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="1.143" y1="0.762" x2="1.27" y2="0.889" width="0.1524" layer="21"/>
<wire x1="1.143" y1="0.762" x2="-1.143" y2="0.762" width="0.1524" layer="21"/>
<wire x1="1.143" y1="-0.762" x2="1.27" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="1.143" y1="-0.762" x2="-1.143" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="1.524" y1="0.889" x2="1.27" y2="0.889" width="0.1524" layer="21"/>
<wire x1="1.524" y1="-0.889" x2="1.27" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="1.778" y1="-0.635" x2="1.778" y2="0.635" width="0.1524" layer="51"/>
<text x="-2.0066" y="1.1684" size="0.9906" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.1336" y="-2.3114" size="0.9906" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-2.032" y1="-0.254" x2="-1.778" y2="0.254" layer="51"/>
<rectangle x1="1.778" y1="-0.254" x2="2.032" y2="0.254" layer="51"/>
</package>
<package name="0204/7">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
 type 0204, grid 7.5 mm</description>
<wire x1="-2.54" y1="0.762" x2="-2.286" y2="1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.54" y1="-0.762" x2="-2.286" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="2.286" y1="-1.016" x2="2.54" y2="-0.762" width="0.1524" layer="21" curve="90"/>
<wire x1="2.286" y1="1.016" x2="2.54" y2="0.762" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-3.81" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="3.81" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.54" y="1.2954" size="0.9906" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.6256" y="-0.4826" size="0.9906" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="2.54" y1="-0.254" x2="2.921" y2="0.254" layer="21"/>
<rectangle x1="-2.921" y1="-0.254" x2="-2.54" y2="0.254" layer="21"/>
<wire x1="3.81" y1="0" x2="2.921" y2="0" width="0.508" layer="51"/>
<wire x1="-3.81" y1="0" x2="-2.921" y2="0" width="0.508" layer="51"/>
<wire x1="-2.54" y1="0.762" x2="-2.286" y2="1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.54" y1="-0.762" x2="-2.286" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="2.286" y1="-1.016" x2="2.54" y2="-0.762" width="0.1524" layer="21" curve="90"/>
<wire x1="2.286" y1="1.016" x2="2.54" y2="0.762" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.54" y1="-0.762" x2="-2.54" y2="0.762" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="1.016" x2="-1.905" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-1.778" y1="0.889" x2="-1.905" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="-1.016" x2="-1.905" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-1.778" y1="-0.889" x2="-1.905" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="1.778" y1="0.889" x2="1.905" y2="1.016" width="0.1524" layer="21"/>
<wire x1="1.778" y1="0.889" x2="-1.778" y2="0.889" width="0.1524" layer="21"/>
<wire x1="1.778" y1="-0.889" x2="1.905" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="1.778" y1="-0.889" x2="-1.778" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="2.286" y1="1.016" x2="1.905" y2="1.016" width="0.1524" layer="21"/>
<wire x1="2.286" y1="-1.016" x2="1.905" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.762" x2="2.54" y2="0.762" width="0.1524" layer="21"/>
<text x="-2.54" y="1.2954" size="0.9906" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.6256" y="-0.4826" size="0.9906" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="2.54" y1="-0.254" x2="2.921" y2="0.254" layer="21"/>
<rectangle x1="-2.921" y1="-0.254" x2="-2.54" y2="0.254" layer="21"/>
</package>
<package name="0204V">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
 type 0204, grid 2.5 mm</description>
<circle x="-1.27" y="0" radius="0.889" width="0.1524" layer="51"/>
<circle x="-1.27" y="0" radius="0.635" width="0.0508" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.1336" y="1.1684" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.1336" y="-2.3114" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<wire x1="-1.27" y1="0" x2="1.27" y2="0" width="0.508" layer="51"/>
<wire x1="-0.127" y1="0" x2="0.127" y2="0" width="0.508" layer="21"/>
<circle x="-1.27" y="0" radius="0.889" width="0.1524" layer="51"/>
<circle x="-1.27" y="0" radius="0.635" width="0.0508" layer="51"/>
<text x="-2.1336" y="1.1684" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.1336" y="-2.3114" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="0207/10">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
 type 0207, grid 10 mm</description>
<wire x1="-3.175" y1="0.889" x2="-2.921" y2="1.143" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-2.921" y2="-1.143" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="-1.143" x2="3.175" y2="-0.889" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="1.143" x2="3.175" y2="0.889" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-5.08" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="5.08" y="0" drill="0.8128" shape="octagon"/>
<text x="-3.048" y="1.524" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.2606" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="3.175" y1="-0.3048" x2="4.0386" y2="0.3048" layer="21"/>
<rectangle x1="-4.0386" y1="-0.3048" x2="-3.175" y2="0.3048" layer="21"/>
<wire x1="5.08" y1="0" x2="4.064" y2="0" width="0.6096" layer="51"/>
<wire x1="-5.08" y1="0" x2="-4.064" y2="0" width="0.6096" layer="51"/>
<wire x1="-3.175" y1="0.889" x2="-2.921" y2="1.143" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-2.921" y2="-1.143" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="-1.143" x2="3.175" y2="-0.889" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="1.143" x2="3.175" y2="0.889" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-3.175" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="1.143" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="1.016" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="-1.143" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="-1.016" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="-2.413" y2="1.016" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="-2.413" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.921" y1="1.143" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.921" y1="-1.143" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-0.889" x2="3.175" y2="0.889" width="0.1524" layer="21"/>
<text x="-3.048" y="1.524" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.2606" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="3.175" y1="-0.3048" x2="4.0386" y2="0.3048" layer="21"/>
<rectangle x1="-4.0386" y1="-0.3048" x2="-3.175" y2="0.3048" layer="21"/>
</package>
<package name="0207/12">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
 type 0207, grid 12 mm</description>
<wire x1="-3.175" y1="0.889" x2="-2.921" y2="1.143" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-2.921" y2="-1.143" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="-1.143" x2="3.175" y2="-0.889" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="1.143" x2="3.175" y2="0.889" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-6.35" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="6.35" y="0" drill="0.8128" shape="octagon"/>
<text x="-3.175" y="1.397" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.286" y="-0.6858" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="3.175" y1="-0.3048" x2="4.0386" y2="0.3048" layer="21"/>
<rectangle x1="-4.0386" y1="-0.3048" x2="-3.175" y2="0.3048" layer="21"/>
<rectangle x1="4.445" y1="-0.3048" x2="5.3086" y2="0.3048" layer="21"/>
<rectangle x1="-5.3086" y1="-0.3048" x2="-4.445" y2="0.3048" layer="21"/>
<wire x1="6.35" y1="0" x2="5.334" y2="0" width="0.6096" layer="51"/>
<wire x1="-6.35" y1="0" x2="-5.334" y2="0" width="0.6096" layer="51"/>
<wire x1="-3.175" y1="0.889" x2="-2.921" y2="1.143" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-2.921" y2="-1.143" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="-1.143" x2="3.175" y2="-0.889" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="1.143" x2="3.175" y2="0.889" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-3.175" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="1.143" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="1.016" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="-1.143" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="-1.016" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="-2.413" y2="1.016" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="-2.413" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.921" y1="1.143" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.921" y1="-1.143" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-0.889" x2="3.175" y2="0.889" width="0.1524" layer="21"/>
<wire x1="4.445" y1="0" x2="4.064" y2="0" width="0.6096" layer="21"/>
<wire x1="-4.445" y1="0" x2="-4.064" y2="0" width="0.6096" layer="21"/>
<text x="-3.175" y="1.397" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.286" y="-0.6858" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="3.175" y1="-0.3048" x2="4.0386" y2="0.3048" layer="21"/>
<rectangle x1="-4.0386" y1="-0.3048" x2="-3.175" y2="0.3048" layer="21"/>
<rectangle x1="4.445" y1="-0.3048" x2="5.3086" y2="0.3048" layer="21"/>
<rectangle x1="-5.3086" y1="-0.3048" x2="-4.445" y2="0.3048" layer="21"/>
</package>
<package name="0207/15">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
 type 0207, grid 15mm</description>
<wire x1="-3.175" y1="0.889" x2="-2.921" y2="1.143" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-2.921" y2="-1.143" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="-1.143" x2="3.175" y2="-0.889" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="1.143" x2="3.175" y2="0.889" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-7.62" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="7.62" y="0" drill="0.8128" shape="octagon"/>
<text x="-3.175" y="1.397" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.286" y="-0.6858" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="3.175" y1="-0.3048" x2="4.0386" y2="0.3048" layer="21"/>
<rectangle x1="-4.0386" y1="-0.3048" x2="-3.175" y2="0.3048" layer="21"/>
<rectangle x1="5.715" y1="-0.3048" x2="6.5786" y2="0.3048" layer="21"/>
<rectangle x1="-6.5786" y1="-0.3048" x2="-5.715" y2="0.3048" layer="21"/>
<wire x1="7.62" y1="0" x2="6.604" y2="0" width="0.6096" layer="51"/>
<wire x1="-7.62" y1="0" x2="-6.604" y2="0" width="0.6096" layer="51"/>
<wire x1="-3.175" y1="0.889" x2="-2.921" y2="1.143" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-2.921" y2="-1.143" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="-1.143" x2="3.175" y2="-0.889" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="1.143" x2="3.175" y2="0.889" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-3.175" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="1.143" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="1.016" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="-1.143" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="-1.016" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="-2.413" y2="1.016" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="-2.413" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.921" y1="1.143" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.921" y1="-1.143" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-0.889" x2="3.175" y2="0.889" width="0.1524" layer="21"/>
<wire x1="5.715" y1="0" x2="4.064" y2="0" width="0.6096" layer="21"/>
<wire x1="-5.715" y1="0" x2="-4.064" y2="0" width="0.6096" layer="21"/>
<text x="-3.175" y="1.397" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.286" y="-0.6858" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="3.175" y1="-0.3048" x2="4.0386" y2="0.3048" layer="21"/>
<rectangle x1="-4.0386" y1="-0.3048" x2="-3.175" y2="0.3048" layer="21"/>
<rectangle x1="5.715" y1="-0.3048" x2="6.5786" y2="0.3048" layer="21"/>
<rectangle x1="-6.5786" y1="-0.3048" x2="-5.715" y2="0.3048" layer="21"/>
</package>
<package name="0207/2V">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
 type 0207, grid 2.5 mm</description>
<circle x="-1.27" y="0" radius="1.27" width="0.1524" layer="21"/>
<circle x="-1.27" y="0" radius="1.016" width="0.1524" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-0.0508" y="1.016" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-0.0508" y="-2.2352" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<wire x1="-1.27" y1="0" x2="-0.381" y2="0" width="0.6096" layer="51"/>
<wire x1="-0.254" y1="0" x2="0.254" y2="0" width="0.6096" layer="21"/>
<wire x1="0.381" y1="0" x2="1.27" y2="0" width="0.6096" layer="51"/>
<circle x="-1.27" y="0" radius="1.27" width="0.1524" layer="21"/>
<circle x="-1.27" y="0" radius="1.016" width="0.1524" layer="51"/>
<text x="-0.0508" y="1.016" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-0.0508" y="-2.2352" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="0207/5V">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
 type 0207, grid 5 mm</description>
<circle x="-2.54" y="0" radius="1.27" width="0.1016" layer="21"/>
<circle x="-2.54" y="0" radius="1.016" width="0.1524" layer="51"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" shape="octagon"/>
<text x="-1.143" y="0.889" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.143" y="-2.159" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<wire x1="-2.54" y1="0" x2="-0.889" y2="0" width="0.6096" layer="51"/>
<wire x1="-0.762" y1="0" x2="0.762" y2="0" width="0.6096" layer="21"/>
<wire x1="0.889" y1="0" x2="2.54" y2="0" width="0.6096" layer="51"/>
<circle x="-2.54" y="0" radius="1.27" width="0.1016" layer="21"/>
<circle x="-2.54" y="0" radius="1.016" width="0.1524" layer="51"/>
<text x="-1.143" y="0.889" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.143" y="-2.159" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="0207/7">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
 type 0207, grid 7.5 mm</description>
<wire x1="-3.175" y1="0.889" x2="-2.921" y2="1.143" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-2.921" y2="-1.143" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="-1.143" x2="3.175" y2="-0.889" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="1.143" x2="3.175" y2="0.889" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-3.81" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="3.81" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.54" y="1.397" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.286" y="-0.5588" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-3.429" y1="-0.3048" x2="-3.175" y2="0.3048" layer="51"/>
<rectangle x1="3.175" y1="-0.3048" x2="3.429" y2="0.3048" layer="51"/>
<wire x1="-3.81" y1="0" x2="-3.429" y2="0" width="0.6096" layer="51"/>
<wire x1="-3.175" y1="0.889" x2="-2.921" y2="1.143" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-2.921" y2="-1.143" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="-1.143" x2="3.175" y2="-0.889" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="1.143" x2="3.175" y2="0.889" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-3.175" y2="0.889" width="0.1524" layer="51"/>
<wire x1="-2.921" y1="1.143" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="1.016" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="-1.143" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="-1.016" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="-2.413" y2="1.016" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="-2.413" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.921" y1="1.143" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.921" y1="-1.143" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-0.889" x2="3.175" y2="0.889" width="0.1524" layer="51"/>
<wire x1="3.429" y1="0" x2="3.81" y2="0" width="0.6096" layer="51"/>
<text x="-2.54" y="1.397" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.286" y="-0.5588" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-3.429" y1="-0.3048" x2="-3.175" y2="0.3048" layer="51"/>
<rectangle x1="3.175" y1="-0.3048" x2="3.429" y2="0.3048" layer="51"/>
</package>
<package name="0204/10">
<wire x1="-2.54" y1="0.762" x2="-2.286" y2="1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.54" y1="-0.762" x2="-2.286" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="2.286" y1="-1.016" x2="2.54" y2="-0.762" width="0.1524" layer="21" curve="90"/>
<wire x1="2.286" y1="1.016" x2="2.54" y2="0.762" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-5.08" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="5.08" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.54" y="1.2954" size="0.9906" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.6256" y="-0.4826" size="0.9906" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="2.54" y1="-0.254" x2="2.921" y2="0.254" layer="21"/>
<rectangle x1="-2.921" y1="-0.254" x2="-2.54" y2="0.254" layer="21"/>
<wire x1="5.08" y1="0" x2="2.921" y2="0" width="0.508" layer="51"/>
<wire x1="-5.08" y1="0" x2="-2.921" y2="0" width="0.508" layer="51"/>
<wire x1="-2.54" y1="0.762" x2="-2.286" y2="1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.54" y1="-0.762" x2="-2.286" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="2.286" y1="-1.016" x2="2.54" y2="-0.762" width="0.1524" layer="21" curve="90"/>
<wire x1="2.286" y1="1.016" x2="2.54" y2="0.762" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.54" y1="-0.762" x2="-2.54" y2="0.762" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="1.016" x2="-1.905" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-1.778" y1="0.889" x2="-1.905" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="-1.016" x2="-1.905" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-1.778" y1="-0.889" x2="-1.905" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="1.778" y1="0.889" x2="1.905" y2="1.016" width="0.1524" layer="21"/>
<wire x1="1.778" y1="0.889" x2="-1.778" y2="0.889" width="0.1524" layer="21"/>
<wire x1="1.778" y1="-0.889" x2="1.905" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="1.778" y1="-0.889" x2="-1.778" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="2.286" y1="1.016" x2="1.905" y2="1.016" width="0.1524" layer="21"/>
<wire x1="2.286" y1="-1.016" x2="1.905" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.762" x2="2.54" y2="0.762" width="0.1524" layer="21"/>
<text x="-2.54" y="1.2954" size="0.9906" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.6256" y="-0.4826" size="0.9906" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="2.54" y1="-0.254" x2="2.921" y2="0.254" layer="21"/>
<rectangle x1="-2.921" y1="-0.254" x2="-2.54" y2="0.254" layer="21"/>
</package>
<package name="0204/12">
<wire x1="-2.54" y1="0.762" x2="-2.286" y2="1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.54" y1="-0.762" x2="-2.286" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="2.286" y1="-1.016" x2="2.54" y2="-0.762" width="0.1524" layer="21" curve="90"/>
<wire x1="2.286" y1="1.016" x2="2.54" y2="0.762" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-6.35" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="6.35" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.54" y="1.2954" size="0.9906" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.6256" y="-0.4826" size="0.9906" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="2.54" y1="-0.254" x2="2.921" y2="0.254" layer="21"/>
<rectangle x1="-2.921" y1="-0.254" x2="-2.54" y2="0.254" layer="21"/>
<wire x1="6.35" y1="0" x2="2.921" y2="0" width="0.508" layer="51"/>
<wire x1="-6.35" y1="0" x2="-2.921" y2="0" width="0.508" layer="51"/>
<wire x1="-2.54" y1="0.762" x2="-2.286" y2="1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.54" y1="-0.762" x2="-2.286" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="2.286" y1="-1.016" x2="2.54" y2="-0.762" width="0.1524" layer="21" curve="90"/>
<wire x1="2.286" y1="1.016" x2="2.54" y2="0.762" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.54" y1="-0.762" x2="-2.54" y2="0.762" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="1.016" x2="-1.905" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-1.778" y1="0.889" x2="-1.905" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="-1.016" x2="-1.905" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-1.778" y1="-0.889" x2="-1.905" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="1.778" y1="0.889" x2="1.905" y2="1.016" width="0.1524" layer="21"/>
<wire x1="1.778" y1="0.889" x2="-1.778" y2="0.889" width="0.1524" layer="21"/>
<wire x1="1.778" y1="-0.889" x2="1.905" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="1.778" y1="-0.889" x2="-1.778" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="2.286" y1="1.016" x2="1.905" y2="1.016" width="0.1524" layer="21"/>
<wire x1="2.286" y1="-1.016" x2="1.905" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.762" x2="2.54" y2="0.762" width="0.1524" layer="21"/>
<text x="-2.54" y="1.2954" size="0.9906" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.6256" y="-0.4826" size="0.9906" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="2.54" y1="-0.254" x2="2.921" y2="0.254" layer="21"/>
<rectangle x1="-2.921" y1="-0.254" x2="-2.54" y2="0.254" layer="21"/>
</package>
<package name="0204/15">
<wire x1="-2.54" y1="0.762" x2="-2.286" y2="1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.54" y1="-0.762" x2="-2.286" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="2.286" y1="-1.016" x2="2.54" y2="-0.762" width="0.1524" layer="21" curve="90"/>
<wire x1="2.286" y1="1.016" x2="2.54" y2="0.762" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-7.62" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="7.62" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.54" y="1.2954" size="0.9906" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.6256" y="-0.4826" size="0.9906" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="2.54" y1="-0.254" x2="2.921" y2="0.254" layer="21"/>
<rectangle x1="-2.921" y1="-0.254" x2="-2.54" y2="0.254" layer="21"/>
<wire x1="7.62" y1="0" x2="2.921" y2="0" width="0.508" layer="51"/>
<wire x1="-7.62" y1="0" x2="-2.921" y2="0" width="0.508" layer="51"/>
<wire x1="-2.54" y1="0.762" x2="-2.286" y2="1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.54" y1="-0.762" x2="-2.286" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="2.286" y1="-1.016" x2="2.54" y2="-0.762" width="0.1524" layer="21" curve="90"/>
<wire x1="2.286" y1="1.016" x2="2.54" y2="0.762" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.54" y1="-0.762" x2="-2.54" y2="0.762" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="1.016" x2="-1.905" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-1.778" y1="0.889" x2="-1.905" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="-1.016" x2="-1.905" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-1.778" y1="-0.889" x2="-1.905" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="1.778" y1="0.889" x2="1.905" y2="1.016" width="0.1524" layer="21"/>
<wire x1="1.778" y1="0.889" x2="-1.778" y2="0.889" width="0.1524" layer="21"/>
<wire x1="1.778" y1="-0.889" x2="1.905" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="1.778" y1="-0.889" x2="-1.778" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="2.286" y1="1.016" x2="1.905" y2="1.016" width="0.1524" layer="21"/>
<wire x1="2.286" y1="-1.016" x2="1.905" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.762" x2="2.54" y2="0.762" width="0.1524" layer="21"/>
<text x="-2.54" y="1.2954" size="0.9906" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.6256" y="-0.4826" size="0.9906" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="2.54" y1="-0.254" x2="2.921" y2="0.254" layer="21"/>
<rectangle x1="-2.921" y1="-0.254" x2="-2.54" y2="0.254" layer="21"/>
</package>
<package name="0204/2V">
<circle x="1.27" y="0" radius="0.889" width="0.1524" layer="51"/>
<circle x="1.27" y="0" radius="0.635" width="0.0508" layer="51"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon" rot="R180"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon" rot="R180"/>
<text x="-2.1336" y="1.1684" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.1336" y="-2.3114" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<wire x1="1.27" y1="0" x2="-1.27" y2="0" width="0.508" layer="51"/>
<wire x1="0.127" y1="0" x2="-0.127" y2="0" width="0.508" layer="21"/>
<circle x="1.27" y="0" radius="0.889" width="0.1524" layer="51"/>
<circle x="1.27" y="0" radius="0.635" width="0.0508" layer="51"/>
<text x="-2.1336" y="1.1684" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.1336" y="-2.3114" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="0202/2V">
<pad name="1" x="0" y="-1.27" drill="0.8128" shape="octagon" rot="R90"/>
<pad name="2" x="0" y="1.27" drill="0.8128" shape="octagon" rot="R90"/>
<text x="-0.254" y="0.508" size="0.9906" layer="25" ratio="10" rot="R180">&gt;NAME</text>
<text x="0.254" y="-0.508" size="0.9906" layer="27" ratio="10">&gt;VALUE</text>
<circle x="0" y="-0.762" radius="0.762" width="0.127" layer="21"/>
<wire x1="0" y1="-0.762" x2="0" y2="1.27" width="0.254" layer="51"/>
<wire x1="0" y1="-0.127" x2="0" y2="0.127" width="0.254" layer="21"/>
<circle x="0" y="-0.762" radius="0.5588" width="0.1524" layer="51"/>
<circle x="0" y="-0.762" radius="0.6858" width="0.0508" layer="51"/>
</package>
<package name="L-02/7">
<pad name="2" x="0" y="-3.81" drill="0.8" shape="octagon" rot="R180"/>
<pad name="1" x="0" y="3.81" drill="0.8" shape="octagon" rot="R180"/>
<wire x1="0.6985" y1="2.0955" x2="0" y2="2.794" width="0.127" layer="21" curve="90"/>
<wire x1="0" y1="2.794" x2="-0.635" y2="2.0955" width="0.127" layer="21" curve="90"/>
<wire x1="0.6985" y1="1.524" x2="0" y2="2.2225" width="0.127" layer="21" curve="90"/>
<wire x1="0" y1="2.2225" x2="-0.635" y2="1.4605" width="0.127" layer="21" curve="90"/>
<wire x1="0.6985" y1="0.889" x2="0" y2="1.651" width="0.127" layer="21" curve="90"/>
<wire x1="0" y1="1.651" x2="-0.635" y2="0.889" width="0.127" layer="21" curve="90"/>
<wire x1="0.6985" y1="-2.2225" x2="0" y2="-1.524" width="0.127" layer="21" curve="90"/>
<wire x1="0" y1="-1.524" x2="-0.635" y2="-2.2225" width="0.127" layer="21" curve="90"/>
<wire x1="-0.635" y1="-2.2225" x2="-0.0635" y2="-2.2225" width="0.127" layer="21"/>
<wire x1="0" y1="-2.7305" x2="0.6985" y2="-2.2225" width="0.127" layer="21" curve="90"/>
<wire x1="0" y1="-2.7305" x2="0" y2="-3.81" width="0.127" layer="21"/>
<wire x1="0" y1="3.81" x2="0" y2="2.794" width="0.127" layer="21"/>
<wire x1="0.6985" y1="0.254" x2="0" y2="0.9525" width="0.127" layer="21" curve="90"/>
<wire x1="0" y1="0.9525" x2="-0.635" y2="0.1905" width="0.127" layer="21" curve="90"/>
<wire x1="0.6985" y1="-0.381" x2="0" y2="0.381" width="0.127" layer="21" curve="90"/>
<wire x1="0" y1="0.381" x2="-0.635" y2="-0.381" width="0.127" layer="21" curve="90"/>
<wire x1="0.6985" y1="-1.016" x2="0" y2="-0.3175" width="0.127" layer="21" curve="90"/>
<wire x1="0" y1="-0.3175" x2="-0.635" y2="-1.0795" width="0.127" layer="21" curve="90"/>
<wire x1="0.6985" y1="-1.651" x2="0" y2="-0.889" width="0.127" layer="21" curve="90"/>
<wire x1="0" y1="-0.889" x2="-0.635" y2="-1.651" width="0.127" layer="21" curve="90"/>
</package>
<package name="0202/5">
<pad name="1" x="0" y="-2.54" drill="0.8128" shape="octagon" rot="R90"/>
<pad name="2" x="0" y="2.54" drill="0.8128" shape="octagon" rot="R90"/>
<text x="0" y="0" size="0.6096" layer="27" ratio="10" rot="R90" align="center">&gt;VALUE</text>
<wire x1="0" y1="2.54" x2="0" y2="1.651" width="0.254" layer="51"/>
<wire x1="0" y1="-2.54" x2="0" y2="-1.651" width="0.254" layer="51"/>
<wire x1="0.381" y1="-1.27" x2="0.635" y2="-1.016" width="0.127" layer="21" curve="90"/>
<wire x1="0.635" y1="1.016" x2="0.381" y2="1.27" width="0.127" layer="21" curve="90"/>
<text x="0.889" y="0" size="0.6096" layer="25" ratio="10" align="center-left">&gt;NAME</text>
<wire x1="-0.381" y1="-1.27" x2="-0.635" y2="-1.016" width="0.127" layer="21" curve="-90"/>
<wire x1="-0.635" y1="1.016" x2="-0.381" y2="1.27" width="0.127" layer="21" curve="-90"/>
<wire x1="0.381" y1="-1.27" x2="-0.381" y2="-1.27" width="0.127" layer="21"/>
<wire x1="-0.635" y1="1.016" x2="-0.635" y2="-1.016" width="0.127" layer="21"/>
<wire x1="0.635" y1="1.016" x2="0.635" y2="-1.016" width="0.127" layer="21"/>
<wire x1="0.381" y1="1.27" x2="-0.381" y2="1.27" width="0.127" layer="21"/>
<rectangle x1="-0.1905" y1="1.3335" x2="0.1905" y2="1.5875" layer="21" rot="R90"/>
<rectangle x1="-0.1905" y1="-1.5875" x2="0.1905" y2="-1.3335" layer="21" rot="R90"/>
</package>
<package name="L-02/5">
<pad name="2" x="0" y="-2.54" drill="0.8" shape="octagon" rot="R180"/>
<pad name="1" x="0" y="2.54" drill="0.8" shape="octagon" rot="R180"/>
<wire x1="0.4445" y1="1.0795" x2="0" y2="1.524" width="0.127" layer="21" curve="90"/>
<wire x1="0" y1="1.524" x2="-0.508" y2="1.0795" width="0.127" layer="21" curve="90"/>
<wire x1="0.4445" y1="0.508" x2="0" y2="0.9525" width="0.127" layer="21" curve="90"/>
<wire x1="0" y1="0.9525" x2="-0.508" y2="0.4445" width="0.127" layer="21" curve="90"/>
<wire x1="0.4445" y1="-0.127" x2="0" y2="0.381" width="0.127" layer="21" curve="90"/>
<wire x1="0" y1="0.381" x2="-0.508" y2="-0.127" width="0.127" layer="21" curve="90"/>
<wire x1="0.4445" y1="-0.6985" x2="0" y2="-0.254" width="0.127" layer="21" curve="90"/>
<wire x1="0" y1="-0.254" x2="-0.508" y2="-0.6985" width="0.127" layer="21" curve="90"/>
<wire x1="-0.508" y1="-0.6985" x2="0" y2="-0.6985" width="0.127" layer="21"/>
<wire x1="0" y1="-1.143" x2="0.4445" y2="-0.6985" width="0.127" layer="21" curve="90"/>
<wire x1="0" y1="-1.143" x2="0" y2="-2.54" width="0.127" layer="21"/>
<wire x1="0" y1="2.54" x2="0" y2="1.524" width="0.127" layer="21"/>
</package>
<package name="L-03/10">
<pad name="2" x="0" y="-5.08" drill="0.8" shape="octagon" rot="R180"/>
<pad name="1" x="0" y="5.08" drill="0.8" shape="octagon" rot="R180"/>
<wire x1="-1.27" y1="0.762" x2="0" y2="2.032" width="0.127" layer="21" curve="-90"/>
<wire x1="-1.27" y1="-0.508" x2="0" y2="0.762" width="0.127" layer="21" curve="-90"/>
<wire x1="-1.27" y1="-1.778" x2="0" y2="-0.508" width="0.127" layer="21" curve="-90"/>
<wire x1="-1.27" y1="2.032" x2="0" y2="3.302" width="0.127" layer="21" curve="-90"/>
<wire x1="1.27" y1="0.762" x2="0" y2="2.032" width="0.127" layer="22" curve="90"/>
<wire x1="1.27" y1="-0.508" x2="0" y2="0.762" width="0.127" layer="22" curve="90"/>
<wire x1="1.27" y1="-1.778" x2="0" y2="-0.508" width="0.127" layer="22" curve="90"/>
<wire x1="1.27" y1="2.032" x2="0" y2="3.302" width="0.127" layer="22" curve="90"/>
<wire x1="0" y1="-3.048" x2="1.27" y2="-1.778" width="0.127" layer="22" curve="90"/>
<wire x1="-1.27" y1="-1.778" x2="0" y2="-1.778" width="0.127" layer="21"/>
<wire x1="0" y1="-3.048" x2="0" y2="-5.08" width="0.127" layer="21"/>
<wire x1="0" y1="5.08" x2="0" y2="3.556" width="0.127" layer="21"/>
</package>
<package name="0202/7">
<wire x1="-0.381" y1="-1.27" x2="-0.635" y2="-1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="0.381" y1="-1.27" x2="0.635" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="0.635" y1="1.016" x2="0.381" y2="1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="-0.635" y1="1.016" x2="-0.381" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="0" y="-3.81" drill="0.8128" shape="octagon" rot="R90"/>
<pad name="2" x="0" y="3.81" drill="0.8128" shape="octagon" rot="R90"/>
<text x="-1.27" y="0" size="0.8128" layer="25" ratio="10" rot="R270" align="center">&gt;NAME</text>
<text x="0" y="0" size="0.6096" layer="27" ratio="10" rot="R90" align="center">&gt;VALUE</text>
<wire x1="0" y1="3.81" x2="0" y2="1.651" width="0.254" layer="51"/>
<wire x1="0" y1="-3.81" x2="0" y2="-1.651" width="0.254" layer="51"/>
<wire x1="-0.381" y1="-1.27" x2="-0.635" y2="-1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="0.381" y1="-1.27" x2="0.635" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="0.635" y1="1.016" x2="0.381" y2="1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="-0.635" y1="1.016" x2="-0.381" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<wire x1="0.381" y1="-1.27" x2="-0.381" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.016" x2="-0.635" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.016" x2="0.635" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="0.381" y1="1.27" x2="-0.381" y2="1.27" width="0.1524" layer="21"/>
<rectangle x1="-0.1905" y1="1.3335" x2="0.1905" y2="1.5875" layer="21" rot="R90"/>
<rectangle x1="-0.1905" y1="-1.5875" x2="0.1905" y2="-1.3335" layer="21" rot="R90"/>
</package>
<package name="L-04/7">
<pad name="2" x="1.27" y="-3.81" drill="0.8" shape="octagon" rot="R180"/>
<pad name="1" x="-1.27" y="3.81" drill="0.8" shape="octagon" rot="R180"/>
<wire x1="1.27" y1="3.048" x2="0" y2="4.318" width="0.127" layer="21" curve="90"/>
<wire x1="0" y1="4.318" x2="-1.27" y2="3.048" width="0.127" layer="21" curve="90"/>
<wire x1="1.27" y1="2.286" x2="0" y2="3.556" width="0.127" layer="21" curve="90"/>
<wire x1="0" y1="3.556" x2="-1.27" y2="2.286" width="0.127" layer="21" curve="90"/>
<wire x1="1.27" y1="1.524" x2="0" y2="2.794" width="0.127" layer="21" curve="90"/>
<wire x1="0" y1="2.794" x2="-1.27" y2="1.524" width="0.127" layer="21" curve="90"/>
<wire x1="1.27" y1="0.762" x2="0" y2="2.032" width="0.127" layer="21" curve="90"/>
<wire x1="0" y1="2.032" x2="-1.27" y2="0.762" width="0.127" layer="21" curve="90"/>
<wire x1="1.27" y1="0" x2="0" y2="1.27" width="0.127" layer="21" curve="90"/>
<wire x1="0" y1="1.27" x2="-1.27" y2="0" width="0.127" layer="21" curve="90"/>
<wire x1="1.27" y1="-0.762" x2="0" y2="0.508" width="0.127" layer="21" curve="90"/>
<wire x1="0" y1="0.508" x2="-1.27" y2="-0.762" width="0.127" layer="21" curve="90"/>
<wire x1="1.27" y1="-1.524" x2="0" y2="-0.254" width="0.127" layer="21" curve="90"/>
<wire x1="0" y1="-0.254" x2="-1.27" y2="-1.524" width="0.127" layer="21" curve="90"/>
<wire x1="-1.27" y1="-1.524" x2="0" y2="-2.794" width="0.127" layer="21" curve="90"/>
<wire x1="1.27" y1="-1.524" x2="1.27" y2="-3.81" width="0.127" layer="21"/>
<wire x1="-1.27" y1="3.048" x2="-1.27" y2="3.81" width="0.127" layer="21"/>
<text x="-1.778" y="0.762" size="0.6096" layer="25" align="center-right">&gt;NAME</text>
<text x="-1.778" y="-0.762" size="0.6096" layer="27" align="center-right">&gt;VALUE</text>
</package>
<package name="L-04/10-M">
<pad name="2" x="-1.27" y="-3.81" drill="0.8" shape="octagon"/>
<pad name="1" x="1.27" y="3.81" drill="0.8" shape="octagon"/>
<wire x1="-1.27" y1="3.048" x2="0" y2="4.318" width="0.127" layer="21" curve="-90"/>
<wire x1="0" y1="4.318" x2="1.27" y2="3.048" width="0.127" layer="21" curve="-90"/>
<wire x1="-1.27" y1="2.286" x2="0" y2="3.556" width="0.127" layer="21" curve="-90"/>
<wire x1="0" y1="3.556" x2="1.27" y2="2.286" width="0.127" layer="21" curve="-90"/>
<wire x1="-1.27" y1="1.524" x2="0" y2="2.794" width="0.127" layer="21" curve="-90"/>
<wire x1="0" y1="2.794" x2="1.27" y2="1.524" width="0.127" layer="21" curve="-90"/>
<wire x1="-1.27" y1="0.762" x2="0" y2="2.032" width="0.127" layer="21" curve="-90"/>
<wire x1="0" y1="2.032" x2="1.27" y2="0.762" width="0.127" layer="21" curve="-90"/>
<wire x1="-1.27" y1="0" x2="0" y2="1.27" width="0.127" layer="21" curve="-90"/>
<wire x1="0" y1="1.27" x2="1.27" y2="0" width="0.127" layer="21" curve="-90"/>
<wire x1="-1.27" y1="-0.762" x2="0" y2="0.508" width="0.127" layer="21" curve="-90"/>
<wire x1="0" y1="0.508" x2="1.27" y2="-0.762" width="0.127" layer="21" curve="-90"/>
<wire x1="-1.27" y1="-1.524" x2="0" y2="-0.254" width="0.127" layer="21" curve="-90"/>
<wire x1="0" y1="-0.254" x2="1.27" y2="-1.524" width="0.127" layer="21" curve="-90"/>
<wire x1="1.27" y1="-1.524" x2="0" y2="-2.794" width="0.127" layer="21" curve="-90"/>
<wire x1="-1.27" y1="-1.524" x2="-1.27" y2="-3.81" width="0.127" layer="21"/>
<wire x1="1.27" y1="3.048" x2="1.27" y2="3.81" width="0.127" layer="21"/>
</package>
<package name="0202V">
<pad name="2" x="0" y="1.27" drill="0.8128" shape="octagon" rot="R270"/>
<pad name="1" x="0" y="-1.27" drill="0.8128" shape="octagon" rot="R270"/>
<text x="-1.016" y="0.508" size="0.6096" layer="25" ratio="10" align="center-right">&gt;NAME</text>
<text x="-1.016" y="-0.508" size="0.6096" layer="27" ratio="10" align="center-right">&gt;VALUE</text>
<circle x="0" y="0.762" radius="0.762" width="0.127" layer="21"/>
<wire x1="0" y1="0.762" x2="0" y2="-1.27" width="0.254" layer="51"/>
<wire x1="0" y1="0.127" x2="0" y2="-0.127" width="0.254" layer="21"/>
<circle x="0" y="0.762" radius="0.508" width="0.0508" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="L">
<wire x1="0" y1="5.08" x2="1.27" y2="3.81" width="0.254" layer="94" curve="-90"/>
<wire x1="0" y1="2.54" x2="1.27" y2="3.81" width="0.254" layer="94" curve="90"/>
<wire x1="0" y1="2.54" x2="1.27" y2="1.27" width="0.254" layer="94" curve="-90"/>
<wire x1="0" y1="0" x2="1.27" y2="1.27" width="0.254" layer="94" curve="90"/>
<wire x1="0" y1="0" x2="1.27" y2="-1.27" width="0.254" layer="94" curve="-90"/>
<wire x1="0" y1="-2.54" x2="1.27" y2="-1.27" width="0.254" layer="94" curve="90"/>
<wire x1="0" y1="-2.54" x2="1.27" y2="-3.81" width="0.254" layer="94" curve="-90"/>
<wire x1="0" y1="-5.08" x2="1.27" y2="-3.81" width="0.254" layer="94" curve="90"/>
<text x="-1.27" y="5.08" size="1.778" layer="95" rot="R180">&gt;NAME</text>
<text x="2.54" y="-5.08" size="1.778" layer="96">&gt;VALUE</text>
<pin name="2" x="0" y="-7.62" visible="off" length="short" direction="pas" swaplevel="1" rot="R90"/>
<pin name="1" x="0" y="7.62" visible="off" length="short" direction="pas" swaplevel="1" rot="R270"/>
</symbol>
<symbol name="R">
<pin name="2" x="0" y="5.08" visible="off" length="short" direction="pas" swaplevel="1" rot="R270"/>
<pin name="1" x="0" y="-5.08" visible="off" length="short" direction="pas" swaplevel="1" rot="R90"/>
<wire x1="0.889" y1="-2.54" x2="0.889" y2="2.54" width="0.254" layer="94"/>
<wire x1="-0.889" y1="2.54" x2="-0.889" y2="-2.54" width="0.254" layer="94"/>
<wire x1="0.889" y1="2.54" x2="-0.889" y2="2.54" width="0.254" layer="94"/>
<wire x1="0.889" y1="-2.54" x2="-0.889" y2="-2.54" width="0.254" layer="94"/>
<text x="-1.27" y="2.54" size="1.778" layer="95" ratio="10" rot="R180">&gt;NAME</text>
<text x="1.27" y="-2.54" size="1.778" layer="96" ratio="10">&gt;VALUE</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="L" prefix="L">
<gates>
<gate name="G$1" symbol="L" x="0" y="0"/>
</gates>
<devices>
<device name="02/5" package="L-02/5">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="02/10" package="L-03/10">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="02/7" package="L-02/7">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="04/7" package="L-04/7">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="04/7-M" package="L-04/10-M">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="R" prefix="R" uservalue="yes">
<description>&lt;B&gt;RESISTOR&lt;/B&gt;, European symbol</description>
<gates>
<gate name="G$1" symbol="R" x="0" y="0"/>
</gates>
<devices>
<device name="0204/5" package="0204/5">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0204/7" package="0204/7">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0204V" package="0204V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0207/10" package="0207/10">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0207/12" package="0207/12">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0207/15" package="0207/15">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0207/2V" package="0207/2V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0207/5V" package="0207/5V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0207/7" package="0207/7">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0204/10" package="0204/10">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0204/12" package="0204/12">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0204/15" package="0204/15">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0204/2V" package="0204/2V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0202/2V" package="0202/2V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0202/5" package="0202/5">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0202/7" package="0202/7">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0202/10" package="0202/10">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0202V" package="0202V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="c">
<description>&lt;b&gt;Resistors, Capacitors, Inductors&lt;/b&gt;&lt;p&gt;
 Based on the previous libraries:
 &lt;ul&gt;
 &lt;li&gt;r.lbr
 &lt;li&gt;cap.lbr 
 &lt;li&gt;cap-fe.lbr
 &lt;li&gt;captant.lbr
 &lt;li&gt;polcap.lbr
 &lt;li&gt;ipc-smd.lbr
 &lt;/ul&gt;
 All SMD packages are defined according to the IPC specifications and  CECC&lt;p&gt;
 &lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;&lt;p&gt;
 &lt;p&gt;
 for Electrolyt Capacitors see also :&lt;p&gt;
 www.bccomponents.com &lt;p&gt;
 www.panasonic.com&lt;p&gt;
 www.kemet.com&lt;p&gt;
 http://www.secc.co.jp/pdf/os_e/2004/e_os_all.pdf &lt;b&gt;(SANYO)&lt;/b&gt;
 &lt;p&gt;
 for trimmer refence see : &lt;u&gt;www.electrospec-inc.com/cross_references/trimpotcrossref.asp&lt;/u&gt;&lt;p&gt;
 
 &lt;table border=0 cellspacing=0 cellpadding=0 width="100%" cellpaddding=0&gt;
 &lt;tr valign="top"&gt;
 
 &lt;! &lt;td width="10"&gt;&amp;nbsp;&lt;/td&gt;
 &lt;td width="90%"&gt;
 
 &lt;b&gt;&lt;font color="#0000FF" size="4"&gt;TRIM-POT CROSS REFERENCE&lt;/font&gt;&lt;/b&gt;
 &lt;P&gt;
 &lt;TABLE BORDER=0 CELLSPACING=1 CELLPADDING=2&gt;
 &lt;TR&gt;
 &lt;TD COLSPAN=8&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;RECTANGULAR MULTI-TURN&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;TR&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;B&gt;
 &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;BOURNS&lt;/FONT&gt;
 &lt;/B&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;B&gt;
 &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;BI&amp;nbsp;TECH&lt;/FONT&gt;
 &lt;/B&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;B&gt;
 &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;DALE-VISHAY&lt;/FONT&gt;
 &lt;/B&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;B&gt;
 &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;PHILIPS/MEPCO&lt;/FONT&gt;
 &lt;/B&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;B&gt;
 &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;MURATA&lt;/FONT&gt;
 &lt;/B&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;B&gt;
 &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;PANASONIC&lt;/FONT&gt;
 &lt;/B&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;B&gt;
 &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;SPECTROL&lt;/FONT&gt;
 &lt;/B&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;B&gt;
 &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;MILSPEC&lt;/FONT&gt;
 &lt;/B&gt;
 &lt;/TD&gt;&lt;TD&gt;&amp;nbsp;&lt;/TD&gt;
 &lt;/TR&gt;
 &lt;TR&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3 &gt;
 3005P&lt;BR&gt;
 3006P&lt;BR&gt;
 3006W&lt;BR&gt;
 3006Y&lt;BR&gt;
 3009P&lt;BR&gt;
 3009W&lt;BR&gt;
 3009Y&lt;BR&gt;
 3057J&lt;BR&gt;
 3057L&lt;BR&gt;
 3057P&lt;BR&gt;
 3057Y&lt;BR&gt;
 3059J&lt;BR&gt;
 3059L&lt;BR&gt;
 3059P&lt;BR&gt;
 3059Y&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 89P&lt;BR&gt;
 89W&lt;BR&gt;
 89X&lt;BR&gt;
 89PH&lt;BR&gt;
 76P&lt;BR&gt;
 89XH&lt;BR&gt;
 78SLT&lt;BR&gt;
 78L&amp;nbsp;ALT&lt;BR&gt;
 56P&amp;nbsp;ALT&lt;BR&gt;
 78P&amp;nbsp;ALT&lt;BR&gt;
 T8S&lt;BR&gt;
 78L&lt;BR&gt;
 56P&lt;BR&gt;
 78P&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 T18/784&lt;BR&gt;
 783&lt;BR&gt;
 781&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 2199&lt;BR&gt;
 1697/1897&lt;BR&gt;
 1680/1880&lt;BR&gt;
 2187&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 8035EKP/CT20/RJ-20P&lt;BR&gt;
 -&lt;BR&gt;
 RJ-20X&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 1211L&lt;BR&gt;
 8012EKQ&amp;nbsp;ALT&lt;BR&gt;
 8012EKR&amp;nbsp;ALT&lt;BR&gt;
 1211P&lt;BR&gt;
 8012EKJ&lt;BR&gt;
 8012EKL&lt;BR&gt;
 8012EKQ&lt;BR&gt;
 8012EKR&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 2101P&lt;BR&gt;
 2101W&lt;BR&gt;
 2101Y&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 2102L&lt;BR&gt;
 2102S&lt;BR&gt;
 2102Y&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 EVMCOG&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 43P&lt;BR&gt;
 43W&lt;BR&gt;
 43Y&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 40L&lt;BR&gt;
 40P&lt;BR&gt;
 40Y&lt;BR&gt;
 70Y-T602&lt;BR&gt;
 70L&lt;BR&gt;
 70P&lt;BR&gt;
 70Y&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 RT/RTR12&lt;BR&gt;
 RT/RTR12&lt;BR&gt;
 RT/RTR12&lt;BR&gt;
 -&lt;BR&gt;
 RJ/RJR12&lt;BR&gt;
 RJ/RJR12&lt;BR&gt;
 RJ/RJR12&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;TR&gt;
 &lt;TD COLSPAN=8&gt;&amp;nbsp;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;TR&gt;
 &lt;TD COLSPAN=8&gt;
 &lt;FONT SIZE=4 FACE=ARIAL&gt;&lt;B&gt;SQUARE MULTI-TURN&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;TR&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BOURN&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BI&amp;nbsp;TECH&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;DALE-VISHAY&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PHILIPS/MEPCO&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;MURATA&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PANASONIC&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;SPECTROL&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;MILSPEC&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;TR&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 3250L&lt;BR&gt;
 3250P&lt;BR&gt;
 3250W&lt;BR&gt;
 3250X&lt;BR&gt;
 3252P&lt;BR&gt;
 3252W&lt;BR&gt;
 3252X&lt;BR&gt;
 3260P&lt;BR&gt;
 3260W&lt;BR&gt;
 3260X&lt;BR&gt;
 3262P&lt;BR&gt;
 3262W&lt;BR&gt;
 3262X&lt;BR&gt;
 3266P&lt;BR&gt;
 3266W&lt;BR&gt;
 3266X&lt;BR&gt;
 3290H&lt;BR&gt;
 3290P&lt;BR&gt;
 3290W&lt;BR&gt;
 3292P&lt;BR&gt;
 3292W&lt;BR&gt;
 3292X&lt;BR&gt;
 3296P&lt;BR&gt;
 3296W&lt;BR&gt;
 3296X&lt;BR&gt;
 3296Y&lt;BR&gt;
 3296Z&lt;BR&gt;
 3299P&lt;BR&gt;
 3299W&lt;BR&gt;
 3299X&lt;BR&gt;
 3299Y&lt;BR&gt;
 3299Z&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 66P&amp;nbsp;ALT&lt;BR&gt;
 66W&amp;nbsp;ALT&lt;BR&gt;
 66X&amp;nbsp;ALT&lt;BR&gt;
 66P&amp;nbsp;ALT&lt;BR&gt;
 66W&amp;nbsp;ALT&lt;BR&gt;
 66X&amp;nbsp;ALT&lt;BR&gt;
 -&lt;BR&gt;
 64W&amp;nbsp;ALT&lt;BR&gt;
 -&lt;BR&gt;
 64P&amp;nbsp;ALT&lt;BR&gt;
 64W&amp;nbsp;ALT&lt;BR&gt;
 64X&amp;nbsp;ALT&lt;BR&gt;
 64P&lt;BR&gt;
 64W&lt;BR&gt;
 64X&lt;BR&gt;
 66X&amp;nbsp;ALT&lt;BR&gt;
 66P&amp;nbsp;ALT&lt;BR&gt;
 66W&amp;nbsp;ALT&lt;BR&gt;
 66P&lt;BR&gt;
 66W&lt;BR&gt;
 66X&lt;BR&gt;
 67P&lt;BR&gt;
 67W&lt;BR&gt;
 67X&lt;BR&gt;
 67Y&lt;BR&gt;
 67Z&lt;BR&gt;
 68P&lt;BR&gt;
 68W&lt;BR&gt;
 68X&lt;BR&gt;
 67Y&amp;nbsp;ALT&lt;BR&gt;
 67Z&amp;nbsp;ALT&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 5050&lt;BR&gt;
 5091&lt;BR&gt;
 5080&lt;BR&gt;
 5087&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 T63YB&lt;BR&gt;
 T63XB&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 5887&lt;BR&gt;
 5891&lt;BR&gt;
 5880&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 T93Z&lt;BR&gt;
 T93YA&lt;BR&gt;
 T93XA&lt;BR&gt;
 T93YB&lt;BR&gt;
 T93XB&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 8026EKP&lt;BR&gt;
 8026EKW&lt;BR&gt;
 8026EKM&lt;BR&gt;
 8026EKP&lt;BR&gt;
 8026EKB&lt;BR&gt;
 8026EKM&lt;BR&gt;
 1309X&lt;BR&gt;
 1309P&lt;BR&gt;
 1309W&lt;BR&gt;
 8024EKP&lt;BR&gt;
 8024EKW&lt;BR&gt;
 8024EKN&lt;BR&gt;
 RJ-9P/CT9P&lt;BR&gt;
 RJ-9W&lt;BR&gt;
 RJ-9X&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 3103P&lt;BR&gt;
 3103Y&lt;BR&gt;
 3103Z&lt;BR&gt;
 3103P&lt;BR&gt;
 3103Y&lt;BR&gt;
 3103Z&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 3105P/3106P&lt;BR&gt;
 3105W/3106W&lt;BR&gt;
 3105X/3106X&lt;BR&gt;
 3105Y/3106Y&lt;BR&gt;
 3105Z/3105Z&lt;BR&gt;
 3102P&lt;BR&gt;
 3102W&lt;BR&gt;
 3102X&lt;BR&gt;
 3102Y&lt;BR&gt;
 3102Z&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 EVMCBG&lt;BR&gt;
 EVMCCG&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 55-1-X&lt;BR&gt;
 55-4-X&lt;BR&gt;
 55-3-X&lt;BR&gt;
 55-2-X&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 50-2-X&lt;BR&gt;
 50-4-X&lt;BR&gt;
 50-3-X&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 64P&lt;BR&gt;
 64W&lt;BR&gt;
 64X&lt;BR&gt;
 64Y&lt;BR&gt;
 64Z&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 RT/RTR22&lt;BR&gt;
 RT/RTR22&lt;BR&gt;
 RT/RTR22&lt;BR&gt;
 RT/RTR22&lt;BR&gt;
 RJ/RJR22&lt;BR&gt;
 RJ/RJR22&lt;BR&gt;
 RJ/RJR22&lt;BR&gt;
 RT/RTR26&lt;BR&gt;
 RT/RTR26&lt;BR&gt;
 RT/RTR26&lt;BR&gt;
 RJ/RJR26&lt;BR&gt;
 RJ/RJR26&lt;BR&gt;
 RJ/RJR26&lt;BR&gt;
 RJ/RJR26&lt;BR&gt;
 RJ/RJR26&lt;BR&gt;
 RJ/RJR26&lt;BR&gt;
 RT/RTR24&lt;BR&gt;
 RT/RTR24&lt;BR&gt;
 RT/RTR24&lt;BR&gt;
 RJ/RJR24&lt;BR&gt;
 RJ/RJR24&lt;BR&gt;
 RJ/RJR24&lt;BR&gt;
 RJ/RJR24&lt;BR&gt;
 RJ/RJR24&lt;BR&gt;
 RJ/RJR24&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;TR&gt;
 &lt;TD COLSPAN=8&gt;&amp;nbsp;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;TR&gt;
 &lt;TD COLSPAN=8&gt;
 &lt;FONT SIZE=4 FACE=ARIAL&gt;&lt;B&gt;SINGLE TURN&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;TR&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BOURN&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BI&amp;nbsp;TECH&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;DALE-VISHAY&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PHILIPS/MEPCO&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;MURATA&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PANASONIC&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;SPECTROL&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;MILSPEC&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;TR&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 3323P&lt;BR&gt;
 3323S&lt;BR&gt;
 3323W&lt;BR&gt;
 3329H&lt;BR&gt;
 3329P&lt;BR&gt;
 3329W&lt;BR&gt;
 3339H&lt;BR&gt;
 3339P&lt;BR&gt;
 3339W&lt;BR&gt;
 3352E&lt;BR&gt;
 3352H&lt;BR&gt;
 3352K&lt;BR&gt;
 3352P&lt;BR&gt;
 3352T&lt;BR&gt;
 3352V&lt;BR&gt;
 3352W&lt;BR&gt;
 3362H&lt;BR&gt;
 3362M&lt;BR&gt;
 3362P&lt;BR&gt;
 3362R&lt;BR&gt;
 3362S&lt;BR&gt;
 3362U&lt;BR&gt;
 3362W&lt;BR&gt;
 3362X&lt;BR&gt;
 3386B&lt;BR&gt;
 3386C&lt;BR&gt;
 3386F&lt;BR&gt;
 3386H&lt;BR&gt;
 3386K&lt;BR&gt;
 3386M&lt;BR&gt;
 3386P&lt;BR&gt;
 3386S&lt;BR&gt;
 3386W&lt;BR&gt;
 3386X&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 25P&lt;BR&gt;
 25S&lt;BR&gt;
 25RX&lt;BR&gt;
 82P&lt;BR&gt;
 82M&lt;BR&gt;
 82PA&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 91E&lt;BR&gt;
 91X&lt;BR&gt;
 91T&lt;BR&gt;
 91B&lt;BR&gt;
 91A&lt;BR&gt;
 91V&lt;BR&gt;
 91W&lt;BR&gt;
 25W&lt;BR&gt;
 25V&lt;BR&gt;
 25P&lt;BR&gt;
 -&lt;BR&gt;
 25S&lt;BR&gt;
 25U&lt;BR&gt;
 25RX&lt;BR&gt;
 25X&lt;BR&gt;
 72XW&lt;BR&gt;
 72XL&lt;BR&gt;
 72PM&lt;BR&gt;
 72RX&lt;BR&gt;
 -&lt;BR&gt;
 72PX&lt;BR&gt;
 72P&lt;BR&gt;
 72RXW&lt;BR&gt;
 72RXL&lt;BR&gt;
 72X&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 T7YB&lt;BR&gt;
 T7YA&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 TXD&lt;BR&gt;
 TYA&lt;BR&gt;
 TYP&lt;BR&gt;
 -&lt;BR&gt;
 TYD&lt;BR&gt;
 TX&lt;BR&gt;
 -&lt;BR&gt;
 150SX&lt;BR&gt;
 100SX&lt;BR&gt;
 102T&lt;BR&gt;
 101S&lt;BR&gt;
 190T&lt;BR&gt;
 150TX&lt;BR&gt;
 101&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 101SX&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 ET6P&lt;BR&gt;
 ET6S&lt;BR&gt;
 ET6X&lt;BR&gt;
 RJ-6W/8014EMW&lt;BR&gt;
 RJ-6P/8014EMP&lt;BR&gt;
 RJ-6X/8014EMX&lt;BR&gt;
 TM7W&lt;BR&gt;
 TM7P&lt;BR&gt;
 TM7X&lt;BR&gt;
 -&lt;BR&gt;
 8017SMS&lt;BR&gt;
 -&lt;BR&gt;
 8017SMB&lt;BR&gt;
 8017SMA&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 CT-6W&lt;BR&gt;
 CT-6H&lt;BR&gt;
 CT-6P&lt;BR&gt;
 CT-6R&lt;BR&gt;
 -&lt;BR&gt;
 CT-6V&lt;BR&gt;
 CT-6X&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 8038EKV&lt;BR&gt;
 -&lt;BR&gt;
 8038EKX&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 8038EKP&lt;BR&gt;
 8038EKZ&lt;BR&gt;
 8038EKW&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 3321H&lt;BR&gt;
 3321P&lt;BR&gt;
 3321N&lt;BR&gt;
 1102H&lt;BR&gt;
 1102P&lt;BR&gt;
 1102T&lt;BR&gt;
 RVA0911V304A&lt;BR&gt;
 -&lt;BR&gt;
 RVA0911H413A&lt;BR&gt;
 RVG0707V100A&lt;BR&gt;
 RVA0607V(H)306A&lt;BR&gt;
 RVA1214H213A&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 3104B&lt;BR&gt;
 3104C&lt;BR&gt;
 3104F&lt;BR&gt;
 3104H&lt;BR&gt;
 -&lt;BR&gt;
 3104M&lt;BR&gt;
 3104P&lt;BR&gt;
 3104S&lt;BR&gt;
 3104W&lt;BR&gt;
 3104X&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 EVMQ0G&lt;BR&gt;
 EVMQIG&lt;BR&gt;
 EVMQ3G&lt;BR&gt;
 EVMS0G&lt;BR&gt;
 EVMQ0G&lt;BR&gt;
 EVMG0G&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 EVMK4GA00B&lt;BR&gt;
 EVM30GA00B&lt;BR&gt;
 EVMK0GA00B&lt;BR&gt;
 EVM38GA00B&lt;BR&gt;
 EVMB6&lt;BR&gt;
 EVLQ0&lt;BR&gt;
 -&lt;BR&gt;
 EVMMSG&lt;BR&gt;
 EVMMBG&lt;BR&gt;
 EVMMAG&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 EVMMCS&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 EVMM1&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 EVMM0&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 EVMM3&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 62-3-1&lt;BR&gt;
 62-1-2&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 67R&lt;BR&gt;
 -&lt;BR&gt;
 67P&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 67X&lt;BR&gt;
 63V&lt;BR&gt;
 63S&lt;BR&gt;
 63M&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 63H&lt;BR&gt;
 63P&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 63X&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 RJ/RJR50&lt;BR&gt;
 RJ/RJR50&lt;BR&gt;
 RJ/RJR50&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;/TABLE&gt;
 &lt;P&gt;&amp;nbsp;&lt;P&gt;
 &lt;TABLE BORDER=0 CELLSPACING=1 CELLPADDING=3&gt;
 &lt;TR&gt;
 &lt;TD COLSPAN=7&gt;
 &lt;FONT color="#0000FF" SIZE=4 FACE=ARIAL&gt;&lt;B&gt;SMD TRIM-POT CROSS REFERENCE&lt;/B&gt;&lt;/FONT&gt;
 &lt;P&gt;
 &lt;FONT SIZE=4 FACE=ARIAL&gt;&lt;B&gt;MULTI-TURN&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;TR&gt;
 &lt;TD&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BOURNS&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BI&amp;nbsp;TECH&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;DALE-VISHAY&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PHILIPS/MEPCO&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PANASONIC&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;TOCOS&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;AUX/KYOCERA&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;TR&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 3224G&lt;BR&gt;
 3224J&lt;BR&gt;
 3224W&lt;BR&gt;
 3269P&lt;BR&gt;
 3269W&lt;BR&gt;
 3269X&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 44G&lt;BR&gt;
 44J&lt;BR&gt;
 44W&lt;BR&gt;
 84P&lt;BR&gt;
 84W&lt;BR&gt;
 84X&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 ST63Z&lt;BR&gt;
 ST63Y&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 ST5P&lt;BR&gt;
 ST5W&lt;BR&gt;
 ST5X&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;TR&gt;
 &lt;TD COLSPAN=7&gt;&amp;nbsp;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;TR&gt;
 &lt;TD COLSPAN=7&gt;
 &lt;FONT SIZE=4 FACE=ARIAL&gt;&lt;B&gt;SINGLE TURN&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;TR&gt;
 &lt;TD&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BOURNS&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BI&amp;nbsp;TECH&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;DALE-VISHAY&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PHILIPS/MEPCO&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PANASONIC&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;TOCOS&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;AUX/KYOCERA&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;TR&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 3314G&lt;BR&gt;
 3314J&lt;BR&gt;
 3364A/B&lt;BR&gt;
 3364C/D&lt;BR&gt;
 3364W/X&lt;BR&gt;
 3313G&lt;BR&gt;
 3313J&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 23B&lt;BR&gt;
 23A&lt;BR&gt;
 21X&lt;BR&gt;
 21W&lt;BR&gt;
 -&lt;BR&gt;
 22B&lt;BR&gt;
 22A&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 ST5YL/ST53YL&lt;BR&gt;
 ST5YJ/5T53YJ&lt;BR&gt;
 ST-23A&lt;BR&gt;
 ST-22B&lt;BR&gt;
 ST-22&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 ST-4B&lt;BR&gt;
 ST-4A&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 ST-3B&lt;BR&gt;
 ST-3A&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 EVM-6YS&lt;BR&gt;
 EVM-1E&lt;BR&gt;
 EVM-1G&lt;BR&gt;
 EVM-1D&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 G4B&lt;BR&gt;
 G4A&lt;BR&gt;
 TR04-3S1&lt;BR&gt;
 TRG04-2S1&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 DVR-43A&lt;BR&gt;
 CVR-42C&lt;BR&gt;
 CVR-42A/C&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;/TABLE&gt;
 &lt;P&gt;
 &lt;FONT SIZE=4 FACE=ARIAL&gt;&lt;B&gt;ALT =&amp;nbsp;ALTERNATE&lt;/B&gt;&lt;/FONT&gt;
 &lt;P&gt;
 
 &amp;nbsp;
 &lt;P&gt;
 &lt;/td&gt;
 &lt;/tr&gt;
 &lt;/table&gt;</description>
<packages>
<package name="C050-020X036">
<wire x1="0" y1="1.524" x2="0.635" y2="0.889" width="0.127" layer="21" curve="-90"/>
<wire x1="0.635" y1="-0.889" x2="0.635" y2="0.889" width="0.127" layer="21"/>
<wire x1="0.635" y1="-0.889" x2="0" y2="-1.524" width="0.127" layer="21" curve="-90"/>
<pad name="2" x="0" y="-2.54" drill="0.8128" shape="octagon" rot="R270"/>
<text x="1.016" y="0.635" size="0.6096" layer="25" rot="R180" align="center-right">&gt;NAME</text>
<text x="1.016" y="-0.635" size="0.6096" layer="27" align="center-left">&gt;VALUE</text>
<pad name="1" x="0" y="2.54" drill="0.8128" shape="octagon" rot="R90"/>
<wire x1="0" y1="-1.524" x2="-0.635" y2="-0.889" width="0.127" layer="21" curve="-90"/>
<wire x1="-0.635" y1="0.889" x2="-0.635" y2="-0.889" width="0.127" layer="21"/>
<wire x1="-0.635" y1="0.889" x2="0" y2="1.524" width="0.127" layer="21" curve="-90"/>
<wire x1="0" y1="1.524" x2="0.635" y2="0.889" width="0.127" layer="21" curve="-90"/>
<wire x1="0" y1="-2.54" x2="0" y2="-1.5367" width="0.127" layer="51"/>
<rectangle x1="-0.381" y1="0.0762" x2="0.381" y2="0.2032" layer="21"/>
<wire x1="0" y1="2.54" x2="0" y2="1.524" width="0.127" layer="51"/>
<rectangle x1="-0.0254" y1="0.2032" x2="0.0254" y2="1.016" layer="21"/>
<rectangle x1="-0.381" y1="-0.2032" x2="0.381" y2="-0.0762" layer="21" rot="R180"/>
<rectangle x1="-0.0254" y1="-1.016" x2="0.0254" y2="-0.2032" layer="21" rot="R180"/>
</package>
<package name="C025-024X044">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
 grid 2.5 mm, outline 2.4 x 4.4 mm</description>
<wire x1="-2.159" y1="-0.635" x2="-2.159" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.159" y1="0.635" x2="-1.651" y2="1.143" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.159" y1="-0.635" x2="-1.651" y2="-1.143" width="0.1524" layer="21" curve="90"/>
<wire x1="1.651" y1="1.143" x2="-1.651" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-0.635" x2="2.159" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.651" y1="-1.143" x2="-1.651" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="1.651" y1="1.143" x2="2.159" y2="0.635" width="0.1524" layer="21" curve="-90"/>
<wire x1="1.651" y1="-1.143" x2="2.159" y2="-0.635" width="0.1524" layer="21" curve="90"/>
<wire x1="-0.3048" y1="0.762" x2="-0.3048" y2="-0.762" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0.762" x2="0.3302" y2="-0.762" width="0.3048" layer="21"/>
<wire x1="1.27" y1="0" x2="0.3302" y2="0" width="0.1524" layer="51"/>
<wire x1="-1.27" y1="0" x2="-0.3048" y2="0" width="0.1524" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-1.778" y="1.397" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.778" y="-2.667" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="C025-025X050">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
 grid 2.5 mm, outline 2.5 x 5 mm</description>
<wire x1="-2.159" y1="1.27" x2="2.159" y2="1.27" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-1.27" x2="-2.159" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="2.413" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="1.016" x2="-2.413" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.159" y1="1.27" x2="2.413" y2="1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.413" y1="1.016" x2="-2.159" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<wire x1="2.159" y1="-1.27" x2="2.413" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.413" y1="-1.016" x2="-2.159" y2="-1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="0.762" y1="0" x2="0.381" y2="0" width="0.1524" layer="51"/>
<wire x1="0.381" y1="0" x2="0.254" y2="0" width="0.1524" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="0.762" width="0.254" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0.762" x2="-0.254" y2="0" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.381" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="0" x2="-0.762" y2="0" width="0.1524" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.286" y="1.524" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.286" y="-2.794" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="C025-030X050">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
 grid 2.5 mm, outline 3 x 5 mm</description>
<wire x1="-2.159" y1="1.524" x2="2.159" y2="1.524" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-1.524" x2="-2.159" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.27" x2="2.413" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="1.27" x2="-2.413" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="2.159" y1="1.524" x2="2.413" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.413" y1="1.27" x2="-2.159" y2="1.524" width="0.1524" layer="21" curve="-90"/>
<wire x1="2.159" y1="-1.524" x2="2.413" y2="-1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.413" y1="-1.27" x2="-2.159" y2="-1.524" width="0.1524" layer="21" curve="90"/>
<wire x1="0.762" y1="0" x2="0.381" y2="0" width="0.1524" layer="51"/>
<wire x1="0.381" y1="0" x2="0.254" y2="0" width="0.1524" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="0.762" width="0.254" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0.762" x2="-0.254" y2="0" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.381" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="0" x2="-0.762" y2="0" width="0.1524" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.286" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.286" y="-3.048" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="C025-040X050">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
 grid 2.5 mm, outline 4 x 5 mm</description>
<wire x1="-2.159" y1="1.905" x2="2.159" y2="1.905" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-1.905" x2="-2.159" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.651" x2="2.413" y2="-1.651" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="1.651" x2="-2.413" y2="-1.651" width="0.1524" layer="21"/>
<wire x1="2.159" y1="1.905" x2="2.413" y2="1.651" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.413" y1="1.651" x2="-2.159" y2="1.905" width="0.1524" layer="21" curve="-90"/>
<wire x1="2.159" y1="-1.905" x2="2.413" y2="-1.651" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.413" y1="-1.651" x2="-2.159" y2="-1.905" width="0.1524" layer="21" curve="90"/>
<wire x1="0.762" y1="0" x2="0.381" y2="0" width="0.1524" layer="51"/>
<wire x1="0.381" y1="0" x2="0.254" y2="0" width="0.1524" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="0.762" width="0.254" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0.762" x2="-0.254" y2="0" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.381" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="0" x2="-0.762" y2="0" width="0.1524" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.286" y="2.159" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.286" y="-3.429" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="C025-050X050">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
 grid 2.5 mm, outline 5 x 5 mm</description>
<wire x1="-2.159" y1="2.286" x2="2.159" y2="2.286" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-2.286" x2="-2.159" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="2.413" y1="2.032" x2="2.413" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="2.032" x2="-2.413" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="2.159" y1="2.286" x2="2.413" y2="2.032" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.413" y1="2.032" x2="-2.159" y2="2.286" width="0.1524" layer="21" curve="-90"/>
<wire x1="2.159" y1="-2.286" x2="2.413" y2="-2.032" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.413" y1="-2.032" x2="-2.159" y2="-2.286" width="0.1524" layer="21" curve="90"/>
<wire x1="0.762" y1="0" x2="0.381" y2="0" width="0.1524" layer="51"/>
<wire x1="0.381" y1="0" x2="0.254" y2="0" width="0.1524" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="0.762" width="0.254" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0.762" x2="-0.254" y2="0" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.381" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="0" x2="-0.762" y2="0" width="0.1524" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.286" y="2.54" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.286" y="-3.81" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="C025-060X050">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
 grid 2.5 mm, outline 6 x 5 mm</description>
<wire x1="-2.159" y1="2.794" x2="2.159" y2="2.794" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-2.794" x2="-2.159" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="2.413" y1="2.54" x2="2.413" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="2.54" x2="-2.413" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="2.159" y1="2.794" x2="2.413" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.413" y1="2.54" x2="-2.159" y2="2.794" width="0.1524" layer="21" curve="-90"/>
<wire x1="2.159" y1="-2.794" x2="2.413" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.413" y1="-2.54" x2="-2.159" y2="-2.794" width="0.1524" layer="21" curve="90"/>
<wire x1="0.762" y1="0" x2="0.381" y2="0" width="0.1524" layer="51"/>
<wire x1="0.381" y1="0" x2="0.254" y2="0" width="0.1524" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="0.762" width="0.254" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0.762" x2="-0.254" y2="0" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.381" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="0" x2="-0.762" y2="0" width="0.1524" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.286" y="3.048" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.032" y="-2.413" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="C050-024X044">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
 grid 5 mm, outline 2.4 x 4.4 mm</description>
<wire x1="-2.159" y1="-0.635" x2="-2.159" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-2.159" y1="0.635" x2="-1.651" y2="1.143" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.159" y1="-0.635" x2="-1.651" y2="-1.143" width="0.1524" layer="21" curve="90"/>
<wire x1="1.651" y1="1.143" x2="-1.651" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-0.635" x2="2.159" y2="0.635" width="0.1524" layer="51"/>
<wire x1="1.651" y1="-1.143" x2="-1.651" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="1.651" y1="1.143" x2="2.159" y2="0.635" width="0.1524" layer="21" curve="-90"/>
<wire x1="1.651" y1="-1.143" x2="2.159" y2="-0.635" width="0.1524" layer="21" curve="90"/>
<wire x1="-0.3048" y1="0.762" x2="-0.3048" y2="0" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-0.3048" y2="-0.762" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0.762" x2="0.3302" y2="0" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="0.3302" y2="-0.762" width="0.3048" layer="21"/>
<wire x1="1.27" y1="0" x2="0.3302" y2="0" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="0" x2="-0.3048" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.159" y="1.397" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.159" y="-2.667" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="2.159" y1="-0.381" x2="2.54" y2="0.381" layer="51"/>
<rectangle x1="-2.54" y1="-0.381" x2="-2.159" y2="0.381" layer="51"/>
</package>
<package name="C050-025X075">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
 grid 5 mm, outline 2.5 x 7.5 mm</description>
<wire x1="-0.3048" y1="0.635" x2="-0.3048" y2="0" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-0.3048" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="0.3302" y1="0.635" x2="0.3302" y2="0" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="0.3302" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.683" y1="1.016" x2="-3.683" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="-1.27" x2="3.429" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="3.683" y1="-1.016" x2="3.683" y2="1.016" width="0.1524" layer="21"/>
<wire x1="3.429" y1="1.27" x2="-3.429" y2="1.27" width="0.1524" layer="21"/>
<wire x1="3.429" y1="1.27" x2="3.683" y2="1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="3.429" y1="-1.27" x2="3.683" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="-1.016" x2="-3.429" y2="-1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="1.016" x2="-3.429" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" shape="octagon"/>
<text x="-3.429" y="1.651" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.429" y="-2.794" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="C050-045X075">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
 grid 5 mm, outline 4.5 x 7.5 mm</description>
<wire x1="-0.3048" y1="0.635" x2="-0.3048" y2="0" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-0.3048" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="0.3302" y1="0.635" x2="0.3302" y2="0" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="0.3302" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.683" y1="2.032" x2="-3.683" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="-2.286" x2="3.429" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="3.683" y1="-2.032" x2="3.683" y2="2.032" width="0.1524" layer="21"/>
<wire x1="3.429" y1="2.286" x2="-3.429" y2="2.286" width="0.1524" layer="21"/>
<wire x1="3.429" y1="2.286" x2="3.683" y2="2.032" width="0.1524" layer="21" curve="-90"/>
<wire x1="3.429" y1="-2.286" x2="3.683" y2="-2.032" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="-2.032" x2="-3.429" y2="-2.286" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="2.032" x2="-3.429" y2="2.286" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" shape="octagon"/>
<text x="-3.556" y="2.667" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.556" y="-3.81" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="C050-030X075">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
 grid 5 mm, outline 3 x 7.5 mm</description>
<wire x1="-0.3048" y1="0.635" x2="-0.3048" y2="0" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-0.3048" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="0.3302" y1="0.635" x2="0.3302" y2="0" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="0.3302" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.683" y1="1.27" x2="-3.683" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="-1.524" x2="3.429" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="3.683" y1="-1.27" x2="3.683" y2="1.27" width="0.1524" layer="21"/>
<wire x1="3.429" y1="1.524" x2="-3.429" y2="1.524" width="0.1524" layer="21"/>
<wire x1="3.429" y1="1.524" x2="3.683" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<wire x1="3.429" y1="-1.524" x2="3.683" y2="-1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="-1.27" x2="-3.429" y2="-1.524" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="1.27" x2="-3.429" y2="1.524" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" shape="octagon"/>
<text x="-3.556" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.556" y="-3.048" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="C050-050X075">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
 grid 5 mm, outline 5 x 7.5 mm</description>
<wire x1="-0.3048" y1="0.635" x2="-0.3048" y2="0" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-0.3048" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="0.3302" y1="0.635" x2="0.3302" y2="0" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="0.3302" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.683" y1="2.286" x2="-3.683" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="-2.54" x2="3.429" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="3.683" y1="-2.286" x2="3.683" y2="2.286" width="0.1524" layer="21"/>
<wire x1="3.429" y1="2.54" x2="-3.429" y2="2.54" width="0.1524" layer="21"/>
<wire x1="3.429" y1="2.54" x2="3.683" y2="2.286" width="0.1524" layer="21" curve="-90"/>
<wire x1="3.429" y1="-2.54" x2="3.683" y2="-2.286" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="-2.286" x2="-3.429" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="2.286" x2="-3.429" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" shape="octagon"/>
<text x="-3.429" y="2.921" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.175" y="-2.159" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="C050-055X075">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
 grid 5 mm, outline 5.5 x 7.5 mm</description>
<wire x1="-0.3048" y1="0.635" x2="-0.3048" y2="0" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-0.3048" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="0.3302" y1="0.635" x2="0.3302" y2="0" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="0.3302" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.683" y1="2.54" x2="-3.683" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="-2.794" x2="3.429" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="3.683" y1="-2.54" x2="3.683" y2="2.54" width="0.1524" layer="21"/>
<wire x1="3.429" y1="2.794" x2="-3.429" y2="2.794" width="0.1524" layer="21"/>
<wire x1="3.429" y1="2.794" x2="3.683" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<wire x1="3.429" y1="-2.794" x2="3.683" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="-2.54" x2="-3.429" y2="-2.794" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="2.54" x2="-3.429" y2="2.794" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" shape="octagon"/>
<text x="-3.429" y="3.175" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.302" y="-2.286" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="C050-075X075">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
 grid 5 mm, outline 7.5 x 7.5 mm</description>
<wire x1="-1.524" y1="0" x2="-0.4572" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.4572" y1="0" x2="-0.4572" y2="0.762" width="0.4064" layer="21"/>
<wire x1="-0.4572" y1="0" x2="-0.4572" y2="-0.762" width="0.4064" layer="21"/>
<wire x1="0.4318" y1="0.762" x2="0.4318" y2="0" width="0.4064" layer="21"/>
<wire x1="0.4318" y1="0" x2="1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="0.4318" y1="0" x2="0.4318" y2="-0.762" width="0.4064" layer="21"/>
<wire x1="-3.683" y1="3.429" x2="-3.683" y2="-3.429" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="-3.683" x2="3.429" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="3.683" y1="-3.429" x2="3.683" y2="3.429" width="0.1524" layer="21"/>
<wire x1="3.429" y1="3.683" x2="-3.429" y2="3.683" width="0.1524" layer="21"/>
<wire x1="3.429" y1="3.683" x2="3.683" y2="3.429" width="0.1524" layer="21" curve="-90"/>
<wire x1="3.429" y1="-3.683" x2="3.683" y2="-3.429" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="-3.429" x2="-3.429" y2="-3.683" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="3.429" x2="-3.429" y2="3.683" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" shape="octagon"/>
<text x="-3.429" y="4.064" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.175" y="-2.921" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="C075-032X103">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
 grid 7.5 mm, outline 3.2 x 10.3 mm</description>
<wire x1="4.826" y1="1.524" x2="-4.826" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="1.27" x2="-5.08" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="-1.524" x2="4.826" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-1.27" x2="5.08" y2="1.27" width="0.1524" layer="21"/>
<wire x1="4.826" y1="1.524" x2="5.08" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.826" y1="-1.524" x2="5.08" y2="-1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.08" y1="-1.27" x2="-4.826" y2="-1.524" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.08" y1="1.27" x2="-4.826" y2="1.524" width="0.1524" layer="21" curve="-90"/>
<wire x1="0.508" y1="0" x2="2.54" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0" x2="-0.508" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.508" y1="0.889" x2="-0.508" y2="0" width="0.4064" layer="21"/>
<wire x1="-0.508" y1="0" x2="-0.508" y2="-0.889" width="0.4064" layer="21"/>
<wire x1="0.508" y1="0.889" x2="0.508" y2="0" width="0.4064" layer="21"/>
<wire x1="0.508" y1="0" x2="0.508" y2="-0.889" width="0.4064" layer="21"/>
<pad name="1" x="-3.81" y="0" drill="0.9144" shape="octagon"/>
<pad name="2" x="3.81" y="0" drill="0.9144" shape="octagon"/>
<text x="-4.826" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-4.826" y="-3.048" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="C075-042X103">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
 grid 7.5 mm, outline 4.2 x 10.3 mm</description>
<wire x1="4.826" y1="2.032" x2="-4.826" y2="2.032" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="1.778" x2="-5.08" y2="-1.778" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="-2.032" x2="4.826" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-1.778" x2="5.08" y2="1.778" width="0.1524" layer="21"/>
<wire x1="4.826" y1="2.032" x2="5.08" y2="1.778" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.826" y1="-2.032" x2="5.08" y2="-1.778" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.08" y1="-1.778" x2="-4.826" y2="-2.032" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.08" y1="1.778" x2="-4.826" y2="2.032" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.27" y1="0" x2="2.667" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.667" y1="0" x2="-2.159" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.159" y1="1.27" x2="-2.159" y2="0" width="0.4064" layer="21"/>
<wire x1="-2.159" y1="0" x2="-2.159" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="0" width="0.4064" layer="21"/>
<wire x1="-1.27" y1="0" x2="-1.27" y2="-1.27" width="0.4064" layer="21"/>
<pad name="1" x="-3.81" y="0" drill="0.9144" shape="octagon"/>
<pad name="2" x="3.81" y="0" drill="0.9144" shape="octagon"/>
<text x="-4.699" y="2.413" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-1.651" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="C075-052X106">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
 grid 7.5 mm, outline 5.2 x 10.6 mm</description>
<wire x1="4.953" y1="2.54" x2="-4.953" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-5.207" y1="2.286" x2="-5.207" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="-4.953" y1="-2.54" x2="4.953" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="5.207" y1="-2.286" x2="5.207" y2="2.286" width="0.1524" layer="21"/>
<wire x1="4.953" y1="2.54" x2="5.207" y2="2.286" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.953" y1="-2.54" x2="5.207" y2="-2.286" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.207" y1="-2.286" x2="-4.953" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.207" y1="2.286" x2="-4.953" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.27" y1="0" x2="2.667" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.667" y1="0" x2="-2.159" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.159" y1="1.27" x2="-2.159" y2="0" width="0.4064" layer="21"/>
<wire x1="-2.159" y1="0" x2="-2.159" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="0" width="0.4064" layer="21"/>
<wire x1="-1.27" y1="0" x2="-1.27" y2="-1.27" width="0.4064" layer="21"/>
<pad name="1" x="-3.81" y="0" drill="0.9144" shape="octagon"/>
<pad name="2" x="3.81" y="0" drill="0.9144" shape="octagon"/>
<text x="-4.826" y="2.921" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-2.032" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="C102-043X133">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
 grid 10.2 mm, outline 4.3 x 13.3 mm</description>
<wire x1="-3.175" y1="1.27" x2="-3.175" y2="0" width="0.4064" layer="21"/>
<wire x1="-2.286" y1="1.27" x2="-2.286" y2="0" width="0.4064" layer="21"/>
<wire x1="3.81" y1="0" x2="-2.286" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="0" x2="-2.286" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-3.81" y1="0" x2="-3.175" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="0" x2="-3.175" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-6.096" y1="2.032" x2="6.096" y2="2.032" width="0.1524" layer="21"/>
<wire x1="6.604" y1="1.524" x2="6.604" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="6.096" y1="-2.032" x2="-6.096" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="-6.604" y1="-1.524" x2="-6.604" y2="1.524" width="0.1524" layer="21"/>
<wire x1="6.096" y1="2.032" x2="6.604" y2="1.524" width="0.1524" layer="21" curve="-90"/>
<wire x1="6.096" y1="-2.032" x2="6.604" y2="-1.524" width="0.1524" layer="21" curve="90"/>
<wire x1="-6.604" y1="-1.524" x2="-6.096" y2="-2.032" width="0.1524" layer="21" curve="90"/>
<wire x1="-6.604" y1="1.524" x2="-6.096" y2="2.032" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-5.08" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="5.08" y="0" drill="1.016" shape="octagon"/>
<text x="-6.096" y="2.413" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.524" y="-1.651" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="C102-054X133">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
 grid 10.2 mm, outline 5.4 x 13.3 mm</description>
<wire x1="-3.175" y1="1.27" x2="-3.175" y2="0" width="0.4064" layer="21"/>
<wire x1="-2.286" y1="1.27" x2="-2.286" y2="0" width="0.4064" layer="21"/>
<wire x1="3.81" y1="0" x2="-2.286" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="0" x2="-2.286" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-3.81" y1="0" x2="-3.175" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="0" x2="-3.175" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-6.096" y1="2.54" x2="6.096" y2="2.54" width="0.1524" layer="21"/>
<wire x1="6.604" y1="2.032" x2="6.604" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="6.096" y1="-2.54" x2="-6.096" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-6.604" y1="-2.032" x2="-6.604" y2="2.032" width="0.1524" layer="21"/>
<wire x1="6.096" y1="2.54" x2="6.604" y2="2.032" width="0.1524" layer="21" curve="-90"/>
<wire x1="6.096" y1="-2.54" x2="6.604" y2="-2.032" width="0.1524" layer="21" curve="90"/>
<wire x1="-6.604" y1="-2.032" x2="-6.096" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-6.604" y1="2.032" x2="-6.096" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-5.08" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="5.08" y="0" drill="1.016" shape="octagon"/>
<text x="-6.096" y="2.921" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.524" y="-1.905" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="C102-064X133">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
 grid 10.2 mm, outline 6.4 x 13.3 mm</description>
<wire x1="-3.175" y1="1.27" x2="-3.175" y2="0" width="0.4064" layer="21"/>
<wire x1="-2.286" y1="1.27" x2="-2.286" y2="0" width="0.4064" layer="21"/>
<wire x1="3.81" y1="0" x2="-2.286" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="0" x2="-2.286" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-3.81" y1="0" x2="-3.175" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="0" x2="-3.175" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-6.096" y1="3.048" x2="6.096" y2="3.048" width="0.1524" layer="21"/>
<wire x1="6.604" y1="2.54" x2="6.604" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="6.096" y1="-3.048" x2="-6.096" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-6.604" y1="-2.54" x2="-6.604" y2="2.54" width="0.1524" layer="21"/>
<wire x1="6.096" y1="3.048" x2="6.604" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<wire x1="6.096" y1="-3.048" x2="6.604" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-6.604" y1="-2.54" x2="-6.096" y2="-3.048" width="0.1524" layer="21" curve="90"/>
<wire x1="-6.604" y1="2.54" x2="-6.096" y2="3.048" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-5.08" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="5.08" y="0" drill="1.016" shape="octagon"/>
<text x="-6.096" y="3.429" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.524" y="-2.032" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="C150-054X183">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
 grid 15 mm, outline 5.4 x 18.3 mm</description>
<wire x1="-5.08" y1="1.27" x2="-5.08" y2="0" width="0.4064" layer="21"/>
<wire x1="-5.08" y1="0" x2="-5.08" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="1.27" x2="-4.191" y2="0" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="0" x2="-4.191" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="0" x2="6.096" y2="0" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0" x2="-6.096" y2="0" width="0.1524" layer="21"/>
<wire x1="9.017" y1="2.032" x2="9.017" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="8.509" y1="-2.54" x2="-8.509" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-9.017" y1="-2.032" x2="-9.017" y2="2.032" width="0.1524" layer="21"/>
<wire x1="-8.509" y1="2.54" x2="8.509" y2="2.54" width="0.1524" layer="21"/>
<wire x1="8.509" y1="2.54" x2="9.017" y2="2.032" width="0.1524" layer="21" curve="-90"/>
<wire x1="8.509" y1="-2.54" x2="9.017" y2="-2.032" width="0.1524" layer="21" curve="90"/>
<wire x1="-9.017" y1="-2.032" x2="-8.509" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-9.017" y1="2.032" x2="-8.509" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-7.493" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="7.493" y="0" drill="1.016" shape="octagon"/>
<text x="-8.382" y="2.921" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.429" y="-2.032" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="C150-064X183">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
 grid 15 mm, outline 6.4 x 18.3 mm</description>
<wire x1="-5.08" y1="1.27" x2="-5.08" y2="0" width="0.4064" layer="21"/>
<wire x1="-5.08" y1="0" x2="-5.08" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="1.27" x2="-4.191" y2="0" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="0" x2="-4.191" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="0" x2="6.096" y2="0" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0" x2="-6.096" y2="0" width="0.1524" layer="21"/>
<wire x1="9.017" y1="2.54" x2="9.017" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="8.509" y1="-3.048" x2="-8.509" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-9.017" y1="-2.54" x2="-9.017" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-8.509" y1="3.048" x2="8.509" y2="3.048" width="0.1524" layer="21"/>
<wire x1="8.509" y1="3.048" x2="9.017" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<wire x1="8.509" y1="-3.048" x2="9.017" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-9.017" y1="-2.54" x2="-8.509" y2="-3.048" width="0.1524" layer="21" curve="90"/>
<wire x1="-9.017" y1="2.54" x2="-8.509" y2="3.048" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-7.493" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="7.493" y="0" drill="1.016" shape="octagon"/>
<text x="-8.509" y="3.429" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.429" y="-2.032" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="C150-072X183">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
 grid 15 mm, outline 7.2 x 18.3 mm</description>
<wire x1="-5.08" y1="1.27" x2="-5.08" y2="0" width="0.4064" layer="21"/>
<wire x1="-5.08" y1="0" x2="-5.08" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="1.27" x2="-4.191" y2="0" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="0" x2="-4.191" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="0" x2="6.096" y2="0" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0" x2="-6.096" y2="0" width="0.1524" layer="21"/>
<wire x1="9.017" y1="3.048" x2="9.017" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="8.509" y1="-3.556" x2="-8.509" y2="-3.556" width="0.1524" layer="21"/>
<wire x1="-9.017" y1="-3.048" x2="-9.017" y2="3.048" width="0.1524" layer="21"/>
<wire x1="-8.509" y1="3.556" x2="8.509" y2="3.556" width="0.1524" layer="21"/>
<wire x1="8.509" y1="3.556" x2="9.017" y2="3.048" width="0.1524" layer="21" curve="-90"/>
<wire x1="8.509" y1="-3.556" x2="9.017" y2="-3.048" width="0.1524" layer="21" curve="90"/>
<wire x1="-9.017" y1="-3.048" x2="-8.509" y2="-3.556" width="0.1524" layer="21" curve="90"/>
<wire x1="-9.017" y1="3.048" x2="-8.509" y2="3.556" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-7.493" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="7.493" y="0" drill="1.016" shape="octagon"/>
<text x="-8.509" y="3.937" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.429" y="-2.286" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="C150-084X183">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
 grid 15 mm, outline 8.4 x 18.3 mm</description>
<wire x1="-5.08" y1="1.27" x2="-5.08" y2="0" width="0.4064" layer="21"/>
<wire x1="-5.08" y1="0" x2="-5.08" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="1.27" x2="-4.191" y2="0" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="0" x2="-4.191" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="0" x2="6.096" y2="0" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0" x2="-6.096" y2="0" width="0.1524" layer="21"/>
<wire x1="9.017" y1="3.556" x2="9.017" y2="-3.556" width="0.1524" layer="21"/>
<wire x1="8.509" y1="-4.064" x2="-8.509" y2="-4.064" width="0.1524" layer="21"/>
<wire x1="-9.017" y1="-3.556" x2="-9.017" y2="3.556" width="0.1524" layer="21"/>
<wire x1="-8.509" y1="4.064" x2="8.509" y2="4.064" width="0.1524" layer="21"/>
<wire x1="8.509" y1="4.064" x2="9.017" y2="3.556" width="0.1524" layer="21" curve="-90"/>
<wire x1="8.509" y1="-4.064" x2="9.017" y2="-3.556" width="0.1524" layer="21" curve="90"/>
<wire x1="-9.017" y1="-3.556" x2="-8.509" y2="-4.064" width="0.1524" layer="21" curve="90"/>
<wire x1="-9.017" y1="3.556" x2="-8.509" y2="4.064" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-7.493" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="7.493" y="0" drill="1.016" shape="octagon"/>
<text x="-8.509" y="4.445" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.429" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="C150-091X182">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
 grid 15 mm, outline 9.1 x 18.2 mm</description>
<wire x1="-5.08" y1="1.27" x2="-5.08" y2="0" width="0.4064" layer="21"/>
<wire x1="-5.08" y1="0" x2="-5.08" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="1.27" x2="-4.191" y2="0" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="0" x2="-4.191" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="0" x2="6.096" y2="0" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0" x2="-6.096" y2="0" width="0.1524" layer="21"/>
<wire x1="9.017" y1="3.937" x2="9.017" y2="-3.937" width="0.1524" layer="21"/>
<wire x1="8.509" y1="-4.445" x2="-8.509" y2="-4.445" width="0.1524" layer="21"/>
<wire x1="-9.017" y1="-3.937" x2="-9.017" y2="3.937" width="0.1524" layer="21"/>
<wire x1="-8.509" y1="4.445" x2="8.509" y2="4.445" width="0.1524" layer="21"/>
<wire x1="8.509" y1="4.445" x2="9.017" y2="3.937" width="0.1524" layer="21" curve="-90"/>
<wire x1="8.509" y1="-4.445" x2="9.017" y2="-3.937" width="0.1524" layer="21" curve="90"/>
<wire x1="-9.017" y1="-3.937" x2="-8.509" y2="-4.445" width="0.1524" layer="21" curve="90"/>
<wire x1="-9.017" y1="3.937" x2="-8.509" y2="4.445" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-7.493" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="7.493" y="0" drill="1.016" shape="octagon"/>
<text x="-8.509" y="4.826" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.429" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="C050-035X075">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
 grid 5 mm, outline 3.5 x 7.5 mm</description>
<wire x1="-0.3048" y1="0.635" x2="-0.3048" y2="0" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-0.3048" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="0.3302" y1="0.635" x2="0.3302" y2="0" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="0.3302" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.683" y1="1.524" x2="-3.683" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="-1.778" x2="3.429" y2="-1.778" width="0.1524" layer="21"/>
<wire x1="3.683" y1="-1.524" x2="3.683" y2="1.524" width="0.1524" layer="21"/>
<wire x1="3.429" y1="1.778" x2="-3.429" y2="1.778" width="0.1524" layer="21"/>
<wire x1="3.429" y1="1.778" x2="3.683" y2="1.524" width="0.1524" layer="21" curve="-90"/>
<wire x1="3.429" y1="-1.778" x2="3.683" y2="-1.524" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="-1.524" x2="-3.429" y2="-1.778" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="1.524" x2="-3.429" y2="1.778" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" shape="octagon"/>
<text x="-3.556" y="2.159" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.556" y="-3.429" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="C075-063X106">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
 grid 7.5 mm, outline 6.3 x 10.6 mm</description>
<wire x1="4.953" y1="3.048" x2="-4.953" y2="3.048" width="0.1524" layer="21"/>
<wire x1="-5.207" y1="2.794" x2="-5.207" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="-4.953" y1="-3.048" x2="4.953" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="5.207" y1="-2.794" x2="5.207" y2="2.794" width="0.1524" layer="21"/>
<wire x1="4.953" y1="3.048" x2="5.207" y2="2.794" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.953" y1="-3.048" x2="5.207" y2="-2.794" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.207" y1="-2.794" x2="-4.953" y2="-3.048" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.207" y1="2.794" x2="-4.953" y2="3.048" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.27" y1="0" x2="2.667" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.667" y1="0" x2="-2.159" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.159" y1="1.27" x2="-2.159" y2="0" width="0.4064" layer="21"/>
<wire x1="-2.159" y1="0" x2="-2.159" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="0" width="0.4064" layer="21"/>
<wire x1="-1.27" y1="0" x2="-1.27" y2="-1.27" width="0.4064" layer="21"/>
<pad name="1" x="-3.81" y="0" drill="0.9144" shape="octagon"/>
<pad name="2" x="3.81" y="0" drill="0.9144" shape="octagon"/>
<text x="-4.826" y="3.429" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="C025-020X036">
<wire x1="0" y1="2.159" x2="0.889" y2="1.397" width="0.127" layer="21" curve="-90"/>
<wire x1="0.889" y1="-1.397" x2="0.889" y2="1.397" width="0.127" layer="21"/>
<wire x1="0.889" y1="-1.397" x2="0" y2="-2.159" width="0.127" layer="21" curve="-90"/>
<wire x1="0.508" y1="0.3048" x2="-0.508" y2="0.3048" width="0.127" layer="21"/>
<wire x1="0" y1="-1.27" x2="0" y2="-0.3937" width="0.0762" layer="51"/>
<wire x1="0" y1="1.27" x2="0" y2="0.381" width="0.0762" layer="51"/>
<pad name="2" x="0" y="-1.27" drill="0.8128" shape="octagon" rot="R270"/>
<text x="-1.016" y="0" size="1.016" layer="25" align="center-right">&gt;NAME</text>
<text x="0.508" y="-2.413" size="0.8128" layer="27" rot="R180">&gt;VALUE</text>
<pad name="1" x="0" y="1.27" drill="0.8128" shape="octagon" rot="R90"/>
<wire x1="0" y1="-2.159" x2="-0.889" y2="-1.397" width="0.127" layer="21" curve="-90"/>
<wire x1="-0.889" y1="1.397" x2="-0.889" y2="-1.397" width="0.127" layer="21"/>
<wire x1="-0.889" y1="1.397" x2="0" y2="2.159" width="0.127" layer="21" curve="-90"/>
<rectangle x1="-0.5715" y1="0.127" x2="0.5715" y2="0.381" layer="21"/>
<rectangle x1="-0.5715" y1="-0.381" x2="0.5715" y2="-0.127" layer="21" rot="R180"/>
</package>
<package name="E5-5">
<description>&lt;b&gt;ELECTROLYTIC CAPACITOR&lt;/b&gt;&lt;p&gt;
 grid 5.08 mm, diameter 5 mm</description>
<wire x1="-2.1557" y1="1.3432" x2="2.1557" y2="1.3432" width="0.1524" layer="21" curve="-116.147"/>
<wire x1="-2.1557" y1="-1.3432" x2="2.1557" y2="-1.3432" width="0.1524" layer="21" curve="116.147"/>
<wire x1="-2.1557" y1="1.3432" x2="-2.1557" y2="-1.3432" width="0.1524" layer="51" curve="63.8534"/>
<wire x1="2.1557" y1="-1.3432" x2="2.1557" y2="1.3432" width="0.1524" layer="51" curve="63.8534"/>
<wire x1="-1.397" y1="0" x2="-0.762" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.762" y1="0" x2="-0.762" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-0.762" y1="-1.016" x2="-0.254" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-0.254" y1="-1.016" x2="-0.254" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-0.254" y1="1.016" x2="-0.762" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-0.762" y1="1.016" x2="-0.762" y2="0" width="0.1524" layer="21"/>
<wire x1="0.635" y1="0" x2="1.397" y2="0" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="0.635" x2="-1.016" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="0.381" x2="-1.27" y2="0.889" width="0.1524" layer="21"/>
<pad name="+" x="-2.54" y="0" drill="0.8128" diameter="1.905"/>
<pad name="-" x="2.54" y="0" drill="0.8128" diameter="1.905" shape="octagon"/>
<text x="2.54" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="2.54" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="0.254" y1="-1.016" x2="0.762" y2="1.016" layer="21"/>
</package>
<package name="E15-5">
<description>&lt;b&gt;ELECTROLYTIC CAPACITOR&lt;/b&gt;&lt;p&gt;
 grid 15.24 mm, diameter 5 mm</description>
<wire x1="-4.064" y1="0" x2="-3.175" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="0" x2="-3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="-1.27" x2="-2.667" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-2.667" y1="-1.27" x2="-2.667" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-2.667" y1="1.27" x2="-3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="1.27" x2="-3.175" y2="0" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="0" x2="5.207" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="1.143" x2="-3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-4.064" y1="0.889" x2="-3.556" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="-2.286" x2="-5.715" y2="2.286" width="0.1524" layer="21"/>
<wire x1="-4.191" y1="2.54" x2="5.461" y2="2.54" width="0.1524" layer="21"/>
<wire x1="5.715" y1="2.286" x2="5.461" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="2.286" x2="-4.191" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-5.461" y1="2.54" x2="-5.715" y2="2.286" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="2.54" x2="-4.826" y2="2.286" width="0.1524" layer="21"/>
<wire x1="-5.461" y1="2.413" x2="-5.08" y2="2.413" width="0.3048" layer="21"/>
<wire x1="-5.461" y1="2.54" x2="-5.08" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="2.286" x2="-4.826" y2="2.286" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="2.286" x2="-4.826" y2="2.032" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="2.286" x2="-4.445" y2="2.032" width="0.1524" layer="21"/>
<wire x1="-4.191" y1="2.413" x2="5.461" y2="2.413" width="0.3048" layer="21"/>
<wire x1="-4.445" y1="2.286" x2="5.715" y2="2.286" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="2.032" x2="-4.445" y2="2.032" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="2.286" x2="-4.445" y2="2.286" width="0.1524" layer="21"/>
<wire x1="-4.191" y1="-2.54" x2="5.461" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="2.032" x2="-4.826" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="-2.159" x2="-4.826" y2="-2.2352" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="2.032" x2="-4.445" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="-2.159" x2="-4.445" y2="-2.2352" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="-2.286" x2="-4.445" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="-2.159" x2="-4.445" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="5.715" y1="2.286" x2="5.715" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="5.715" y1="-2.286" x2="5.588" y2="-2.413" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="-2.286" x2="-5.588" y2="-2.413" width="0.1524" layer="21"/>
<wire x1="-5.588" y1="-2.413" x2="-5.461" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-2.54" x2="-4.953" y2="-2.413" width="0.1524" layer="21"/>
<wire x1="-4.953" y1="-2.413" x2="-4.826" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="-5.461" y1="-2.54" x2="-5.08" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-5.588" y1="-2.413" x2="-4.953" y2="-2.413" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="-2.286" x2="-4.318" y2="-2.413" width="0.1524" layer="21"/>
<wire x1="-4.318" y1="-2.413" x2="-4.191" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-4.318" y1="-2.413" x2="5.588" y2="-2.413" width="0.1524" layer="21"/>
<wire x1="5.588" y1="-2.413" x2="5.461" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="5.461" y1="-2.4892" x2="-4.191" y2="-2.4892" width="0.1524" layer="21"/>
<wire x1="-4.191" y1="-2.4892" x2="-4.191" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-2.4892" x2="-5.461" y2="-2.4892" width="0.1524" layer="21"/>
<wire x1="-5.461" y1="-2.4892" x2="-5.461" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="-2.2352" x2="-4.826" y2="-2.2352" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="-2.2352" x2="-4.445" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="-2.2352" x2="-4.826" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="-4.699" y1="2.159" x2="-4.572" y2="2.159" width="0.3048" layer="21"/>
<wire x1="7.62" y1="0" x2="6.477" y2="0" width="0.508" layer="51"/>
<wire x1="-7.62" y1="0" x2="-6.477" y2="0" width="0.508" layer="51"/>
<pad name="+" x="-7.62" y="0" drill="0.8128" diameter="2.159"/>
<pad name="-" x="7.62" y="0" drill="0.8128" diameter="2.159" shape="octagon"/>
<text x="-5.461" y="2.794" size="1.27" layer="25">&gt;NAME</text>
<text x="-5.461" y="-4.1402" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-2.286" y1="-1.27" x2="-1.778" y2="1.27" layer="21"/>
<rectangle x1="-6.477" y1="-0.254" x2="-5.715" y2="0.254" layer="21"/>
<rectangle x1="5.715" y1="-0.254" x2="6.477" y2="0.254" layer="21"/>
</package>
<package name="E15-6">
<description>&lt;b&gt;ELECTROLYTIC CAPACITOR&lt;/b&gt;&lt;p&gt;
 grid 15.24 mm, diameter 6 mm</description>
<wire x1="-4.064" y1="0" x2="-3.175" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="0" x2="-3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="-1.27" x2="-2.667" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-2.667" y1="-1.27" x2="-2.667" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-2.667" y1="1.27" x2="-3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="1.27" x2="-3.175" y2="0" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="0" x2="5.207" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="1.143" x2="-3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-4.064" y1="0.889" x2="-3.556" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="-2.921" x2="-5.715" y2="2.921" width="0.1524" layer="21"/>
<wire x1="-4.191" y1="3.175" x2="5.461" y2="3.175" width="0.1524" layer="21"/>
<wire x1="5.715" y1="2.921" x2="5.461" y2="3.175" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="2.921" x2="-4.191" y2="3.175" width="0.1524" layer="21"/>
<wire x1="-5.461" y1="3.175" x2="-5.715" y2="2.921" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="3.175" x2="-4.826" y2="2.921" width="0.1524" layer="21"/>
<wire x1="-5.461" y1="3.048" x2="-5.08" y2="3.048" width="0.3048" layer="21"/>
<wire x1="-5.461" y1="3.175" x2="-5.08" y2="3.175" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="2.921" x2="-4.826" y2="2.921" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="2.921" x2="-4.826" y2="2.667" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="2.921" x2="-4.445" y2="2.667" width="0.1524" layer="21"/>
<wire x1="-4.191" y1="3.048" x2="5.461" y2="3.048" width="0.3048" layer="21"/>
<wire x1="-4.445" y1="2.921" x2="5.715" y2="2.921" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="2.667" x2="-4.445" y2="2.667" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="2.921" x2="-4.445" y2="2.921" width="0.1524" layer="21"/>
<wire x1="-4.191" y1="-3.175" x2="5.461" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="2.667" x2="-4.826" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="-2.794" x2="-4.826" y2="-2.8702" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="2.667" x2="-4.445" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="-2.794" x2="-4.445" y2="-2.8702" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="-2.921" x2="-4.445" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="-2.794" x2="-4.445" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="5.715" y1="2.921" x2="5.715" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="5.715" y1="-2.921" x2="5.588" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="-2.921" x2="-5.588" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-5.588" y1="-3.048" x2="-5.461" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-3.175" x2="-4.953" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-4.953" y1="-3.048" x2="-4.826" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="-5.461" y1="-3.175" x2="-5.08" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="-5.588" y1="-3.048" x2="-4.953" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="-2.921" x2="-4.318" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-4.318" y1="-3.048" x2="-4.191" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="-4.318" y1="-3.048" x2="5.588" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="5.588" y1="-3.048" x2="5.461" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="5.461" y1="-3.1242" x2="-4.191" y2="-3.1242" width="0.1524" layer="21"/>
<wire x1="-4.191" y1="-3.1242" x2="-4.191" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-3.1242" x2="-5.461" y2="-3.1242" width="0.1524" layer="21"/>
<wire x1="-5.461" y1="-3.1242" x2="-5.461" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="-2.8702" x2="-4.826" y2="-2.8702" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="-2.8702" x2="-4.445" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="-2.8702" x2="-4.826" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="-4.699" y1="2.794" x2="-4.572" y2="2.794" width="0.3048" layer="21"/>
<wire x1="7.62" y1="0" x2="6.477" y2="0" width="0.508" layer="51"/>
<wire x1="-7.62" y1="0" x2="-6.477" y2="0" width="0.508" layer="51"/>
<pad name="+" x="-7.62" y="0" drill="0.8128" diameter="2.159"/>
<pad name="-" x="7.62" y="0" drill="0.8128" diameter="2.159" shape="octagon"/>
<text x="-5.461" y="3.429" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-1.8542" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-2.286" y1="-1.27" x2="-1.778" y2="1.27" layer="21"/>
<rectangle x1="-6.477" y1="-0.254" x2="-5.715" y2="0.254" layer="21"/>
<rectangle x1="5.715" y1="-0.254" x2="6.477" y2="0.254" layer="21"/>
</package>
<package name="E15-9">
<description>&lt;b&gt;ELECTROLYTIC CAPACITOR&lt;/b&gt;&lt;p&gt;
 grid 15.24 mm, diameter 9 mm</description>
<wire x1="-4.445" y1="0" x2="-3.556" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.556" y1="0" x2="-3.556" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-3.556" y1="-1.27" x2="-3.048" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-3.048" y1="-1.27" x2="-3.048" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-3.048" y1="1.27" x2="-3.556" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-3.556" y1="1.27" x2="-3.556" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="0" x2="5.588" y2="0" width="0.1524" layer="21"/>
<wire x1="-4.191" y1="1.143" x2="-4.191" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="0.889" x2="-3.937" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-6.096" y1="-4.318" x2="-6.096" y2="4.318" width="0.1524" layer="21"/>
<wire x1="-4.572" y1="4.572" x2="5.842" y2="4.572" width="0.1524" layer="21"/>
<wire x1="6.096" y1="4.318" x2="5.842" y2="4.572" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="4.318" x2="-4.572" y2="4.572" width="0.1524" layer="21"/>
<wire x1="-5.842" y1="4.572" x2="-6.096" y2="4.318" width="0.1524" layer="21"/>
<wire x1="-5.461" y1="4.572" x2="-5.207" y2="4.318" width="0.1524" layer="21"/>
<wire x1="-5.842" y1="4.445" x2="-5.461" y2="4.445" width="0.3048" layer="21"/>
<wire x1="-5.842" y1="4.572" x2="-5.461" y2="4.572" width="0.1524" layer="21"/>
<wire x1="-6.096" y1="4.318" x2="-5.207" y2="4.318" width="0.1524" layer="21"/>
<wire x1="-5.207" y1="4.318" x2="-5.207" y2="4.064" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="4.318" x2="-4.826" y2="4.064" width="0.1524" layer="21"/>
<wire x1="-4.572" y1="4.445" x2="5.842" y2="4.445" width="0.3048" layer="21"/>
<wire x1="-4.826" y1="4.318" x2="6.096" y2="4.318" width="0.1524" layer="21"/>
<wire x1="-5.207" y1="4.064" x2="-4.826" y2="4.064" width="0.1524" layer="21"/>
<wire x1="-5.207" y1="4.318" x2="-4.826" y2="4.318" width="0.1524" layer="21"/>
<wire x1="-4.572" y1="-4.572" x2="5.842" y2="-4.572" width="0.1524" layer="21"/>
<wire x1="-5.207" y1="4.064" x2="-5.207" y2="-4.191" width="0.1524" layer="21"/>
<wire x1="-5.207" y1="-4.191" x2="-5.207" y2="-4.2672" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="4.064" x2="-4.826" y2="-4.191" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="-4.191" x2="-4.826" y2="-4.2672" width="0.1524" layer="21"/>
<wire x1="-5.207" y1="-4.318" x2="-4.826" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="-5.207" y1="-4.191" x2="-4.826" y2="-4.191" width="0.1524" layer="21"/>
<wire x1="6.096" y1="4.318" x2="6.096" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="6.096" y1="-4.318" x2="5.969" y2="-4.445" width="0.1524" layer="21"/>
<wire x1="-6.096" y1="-4.318" x2="-5.969" y2="-4.445" width="0.1524" layer="21"/>
<wire x1="-5.969" y1="-4.445" x2="-5.842" y2="-4.572" width="0.1524" layer="21"/>
<wire x1="-5.461" y1="-4.572" x2="-5.334" y2="-4.445" width="0.1524" layer="21"/>
<wire x1="-5.334" y1="-4.445" x2="-5.207" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="-5.842" y1="-4.572" x2="-5.461" y2="-4.572" width="0.1524" layer="21"/>
<wire x1="-5.969" y1="-4.445" x2="-5.334" y2="-4.445" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="-4.318" x2="-4.699" y2="-4.445" width="0.1524" layer="21"/>
<wire x1="-4.699" y1="-4.445" x2="-4.572" y2="-4.572" width="0.1524" layer="21"/>
<wire x1="-4.699" y1="-4.445" x2="5.969" y2="-4.445" width="0.1524" layer="21"/>
<wire x1="5.969" y1="-4.445" x2="5.842" y2="-4.572" width="0.1524" layer="21"/>
<wire x1="5.842" y1="-4.5212" x2="-4.572" y2="-4.5212" width="0.1524" layer="21"/>
<wire x1="-4.572" y1="-4.5212" x2="-4.572" y2="-4.572" width="0.1524" layer="21"/>
<wire x1="-5.461" y1="-4.5212" x2="-5.842" y2="-4.5212" width="0.1524" layer="21"/>
<wire x1="-5.842" y1="-4.5212" x2="-5.842" y2="-4.572" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="-4.2672" x2="-5.207" y2="-4.2672" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="-4.2672" x2="-4.826" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="-5.207" y1="-4.2672" x2="-5.207" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="4.191" x2="-4.953" y2="4.191" width="0.3048" layer="21"/>
<wire x1="7.62" y1="0" x2="6.477" y2="0" width="0.508" layer="51"/>
<wire x1="-7.62" y1="0" x2="-6.477" y2="0" width="0.508" layer="51"/>
<pad name="+" x="-7.62" y="0" drill="0.8128" diameter="2.159"/>
<pad name="-" x="7.62" y="0" drill="0.8128" diameter="2.159" shape="octagon"/>
<text x="-5.842" y="4.826" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.651" y="-1.9812" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-2.667" y1="-1.27" x2="-2.159" y2="1.27" layer="21"/>
<rectangle x1="6.096" y1="-0.254" x2="6.477" y2="0.254" layer="21"/>
<rectangle x1="-6.477" y1="-0.254" x2="-6.096" y2="0.254" layer="21"/>
</package>
<package name="E2,5-4R">
<description>&lt;b&gt;ELECTROLYTIC CAPACITOR&lt;/b&gt;&lt;p&gt;
 grid 2.54 mm, diameter 4 mm</description>
<wire x1="-0.127" y1="0" x2="0.0762" y2="0" width="0.6096" layer="21"/>
<wire x1="-2.794" y1="0" x2="-2.286" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-0.254" x2="-2.54" y2="0.254" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0" x2="-1.27" y2="0" width="0.6096" layer="51"/>
<wire x1="0.508" y1="0.635" x2="0.5403" y2="-0.6456" width="0.1524" layer="21" curve="320.719"/>
<wire x1="0.508" y1="0.635" x2="0.5403" y2="-0.6456" width="0.1524" layer="51" curve="-39.2811"/>
<pad name="+" x="-1.27" y="0" drill="0.8128" diameter="1.6002"/>
<pad name="-" x="1.27" y="0" drill="0.8128" diameter="1.6002" shape="octagon"/>
<text x="0.762" y="1.016" size="1.27" layer="25">&gt;NAME</text>
<text x="0.762" y="-2.286" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="E2,5-5">
<description>&lt;b&gt;ELECTROLYTIC CAPACITOR&lt;/b&gt;&lt;p&gt;
 grid 2.54 mm, diameter 5 mm</description>
<wire x1="-1.651" y1="1.27" x2="-1.397" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.397" y1="1.016" x2="-1.397" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.397" y1="1.27" x2="-1.143" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.397" y1="1.27" x2="-1.397" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-1.651" y1="0" x2="-0.762" y2="0" width="0.1524" layer="51"/>
<wire x1="-0.762" y1="0" x2="-0.762" y2="-1.27" width="0.1524" layer="51"/>
<wire x1="-0.762" y1="-1.27" x2="-0.254" y2="-1.27" width="0.1524" layer="51"/>
<wire x1="-0.254" y1="-1.27" x2="-0.254" y2="1.27" width="0.1524" layer="51"/>
<wire x1="-0.254" y1="1.27" x2="-0.762" y2="1.27" width="0.1524" layer="51"/>
<wire x1="-0.762" y1="1.27" x2="-0.762" y2="0" width="0.1524" layer="51"/>
<wire x1="0.635" y1="0" x2="1.651" y2="0" width="0.1524" layer="51"/>
<circle x="0" y="0" radius="2.54" width="0.1524" layer="21"/>
<pad name="-" x="1.27" y="0" drill="0.8128" diameter="1.6002" shape="octagon"/>
<pad name="+" x="-1.27" y="0" drill="0.8128" diameter="1.6002"/>
<text x="2.413" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="2.413" y="-2.413" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="0.254" y1="-1.27" x2="0.762" y2="1.27" layer="51"/>
</package>
<package name="E2,5-6">
<description>&lt;b&gt;ELECTROLYTIC CAPACITOR&lt;/b&gt;&lt;p&gt;
 grid 2.54 mm, diameter 6 mm</description>
<wire x1="-2.032" y1="1.27" x2="-1.651" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.651" y1="0.889" x2="-1.651" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.651" y1="1.27" x2="-1.27" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.651" y1="1.27" x2="-1.651" y2="1.651" width="0.1524" layer="21"/>
<wire x1="-1.651" y1="0" x2="-0.762" y2="0" width="0.1524" layer="51"/>
<wire x1="-0.762" y1="0" x2="-0.762" y2="-1.27" width="0.1524" layer="51"/>
<wire x1="-0.762" y1="-1.27" x2="-0.254" y2="-1.27" width="0.1524" layer="51"/>
<wire x1="-0.254" y1="-1.27" x2="-0.254" y2="1.27" width="0.1524" layer="51"/>
<wire x1="-0.254" y1="1.27" x2="-0.762" y2="1.27" width="0.1524" layer="51"/>
<wire x1="-0.762" y1="1.27" x2="-0.762" y2="0" width="0.1524" layer="51"/>
<wire x1="0.635" y1="0" x2="1.651" y2="0" width="0.1524" layer="51"/>
<circle x="0" y="0" radius="2.794" width="0.1524" layer="21"/>
<pad name="-" x="1.27" y="0" drill="0.8128" diameter="1.6002" shape="octagon"/>
<pad name="+" x="-1.27" y="0" drill="0.8128" diameter="1.6002"/>
<text x="2.667" y="1.524" size="1.27" layer="25">&gt;NAME</text>
<text x="2.667" y="-2.667" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="0.254" y1="-1.27" x2="0.762" y2="1.27" layer="51"/>
</package>
<package name="E2,5-7">
<description>&lt;b&gt;ELECTROLYTIC CAPACITOR&lt;/b&gt;&lt;p&gt;
 grid 2.54 mm, diameter 7 mm</description>
<wire x1="-3.048" y1="0" x2="-2.286" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.667" y1="-0.381" x2="-2.667" y2="0.381" width="0.1524" layer="21"/>
<wire x1="-1.651" y1="0" x2="-0.762" y2="0" width="0.1524" layer="51"/>
<wire x1="-0.762" y1="0" x2="-0.762" y2="-1.27" width="0.1524" layer="51"/>
<wire x1="-0.762" y1="-1.27" x2="-0.254" y2="-1.27" width="0.1524" layer="51"/>
<wire x1="-0.254" y1="-1.27" x2="-0.254" y2="1.27" width="0.1524" layer="51"/>
<wire x1="-0.254" y1="1.27" x2="-0.762" y2="1.27" width="0.1524" layer="51"/>
<wire x1="-0.762" y1="1.27" x2="-0.762" y2="0" width="0.1524" layer="51"/>
<wire x1="0.635" y1="0" x2="1.651" y2="0" width="0.1524" layer="51"/>
<circle x="0" y="0" radius="3.429" width="0.1524" layer="21"/>
<pad name="-" x="1.27" y="0" drill="0.8128" diameter="1.6002" shape="octagon"/>
<pad name="+" x="-1.27" y="0" drill="0.8128" diameter="1.6002"/>
<text x="3.048" y="2.032" size="1.27" layer="25">&gt;NAME</text>
<text x="3.048" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="0.254" y1="-1.27" x2="0.762" y2="1.27" layer="51"/>
</package>
<package name="E2,5RE">
<description>&lt;b&gt;ELECTROLYTIC CAPACITOR&lt;/b&gt;&lt;p&gt;
 grid 2.54 mm, diameter 4 mm,</description>
<wire x1="-0.127" y1="0" x2="0.0762" y2="0" width="0.6096" layer="21"/>
<wire x1="-2.794" y1="0" x2="-2.286" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-0.254" x2="-2.54" y2="0.254" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0" x2="-1.27" y2="0" width="0.6096" layer="51"/>
<wire x1="0.254" y1="1.143" x2="0.254" y2="-1.143" width="0.1524" layer="21" curve="286.26"/>
<wire x1="0.254" y1="-1.143" x2="0.254" y2="1.143" width="0.1524" layer="51" curve="73.7398"/>
<pad name="+" x="-1.27" y="0" drill="0.8128" diameter="1.5748"/>
<pad name="-" x="1.27" y="0" drill="0.8128" diameter="1.5748" shape="octagon"/>
<text x="0.635" y="1.143" size="1.27" layer="25">&gt;NAME</text>
<text x="0.635" y="-2.286" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="E25-10">
<description>&lt;b&gt;ELECTROLYTIC CAPACITOR&lt;/b&gt;&lt;p&gt;
 grid 25.4 mm, diameter 10 mm</description>
<wire x1="-10.16" y1="4.826" x2="-9.906" y2="5.08" width="0.1524" layer="21"/>
<wire x1="-9.906" y1="5.08" x2="-9.017" y2="5.08" width="0.1524" layer="21"/>
<wire x1="-9.017" y1="5.08" x2="-8.763" y2="4.826" width="0.1524" layer="21"/>
<wire x1="-7.747" y1="5.08" x2="9.906" y2="5.08" width="0.1524" layer="21"/>
<wire x1="-9.906" y1="-5.08" x2="-9.017" y2="-5.08" width="0.1524" layer="21"/>
<wire x1="-7.747" y1="-5.08" x2="9.906" y2="-5.08" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="4.826" x2="-10.16" y2="-4.826" width="0.1524" layer="21"/>
<wire x1="9.906" y1="5.08" x2="10.16" y2="4.826" width="0.1524" layer="21"/>
<wire x1="9.906" y1="-5.08" x2="10.033" y2="-4.953" width="0.1524" layer="21"/>
<wire x1="10.16" y1="-4.826" x2="10.16" y2="4.826" width="0.1524" layer="21"/>
<wire x1="-7.747" y1="5.08" x2="-8.001" y2="4.826" width="0.1524" layer="21"/>
<wire x1="-8.763" y1="4.826" x2="-8.763" y2="4.572" width="0.1524" layer="21"/>
<wire x1="-8.001" y1="4.826" x2="-8.001" y2="4.572" width="0.1524" layer="21"/>
<wire x1="-8.001" y1="4.826" x2="10.16" y2="4.826" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="4.826" x2="-8.763" y2="4.826" width="0.1524" layer="21"/>
<wire x1="-8.001" y1="4.826" x2="-8.763" y2="4.826" width="0.1524" layer="21"/>
<wire x1="-8.763" y1="4.572" x2="-8.001" y2="4.572" width="0.1524" layer="21"/>
<wire x1="-7.747" y1="4.953" x2="9.906" y2="4.953" width="0.3048" layer="21"/>
<wire x1="-9.906" y1="4.953" x2="-9.017" y2="4.953" width="0.3048" layer="21"/>
<wire x1="-8.763" y1="-4.826" x2="-8.763" y2="-4.7752" width="0.1524" layer="21"/>
<wire x1="-8.001" y1="-4.826" x2="-8.001" y2="-4.7752" width="0.1524" layer="21"/>
<wire x1="-8.763" y1="-4.699" x2="-8.763" y2="4.572" width="0.1524" layer="21"/>
<wire x1="-8.001" y1="-4.699" x2="-8.001" y2="4.572" width="0.1524" layer="21"/>
<wire x1="-8.001" y1="-4.826" x2="-8.763" y2="-4.826" width="0.1524" layer="21"/>
<wire x1="-8.763" y1="-4.699" x2="-8.001" y2="-4.699" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="-1.524" x2="-5.842" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-5.842" y1="-1.524" x2="-5.842" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-5.842" y1="1.524" x2="-6.35" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-7.112" y1="1.27" x2="-7.112" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-7.493" y1="0.889" x2="-6.731" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="1.524" x2="-6.35" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="0" x2="-6.35" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-4.953" y1="0" x2="9.652" y2="0" width="0.1524" layer="21"/>
<wire x1="-7.493" y1="0" x2="-6.35" y2="0" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-4.826" x2="-10.033" y2="-4.953" width="0.1524" layer="21"/>
<wire x1="-10.033" y1="-4.953" x2="-9.906" y2="-5.08" width="0.1524" layer="21"/>
<wire x1="-9.017" y1="-5.08" x2="-8.89" y2="-4.953" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="-4.953" x2="-8.763" y2="-4.826" width="0.1524" layer="21"/>
<wire x1="-10.033" y1="-4.953" x2="-8.89" y2="-4.953" width="0.1524" layer="21"/>
<wire x1="-9.906" y1="-5.0292" x2="-9.017" y2="-5.0292" width="0.1524" layer="21"/>
<wire x1="-9.017" y1="-5.0292" x2="-9.017" y2="-5.08" width="0.1524" layer="21"/>
<wire x1="-8.763" y1="-4.7752" x2="-8.001" y2="-4.7752" width="0.1524" layer="21"/>
<wire x1="-8.763" y1="-4.7752" x2="-8.763" y2="-4.699" width="0.1524" layer="21"/>
<wire x1="-8.001" y1="-4.7752" x2="-8.001" y2="-4.699" width="0.1524" layer="21"/>
<wire x1="-7.747" y1="-5.08" x2="-7.874" y2="-4.953" width="0.1524" layer="21"/>
<wire x1="-7.874" y1="-4.953" x2="-8.001" y2="-4.826" width="0.1524" layer="21"/>
<wire x1="-7.747" y1="-5.08" x2="-7.747" y2="-5.0292" width="0.1524" layer="21"/>
<wire x1="-7.747" y1="-5.0292" x2="9.906" y2="-5.0292" width="0.1524" layer="21"/>
<wire x1="-7.874" y1="-4.953" x2="10.033" y2="-4.953" width="0.1524" layer="21"/>
<wire x1="10.033" y1="-4.953" x2="10.16" y2="-4.826" width="0.1524" layer="21"/>
<wire x1="-8.636" y1="4.699" x2="-8.128" y2="4.699" width="0.3048" layer="21"/>
<wire x1="12.7" y1="0" x2="11.049" y2="0" width="0.762" layer="51"/>
<wire x1="-12.7" y1="0" x2="-11.049" y2="0" width="0.762" layer="51"/>
<pad name="+" x="-12.7" y="0" drill="1.1176" diameter="3.1496"/>
<pad name="-" x="12.7" y="0" drill="1.1176" diameter="3.1496" shape="octagon"/>
<text x="-9.906" y="5.334" size="1.778" layer="25">&gt;NAME</text>
<text x="-4.0386" y="-2.4892" size="1.778" layer="27">&gt;VALUE</text>
<rectangle x1="-5.334" y1="-1.524" x2="-4.826" y2="1.524" layer="21"/>
<rectangle x1="-11.049" y1="-0.381" x2="-10.16" y2="0.381" layer="21"/>
<rectangle x1="10.16" y1="-0.381" x2="11.049" y2="0.381" layer="21"/>
</package>
<package name="E25-9">
<description>&lt;b&gt;ELECTROLYTIC CAPACITOR&lt;/b&gt;&lt;p&gt;
 grid 25.4 mm, diameter 9 mm</description>
<wire x1="-10.16" y1="4.191" x2="-9.906" y2="4.445" width="0.1524" layer="21"/>
<wire x1="-9.906" y1="4.445" x2="-9.017" y2="4.445" width="0.1524" layer="21"/>
<wire x1="-9.017" y1="4.445" x2="-8.763" y2="4.191" width="0.1524" layer="21"/>
<wire x1="-7.747" y1="4.445" x2="9.906" y2="4.445" width="0.1524" layer="21"/>
<wire x1="-9.906" y1="-4.445" x2="-9.017" y2="-4.445" width="0.1524" layer="21"/>
<wire x1="-7.747" y1="-4.445" x2="9.906" y2="-4.445" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="4.191" x2="-10.16" y2="-4.191" width="0.1524" layer="21"/>
<wire x1="9.906" y1="4.445" x2="10.16" y2="4.191" width="0.1524" layer="21"/>
<wire x1="9.906" y1="-4.445" x2="10.033" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="10.16" y1="-4.191" x2="10.16" y2="4.191" width="0.1524" layer="21"/>
<wire x1="-7.747" y1="4.445" x2="-8.001" y2="4.191" width="0.1524" layer="21"/>
<wire x1="-8.763" y1="4.191" x2="-8.763" y2="3.937" width="0.1524" layer="21"/>
<wire x1="-8.001" y1="4.191" x2="-8.001" y2="3.937" width="0.1524" layer="21"/>
<wire x1="-8.001" y1="4.191" x2="10.16" y2="4.191" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="4.191" x2="-8.763" y2="4.191" width="0.1524" layer="21"/>
<wire x1="-8.001" y1="4.191" x2="-8.763" y2="4.191" width="0.1524" layer="21"/>
<wire x1="-8.763" y1="3.937" x2="-8.001" y2="3.937" width="0.1524" layer="21"/>
<wire x1="-7.747" y1="4.318" x2="9.906" y2="4.318" width="0.3048" layer="21"/>
<wire x1="-9.906" y1="4.318" x2="-9.017" y2="4.318" width="0.3048" layer="21"/>
<wire x1="-8.763" y1="-4.191" x2="-8.763" y2="-4.1402" width="0.1524" layer="21"/>
<wire x1="-8.001" y1="-4.191" x2="-8.001" y2="-4.1402" width="0.1524" layer="21"/>
<wire x1="-8.763" y1="-4.064" x2="-8.763" y2="3.937" width="0.1524" layer="21"/>
<wire x1="-8.001" y1="-4.064" x2="-8.001" y2="3.937" width="0.1524" layer="21"/>
<wire x1="-8.001" y1="-4.191" x2="-8.763" y2="-4.191" width="0.1524" layer="21"/>
<wire x1="-8.763" y1="-4.064" x2="-8.001" y2="-4.064" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="-1.524" x2="-5.842" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-5.842" y1="-1.524" x2="-5.842" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-5.842" y1="1.524" x2="-6.35" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-7.112" y1="1.27" x2="-7.112" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-7.493" y1="0.889" x2="-6.731" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="1.524" x2="-6.35" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="0" x2="-6.35" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-4.953" y1="0" x2="9.652" y2="0" width="0.1524" layer="21"/>
<wire x1="-7.493" y1="0" x2="-6.35" y2="0" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-4.191" x2="-10.033" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="-10.033" y1="-4.318" x2="-9.906" y2="-4.445" width="0.1524" layer="21"/>
<wire x1="-9.017" y1="-4.445" x2="-8.89" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="-4.318" x2="-8.763" y2="-4.191" width="0.1524" layer="21"/>
<wire x1="-10.033" y1="-4.318" x2="-8.89" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="-9.906" y1="-4.3942" x2="-9.017" y2="-4.3942" width="0.1524" layer="21"/>
<wire x1="-9.017" y1="-4.3942" x2="-9.017" y2="-4.445" width="0.1524" layer="21"/>
<wire x1="-8.763" y1="-4.1402" x2="-8.001" y2="-4.1402" width="0.1524" layer="21"/>
<wire x1="-8.763" y1="-4.1402" x2="-8.763" y2="-4.064" width="0.1524" layer="21"/>
<wire x1="-8.001" y1="-4.1402" x2="-8.001" y2="-4.064" width="0.1524" layer="21"/>
<wire x1="-7.747" y1="-4.445" x2="-7.874" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="-7.874" y1="-4.318" x2="-8.001" y2="-4.191" width="0.1524" layer="21"/>
<wire x1="-7.747" y1="-4.445" x2="-7.747" y2="-4.3942" width="0.1524" layer="21"/>
<wire x1="-7.747" y1="-4.3942" x2="9.906" y2="-4.3942" width="0.1524" layer="21"/>
<wire x1="-7.874" y1="-4.318" x2="10.033" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="10.033" y1="-4.318" x2="10.16" y2="-4.191" width="0.1524" layer="21"/>
<wire x1="-8.636" y1="4.064" x2="-8.128" y2="4.064" width="0.3048" layer="21"/>
<wire x1="12.7" y1="0" x2="11.049" y2="0" width="0.762" layer="51"/>
<wire x1="-12.7" y1="0" x2="-11.049" y2="0" width="0.762" layer="51"/>
<pad name="+" x="-12.7" y="0" drill="1.1176" diameter="3.1496"/>
<pad name="-" x="12.7" y="0" drill="1.1176" diameter="3.1496" shape="octagon"/>
<text x="-9.779" y="4.826" size="1.778" layer="25">&gt;NAME</text>
<text x="-4.0386" y="-2.4892" size="1.778" layer="27">&gt;VALUE</text>
<rectangle x1="-5.334" y1="-1.524" x2="-4.826" y2="1.524" layer="21"/>
<rectangle x1="-11.049" y1="-0.381" x2="-10.16" y2="0.381" layer="21"/>
<rectangle x1="10.16" y1="-0.381" x2="11.049" y2="0.381" layer="21"/>
</package>
<package name="E30-10">
<description>&lt;b&gt;ELECTROLYTIC CAPACITOR&lt;/b&gt;&lt;p&gt;
 grid 30.48 mm, diameter 10 mm</description>
<wire x1="12.7" y1="4.699" x2="12.7" y2="-4.699" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="4.699" x2="-12.7" y2="-4.699" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="4.699" x2="-12.319" y2="5.08" width="0.1524" layer="21"/>
<wire x1="-12.319" y1="5.08" x2="-11.811" y2="5.08" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="4.699" x2="-11.811" y2="5.08" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="4.699" x2="-10.541" y2="4.699" width="0.1524" layer="21"/>
<wire x1="-10.541" y1="4.699" x2="-10.16" y2="5.08" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="4.699" x2="-11.43" y2="4.191" width="0.1524" layer="21"/>
<wire x1="-10.541" y1="4.699" x2="-10.541" y2="4.191" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="4.699" x2="-11.43" y2="4.699" width="0.1524" layer="21"/>
<wire x1="-10.541" y1="4.699" x2="12.7" y2="4.699" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="4.191" x2="-10.541" y2="4.191" width="0.1524" layer="21"/>
<wire x1="-12.319" y1="4.953" x2="-11.811" y2="4.953" width="0.3048" layer="21"/>
<wire x1="-12.446" y1="4.826" x2="-11.684" y2="4.826" width="0.3048" layer="21"/>
<wire x1="-11.303" y1="4.572" x2="-10.668" y2="4.572" width="0.3048" layer="21"/>
<wire x1="-11.303" y1="4.318" x2="-10.668" y2="4.318" width="0.3048" layer="21"/>
<wire x1="-10.16" y1="4.953" x2="12.319" y2="4.953" width="0.3048" layer="21"/>
<wire x1="-10.287" y1="4.826" x2="12.446" y2="4.826" width="0.3048" layer="21"/>
<wire x1="-12.7" y1="-4.699" x2="-12.573" y2="-4.826" width="0.1524" layer="21"/>
<wire x1="-12.319" y1="-5.08" x2="-11.811" y2="-5.08" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="-4.699" x2="-11.557" y2="-4.826" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="-4.699" x2="-10.541" y2="-4.699" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-5.08" x2="-10.414" y2="-4.826" width="0.1524" layer="21"/>
<wire x1="-12.573" y1="-4.826" x2="-11.557" y2="-4.826" width="0.1524" layer="21"/>
<wire x1="-12.573" y1="-4.826" x2="-12.319" y2="-5.08" width="0.1524" layer="21"/>
<wire x1="-11.557" y1="-4.826" x2="-11.811" y2="-5.08" width="0.1524" layer="21"/>
<wire x1="-10.414" y1="-4.826" x2="12.573" y2="-4.826" width="0.1524" layer="21"/>
<wire x1="-10.414" y1="-4.826" x2="-10.541" y2="-4.699" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="4.191" x2="-11.43" y2="-4.445" width="0.1524" layer="21"/>
<wire x1="-10.541" y1="4.191" x2="-10.541" y2="-4.445" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="-4.445" x2="-10.541" y2="-4.445" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="-4.445" x2="-11.43" y2="-4.699" width="0.1524" layer="21"/>
<wire x1="-10.541" y1="-4.445" x2="-10.541" y2="-4.699" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-4.953" x2="12.319" y2="-4.953" width="0.3048" layer="21"/>
<wire x1="-12.319" y1="-4.953" x2="-11.811" y2="-4.953" width="0.3048" layer="21"/>
<wire x1="-11.303" y1="-4.572" x2="-10.668" y2="-4.572" width="0.3048" layer="21"/>
<wire x1="12.7" y1="-4.699" x2="12.573" y2="-4.826" width="0.1524" layer="21"/>
<wire x1="12.319" y1="-5.08" x2="-10.16" y2="-5.08" width="0.1524" layer="21"/>
<wire x1="12.573" y1="-4.826" x2="12.319" y2="-5.08" width="0.1524" layer="21"/>
<wire x1="12.7" y1="4.699" x2="12.319" y2="5.08" width="0.1524" layer="21"/>
<wire x1="12.319" y1="5.08" x2="-10.16" y2="5.08" width="0.1524" layer="21"/>
<wire x1="-8.382" y1="-1.524" x2="-7.874" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-7.874" y1="-1.524" x2="-7.874" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-7.874" y1="1.524" x2="-8.382" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-9.144" y1="1.27" x2="-9.144" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-9.525" y1="0.889" x2="-8.763" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-8.382" y1="1.524" x2="-8.382" y2="0" width="0.1524" layer="21"/>
<wire x1="-8.382" y1="0" x2="-8.382" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="0" x2="11.557" y2="0" width="0.1524" layer="21"/>
<wire x1="-9.525" y1="0" x2="-8.382" y2="0" width="0.1524" layer="21"/>
<wire x1="15.24" y1="0" x2="13.462" y2="0" width="0.762" layer="51"/>
<wire x1="-15.24" y1="0" x2="-13.462" y2="0" width="0.762" layer="51"/>
<pad name="+" x="-15.24" y="0" drill="1.1176" diameter="3.1496"/>
<pad name="-" x="15.24" y="0" drill="1.1176" diameter="3.1496" shape="octagon"/>
<text x="-12.319" y="5.334" size="1.778" layer="25">&gt;NAME</text>
<text x="-6.0706" y="-2.4892" size="1.778" layer="27">&gt;VALUE</text>
<rectangle x1="-7.366" y1="-1.524" x2="-6.858" y2="1.524" layer="21"/>
<rectangle x1="-13.462" y1="-0.381" x2="-12.7" y2="0.381" layer="21"/>
<rectangle x1="12.7" y1="-0.381" x2="13.462" y2="0.381" layer="21"/>
</package>
<package name="E30-12">
<description>&lt;b&gt;ELECTROLYTIC CAPACITOR&lt;/b&gt;&lt;p&gt;
 grid 30.48 mm, diameter 12 mm</description>
<wire x1="12.7" y1="5.969" x2="12.7" y2="-5.969" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="5.969" x2="-12.7" y2="-5.969" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="5.969" x2="-12.319" y2="6.35" width="0.1524" layer="21"/>
<wire x1="-12.319" y1="6.35" x2="-11.811" y2="6.35" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="5.969" x2="-11.811" y2="6.35" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="5.969" x2="-10.541" y2="5.969" width="0.1524" layer="21"/>
<wire x1="-10.541" y1="5.969" x2="-10.16" y2="6.35" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="5.969" x2="-11.43" y2="5.461" width="0.1524" layer="21"/>
<wire x1="-10.541" y1="5.969" x2="-10.541" y2="5.461" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="5.969" x2="-11.43" y2="5.969" width="0.1524" layer="21"/>
<wire x1="-10.541" y1="5.969" x2="12.7" y2="5.969" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="5.461" x2="-10.541" y2="5.461" width="0.1524" layer="21"/>
<wire x1="-12.319" y1="6.223" x2="-11.811" y2="6.223" width="0.3048" layer="21"/>
<wire x1="-12.446" y1="6.096" x2="-11.684" y2="6.096" width="0.3048" layer="21"/>
<wire x1="-11.303" y1="5.842" x2="-10.668" y2="5.842" width="0.3048" layer="21"/>
<wire x1="-11.303" y1="5.588" x2="-10.668" y2="5.588" width="0.3048" layer="21"/>
<wire x1="-10.16" y1="6.223" x2="12.319" y2="6.223" width="0.3048" layer="21"/>
<wire x1="-10.287" y1="6.096" x2="12.446" y2="6.096" width="0.3048" layer="21"/>
<wire x1="-12.7" y1="-5.969" x2="-12.573" y2="-6.096" width="0.1524" layer="21"/>
<wire x1="-12.319" y1="-6.35" x2="-11.811" y2="-6.35" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="-5.969" x2="-11.557" y2="-6.096" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="-5.969" x2="-10.541" y2="-5.969" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-6.35" x2="-10.414" y2="-6.096" width="0.1524" layer="21"/>
<wire x1="-12.573" y1="-6.096" x2="-11.557" y2="-6.096" width="0.1524" layer="21"/>
<wire x1="-12.573" y1="-6.096" x2="-12.319" y2="-6.35" width="0.1524" layer="21"/>
<wire x1="-11.557" y1="-6.096" x2="-11.811" y2="-6.35" width="0.1524" layer="21"/>
<wire x1="-10.414" y1="-6.096" x2="12.573" y2="-6.096" width="0.1524" layer="21"/>
<wire x1="-10.414" y1="-6.096" x2="-10.541" y2="-5.969" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="5.461" x2="-11.43" y2="-5.715" width="0.1524" layer="21"/>
<wire x1="-10.541" y1="5.461" x2="-10.541" y2="-5.715" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="-5.715" x2="-10.541" y2="-5.715" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="-5.715" x2="-11.43" y2="-5.969" width="0.1524" layer="21"/>
<wire x1="-10.541" y1="-5.715" x2="-10.541" y2="-5.969" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-6.223" x2="12.319" y2="-6.223" width="0.3048" layer="21"/>
<wire x1="-12.319" y1="-6.223" x2="-11.811" y2="-6.223" width="0.3048" layer="21"/>
<wire x1="-11.303" y1="-5.842" x2="-10.668" y2="-5.842" width="0.3048" layer="21"/>
<wire x1="12.7" y1="-5.969" x2="12.573" y2="-6.096" width="0.1524" layer="21"/>
<wire x1="12.319" y1="-6.35" x2="-10.16" y2="-6.35" width="0.1524" layer="21"/>
<wire x1="12.573" y1="-6.096" x2="12.319" y2="-6.35" width="0.1524" layer="21"/>
<wire x1="12.7" y1="5.969" x2="12.319" y2="6.35" width="0.1524" layer="21"/>
<wire x1="12.319" y1="6.35" x2="-10.16" y2="6.35" width="0.1524" layer="21"/>
<wire x1="-8.382" y1="-1.524" x2="-7.874" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-7.874" y1="-1.524" x2="-7.874" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-7.874" y1="1.524" x2="-8.382" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-9.144" y1="1.27" x2="-9.144" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-9.525" y1="0.889" x2="-8.763" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-8.382" y1="1.524" x2="-8.382" y2="0" width="0.1524" layer="21"/>
<wire x1="-8.382" y1="0" x2="-8.382" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="0" x2="11.557" y2="0" width="0.1524" layer="21"/>
<wire x1="-9.525" y1="0" x2="-8.382" y2="0" width="0.1524" layer="21"/>
<wire x1="15.24" y1="0" x2="13.462" y2="0" width="0.762" layer="51"/>
<wire x1="-15.24" y1="0" x2="-13.462" y2="0" width="0.762" layer="51"/>
<pad name="+" x="-15.24" y="0" drill="1.1176" diameter="3.1496"/>
<pad name="-" x="15.24" y="0" drill="1.1176" diameter="3.1496" shape="octagon"/>
<text x="-12.192" y="6.731" size="1.778" layer="25">&gt;NAME</text>
<text x="-6.0706" y="-2.4892" size="1.778" layer="27">&gt;VALUE</text>
<rectangle x1="-7.366" y1="-1.524" x2="-6.858" y2="1.524" layer="21"/>
<rectangle x1="-13.462" y1="-0.381" x2="-12.7" y2="0.381" layer="21"/>
<rectangle x1="12.7" y1="-0.381" x2="13.462" y2="0.381" layer="21"/>
</package>
<package name="E30-16">
<description>&lt;b&gt;ELECTROLYTIC CAPACITOR&lt;/b&gt;&lt;p&gt;
 grid 30.48 mm, diameter 16 mm</description>
<wire x1="12.7" y1="7.747" x2="12.7" y2="-7.62" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="7.747" x2="-12.7" y2="-7.62" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="7.747" x2="-12.319" y2="8.128" width="0.1524" layer="21"/>
<wire x1="-12.319" y1="8.128" x2="-11.811" y2="8.128" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="7.747" x2="-11.811" y2="8.128" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="7.747" x2="-10.541" y2="7.747" width="0.1524" layer="21"/>
<wire x1="-10.541" y1="7.747" x2="-10.16" y2="8.128" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="7.747" x2="-11.43" y2="7.239" width="0.1524" layer="21"/>
<wire x1="-10.541" y1="7.747" x2="-10.541" y2="7.239" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="7.747" x2="-11.43" y2="7.747" width="0.1524" layer="21"/>
<wire x1="-10.541" y1="7.747" x2="12.7" y2="7.747" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="7.239" x2="-10.541" y2="7.239" width="0.1524" layer="21"/>
<wire x1="-12.319" y1="8.001" x2="-11.811" y2="8.001" width="0.3048" layer="21"/>
<wire x1="-12.446" y1="7.874" x2="-11.684" y2="7.874" width="0.3048" layer="21"/>
<wire x1="-11.303" y1="7.62" x2="-10.668" y2="7.62" width="0.3048" layer="21"/>
<wire x1="-11.303" y1="7.366" x2="-10.668" y2="7.366" width="0.3048" layer="21"/>
<wire x1="-10.16" y1="8.001" x2="12.319" y2="8.001" width="0.3048" layer="21"/>
<wire x1="-10.287" y1="7.874" x2="12.446" y2="7.874" width="0.3048" layer="21"/>
<wire x1="-12.7" y1="-7.62" x2="-12.573" y2="-7.747" width="0.1524" layer="21"/>
<wire x1="-12.319" y1="-8.001" x2="-11.811" y2="-8.001" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="-7.62" x2="-11.557" y2="-7.747" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="-7.62" x2="-10.541" y2="-7.62" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-8.001" x2="-10.414" y2="-7.747" width="0.1524" layer="21"/>
<wire x1="-12.573" y1="-7.747" x2="-11.557" y2="-7.747" width="0.1524" layer="21"/>
<wire x1="-12.573" y1="-7.747" x2="-12.319" y2="-8.001" width="0.1524" layer="21"/>
<wire x1="-11.557" y1="-7.747" x2="-11.811" y2="-8.001" width="0.1524" layer="21"/>
<wire x1="-10.414" y1="-7.747" x2="12.573" y2="-7.747" width="0.1524" layer="21"/>
<wire x1="-10.414" y1="-7.747" x2="-10.541" y2="-7.62" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="7.239" x2="-11.43" y2="-7.366" width="0.1524" layer="21"/>
<wire x1="-10.541" y1="7.239" x2="-10.541" y2="-7.366" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="-7.366" x2="-10.541" y2="-7.366" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="-7.366" x2="-11.43" y2="-7.62" width="0.1524" layer="21"/>
<wire x1="-10.541" y1="-7.366" x2="-10.541" y2="-7.62" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-7.874" x2="12.319" y2="-7.874" width="0.3048" layer="21"/>
<wire x1="-12.319" y1="-7.874" x2="-11.811" y2="-7.874" width="0.3048" layer="21"/>
<wire x1="-11.303" y1="-7.493" x2="-10.668" y2="-7.493" width="0.3048" layer="21"/>
<wire x1="12.7" y1="-7.62" x2="12.573" y2="-7.747" width="0.1524" layer="21"/>
<wire x1="12.319" y1="-8.001" x2="-10.16" y2="-8.001" width="0.1524" layer="21"/>
<wire x1="12.573" y1="-7.747" x2="12.319" y2="-8.001" width="0.1524" layer="21"/>
<wire x1="12.7" y1="7.747" x2="12.319" y2="8.128" width="0.1524" layer="21"/>
<wire x1="12.319" y1="8.128" x2="-10.16" y2="8.128" width="0.1524" layer="21"/>
<wire x1="-8.382" y1="-1.524" x2="-7.874" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-7.874" y1="-1.524" x2="-7.874" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-7.874" y1="1.524" x2="-8.382" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-9.144" y1="1.27" x2="-9.144" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-9.525" y1="0.889" x2="-8.763" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-8.382" y1="1.524" x2="-8.382" y2="0" width="0.1524" layer="21"/>
<wire x1="-8.382" y1="0" x2="-8.382" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="0" x2="11.557" y2="0" width="0.1524" layer="21"/>
<wire x1="-9.525" y1="0" x2="-8.382" y2="0" width="0.1524" layer="21"/>
<wire x1="15.24" y1="0" x2="13.462" y2="0" width="0.762" layer="51"/>
<wire x1="-15.24" y1="0" x2="-13.462" y2="0" width="0.762" layer="51"/>
<pad name="+" x="-15.24" y="0" drill="1.1176" diameter="3.1496"/>
<pad name="-" x="15.24" y="0" drill="1.1176" diameter="3.1496" shape="octagon"/>
<text x="-12.319" y="8.382" size="1.778" layer="25">&gt;NAME</text>
<text x="-6.0706" y="-2.4892" size="1.778" layer="27">&gt;VALUE</text>
<rectangle x1="-7.366" y1="-1.524" x2="-6.858" y2="1.524" layer="21"/>
<rectangle x1="-13.462" y1="-0.381" x2="-12.7" y2="0.381" layer="21"/>
<rectangle x1="12.7" y1="-0.381" x2="13.462" y2="0.381" layer="21"/>
</package>
<package name="E35-12">
<description>&lt;b&gt;ELECTROLYTIC CAPACITOR&lt;/b&gt;&lt;p&gt;
 grid 35.56 mm, diameter 12 mm</description>
<wire x1="15.24" y1="5.969" x2="15.24" y2="-5.969" width="0.1524" layer="21"/>
<wire x1="-15.24" y1="5.969" x2="-15.24" y2="-5.969" width="0.1524" layer="21"/>
<wire x1="-15.24" y1="5.969" x2="-14.859" y2="6.35" width="0.1524" layer="21"/>
<wire x1="-14.859" y1="6.35" x2="-13.716" y2="6.35" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="5.969" x2="-13.716" y2="6.35" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="5.969" x2="-12.446" y2="5.969" width="0.1524" layer="21"/>
<wire x1="-12.446" y1="5.969" x2="-12.065" y2="6.35" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="5.969" x2="-13.335" y2="5.461" width="0.1524" layer="21"/>
<wire x1="-12.446" y1="5.969" x2="-12.446" y2="5.461" width="0.1524" layer="21"/>
<wire x1="-15.24" y1="5.969" x2="-13.335" y2="5.969" width="0.1524" layer="21"/>
<wire x1="-12.446" y1="5.969" x2="15.24" y2="5.969" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="5.461" x2="-12.446" y2="5.461" width="0.1524" layer="21"/>
<wire x1="-14.859" y1="6.223" x2="-13.716" y2="6.223" width="0.3048" layer="21"/>
<wire x1="-14.986" y1="6.096" x2="-13.589" y2="6.096" width="0.3048" layer="21"/>
<wire x1="-13.208" y1="5.842" x2="-12.573" y2="5.842" width="0.3048" layer="21"/>
<wire x1="-13.208" y1="5.588" x2="-12.573" y2="5.588" width="0.3048" layer="21"/>
<wire x1="-12.065" y1="6.223" x2="14.859" y2="6.223" width="0.3048" layer="21"/>
<wire x1="-12.192" y1="6.096" x2="14.986" y2="6.096" width="0.3048" layer="21"/>
<wire x1="-15.24" y1="-5.969" x2="-15.113" y2="-6.096" width="0.1524" layer="21"/>
<wire x1="-14.859" y1="-6.35" x2="-13.716" y2="-6.35" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="-5.969" x2="-13.462" y2="-6.096" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="-5.969" x2="-12.446" y2="-5.969" width="0.1524" layer="21"/>
<wire x1="-12.065" y1="-6.35" x2="-12.319" y2="-6.096" width="0.1524" layer="21"/>
<wire x1="-15.113" y1="-6.096" x2="-13.462" y2="-6.096" width="0.1524" layer="21"/>
<wire x1="-15.113" y1="-6.096" x2="-14.859" y2="-6.35" width="0.1524" layer="21"/>
<wire x1="-13.462" y1="-6.096" x2="-13.716" y2="-6.35" width="0.1524" layer="21"/>
<wire x1="-12.319" y1="-6.096" x2="15.113" y2="-6.096" width="0.1524" layer="21"/>
<wire x1="-12.319" y1="-6.096" x2="-12.446" y2="-5.969" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="5.461" x2="-13.335" y2="-5.715" width="0.1524" layer="21"/>
<wire x1="-12.446" y1="5.461" x2="-12.446" y2="-5.715" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="-5.715" x2="-12.446" y2="-5.715" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="-5.715" x2="-13.335" y2="-5.969" width="0.1524" layer="21"/>
<wire x1="-12.446" y1="-5.715" x2="-12.446" y2="-5.969" width="0.1524" layer="21"/>
<wire x1="-12.065" y1="-6.223" x2="14.859" y2="-6.223" width="0.3048" layer="21"/>
<wire x1="-14.859" y1="-6.223" x2="-13.716" y2="-6.223" width="0.3048" layer="21"/>
<wire x1="-13.208" y1="-5.842" x2="-12.573" y2="-5.842" width="0.3048" layer="21"/>
<wire x1="15.24" y1="-5.969" x2="15.113" y2="-6.096" width="0.1524" layer="21"/>
<wire x1="14.859" y1="-6.35" x2="-12.065" y2="-6.35" width="0.1524" layer="21"/>
<wire x1="15.113" y1="-6.096" x2="14.859" y2="-6.35" width="0.1524" layer="21"/>
<wire x1="15.24" y1="5.969" x2="14.859" y2="6.35" width="0.1524" layer="21"/>
<wire x1="14.859" y1="6.35" x2="-12.065" y2="6.35" width="0.1524" layer="21"/>
<wire x1="-10.287" y1="-1.524" x2="-9.779" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-9.779" y1="-1.524" x2="-9.779" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-9.779" y1="1.524" x2="-10.287" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-11.049" y1="1.27" x2="-11.049" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="0.889" x2="-10.668" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-10.287" y1="1.524" x2="-10.287" y2="0" width="0.1524" layer="21"/>
<wire x1="-10.287" y1="0" x2="-10.287" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="0" x2="14.097" y2="0" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="0" x2="-10.287" y2="0" width="0.1524" layer="21"/>
<wire x1="17.78" y1="0" x2="16.002" y2="0" width="0.762" layer="51"/>
<wire x1="-17.78" y1="0" x2="-16.002" y2="0" width="0.762" layer="51"/>
<pad name="+" x="-17.78" y="0" drill="1.1176" diameter="3.1496"/>
<pad name="-" x="17.78" y="0" drill="1.1176" diameter="3.1496" shape="octagon"/>
<text x="-14.732" y="6.731" size="1.778" layer="25">&gt;NAME</text>
<text x="-7.9756" y="-2.4892" size="1.778" layer="27">&gt;VALUE</text>
<rectangle x1="-9.271" y1="-1.524" x2="-8.763" y2="1.524" layer="21"/>
<rectangle x1="-16.129" y1="-0.381" x2="-15.24" y2="0.381" layer="21"/>
<rectangle x1="15.24" y1="-0.381" x2="16.129" y2="0.381" layer="21"/>
</package>
<package name="E35-14">
<description>&lt;b&gt;ELECTROLYTIC CAPACITOR&lt;/b&gt;&lt;p&gt;
 grid 30.48 mm, diameter 14 mm</description>
<wire x1="15.24" y1="7.239" x2="15.24" y2="-7.239" width="0.1524" layer="21"/>
<wire x1="-15.24" y1="7.239" x2="-15.24" y2="-7.239" width="0.1524" layer="21"/>
<wire x1="-15.24" y1="7.239" x2="-14.859" y2="7.62" width="0.1524" layer="21"/>
<wire x1="-14.859" y1="7.62" x2="-13.716" y2="7.62" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="7.239" x2="-13.716" y2="7.62" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="7.239" x2="-12.446" y2="7.239" width="0.1524" layer="21"/>
<wire x1="-12.446" y1="7.239" x2="-12.065" y2="7.62" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="7.239" x2="-13.335" y2="6.731" width="0.1524" layer="21"/>
<wire x1="-12.446" y1="7.239" x2="-12.446" y2="6.731" width="0.1524" layer="21"/>
<wire x1="-15.24" y1="7.239" x2="-13.335" y2="7.239" width="0.1524" layer="21"/>
<wire x1="-12.446" y1="7.239" x2="15.24" y2="7.239" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="6.731" x2="-12.446" y2="6.731" width="0.1524" layer="21"/>
<wire x1="-14.859" y1="7.493" x2="-13.716" y2="7.493" width="0.3048" layer="21"/>
<wire x1="-14.986" y1="7.366" x2="-13.589" y2="7.366" width="0.3048" layer="21"/>
<wire x1="-13.208" y1="7.112" x2="-12.573" y2="7.112" width="0.3048" layer="21"/>
<wire x1="-13.208" y1="6.858" x2="-12.573" y2="6.858" width="0.3048" layer="21"/>
<wire x1="-12.065" y1="7.493" x2="14.859" y2="7.493" width="0.3048" layer="21"/>
<wire x1="-12.192" y1="7.366" x2="14.986" y2="7.366" width="0.3048" layer="21"/>
<wire x1="-15.24" y1="-7.239" x2="-15.113" y2="-7.366" width="0.1524" layer="21"/>
<wire x1="-14.859" y1="-7.62" x2="-13.716" y2="-7.62" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="-7.239" x2="-13.462" y2="-7.366" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="-7.239" x2="-12.446" y2="-7.239" width="0.1524" layer="21"/>
<wire x1="-12.065" y1="-7.62" x2="-12.319" y2="-7.366" width="0.1524" layer="21"/>
<wire x1="-15.113" y1="-7.366" x2="-13.462" y2="-7.366" width="0.1524" layer="21"/>
<wire x1="-15.113" y1="-7.366" x2="-14.859" y2="-7.62" width="0.1524" layer="21"/>
<wire x1="-13.462" y1="-7.366" x2="-13.716" y2="-7.62" width="0.1524" layer="21"/>
<wire x1="-12.319" y1="-7.366" x2="15.113" y2="-7.366" width="0.1524" layer="21"/>
<wire x1="-12.319" y1="-7.366" x2="-12.446" y2="-7.239" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="6.731" x2="-13.335" y2="-6.985" width="0.1524" layer="21"/>
<wire x1="-12.446" y1="6.731" x2="-12.446" y2="-6.985" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="-6.985" x2="-12.446" y2="-6.985" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="-6.985" x2="-13.335" y2="-7.239" width="0.1524" layer="21"/>
<wire x1="-12.446" y1="-6.985" x2="-12.446" y2="-7.239" width="0.1524" layer="21"/>
<wire x1="-12.065" y1="-7.493" x2="14.859" y2="-7.493" width="0.3048" layer="21"/>
<wire x1="-14.859" y1="-7.493" x2="-13.716" y2="-7.493" width="0.3048" layer="21"/>
<wire x1="-13.208" y1="-7.112" x2="-12.573" y2="-7.112" width="0.3048" layer="21"/>
<wire x1="15.24" y1="-7.239" x2="15.113" y2="-7.366" width="0.1524" layer="21"/>
<wire x1="14.859" y1="-7.62" x2="-12.065" y2="-7.62" width="0.1524" layer="21"/>
<wire x1="15.113" y1="-7.366" x2="14.859" y2="-7.62" width="0.1524" layer="21"/>
<wire x1="15.24" y1="7.239" x2="14.859" y2="7.62" width="0.1524" layer="21"/>
<wire x1="14.859" y1="7.62" x2="-12.065" y2="7.62" width="0.1524" layer="21"/>
<wire x1="-10.287" y1="-1.524" x2="-9.779" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-9.779" y1="-1.524" x2="-9.779" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-9.779" y1="1.524" x2="-10.287" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-11.049" y1="1.27" x2="-11.049" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="0.889" x2="-10.668" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-10.287" y1="1.524" x2="-10.287" y2="0" width="0.1524" layer="21"/>
<wire x1="-10.287" y1="0" x2="-10.287" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="0" x2="14.097" y2="0" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="0" x2="-10.287" y2="0" width="0.1524" layer="21"/>
<wire x1="17.78" y1="0" x2="16.002" y2="0" width="0.762" layer="51"/>
<wire x1="-17.78" y1="0" x2="-16.002" y2="0" width="0.762" layer="51"/>
<pad name="+" x="-17.78" y="0" drill="1.1176" diameter="3.1496"/>
<pad name="-" x="17.78" y="0" drill="1.1176" diameter="3.1496" shape="octagon"/>
<text x="-14.859" y="8.001" size="1.778" layer="25">&gt;NAME</text>
<text x="-7.9756" y="-2.4892" size="1.778" layer="27">&gt;VALUE</text>
<rectangle x1="-9.271" y1="-1.524" x2="-8.763" y2="1.524" layer="21"/>
<rectangle x1="-16.129" y1="-0.381" x2="-15.24" y2="0.381" layer="21"/>
<rectangle x1="15.24" y1="-0.381" x2="16.129" y2="0.381" layer="21"/>
</package>
<package name="E35-16">
<description>&lt;b&gt;ELECTROLYTIC CAPACITOR&lt;/b&gt;&lt;p&gt;
 grid 30.48 mm, diameter 16 mm</description>
<wire x1="15.24" y1="7.874" x2="15.24" y2="-7.874" width="0.1524" layer="21"/>
<wire x1="-15.24" y1="7.874" x2="-15.24" y2="-7.874" width="0.1524" layer="21"/>
<wire x1="-15.24" y1="7.874" x2="-14.859" y2="8.255" width="0.1524" layer="21"/>
<wire x1="-14.859" y1="8.255" x2="-13.716" y2="8.255" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="7.874" x2="-13.716" y2="8.255" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="7.874" x2="-12.446" y2="7.874" width="0.1524" layer="21"/>
<wire x1="-12.446" y1="7.874" x2="-12.065" y2="8.255" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="7.874" x2="-13.335" y2="7.366" width="0.1524" layer="21"/>
<wire x1="-12.446" y1="7.874" x2="-12.446" y2="7.366" width="0.1524" layer="21"/>
<wire x1="-15.24" y1="7.874" x2="-13.335" y2="7.874" width="0.1524" layer="21"/>
<wire x1="-12.446" y1="7.874" x2="15.24" y2="7.874" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="7.366" x2="-12.446" y2="7.366" width="0.1524" layer="21"/>
<wire x1="-14.859" y1="8.128" x2="-13.716" y2="8.128" width="0.3048" layer="21"/>
<wire x1="-14.986" y1="8.001" x2="-13.589" y2="8.001" width="0.3048" layer="21"/>
<wire x1="-13.208" y1="7.747" x2="-12.573" y2="7.747" width="0.3048" layer="21"/>
<wire x1="-13.208" y1="7.493" x2="-12.573" y2="7.493" width="0.3048" layer="21"/>
<wire x1="-12.065" y1="8.128" x2="14.859" y2="8.128" width="0.3048" layer="21"/>
<wire x1="-12.192" y1="8.001" x2="14.986" y2="8.001" width="0.3048" layer="21"/>
<wire x1="-15.24" y1="-7.874" x2="-15.113" y2="-8.001" width="0.1524" layer="21"/>
<wire x1="-14.859" y1="-8.255" x2="-13.716" y2="-8.255" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="-7.874" x2="-13.462" y2="-8.001" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="-7.874" x2="-12.446" y2="-7.874" width="0.1524" layer="21"/>
<wire x1="-12.065" y1="-8.255" x2="-12.319" y2="-8.001" width="0.1524" layer="21"/>
<wire x1="-15.113" y1="-8.001" x2="-13.462" y2="-8.001" width="0.1524" layer="21"/>
<wire x1="-15.113" y1="-8.001" x2="-14.859" y2="-8.255" width="0.1524" layer="21"/>
<wire x1="-13.462" y1="-8.001" x2="-13.716" y2="-8.255" width="0.1524" layer="21"/>
<wire x1="-12.319" y1="-8.001" x2="15.113" y2="-8.001" width="0.1524" layer="21"/>
<wire x1="-12.319" y1="-8.001" x2="-12.446" y2="-7.874" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="7.366" x2="-13.335" y2="-7.62" width="0.1524" layer="21"/>
<wire x1="-12.446" y1="7.366" x2="-12.446" y2="-7.62" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="-7.62" x2="-12.446" y2="-7.62" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="-7.62" x2="-13.335" y2="-7.874" width="0.1524" layer="21"/>
<wire x1="-12.446" y1="-7.62" x2="-12.446" y2="-7.874" width="0.1524" layer="21"/>
<wire x1="-12.065" y1="-8.128" x2="14.859" y2="-8.128" width="0.3048" layer="21"/>
<wire x1="-14.859" y1="-8.128" x2="-13.716" y2="-8.128" width="0.3048" layer="21"/>
<wire x1="-13.208" y1="-7.747" x2="-12.573" y2="-7.747" width="0.3048" layer="21"/>
<wire x1="15.24" y1="-7.874" x2="15.113" y2="-8.001" width="0.1524" layer="21"/>
<wire x1="14.859" y1="-8.255" x2="-12.065" y2="-8.255" width="0.1524" layer="21"/>
<wire x1="15.113" y1="-8.001" x2="14.859" y2="-8.255" width="0.1524" layer="21"/>
<wire x1="15.24" y1="7.874" x2="14.859" y2="8.255" width="0.1524" layer="21"/>
<wire x1="14.859" y1="8.255" x2="-12.065" y2="8.255" width="0.1524" layer="21"/>
<wire x1="-10.287" y1="-1.524" x2="-9.779" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-9.779" y1="-1.524" x2="-9.779" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-9.779" y1="1.524" x2="-10.287" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-11.049" y1="1.27" x2="-11.049" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="0.889" x2="-10.668" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-10.287" y1="1.524" x2="-10.287" y2="0" width="0.1524" layer="21"/>
<wire x1="-10.287" y1="0" x2="-10.287" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="0" x2="14.097" y2="0" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="0" x2="-10.287" y2="0" width="0.1524" layer="21"/>
<wire x1="17.78" y1="0" x2="16.002" y2="0" width="0.762" layer="51"/>
<wire x1="-17.78" y1="0" x2="-16.002" y2="0" width="0.762" layer="51"/>
<pad name="+" x="-17.78" y="0" drill="1.1176" diameter="3.1496"/>
<pad name="-" x="17.78" y="0" drill="1.1176" diameter="3.1496" shape="octagon"/>
<text x="-14.859" y="8.636" size="1.778" layer="25">&gt;NAME</text>
<text x="-7.9756" y="-2.4892" size="1.778" layer="27">&gt;VALUE</text>
<rectangle x1="-9.271" y1="-1.524" x2="-8.763" y2="1.524" layer="21"/>
<rectangle x1="-16.129" y1="-0.381" x2="-15.24" y2="0.381" layer="21"/>
<rectangle x1="15.24" y1="-0.381" x2="16.129" y2="0.381" layer="21"/>
</package>
<package name="E35-18">
<description>&lt;b&gt;ELECTROLYTIC CAPACITOR&lt;/b&gt;&lt;p&gt;
 grid 30.48 mm, diameter 18 mm</description>
<wire x1="15.24" y1="9.779" x2="15.24" y2="-9.779" width="0.1524" layer="21"/>
<wire x1="-15.24" y1="9.779" x2="-15.24" y2="-9.779" width="0.1524" layer="21"/>
<wire x1="-15.24" y1="9.779" x2="-14.859" y2="10.16" width="0.1524" layer="21"/>
<wire x1="-14.859" y1="10.16" x2="-13.716" y2="10.16" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="9.779" x2="-13.716" y2="10.16" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="9.779" x2="-12.446" y2="9.779" width="0.1524" layer="21"/>
<wire x1="-12.446" y1="9.779" x2="-12.065" y2="10.16" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="9.779" x2="-13.335" y2="9.271" width="0.1524" layer="21"/>
<wire x1="-12.446" y1="9.779" x2="-12.446" y2="9.271" width="0.1524" layer="21"/>
<wire x1="-15.24" y1="9.779" x2="-13.335" y2="9.779" width="0.1524" layer="21"/>
<wire x1="-12.446" y1="9.779" x2="15.24" y2="9.779" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="9.271" x2="-12.446" y2="9.271" width="0.1524" layer="21"/>
<wire x1="-14.859" y1="10.033" x2="-13.716" y2="10.033" width="0.3048" layer="21"/>
<wire x1="-14.986" y1="9.906" x2="-13.589" y2="9.906" width="0.3048" layer="21"/>
<wire x1="-13.208" y1="9.652" x2="-12.573" y2="9.652" width="0.3048" layer="21"/>
<wire x1="-13.208" y1="9.398" x2="-12.573" y2="9.398" width="0.3048" layer="21"/>
<wire x1="-12.065" y1="10.033" x2="14.859" y2="10.033" width="0.3048" layer="21"/>
<wire x1="-12.192" y1="9.906" x2="14.986" y2="9.906" width="0.3048" layer="21"/>
<wire x1="-15.24" y1="-9.779" x2="-15.113" y2="-9.906" width="0.1524" layer="21"/>
<wire x1="-14.859" y1="-10.16" x2="-13.716" y2="-10.16" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="-9.779" x2="-13.462" y2="-9.906" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="-9.779" x2="-12.446" y2="-9.779" width="0.1524" layer="21"/>
<wire x1="-12.065" y1="-10.16" x2="-12.319" y2="-9.906" width="0.1524" layer="21"/>
<wire x1="-15.113" y1="-9.906" x2="-13.462" y2="-9.906" width="0.1524" layer="21"/>
<wire x1="-15.113" y1="-9.906" x2="-14.859" y2="-10.16" width="0.1524" layer="21"/>
<wire x1="-13.462" y1="-9.906" x2="-13.716" y2="-10.16" width="0.1524" layer="21"/>
<wire x1="-12.319" y1="-9.906" x2="15.113" y2="-9.906" width="0.1524" layer="21"/>
<wire x1="-12.319" y1="-9.906" x2="-12.446" y2="-9.779" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="9.271" x2="-13.335" y2="-9.525" width="0.1524" layer="21"/>
<wire x1="-12.446" y1="9.271" x2="-12.446" y2="-9.525" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="-9.525" x2="-12.446" y2="-9.525" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="-9.525" x2="-13.335" y2="-9.779" width="0.1524" layer="21"/>
<wire x1="-12.446" y1="-9.525" x2="-12.446" y2="-9.779" width="0.1524" layer="21"/>
<wire x1="-12.065" y1="-10.033" x2="14.859" y2="-10.033" width="0.3048" layer="21"/>
<wire x1="-14.859" y1="-10.033" x2="-13.716" y2="-10.033" width="0.3048" layer="21"/>
<wire x1="-13.208" y1="-9.652" x2="-12.573" y2="-9.652" width="0.3048" layer="21"/>
<wire x1="15.24" y1="-9.779" x2="15.113" y2="-9.906" width="0.1524" layer="21"/>
<wire x1="14.859" y1="-10.16" x2="-12.065" y2="-10.16" width="0.1524" layer="21"/>
<wire x1="15.113" y1="-9.906" x2="14.859" y2="-10.16" width="0.1524" layer="21"/>
<wire x1="15.24" y1="9.779" x2="14.859" y2="10.16" width="0.1524" layer="21"/>
<wire x1="14.859" y1="10.16" x2="-12.065" y2="10.16" width="0.1524" layer="21"/>
<wire x1="-10.287" y1="-1.524" x2="-9.779" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-9.779" y1="-1.524" x2="-9.779" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-9.779" y1="1.524" x2="-10.287" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-11.049" y1="1.27" x2="-11.049" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="0.889" x2="-10.668" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-10.287" y1="1.524" x2="-10.287" y2="0" width="0.1524" layer="21"/>
<wire x1="-10.287" y1="0" x2="-10.287" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="0" x2="14.097" y2="0" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="0" x2="-10.287" y2="0" width="0.1524" layer="21"/>
<wire x1="17.78" y1="0" x2="16.002" y2="0" width="0.762" layer="51"/>
<wire x1="-17.78" y1="0" x2="-16.002" y2="0" width="0.762" layer="51"/>
<pad name="+" x="-17.78" y="0" drill="1.1176" diameter="3.1496"/>
<pad name="-" x="17.78" y="0" drill="1.1176" diameter="3.1496" shape="octagon"/>
<text x="-14.859" y="10.541" size="1.778" layer="25">&gt;NAME</text>
<text x="-7.9756" y="-2.4892" size="1.778" layer="27">&gt;VALUE</text>
<rectangle x1="-9.271" y1="-1.524" x2="-8.763" y2="1.524" layer="21"/>
<rectangle x1="-16.002" y1="-0.381" x2="-15.24" y2="0.381" layer="21"/>
<rectangle x1="15.24" y1="-0.381" x2="16.002" y2="0.381" layer="21"/>
</package>
<package name="E45-16">
<description>&lt;b&gt;ELECTROLYTIC CAPACITOR&lt;/b&gt;&lt;p&gt;
 grid 45.72 mm, diameter 16 mm</description>
<wire x1="-20.32" y1="7.747" x2="-19.812" y2="8.255" width="0.1524" layer="21"/>
<wire x1="-19.812" y1="8.255" x2="-18.288" y2="8.255" width="0.1524" layer="21"/>
<wire x1="-18.288" y1="8.255" x2="-17.78" y2="7.747" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="-7.747" x2="-19.939" y2="-8.128" width="0.1524" layer="21"/>
<wire x1="-19.812" y1="-8.255" x2="-18.288" y2="-8.255" width="0.1524" layer="21"/>
<wire x1="-18.288" y1="-8.255" x2="-18.161" y2="-8.128" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="7.747" x2="-20.32" y2="-7.747" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="-7.747" x2="-16.51" y2="-7.747" width="0.1524" layer="21"/>
<wire x1="-16.002" y1="-8.255" x2="19.812" y2="-8.255" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="-7.747" x2="-17.78" y2="-7.6962" width="0.1524" layer="21"/>
<wire x1="-16.51" y1="-7.747" x2="-16.51" y2="-7.6962" width="0.1524" layer="21"/>
<wire x1="-19.939" y1="-8.128" x2="-18.161" y2="-8.128" width="0.1524" layer="21"/>
<wire x1="-19.939" y1="-8.128" x2="-19.812" y2="-8.255" width="0.1524" layer="21"/>
<wire x1="-18.161" y1="-8.128" x2="-17.78" y2="-7.747" width="0.1524" layer="21"/>
<wire x1="-16.51" y1="-7.747" x2="-16.129" y2="-8.128" width="0.1524" layer="21"/>
<wire x1="-16.129" y1="-8.128" x2="-16.002" y2="-8.255" width="0.1524" layer="21"/>
<wire x1="-19.812" y1="-8.255" x2="-19.812" y2="-8.2042" width="0.1524" layer="21"/>
<wire x1="-19.812" y1="-8.2042" x2="-18.288" y2="-8.2042" width="0.1524" layer="21"/>
<wire x1="-16.002" y1="-8.255" x2="-16.002" y2="-8.2042" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="-7.62" x2="-16.51" y2="-7.62" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="-7.6962" x2="-16.51" y2="-7.6962" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="-7.6962" x2="-17.78" y2="-7.62" width="0.1524" layer="21"/>
<wire x1="-16.51" y1="-7.6962" x2="-16.51" y2="-7.62" width="0.1524" layer="21"/>
<wire x1="-16.002" y1="-8.2042" x2="19.812" y2="-8.2042" width="0.1524" layer="21"/>
<wire x1="19.812" y1="-8.255" x2="19.939" y2="-8.128" width="0.1524" layer="21"/>
<wire x1="-16.129" y1="-8.128" x2="19.939" y2="-8.128" width="0.1524" layer="21"/>
<wire x1="19.939" y1="-8.128" x2="20.32" y2="-7.747" width="0.1524" layer="21"/>
<wire x1="-16.51" y1="7.747" x2="-16.002" y2="8.255" width="0.1524" layer="21"/>
<wire x1="-16.002" y1="8.255" x2="19.812" y2="8.255" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="7.747" x2="-17.78" y2="7.747" width="0.1524" layer="21"/>
<wire x1="-16.51" y1="7.747" x2="20.32" y2="7.747" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="-7.62" x2="-17.78" y2="7.239" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="7.239" x2="-17.78" y2="7.747" width="0.1524" layer="21"/>
<wire x1="-16.51" y1="-7.62" x2="-16.51" y2="7.239" width="0.1524" layer="21"/>
<wire x1="-16.51" y1="7.239" x2="-16.51" y2="7.747" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="7.747" x2="-16.51" y2="7.747" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="7.239" x2="-16.51" y2="7.239" width="0.1524" layer="21"/>
<wire x1="-19.812" y1="8.128" x2="-18.288" y2="8.128" width="0.3048" layer="21"/>
<wire x1="-16.002" y1="8.128" x2="19.812" y2="8.128" width="0.3048" layer="21"/>
<wire x1="19.812" y1="8.255" x2="20.32" y2="7.747" width="0.1524" layer="21"/>
<wire x1="20.32" y1="7.747" x2="20.32" y2="-7.747" width="0.1524" layer="21"/>
<wire x1="-3.556" y1="-1.524" x2="-3.048" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-3.048" y1="-1.524" x2="-3.048" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-3.048" y1="1.524" x2="-3.556" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-4.318" y1="1.27" x2="-4.318" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-4.699" y1="0.889" x2="-3.937" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-3.556" y1="1.524" x2="-3.556" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.556" y1="0" x2="-3.556" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-2.159" y1="0" x2="19.05" y2="0" width="0.1524" layer="21"/>
<wire x1="-15.24" y1="0" x2="-3.556" y2="0" width="0.1524" layer="21"/>
<wire x1="-17.653" y1="7.62" x2="-16.637" y2="7.62" width="0.3048" layer="21"/>
<wire x1="-20.066" y1="7.874" x2="-18.034" y2="7.874" width="0.3048" layer="21"/>
<wire x1="-17.653" y1="7.366" x2="-16.637" y2="7.366" width="0.3048" layer="21"/>
<wire x1="-16.256" y1="7.874" x2="20.066" y2="7.874" width="0.3048" layer="21"/>
<wire x1="22.86" y1="0" x2="20.955" y2="0" width="0.762" layer="51"/>
<wire x1="-22.86" y1="0" x2="-20.955" y2="0" width="0.762" layer="51"/>
<pad name="+" x="-22.86" y="0" drill="1.1176" diameter="3.81"/>
<pad name="-" x="22.86" y="0" drill="1.1176" diameter="3.81" shape="octagon"/>
<text x="-19.812" y="8.763" size="1.778" layer="25">&gt;NAME</text>
<text x="-1.2446" y="-2.4892" size="1.778" layer="27">&gt;VALUE</text>
<rectangle x1="-2.54" y1="-1.524" x2="-2.032" y2="1.524" layer="21"/>
<rectangle x1="20.32" y1="-0.381" x2="20.828" y2="0.381" layer="21"/>
<rectangle x1="-20.828" y1="-0.381" x2="-20.32" y2="0.381" layer="21"/>
</package>
<package name="E45-18">
<description>&lt;b&gt;ELECTROLYTIC CAPACITOR&lt;/b&gt;&lt;p&gt;
 grid 45.72 mm, diameter 18 mm</description>
<wire x1="-20.32" y1="8.382" x2="-19.812" y2="8.89" width="0.1524" layer="21"/>
<wire x1="-19.812" y1="8.89" x2="-18.288" y2="8.89" width="0.1524" layer="21"/>
<wire x1="-18.288" y1="8.89" x2="-17.78" y2="8.382" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="-8.382" x2="-19.939" y2="-8.763" width="0.1524" layer="21"/>
<wire x1="-19.812" y1="-8.89" x2="-18.288" y2="-8.89" width="0.1524" layer="21"/>
<wire x1="-18.288" y1="-8.89" x2="-18.161" y2="-8.763" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="8.382" x2="-20.32" y2="-8.382" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="-8.382" x2="-16.51" y2="-8.382" width="0.1524" layer="21"/>
<wire x1="-16.002" y1="-8.89" x2="19.812" y2="-8.89" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="-8.382" x2="-17.78" y2="-8.3312" width="0.1524" layer="21"/>
<wire x1="-16.51" y1="-8.382" x2="-16.51" y2="-8.3312" width="0.1524" layer="21"/>
<wire x1="-19.939" y1="-8.763" x2="-18.161" y2="-8.763" width="0.1524" layer="21"/>
<wire x1="-19.939" y1="-8.763" x2="-19.812" y2="-8.89" width="0.1524" layer="21"/>
<wire x1="-18.161" y1="-8.763" x2="-17.78" y2="-8.382" width="0.1524" layer="21"/>
<wire x1="-16.51" y1="-8.382" x2="-16.129" y2="-8.763" width="0.1524" layer="21"/>
<wire x1="-16.129" y1="-8.763" x2="-16.002" y2="-8.89" width="0.1524" layer="21"/>
<wire x1="-19.812" y1="-8.89" x2="-19.812" y2="-8.8392" width="0.1524" layer="21"/>
<wire x1="-19.812" y1="-8.8392" x2="-18.288" y2="-8.8392" width="0.1524" layer="21"/>
<wire x1="-16.002" y1="-8.89" x2="-16.002" y2="-8.8392" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="-8.255" x2="-16.51" y2="-8.255" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="-8.3312" x2="-16.51" y2="-8.3312" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="-8.3312" x2="-17.78" y2="-8.255" width="0.1524" layer="21"/>
<wire x1="-16.51" y1="-8.3312" x2="-16.51" y2="-8.255" width="0.1524" layer="21"/>
<wire x1="-16.002" y1="-8.8392" x2="19.812" y2="-8.8392" width="0.1524" layer="21"/>
<wire x1="19.812" y1="-8.89" x2="19.939" y2="-8.763" width="0.1524" layer="21"/>
<wire x1="-16.129" y1="-8.763" x2="19.939" y2="-8.763" width="0.1524" layer="21"/>
<wire x1="19.939" y1="-8.763" x2="20.32" y2="-8.382" width="0.1524" layer="21"/>
<wire x1="-16.51" y1="8.382" x2="-16.002" y2="8.89" width="0.1524" layer="21"/>
<wire x1="-16.002" y1="8.89" x2="19.812" y2="8.89" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="8.382" x2="-17.78" y2="8.382" width="0.1524" layer="21"/>
<wire x1="-16.51" y1="8.382" x2="20.32" y2="8.382" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="-8.255" x2="-17.78" y2="7.874" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="7.874" x2="-17.78" y2="8.382" width="0.1524" layer="21"/>
<wire x1="-16.51" y1="-8.255" x2="-16.51" y2="7.874" width="0.1524" layer="21"/>
<wire x1="-16.51" y1="7.874" x2="-16.51" y2="8.382" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="8.382" x2="-16.51" y2="8.382" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="7.874" x2="-16.51" y2="7.874" width="0.1524" layer="21"/>
<wire x1="-19.812" y1="8.763" x2="-18.288" y2="8.763" width="0.3048" layer="21"/>
<wire x1="-16.002" y1="8.763" x2="19.812" y2="8.763" width="0.3048" layer="21"/>
<wire x1="19.812" y1="8.89" x2="20.32" y2="8.382" width="0.1524" layer="21"/>
<wire x1="20.32" y1="8.382" x2="20.32" y2="-8.382" width="0.1524" layer="21"/>
<wire x1="-3.556" y1="-1.524" x2="-3.048" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-3.048" y1="-1.524" x2="-3.048" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-3.048" y1="1.524" x2="-3.556" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-4.318" y1="1.27" x2="-4.318" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-4.699" y1="0.889" x2="-3.937" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-3.556" y1="1.524" x2="-3.556" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.556" y1="0" x2="-3.556" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-2.159" y1="0" x2="19.05" y2="0" width="0.1524" layer="21"/>
<wire x1="-15.24" y1="0" x2="-3.556" y2="0" width="0.1524" layer="21"/>
<wire x1="-17.653" y1="8.255" x2="-16.637" y2="8.255" width="0.3048" layer="21"/>
<wire x1="-20.066" y1="8.509" x2="-18.034" y2="8.509" width="0.3048" layer="21"/>
<wire x1="-17.653" y1="8.001" x2="-16.637" y2="8.001" width="0.3048" layer="21"/>
<wire x1="-16.256" y1="8.509" x2="20.066" y2="8.509" width="0.3048" layer="21"/>
<wire x1="22.86" y1="0" x2="20.955" y2="0" width="0.762" layer="51"/>
<wire x1="-22.86" y1="0" x2="-20.955" y2="0" width="0.762" layer="51"/>
<pad name="+" x="-22.86" y="0" drill="1.1176" diameter="3.81"/>
<pad name="-" x="22.86" y="0" drill="1.1176" diameter="3.81" shape="octagon"/>
<text x="-19.558" y="9.271" size="1.778" layer="25">&gt;NAME</text>
<text x="-1.2446" y="-2.4892" size="1.778" layer="27">&gt;VALUE</text>
<rectangle x1="-2.54" y1="-1.524" x2="-2.032" y2="1.524" layer="21"/>
<rectangle x1="20.32" y1="-0.381" x2="20.828" y2="0.381" layer="21"/>
<rectangle x1="-20.828" y1="-0.381" x2="-20.32" y2="0.381" layer="21"/>
</package>
<package name="E45-21">
<description>&lt;b&gt;ELECTROLYTIC CAPACITOR&lt;/b&gt;&lt;p&gt;
 grid 45.72 mm, diameter 21 mm</description>
<wire x1="-20.32" y1="10.287" x2="-19.812" y2="10.795" width="0.1524" layer="21"/>
<wire x1="-19.812" y1="10.795" x2="-18.288" y2="10.795" width="0.1524" layer="21"/>
<wire x1="-18.288" y1="10.795" x2="-17.78" y2="10.287" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="-10.287" x2="-19.939" y2="-10.668" width="0.1524" layer="21"/>
<wire x1="-19.812" y1="-10.795" x2="-18.288" y2="-10.795" width="0.1524" layer="21"/>
<wire x1="-18.288" y1="-10.795" x2="-18.161" y2="-10.668" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="10.287" x2="-20.32" y2="-10.287" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="-10.287" x2="-16.51" y2="-10.287" width="0.1524" layer="21"/>
<wire x1="-16.002" y1="-10.795" x2="19.812" y2="-10.795" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="-10.287" x2="-17.78" y2="-10.2362" width="0.1524" layer="21"/>
<wire x1="-16.51" y1="-10.287" x2="-16.51" y2="-10.2362" width="0.1524" layer="21"/>
<wire x1="-19.939" y1="-10.668" x2="-18.161" y2="-10.668" width="0.1524" layer="21"/>
<wire x1="-19.939" y1="-10.668" x2="-19.812" y2="-10.795" width="0.1524" layer="21"/>
<wire x1="-18.161" y1="-10.668" x2="-17.78" y2="-10.287" width="0.1524" layer="21"/>
<wire x1="-16.51" y1="-10.287" x2="-16.129" y2="-10.668" width="0.1524" layer="21"/>
<wire x1="-16.129" y1="-10.668" x2="-16.002" y2="-10.795" width="0.1524" layer="21"/>
<wire x1="-19.812" y1="-10.795" x2="-19.812" y2="-10.7442" width="0.1524" layer="21"/>
<wire x1="-19.812" y1="-10.7442" x2="-18.288" y2="-10.7442" width="0.1524" layer="21"/>
<wire x1="-16.002" y1="-10.795" x2="-16.002" y2="-10.7442" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="-10.16" x2="-16.51" y2="-10.16" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="-10.2362" x2="-16.51" y2="-10.2362" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="-10.2362" x2="-17.78" y2="-10.16" width="0.1524" layer="21"/>
<wire x1="-16.51" y1="-10.2362" x2="-16.51" y2="-10.16" width="0.1524" layer="21"/>
<wire x1="-16.002" y1="-10.7442" x2="19.812" y2="-10.7442" width="0.1524" layer="21"/>
<wire x1="19.812" y1="-10.795" x2="19.939" y2="-10.668" width="0.1524" layer="21"/>
<wire x1="-16.129" y1="-10.668" x2="19.939" y2="-10.668" width="0.1524" layer="21"/>
<wire x1="19.939" y1="-10.668" x2="20.32" y2="-10.287" width="0.1524" layer="21"/>
<wire x1="-16.51" y1="10.287" x2="-16.002" y2="10.795" width="0.1524" layer="21"/>
<wire x1="-16.002" y1="10.795" x2="19.812" y2="10.795" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="10.287" x2="-17.78" y2="10.287" width="0.1524" layer="21"/>
<wire x1="-16.51" y1="10.287" x2="20.32" y2="10.287" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="-10.16" x2="-17.78" y2="9.779" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="9.779" x2="-17.78" y2="10.287" width="0.1524" layer="21"/>
<wire x1="-16.51" y1="-10.16" x2="-16.51" y2="9.779" width="0.1524" layer="21"/>
<wire x1="-16.51" y1="9.779" x2="-16.51" y2="10.287" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="10.287" x2="-16.51" y2="10.287" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="9.779" x2="-16.51" y2="9.779" width="0.1524" layer="21"/>
<wire x1="-19.812" y1="10.668" x2="-18.288" y2="10.668" width="0.3048" layer="21"/>
<wire x1="-16.002" y1="10.668" x2="19.812" y2="10.668" width="0.3048" layer="21"/>
<wire x1="19.812" y1="10.795" x2="20.32" y2="10.287" width="0.1524" layer="21"/>
<wire x1="20.32" y1="10.287" x2="20.32" y2="-10.287" width="0.1524" layer="21"/>
<wire x1="-3.556" y1="-1.524" x2="-3.048" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-3.048" y1="-1.524" x2="-3.048" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-3.048" y1="1.524" x2="-3.556" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-4.318" y1="1.27" x2="-4.318" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-4.699" y1="0.889" x2="-3.937" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-3.556" y1="1.524" x2="-3.556" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.556" y1="0" x2="-3.556" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-2.159" y1="0" x2="19.05" y2="0" width="0.1524" layer="21"/>
<wire x1="-15.24" y1="0" x2="-3.556" y2="0" width="0.1524" layer="21"/>
<wire x1="-17.653" y1="10.16" x2="-16.637" y2="10.16" width="0.3048" layer="21"/>
<wire x1="-20.066" y1="10.414" x2="-18.034" y2="10.414" width="0.3048" layer="21"/>
<wire x1="-17.653" y1="9.906" x2="-16.637" y2="9.906" width="0.3048" layer="21"/>
<wire x1="-16.256" y1="10.414" x2="20.066" y2="10.414" width="0.3048" layer="21"/>
<wire x1="22.86" y1="0" x2="20.955" y2="0" width="0.762" layer="51"/>
<wire x1="-22.86" y1="0" x2="-20.955" y2="0" width="0.762" layer="51"/>
<pad name="+" x="-22.86" y="0" drill="1.1176" diameter="3.81"/>
<pad name="-" x="22.86" y="0" drill="1.1176" diameter="3.81" shape="octagon"/>
<text x="-19.685" y="11.176" size="1.778" layer="25">&gt;NAME</text>
<text x="-1.2446" y="-2.4892" size="1.778" layer="27">&gt;VALUE</text>
<rectangle x1="-2.54" y1="-1.524" x2="-2.032" y2="1.524" layer="21"/>
<rectangle x1="20.32" y1="-0.381" x2="20.828" y2="0.381" layer="21"/>
<rectangle x1="-20.828" y1="-0.381" x2="-20.32" y2="0.381" layer="21"/>
</package>
<package name="E45-22">
<description>&lt;b&gt;ELECTROLYTIC CAPACITOR&lt;/b&gt;&lt;p&gt;
 grid 45.72 mm, diameter 22 mm</description>
<wire x1="-20.32" y1="10.541" x2="-19.812" y2="11.049" width="0.1524" layer="21"/>
<wire x1="-19.812" y1="11.049" x2="-18.288" y2="11.049" width="0.1524" layer="21"/>
<wire x1="-18.288" y1="11.049" x2="-17.78" y2="10.541" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="-10.541" x2="-19.939" y2="-10.922" width="0.1524" layer="21"/>
<wire x1="-19.812" y1="-11.049" x2="-18.288" y2="-11.049" width="0.1524" layer="21"/>
<wire x1="-18.288" y1="-11.049" x2="-18.161" y2="-10.922" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="10.541" x2="-20.32" y2="-10.541" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="-10.541" x2="-16.51" y2="-10.541" width="0.1524" layer="21"/>
<wire x1="-16.002" y1="-11.049" x2="19.812" y2="-11.049" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="-10.541" x2="-17.78" y2="-10.4902" width="0.1524" layer="21"/>
<wire x1="-16.51" y1="-10.541" x2="-16.51" y2="-10.4902" width="0.1524" layer="21"/>
<wire x1="-19.939" y1="-10.922" x2="-18.161" y2="-10.922" width="0.1524" layer="21"/>
<wire x1="-19.939" y1="-10.922" x2="-19.812" y2="-11.049" width="0.1524" layer="21"/>
<wire x1="-18.161" y1="-10.922" x2="-17.78" y2="-10.541" width="0.1524" layer="21"/>
<wire x1="-16.51" y1="-10.541" x2="-16.129" y2="-10.922" width="0.1524" layer="21"/>
<wire x1="-16.129" y1="-10.922" x2="-16.002" y2="-11.049" width="0.1524" layer="21"/>
<wire x1="-19.812" y1="-11.049" x2="-19.812" y2="-10.9982" width="0.1524" layer="21"/>
<wire x1="-19.812" y1="-10.9982" x2="-18.288" y2="-10.9982" width="0.1524" layer="21"/>
<wire x1="-16.002" y1="-11.049" x2="-16.002" y2="-10.9982" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="-10.414" x2="-16.51" y2="-10.414" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="-10.4902" x2="-16.51" y2="-10.4902" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="-10.4902" x2="-17.78" y2="-10.414" width="0.1524" layer="21"/>
<wire x1="-16.51" y1="-10.4902" x2="-16.51" y2="-10.414" width="0.1524" layer="21"/>
<wire x1="-16.002" y1="-10.9982" x2="19.812" y2="-10.9982" width="0.1524" layer="21"/>
<wire x1="19.812" y1="-11.049" x2="19.939" y2="-10.922" width="0.1524" layer="21"/>
<wire x1="-16.129" y1="-10.922" x2="19.939" y2="-10.922" width="0.1524" layer="21"/>
<wire x1="19.939" y1="-10.922" x2="20.32" y2="-10.541" width="0.1524" layer="21"/>
<wire x1="-16.51" y1="10.541" x2="-16.002" y2="11.049" width="0.1524" layer="21"/>
<wire x1="-16.002" y1="11.049" x2="19.812" y2="11.049" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="10.541" x2="-17.78" y2="10.541" width="0.1524" layer="21"/>
<wire x1="-16.51" y1="10.541" x2="20.32" y2="10.541" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="-10.414" x2="-17.78" y2="10.033" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="10.033" x2="-17.78" y2="10.541" width="0.1524" layer="21"/>
<wire x1="-16.51" y1="-10.414" x2="-16.51" y2="10.033" width="0.1524" layer="21"/>
<wire x1="-16.51" y1="10.033" x2="-16.51" y2="10.541" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="10.541" x2="-16.51" y2="10.541" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="10.033" x2="-16.51" y2="10.033" width="0.1524" layer="21"/>
<wire x1="-19.812" y1="10.922" x2="-18.288" y2="10.922" width="0.3048" layer="21"/>
<wire x1="-16.002" y1="10.922" x2="19.812" y2="10.922" width="0.3048" layer="21"/>
<wire x1="19.812" y1="11.049" x2="20.32" y2="10.541" width="0.1524" layer="21"/>
<wire x1="20.32" y1="10.541" x2="20.32" y2="-10.541" width="0.1524" layer="21"/>
<wire x1="-3.556" y1="-1.524" x2="-3.048" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-3.048" y1="-1.524" x2="-3.048" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-3.048" y1="1.524" x2="-3.556" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-4.318" y1="1.27" x2="-4.318" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-4.699" y1="0.889" x2="-3.937" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-3.556" y1="1.524" x2="-3.556" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.556" y1="0" x2="-3.556" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-2.159" y1="0" x2="19.05" y2="0" width="0.1524" layer="21"/>
<wire x1="-15.24" y1="0" x2="-3.556" y2="0" width="0.1524" layer="21"/>
<wire x1="-17.653" y1="10.414" x2="-16.637" y2="10.414" width="0.3048" layer="21"/>
<wire x1="-20.066" y1="10.668" x2="-18.034" y2="10.668" width="0.3048" layer="21"/>
<wire x1="-17.653" y1="10.16" x2="-16.637" y2="10.16" width="0.3048" layer="21"/>
<wire x1="-16.256" y1="10.668" x2="20.066" y2="10.668" width="0.3048" layer="21"/>
<wire x1="22.86" y1="0" x2="20.955" y2="0" width="0.762" layer="51"/>
<wire x1="-22.86" y1="0" x2="-20.955" y2="0" width="0.762" layer="51"/>
<pad name="+" x="-22.86" y="0" drill="1.1176" diameter="3.81"/>
<pad name="-" x="22.86" y="0" drill="1.1176" diameter="3.81" shape="octagon"/>
<text x="-19.685" y="11.43" size="1.778" layer="25">&gt;NAME</text>
<text x="-1.2446" y="-2.4892" size="1.778" layer="27">&gt;VALUE</text>
<rectangle x1="-2.54" y1="-1.524" x2="-2.032" y2="1.524" layer="21"/>
<rectangle x1="20.32" y1="-0.381" x2="20.828" y2="0.381" layer="21"/>
<rectangle x1="-20.828" y1="-0.381" x2="-20.32" y2="0.381" layer="21"/>
</package>
<package name="E45-25">
<description>&lt;b&gt;ELECTROLYTIC CAPACITOR&lt;/b&gt;&lt;p&gt;
 grid 45.72 mm, diameter 25 mm</description>
<wire x1="-20.32" y1="12.192" x2="-19.812" y2="12.7" width="0.1524" layer="21"/>
<wire x1="-19.812" y1="12.7" x2="-18.288" y2="12.7" width="0.1524" layer="21"/>
<wire x1="-18.288" y1="12.7" x2="-17.78" y2="12.192" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="-12.192" x2="-19.939" y2="-12.573" width="0.1524" layer="21"/>
<wire x1="-19.812" y1="-12.7" x2="-18.288" y2="-12.7" width="0.1524" layer="21"/>
<wire x1="-18.288" y1="-12.7" x2="-18.161" y2="-12.573" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="12.192" x2="-20.32" y2="-12.192" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="-12.192" x2="-16.51" y2="-12.192" width="0.1524" layer="21"/>
<wire x1="-16.002" y1="-12.7" x2="19.812" y2="-12.7" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="-12.192" x2="-17.78" y2="-12.1412" width="0.1524" layer="21"/>
<wire x1="-16.51" y1="-12.192" x2="-16.51" y2="-12.1412" width="0.1524" layer="21"/>
<wire x1="-19.939" y1="-12.573" x2="-18.161" y2="-12.573" width="0.1524" layer="21"/>
<wire x1="-19.939" y1="-12.573" x2="-19.812" y2="-12.7" width="0.1524" layer="21"/>
<wire x1="-18.161" y1="-12.573" x2="-17.78" y2="-12.192" width="0.1524" layer="21"/>
<wire x1="-16.51" y1="-12.192" x2="-16.129" y2="-12.573" width="0.1524" layer="21"/>
<wire x1="-16.129" y1="-12.573" x2="-16.002" y2="-12.7" width="0.1524" layer="21"/>
<wire x1="-19.812" y1="-12.7" x2="-19.812" y2="-12.6492" width="0.1524" layer="21"/>
<wire x1="-19.812" y1="-12.6492" x2="-18.288" y2="-12.6492" width="0.1524" layer="21"/>
<wire x1="-16.002" y1="-12.7" x2="-16.002" y2="-12.6492" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="-12.065" x2="-16.51" y2="-12.065" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="-12.1412" x2="-16.51" y2="-12.1412" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="-12.1412" x2="-17.78" y2="-12.065" width="0.1524" layer="21"/>
<wire x1="-16.51" y1="-12.1412" x2="-16.51" y2="-12.065" width="0.1524" layer="21"/>
<wire x1="-16.002" y1="-12.6492" x2="19.812" y2="-12.6492" width="0.1524" layer="21"/>
<wire x1="19.812" y1="-12.7" x2="19.939" y2="-12.573" width="0.1524" layer="21"/>
<wire x1="-16.129" y1="-12.573" x2="19.939" y2="-12.573" width="0.1524" layer="21"/>
<wire x1="19.939" y1="-12.573" x2="20.32" y2="-12.192" width="0.1524" layer="21"/>
<wire x1="-16.51" y1="12.192" x2="-16.002" y2="12.7" width="0.1524" layer="21"/>
<wire x1="-16.002" y1="12.7" x2="19.812" y2="12.7" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="12.192" x2="-17.78" y2="12.192" width="0.1524" layer="21"/>
<wire x1="-16.51" y1="12.192" x2="20.32" y2="12.192" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="-12.065" x2="-17.78" y2="11.684" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="11.684" x2="-17.78" y2="12.192" width="0.1524" layer="21"/>
<wire x1="-16.51" y1="-12.065" x2="-16.51" y2="11.684" width="0.1524" layer="21"/>
<wire x1="-16.51" y1="11.684" x2="-16.51" y2="12.192" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="12.192" x2="-16.51" y2="12.192" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="11.684" x2="-16.51" y2="11.684" width="0.1524" layer="21"/>
<wire x1="-19.812" y1="12.573" x2="-18.288" y2="12.573" width="0.3048" layer="21"/>
<wire x1="-16.002" y1="12.573" x2="19.812" y2="12.573" width="0.3048" layer="21"/>
<wire x1="19.812" y1="12.7" x2="20.32" y2="12.192" width="0.1524" layer="21"/>
<wire x1="20.32" y1="12.192" x2="20.32" y2="-12.192" width="0.1524" layer="21"/>
<wire x1="-3.556" y1="-1.524" x2="-3.048" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-3.048" y1="-1.524" x2="-3.048" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-3.048" y1="1.524" x2="-3.556" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-4.318" y1="1.27" x2="-4.318" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-4.699" y1="0.889" x2="-3.937" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-3.556" y1="1.524" x2="-3.556" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.556" y1="0" x2="-3.556" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-2.159" y1="0" x2="19.05" y2="0" width="0.1524" layer="21"/>
<wire x1="-15.24" y1="0" x2="-3.556" y2="0" width="0.1524" layer="21"/>
<wire x1="-17.653" y1="12.065" x2="-16.637" y2="12.065" width="0.3048" layer="21"/>
<wire x1="-20.066" y1="12.319" x2="-18.034" y2="12.319" width="0.3048" layer="21"/>
<wire x1="-17.653" y1="11.811" x2="-16.637" y2="11.811" width="0.3048" layer="21"/>
<wire x1="-16.256" y1="12.319" x2="20.066" y2="12.319" width="0.3048" layer="21"/>
<wire x1="22.86" y1="0" x2="20.955" y2="0" width="0.762" layer="51"/>
<wire x1="-22.86" y1="0" x2="-20.955" y2="0" width="0.762" layer="51"/>
<pad name="+" x="-22.86" y="0" drill="1.1176" diameter="3.81"/>
<pad name="-" x="22.86" y="0" drill="1.1176" diameter="3.81" shape="octagon"/>
<text x="-19.558" y="13.208" size="1.778" layer="25">&gt;NAME</text>
<text x="-1.2446" y="-2.4892" size="1.778" layer="27">&gt;VALUE</text>
<rectangle x1="-2.54" y1="-1.524" x2="-2.032" y2="1.524" layer="21"/>
<rectangle x1="20.32" y1="-0.381" x2="20.828" y2="0.381" layer="21"/>
<rectangle x1="-20.828" y1="-0.381" x2="-20.32" y2="0.381" layer="21"/>
</package>
<package name="E5-10,5">
<description>&lt;b&gt;ELECTROLYTIC CAPACITOR&lt;/b&gt;&lt;p&gt;
 grid 5.08 mm, diameter 10.5 mm</description>
<wire x1="-1.143" y1="0" x2="-0.889" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.889" y1="0" x2="-0.889" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="-0.889" y1="-1.143" x2="-0.254" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="-0.254" y1="-1.143" x2="-0.254" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-0.254" y1="1.143" x2="-0.889" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-0.889" y1="1.143" x2="-0.889" y2="0" width="0.1524" layer="21"/>
<wire x1="0.635" y1="0" x2="1.143" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="1.651" x2="-3.81" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="1.27" x2="-4.191" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.143" y1="0" x2="1.651" y2="0" width="0.1524" layer="51"/>
<wire x1="-1.651" y1="0" x2="-1.143" y2="0" width="0.1524" layer="51"/>
<circle x="0" y="0" radius="5.08" width="0.1524" layer="21"/>
<pad name="+" x="-2.54" y="0" drill="1.016" diameter="2.54"/>
<pad name="-" x="2.54" y="0" drill="1.016" diameter="2.54" shape="octagon"/>
<text x="4.699" y="2.7432" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.1242" y="-3.2258" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="0.254" y1="-1.143" x2="0.889" y2="1.143" layer="21"/>
</package>
<package name="E5-13">
<description>&lt;b&gt;ELECTROLYTIC CAPACITOR&lt;/b&gt;&lt;p&gt;
 grid 5.08 mm, diameter 13 mm</description>
<wire x1="-1.143" y1="0" x2="-0.889" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.889" y1="0" x2="-0.889" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.889" y1="-1.27" x2="-0.254" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.254" y1="-1.27" x2="-0.254" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-0.254" y1="1.27" x2="-0.889" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-0.889" y1="1.27" x2="-0.889" y2="0" width="0.1524" layer="21"/>
<wire x1="0.635" y1="0" x2="1.143" y2="0" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="0" x2="-4.445" y2="0" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-0.635" x2="-5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.016" y1="0" x2="1.524" y2="0" width="0.1524" layer="51"/>
<wire x1="-1.651" y1="0" x2="-1.143" y2="0" width="0.1524" layer="51"/>
<circle x="0" y="0" radius="6.985" width="0.1524" layer="21"/>
<pad name="+" x="-2.54" y="0" drill="1.016" diameter="2.54"/>
<pad name="-" x="2.54" y="0" drill="1.016" diameter="2.54" shape="octagon"/>
<text x="6.3754" y="4.1148" size="1.778" layer="25">&gt;NAME</text>
<text x="-4.572" y="-3.937" size="1.778" layer="27">&gt;VALUE</text>
<rectangle x1="0.254" y1="-1.27" x2="0.889" y2="1.27" layer="21"/>
</package>
<package name="E5-4">
<description>&lt;b&gt;ELECTROLYTIC CAPACITOR&lt;/b&gt;&lt;p&gt;
 grid 5.05 mm, diameter 4 mm</description>
<wire x1="-1.6985" y1="1.1153" x2="1.6985" y2="1.1153" width="0.1524" layer="21" curve="-113.419"/>
<wire x1="-1.6985" y1="-1.1153" x2="1.6985" y2="-1.1153" width="0.1524" layer="21" curve="113.419"/>
<wire x1="-1.6985" y1="1.1153" x2="-1.6985" y2="-1.1153" width="0.1524" layer="51" curve="66.5809"/>
<wire x1="1.6985" y1="-1.1153" x2="1.6985" y2="1.1153" width="0.1524" layer="51" curve="66.5809"/>
<wire x1="-1.397" y1="0" x2="-0.762" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.762" y1="0" x2="-0.762" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-0.762" y1="-1.016" x2="-0.254" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-0.254" y1="-1.016" x2="-0.254" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-0.254" y1="1.016" x2="-0.762" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-0.762" y1="1.016" x2="-0.762" y2="0" width="0.1524" layer="21"/>
<wire x1="0.635" y1="0" x2="1.397" y2="0" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="0.635" x2="-1.016" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="0.381" x2="-1.27" y2="0.889" width="0.1524" layer="21"/>
<pad name="+" x="-2.54" y="0" drill="0.8128" diameter="1.905"/>
<pad name="-" x="2.54" y="0" drill="0.8128" diameter="1.905" shape="octagon"/>
<text x="2.159" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="2.159" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="0.254" y1="-1.016" x2="0.762" y2="1.016" layer="21"/>
</package>
<package name="E5-6">
<description>&lt;b&gt;ELECTROLYTIC CAPACITOR&lt;/b&gt;&lt;p&gt;
 grid 5.08 mm, diameter 6 mm</description>
<wire x1="-2.8702" y1="1.3574" x2="2.8702" y2="1.3574" width="0.1524" layer="21" curve="-129.378"/>
<wire x1="-2.8702" y1="-1.3574" x2="2.8702" y2="-1.3574" width="0.1524" layer="21" curve="129.378"/>
<wire x1="-2.8702" y1="1.3574" x2="-2.8702" y2="-1.3574" width="0.1524" layer="51" curve="50.6216"/>
<wire x1="2.8702" y1="-1.3574" x2="2.8702" y2="1.3574" width="0.1524" layer="51" curve="50.6216"/>
<wire x1="-1.397" y1="0" x2="-0.762" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.762" y1="0" x2="-0.762" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-0.762" y1="-1.016" x2="-0.254" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-0.254" y1="-1.016" x2="-0.254" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-0.254" y1="1.016" x2="-0.762" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-0.762" y1="1.016" x2="-0.762" y2="0" width="0.1524" layer="21"/>
<wire x1="0.635" y1="0" x2="1.397" y2="0" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="0.635" x2="-1.016" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="0.381" x2="-1.27" y2="0.889" width="0.1524" layer="21"/>
<pad name="+" x="-2.54" y="0" drill="0.8128" diameter="1.905"/>
<pad name="-" x="2.54" y="0" drill="0.8128" diameter="1.905" shape="octagon"/>
<text x="3.048" y="1.778" size="1.27" layer="25">&gt;NAME</text>
<text x="3.048" y="-2.921" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="0.254" y1="-1.016" x2="0.762" y2="1.016" layer="21"/>
</package>
<package name="E5-8,5">
<description>&lt;b&gt;ELECTROLYTIC CAPACITOR&lt;/b&gt;&lt;p&gt;
 grid 5.08 mm, diameter 8.5 mm</description>
<wire x1="-1.143" y1="0" x2="-0.889" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.889" y1="0" x2="-0.889" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="-0.889" y1="-1.143" x2="-0.254" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="-0.254" y1="-1.143" x2="-0.254" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-0.254" y1="1.143" x2="-0.889" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-0.889" y1="1.143" x2="-0.889" y2="0" width="0.1524" layer="21"/>
<wire x1="0.635" y1="0" x2="1.143" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.302" y1="2.032" x2="-3.302" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-3.683" y1="1.651" x2="-2.921" y2="1.651" width="0.1524" layer="21"/>
<wire x1="1.143" y1="0" x2="1.651" y2="0" width="0.1524" layer="51"/>
<wire x1="-1.651" y1="0" x2="-1.143" y2="0" width="0.1524" layer="51"/>
<circle x="0" y="0" radius="4.445" width="0.1524" layer="21"/>
<pad name="+" x="-2.54" y="0" drill="1.016" diameter="2.54"/>
<pad name="-" x="2.54" y="0" drill="1.016" diameter="2.54" shape="octagon"/>
<text x="4.1402" y="2.286" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.5146" y="-3.0226" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="0.254" y1="-1.143" x2="0.889" y2="1.143" layer="21"/>
</package>
<package name="E50-25">
<description>&lt;b&gt;ELECTROLYTIC CAPACITOR&lt;/b&gt;&lt;p&gt;
 grid 50 mm, diameter 25 mm</description>
<wire x1="22.225" y1="-12.192" x2="21.844" y2="-12.573" width="0.1524" layer="21"/>
<wire x1="21.717" y1="-12.7" x2="-18.542" y2="-12.7" width="0.1524" layer="21"/>
<wire x1="21.717" y1="12.7" x2="22.225" y2="12.192" width="0.1524" layer="21"/>
<wire x1="22.225" y1="12.192" x2="22.225" y2="-12.192" width="0.1524" layer="21"/>
<wire x1="-22.86" y1="12.192" x2="-22.352" y2="12.7" width="0.1524" layer="21"/>
<wire x1="-22.86" y1="12.192" x2="-22.86" y2="-12.192" width="0.1524" layer="21"/>
<wire x1="-22.352" y1="12.7" x2="-20.828" y2="12.7" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="12.192" x2="-20.828" y2="12.7" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="12.192" x2="-19.05" y2="12.192" width="0.1524" layer="21"/>
<wire x1="-18.542" y1="12.7" x2="-19.05" y2="12.192" width="0.1524" layer="21"/>
<wire x1="-18.542" y1="12.7" x2="21.717" y2="12.7" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="12.192" x2="-20.32" y2="11.684" width="0.1524" layer="21"/>
<wire x1="-19.05" y1="12.192" x2="-19.05" y2="11.684" width="0.1524" layer="21"/>
<wire x1="-22.86" y1="12.192" x2="-20.32" y2="12.192" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="11.684" x2="-19.05" y2="11.684" width="0.1524" layer="21"/>
<wire x1="-19.05" y1="12.192" x2="22.225" y2="12.192" width="0.1524" layer="21"/>
<wire x1="-20.193" y1="12.065" x2="-19.177" y2="12.065" width="0.3048" layer="21"/>
<wire x1="-20.193" y1="11.811" x2="-19.177" y2="11.811" width="0.3048" layer="21"/>
<wire x1="-22.352" y1="12.573" x2="-20.828" y2="12.573" width="0.3048" layer="21"/>
<wire x1="-22.606" y1="12.319" x2="-22.479" y2="12.319" width="0.3048" layer="21"/>
<wire x1="-22.479" y1="12.319" x2="-22.479" y2="12.446" width="0.3048" layer="21"/>
<wire x1="-22.479" y1="12.319" x2="-20.701" y2="12.319" width="0.3048" layer="21"/>
<wire x1="-20.701" y1="12.319" x2="-20.701" y2="12.446" width="0.3048" layer="21"/>
<wire x1="-20.701" y1="12.319" x2="-20.574" y2="12.319" width="0.3048" layer="21"/>
<wire x1="-18.542" y1="12.573" x2="21.717" y2="12.573" width="0.3048" layer="21"/>
<wire x1="-18.796" y1="12.319" x2="-18.669" y2="12.319" width="0.3048" layer="21"/>
<wire x1="-18.669" y1="12.319" x2="-18.669" y2="12.446" width="0.3048" layer="21"/>
<wire x1="-18.669" y1="12.319" x2="21.971" y2="12.319" width="0.3048" layer="21"/>
<wire x1="-22.86" y1="-12.192" x2="-22.479" y2="-12.573" width="0.1524" layer="21"/>
<wire x1="-22.352" y1="-12.7" x2="-20.828" y2="-12.7" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="-12.192" x2="-20.701" y2="-12.573" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="-12.192" x2="-19.05" y2="-12.192" width="0.1524" layer="21"/>
<wire x1="-19.05" y1="-12.192" x2="-18.669" y2="-12.573" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="11.684" x2="-20.32" y2="-12.065" width="0.1524" layer="21"/>
<wire x1="-19.05" y1="11.684" x2="-19.05" y2="-12.065" width="0.1524" layer="21"/>
<wire x1="-22.479" y1="-12.573" x2="-20.701" y2="-12.573" width="0.1524" layer="21"/>
<wire x1="-22.479" y1="-12.573" x2="-22.352" y2="-12.7" width="0.1524" layer="21"/>
<wire x1="-20.701" y1="-12.573" x2="-20.828" y2="-12.7" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="-12.065" x2="-19.05" y2="-12.065" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="-12.065" x2="-20.32" y2="-12.1412" width="0.1524" layer="21"/>
<wire x1="-19.05" y1="-12.065" x2="-19.05" y2="-12.1412" width="0.1524" layer="21"/>
<wire x1="-18.669" y1="-12.573" x2="21.844" y2="-12.573" width="0.1524" layer="21"/>
<wire x1="-18.669" y1="-12.573" x2="-18.542" y2="-12.7" width="0.1524" layer="21"/>
<wire x1="-22.352" y1="-12.7" x2="-22.352" y2="-12.6492" width="0.1524" layer="21"/>
<wire x1="-22.352" y1="-12.6492" x2="-20.828" y2="-12.6492" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="-12.1412" x2="-19.05" y2="-12.1412" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="-12.1412" x2="-20.32" y2="-12.192" width="0.1524" layer="21"/>
<wire x1="-19.05" y1="-12.1412" x2="-19.05" y2="-12.192" width="0.1524" layer="21"/>
<wire x1="-18.542" y1="-12.7" x2="-18.542" y2="-12.6492" width="0.1524" layer="21"/>
<wire x1="-18.542" y1="-12.6492" x2="21.717" y2="-12.6492" width="0.1524" layer="21"/>
<wire x1="21.844" y1="-12.573" x2="21.717" y2="-12.7" width="0.1524" layer="21"/>
<wire x1="-6.096" y1="-1.524" x2="-5.588" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-5.588" y1="-1.524" x2="-5.588" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-5.588" y1="1.524" x2="-6.096" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-6.858" y1="1.27" x2="-6.858" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-7.239" y1="0.889" x2="-6.477" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-6.096" y1="1.524" x2="-6.096" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.096" y1="0" x2="-6.096" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-4.699" y1="0" x2="20.955" y2="0" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="0" x2="-6.096" y2="0" width="0.1524" layer="21"/>
<wire x1="24.765" y1="0" x2="22.86" y2="0" width="0.762" layer="51"/>
<wire x1="-25.4" y1="0" x2="-23.495" y2="0" width="0.762" layer="51"/>
<pad name="+" x="-25.4" y="0" drill="1.1176" diameter="3.81"/>
<pad name="-" x="24.765" y="0" drill="1.1176" diameter="3.81" shape="octagon"/>
<text x="-22.098" y="13.208" size="1.778" layer="25">&gt;NAME</text>
<text x="-3.7846" y="-2.4892" size="1.778" layer="27">&gt;VALUE</text>
<rectangle x1="-5.08" y1="-1.524" x2="-4.572" y2="1.524" layer="21"/>
<rectangle x1="22.225" y1="-0.381" x2="22.733" y2="0.381" layer="21"/>
<rectangle x1="-23.368" y1="-0.381" x2="-22.86" y2="0.381" layer="21"/>
</package>
<package name="E50-30">
<description>&lt;b&gt;ELECTROLYTIC CAPACITOR&lt;/b&gt;&lt;p&gt;
 grid 50 mm, diameter 30 mm</description>
<wire x1="22.225" y1="-14.732" x2="21.844" y2="-15.113" width="0.1524" layer="21"/>
<wire x1="21.717" y1="-15.24" x2="-18.542" y2="-15.24" width="0.1524" layer="21"/>
<wire x1="21.717" y1="15.24" x2="22.225" y2="14.732" width="0.1524" layer="21"/>
<wire x1="22.225" y1="14.732" x2="22.225" y2="-14.732" width="0.1524" layer="21"/>
<wire x1="-22.86" y1="14.732" x2="-22.352" y2="15.24" width="0.1524" layer="21"/>
<wire x1="-22.86" y1="14.732" x2="-22.86" y2="-14.732" width="0.1524" layer="21"/>
<wire x1="-22.352" y1="15.24" x2="-20.828" y2="15.24" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="14.732" x2="-20.828" y2="15.24" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="14.732" x2="-19.05" y2="14.732" width="0.1524" layer="21"/>
<wire x1="-18.542" y1="15.24" x2="-19.05" y2="14.732" width="0.1524" layer="21"/>
<wire x1="-18.542" y1="15.24" x2="21.717" y2="15.24" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="14.732" x2="-20.32" y2="14.224" width="0.1524" layer="21"/>
<wire x1="-19.05" y1="14.732" x2="-19.05" y2="14.224" width="0.1524" layer="21"/>
<wire x1="-22.86" y1="14.732" x2="-20.32" y2="14.732" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="14.224" x2="-19.05" y2="14.224" width="0.1524" layer="21"/>
<wire x1="-19.05" y1="14.732" x2="22.225" y2="14.732" width="0.1524" layer="21"/>
<wire x1="-20.193" y1="14.605" x2="-19.177" y2="14.605" width="0.3048" layer="21"/>
<wire x1="-20.193" y1="14.351" x2="-19.177" y2="14.351" width="0.3048" layer="21"/>
<wire x1="-22.352" y1="15.113" x2="-20.828" y2="15.113" width="0.3048" layer="21"/>
<wire x1="-22.606" y1="14.859" x2="-22.479" y2="14.859" width="0.3048" layer="21"/>
<wire x1="-22.479" y1="14.859" x2="-22.479" y2="14.986" width="0.3048" layer="21"/>
<wire x1="-22.479" y1="14.859" x2="-20.701" y2="14.859" width="0.3048" layer="21"/>
<wire x1="-20.701" y1="14.859" x2="-20.701" y2="14.986" width="0.3048" layer="21"/>
<wire x1="-20.701" y1="14.859" x2="-20.574" y2="14.859" width="0.3048" layer="21"/>
<wire x1="-18.542" y1="15.113" x2="21.717" y2="15.113" width="0.3048" layer="21"/>
<wire x1="-18.796" y1="14.859" x2="-18.669" y2="14.859" width="0.3048" layer="21"/>
<wire x1="-18.669" y1="14.859" x2="-18.669" y2="14.986" width="0.3048" layer="21"/>
<wire x1="-18.669" y1="14.859" x2="21.971" y2="14.859" width="0.3048" layer="21"/>
<wire x1="-22.86" y1="-14.732" x2="-22.479" y2="-15.113" width="0.1524" layer="21"/>
<wire x1="-22.352" y1="-15.24" x2="-20.828" y2="-15.24" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="-14.732" x2="-20.701" y2="-15.113" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="-14.732" x2="-19.05" y2="-14.732" width="0.1524" layer="21"/>
<wire x1="-19.05" y1="-14.732" x2="-18.669" y2="-15.113" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="14.224" x2="-20.32" y2="-14.605" width="0.1524" layer="21"/>
<wire x1="-19.05" y1="14.224" x2="-19.05" y2="-14.605" width="0.1524" layer="21"/>
<wire x1="-22.479" y1="-15.113" x2="-20.701" y2="-15.113" width="0.1524" layer="21"/>
<wire x1="-22.479" y1="-15.113" x2="-22.352" y2="-15.24" width="0.1524" layer="21"/>
<wire x1="-20.701" y1="-15.113" x2="-20.828" y2="-15.24" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="-14.605" x2="-19.05" y2="-14.605" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="-14.605" x2="-20.32" y2="-14.6812" width="0.1524" layer="21"/>
<wire x1="-19.05" y1="-14.605" x2="-19.05" y2="-14.6812" width="0.1524" layer="21"/>
<wire x1="-18.669" y1="-15.113" x2="21.844" y2="-15.113" width="0.1524" layer="21"/>
<wire x1="-18.669" y1="-15.113" x2="-18.542" y2="-15.24" width="0.1524" layer="21"/>
<wire x1="-22.352" y1="-15.24" x2="-22.352" y2="-15.1892" width="0.1524" layer="21"/>
<wire x1="-22.352" y1="-15.1892" x2="-20.828" y2="-15.1892" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="-14.6812" x2="-19.05" y2="-14.6812" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="-14.6812" x2="-20.32" y2="-14.732" width="0.1524" layer="21"/>
<wire x1="-19.05" y1="-14.6812" x2="-19.05" y2="-14.732" width="0.1524" layer="21"/>
<wire x1="-18.542" y1="-15.24" x2="-18.542" y2="-15.1892" width="0.1524" layer="21"/>
<wire x1="-18.542" y1="-15.1892" x2="21.717" y2="-15.1892" width="0.1524" layer="21"/>
<wire x1="21.844" y1="-15.113" x2="21.717" y2="-15.24" width="0.1524" layer="21"/>
<wire x1="-6.096" y1="-1.524" x2="-5.588" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-5.588" y1="-1.524" x2="-5.588" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-5.588" y1="1.524" x2="-6.096" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-6.858" y1="1.27" x2="-6.858" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-7.239" y1="0.889" x2="-6.477" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-6.096" y1="1.524" x2="-6.096" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.096" y1="0" x2="-6.096" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-4.699" y1="0" x2="20.955" y2="0" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="0" x2="-6.096" y2="0" width="0.1524" layer="21"/>
<wire x1="24.765" y1="0" x2="22.86" y2="0" width="0.762" layer="51"/>
<wire x1="-25.4" y1="0" x2="-23.495" y2="0" width="0.762" layer="51"/>
<pad name="+" x="-25.4" y="0" drill="1.1938" diameter="3.81"/>
<pad name="-" x="24.765" y="0" drill="1.1938" diameter="3.81" shape="octagon"/>
<text x="-21.971" y="15.748" size="1.778" layer="25">&gt;NAME</text>
<text x="-3.7846" y="-2.4892" size="1.778" layer="27">&gt;VALUE</text>
<rectangle x1="-5.08" y1="-1.524" x2="-4.572" y2="1.524" layer="21"/>
<rectangle x1="22.225" y1="-0.381" x2="22.733" y2="0.381" layer="21"/>
<rectangle x1="-23.368" y1="-0.381" x2="-22.86" y2="0.381" layer="21"/>
</package>
<package name="E55-25">
<description>&lt;b&gt;ELECTROLYTIC CAPACITOR&lt;/b&gt;&lt;p&gt;
 grid 55 mm, diameter 25 mm</description>
<wire x1="-25.4" y1="12.192" x2="-24.892" y2="12.7" width="0.1524" layer="21"/>
<wire x1="-24.892" y1="12.7" x2="-23.368" y2="12.7" width="0.1524" layer="21"/>
<wire x1="-23.368" y1="12.7" x2="-22.86" y2="12.192" width="0.1524" layer="21"/>
<wire x1="-25.4" y1="-12.192" x2="-25.019" y2="-12.573" width="0.1524" layer="21"/>
<wire x1="-24.892" y1="-12.7" x2="-23.368" y2="-12.7" width="0.1524" layer="21"/>
<wire x1="-23.368" y1="-12.7" x2="-23.241" y2="-12.573" width="0.1524" layer="21"/>
<wire x1="-25.4" y1="12.192" x2="-25.4" y2="-12.192" width="0.1524" layer="21"/>
<wire x1="-22.86" y1="-12.192" x2="-21.59" y2="-12.192" width="0.1524" layer="21"/>
<wire x1="-21.082" y1="-12.7" x2="24.892" y2="-12.7" width="0.1524" layer="21"/>
<wire x1="-22.86" y1="-12.192" x2="-22.86" y2="-12.1412" width="0.1524" layer="21"/>
<wire x1="-21.59" y1="-12.192" x2="-21.59" y2="-12.1412" width="0.1524" layer="21"/>
<wire x1="-25.019" y1="-12.573" x2="-23.241" y2="-12.573" width="0.1524" layer="21"/>
<wire x1="-25.019" y1="-12.573" x2="-24.892" y2="-12.7" width="0.1524" layer="21"/>
<wire x1="-23.241" y1="-12.573" x2="-22.86" y2="-12.192" width="0.1524" layer="21"/>
<wire x1="-21.59" y1="-12.192" x2="-21.209" y2="-12.573" width="0.1524" layer="21"/>
<wire x1="-21.209" y1="-12.573" x2="-21.082" y2="-12.7" width="0.1524" layer="21"/>
<wire x1="-24.892" y1="-12.7" x2="-24.892" y2="-12.6492" width="0.1524" layer="21"/>
<wire x1="-24.892" y1="-12.6492" x2="-23.368" y2="-12.6492" width="0.1524" layer="21"/>
<wire x1="-21.082" y1="-12.7" x2="-21.082" y2="-12.6492" width="0.1524" layer="21"/>
<wire x1="-22.86" y1="-12.065" x2="-21.59" y2="-12.065" width="0.1524" layer="21"/>
<wire x1="-22.86" y1="-12.1412" x2="-21.59" y2="-12.1412" width="0.1524" layer="21"/>
<wire x1="-22.86" y1="-12.1412" x2="-22.86" y2="-12.065" width="0.1524" layer="21"/>
<wire x1="-21.59" y1="-12.1412" x2="-21.59" y2="-12.065" width="0.1524" layer="21"/>
<wire x1="-21.082" y1="-12.6492" x2="24.892" y2="-12.6492" width="0.1524" layer="21"/>
<wire x1="24.892" y1="-12.7" x2="25.019" y2="-12.573" width="0.1524" layer="21"/>
<wire x1="-21.209" y1="-12.573" x2="25.019" y2="-12.573" width="0.1524" layer="21"/>
<wire x1="25.019" y1="-12.573" x2="25.4" y2="-12.192" width="0.1524" layer="21"/>
<wire x1="-21.59" y1="12.192" x2="-21.082" y2="12.7" width="0.1524" layer="21"/>
<wire x1="-21.082" y1="12.7" x2="24.892" y2="12.7" width="0.1524" layer="21"/>
<wire x1="-25.4" y1="12.192" x2="-22.86" y2="12.192" width="0.1524" layer="21"/>
<wire x1="-21.59" y1="12.192" x2="25.4" y2="12.192" width="0.1524" layer="21"/>
<wire x1="-22.86" y1="-12.065" x2="-22.86" y2="11.684" width="0.1524" layer="21"/>
<wire x1="-22.86" y1="11.684" x2="-22.86" y2="12.192" width="0.1524" layer="21"/>
<wire x1="-21.59" y1="-12.065" x2="-21.59" y2="11.684" width="0.1524" layer="21"/>
<wire x1="-21.59" y1="11.684" x2="-21.59" y2="12.192" width="0.1524" layer="21"/>
<wire x1="-22.86" y1="12.192" x2="-21.59" y2="12.192" width="0.1524" layer="21"/>
<wire x1="-22.86" y1="11.684" x2="-21.59" y2="11.684" width="0.1524" layer="21"/>
<wire x1="-24.892" y1="12.573" x2="-23.368" y2="12.573" width="0.3048" layer="21"/>
<wire x1="-21.082" y1="12.573" x2="24.892" y2="12.573" width="0.3048" layer="21"/>
<wire x1="24.892" y1="12.7" x2="25.4" y2="12.192" width="0.1524" layer="21"/>
<wire x1="25.4" y1="12.192" x2="25.4" y2="-12.192" width="0.1524" layer="21"/>
<wire x1="-3.556" y1="-1.524" x2="-3.048" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-3.048" y1="-1.524" x2="-3.048" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-3.048" y1="1.524" x2="-3.556" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-4.318" y1="1.27" x2="-4.318" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-4.699" y1="0.889" x2="-3.937" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-3.556" y1="1.524" x2="-3.556" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.556" y1="0" x2="-3.556" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-2.159" y1="0" x2="24.13" y2="0" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="0" x2="-3.556" y2="0" width="0.1524" layer="21"/>
<wire x1="-22.733" y1="12.065" x2="-21.717" y2="12.065" width="0.3048" layer="21"/>
<wire x1="-25.146" y1="12.319" x2="-23.114" y2="12.319" width="0.3048" layer="21"/>
<wire x1="-22.733" y1="11.811" x2="-21.717" y2="11.811" width="0.3048" layer="21"/>
<wire x1="-21.336" y1="12.319" x2="25.146" y2="12.319" width="0.3048" layer="21"/>
<wire x1="27.94" y1="0" x2="26.035" y2="0" width="0.762" layer="51"/>
<wire x1="-27.94" y1="0" x2="-26.035" y2="0" width="0.762" layer="51"/>
<pad name="+" x="-27.94" y="0" drill="1.1176" diameter="3.81"/>
<pad name="-" x="27.94" y="0" drill="1.1176" diameter="3.81" shape="octagon"/>
<text x="-24.638" y="13.208" size="1.778" layer="25">&gt;NAME</text>
<text x="-1.2446" y="-2.4892" size="1.778" layer="27">&gt;VALUE</text>
<rectangle x1="-2.54" y1="-1.524" x2="-2.032" y2="1.524" layer="21"/>
<rectangle x1="25.4" y1="-0.381" x2="25.908" y2="0.381" layer="21"/>
<rectangle x1="-25.908" y1="-0.381" x2="-25.4" y2="0.381" layer="21"/>
</package>
<package name="E55-30">
<description>&lt;b&gt;ELECTROLYTIC CAPACITOR&lt;/b&gt;&lt;p&gt;
 grid 55 mm, diameter 30 mm</description>
<wire x1="-25.4" y1="14.732" x2="-24.892" y2="15.24" width="0.1524" layer="21"/>
<wire x1="-24.892" y1="15.24" x2="-23.368" y2="15.24" width="0.1524" layer="21"/>
<wire x1="-23.368" y1="15.24" x2="-22.86" y2="14.732" width="0.1524" layer="21"/>
<wire x1="-25.4" y1="-14.732" x2="-25.019" y2="-15.113" width="0.1524" layer="21"/>
<wire x1="-24.892" y1="-15.24" x2="-23.368" y2="-15.24" width="0.1524" layer="21"/>
<wire x1="-23.368" y1="-15.24" x2="-23.241" y2="-15.113" width="0.1524" layer="21"/>
<wire x1="-25.4" y1="14.732" x2="-25.4" y2="-14.732" width="0.1524" layer="21"/>
<wire x1="-22.86" y1="-14.732" x2="-21.59" y2="-14.732" width="0.1524" layer="21"/>
<wire x1="-21.082" y1="-15.24" x2="24.892" y2="-15.24" width="0.1524" layer="21"/>
<wire x1="-22.86" y1="-14.732" x2="-22.86" y2="-14.6812" width="0.1524" layer="21"/>
<wire x1="-21.59" y1="-14.732" x2="-21.59" y2="-14.6812" width="0.1524" layer="21"/>
<wire x1="-25.019" y1="-15.113" x2="-23.241" y2="-15.113" width="0.1524" layer="21"/>
<wire x1="-25.019" y1="-15.113" x2="-24.892" y2="-15.24" width="0.1524" layer="21"/>
<wire x1="-23.241" y1="-15.113" x2="-22.86" y2="-14.732" width="0.1524" layer="21"/>
<wire x1="-21.59" y1="-14.732" x2="-21.209" y2="-15.113" width="0.1524" layer="21"/>
<wire x1="-21.209" y1="-15.113" x2="-21.082" y2="-15.24" width="0.1524" layer="21"/>
<wire x1="-24.892" y1="-15.24" x2="-24.892" y2="-15.1892" width="0.1524" layer="21"/>
<wire x1="-24.892" y1="-15.1892" x2="-23.368" y2="-15.1892" width="0.1524" layer="21"/>
<wire x1="-21.082" y1="-15.24" x2="-21.082" y2="-15.1892" width="0.1524" layer="21"/>
<wire x1="-22.86" y1="-14.605" x2="-21.59" y2="-14.605" width="0.1524" layer="21"/>
<wire x1="-22.86" y1="-14.6812" x2="-21.59" y2="-14.6812" width="0.1524" layer="21"/>
<wire x1="-22.86" y1="-14.6812" x2="-22.86" y2="-14.605" width="0.1524" layer="21"/>
<wire x1="-21.59" y1="-14.6812" x2="-21.59" y2="-14.605" width="0.1524" layer="21"/>
<wire x1="-21.082" y1="-15.1892" x2="24.892" y2="-15.1892" width="0.1524" layer="21"/>
<wire x1="24.892" y1="-15.24" x2="25.019" y2="-15.113" width="0.1524" layer="21"/>
<wire x1="-21.209" y1="-15.113" x2="25.019" y2="-15.113" width="0.1524" layer="21"/>
<wire x1="25.019" y1="-15.113" x2="25.4" y2="-14.732" width="0.1524" layer="21"/>
<wire x1="-21.59" y1="14.732" x2="-21.082" y2="15.24" width="0.1524" layer="21"/>
<wire x1="-21.082" y1="15.24" x2="24.892" y2="15.24" width="0.1524" layer="21"/>
<wire x1="-25.4" y1="14.732" x2="-22.86" y2="14.732" width="0.1524" layer="21"/>
<wire x1="-21.59" y1="14.732" x2="25.4" y2="14.732" width="0.1524" layer="21"/>
<wire x1="-22.86" y1="-14.605" x2="-22.86" y2="14.224" width="0.1524" layer="21"/>
<wire x1="-22.86" y1="14.224" x2="-22.86" y2="14.732" width="0.1524" layer="21"/>
<wire x1="-21.59" y1="-14.605" x2="-21.59" y2="14.224" width="0.1524" layer="21"/>
<wire x1="-21.59" y1="14.224" x2="-21.59" y2="14.732" width="0.1524" layer="21"/>
<wire x1="-22.86" y1="14.732" x2="-21.59" y2="14.732" width="0.1524" layer="21"/>
<wire x1="-22.86" y1="14.224" x2="-21.59" y2="14.224" width="0.1524" layer="21"/>
<wire x1="-24.892" y1="15.113" x2="-23.368" y2="15.113" width="0.3048" layer="21"/>
<wire x1="-21.082" y1="15.113" x2="24.892" y2="15.113" width="0.3048" layer="21"/>
<wire x1="24.892" y1="15.24" x2="25.4" y2="14.732" width="0.1524" layer="21"/>
<wire x1="25.4" y1="14.732" x2="25.4" y2="-14.732" width="0.1524" layer="21"/>
<wire x1="-3.556" y1="-1.524" x2="-3.048" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-3.048" y1="-1.524" x2="-3.048" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-3.048" y1="1.524" x2="-3.556" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-4.318" y1="1.27" x2="-4.318" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-4.699" y1="0.889" x2="-3.937" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-3.556" y1="1.524" x2="-3.556" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.556" y1="0" x2="-3.556" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-2.159" y1="0" x2="24.13" y2="0" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="0" x2="-3.556" y2="0" width="0.1524" layer="21"/>
<wire x1="-22.733" y1="14.605" x2="-21.717" y2="14.605" width="0.3048" layer="21"/>
<wire x1="-25.146" y1="14.859" x2="-23.114" y2="14.859" width="0.3048" layer="21"/>
<wire x1="-22.733" y1="14.351" x2="-21.717" y2="14.351" width="0.3048" layer="21"/>
<wire x1="-21.336" y1="14.859" x2="25.146" y2="14.859" width="0.3048" layer="21"/>
<wire x1="27.94" y1="0" x2="26.035" y2="0" width="0.762" layer="51"/>
<wire x1="-27.94" y1="0" x2="-26.035" y2="0" width="0.762" layer="51"/>
<pad name="+" x="-27.94" y="0" drill="1.1938" diameter="3.81"/>
<pad name="-" x="27.94" y="0" drill="1.1938" diameter="3.81" shape="octagon"/>
<text x="-24.511" y="15.748" size="1.778" layer="25">&gt;NAME</text>
<text x="-1.2446" y="-2.4892" size="1.778" layer="27">&gt;VALUE</text>
<rectangle x1="-2.54" y1="-1.524" x2="-2.032" y2="1.524" layer="21"/>
<rectangle x1="25.4" y1="-0.381" x2="25.908" y2="0.381" layer="21"/>
<rectangle x1="-25.908" y1="-0.381" x2="-25.4" y2="0.381" layer="21"/>
</package>
<package name="E5R">
<description>&lt;b&gt;ELECTROLYTIC CAPACITOR&lt;/b&gt;&lt;p&gt;
 grid 5.08 mm, diameter 9 mm</description>
<wire x1="-0.889" y1="0" x2="0.9398" y2="0" width="0.6096" layer="21"/>
<wire x1="-5.588" y1="0" x2="-4.572" y2="0" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-0.508" x2="-5.08" y2="0.508" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0" x2="1.143" y2="0" width="0.6096" layer="51"/>
<wire x1="-2.54" y1="0" x2="-1.016" y2="0" width="0.6096" layer="51"/>
<wire x1="1.778" y1="-1.143" x2="1.7821" y2="1.1275" width="0.1524" layer="21" curve="-330.553"/>
<wire x1="1.7732" y1="1.1613" x2="1.7781" y2="-1.143" width="0.1524" layer="51" curve="-29.8953"/>
<pad name="+" x="-2.54" y="0" drill="0.8128" diameter="2.54"/>
<pad name="-" x="2.54" y="0" drill="0.8128" diameter="2.54" shape="octagon"/>
<text x="1.651" y="2.4638" size="1.27" layer="25">&gt;NAME</text>
<text x="-5.08" y="-3.048" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="E7,5-16">
<description>&lt;b&gt;ELECTROLYTIC CAPACITOR&lt;/b&gt;&lt;p&gt;
 grid 7.62 mm, diameter 16 mm</description>
<wire x1="0.635" y1="0" x2="2.032" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.889" y1="0" x2="-2.032" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.889" y1="1.905" x2="-0.889" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.889" y1="-1.905" x2="-0.254" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-0.254" y1="-1.905" x2="-0.254" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-0.254" y1="1.905" x2="-0.889" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-0.889" y1="0" x2="-0.889" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-7.493" y1="0" x2="-5.969" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="-0.762" x2="-6.731" y2="0.762" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="8.255" width="0.1524" layer="21"/>
<pad name="-" x="3.81" y="0" drill="1.016" diameter="3.1496" shape="octagon"/>
<pad name="+" x="-3.81" y="0" drill="1.016" diameter="3.1496"/>
<text x="7.874" y="3.81" size="1.778" layer="25">&gt;NAME</text>
<text x="-5.08" y="-4.2926" size="1.778" layer="27">&gt;VALUE</text>
<rectangle x1="0.254" y1="-1.905" x2="0.889" y2="1.905" layer="21"/>
</package>
<package name="E7,5-18">
<description>&lt;b&gt;ELECTROLYTIC CAPACITOR&lt;/b&gt;&lt;p&gt;
 grid 7.62 mm, diameter 18 mm</description>
<wire x1="0.635" y1="0" x2="2.032" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.889" y1="0" x2="-2.032" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.889" y1="1.905" x2="-0.889" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.889" y1="-1.905" x2="-0.254" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-0.254" y1="-1.905" x2="-0.254" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-0.254" y1="1.905" x2="-0.889" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-0.889" y1="0" x2="-0.889" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-7.493" y1="0" x2="-5.969" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="-0.762" x2="-6.731" y2="0.762" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="8.89" width="0.1524" layer="21"/>
<pad name="-" x="3.81" y="0" drill="1.016" diameter="3.1496" shape="octagon"/>
<pad name="+" x="-3.81" y="0" drill="1.016" diameter="3.1496"/>
<text x="8.001" y="5.08" size="1.778" layer="25">&gt;NAME</text>
<text x="-5.08" y="-4.2926" size="1.778" layer="27">&gt;VALUE</text>
<rectangle x1="0.254" y1="-1.905" x2="0.889" y2="1.905" layer="21"/>
</package>
<package name="E2,5-6E">
<description>&lt;b&gt;ELECTROLYTIC CAPACITOR&lt;/b&gt;&lt;p&gt;
 grid 2.54 mm, diameter 6 mm</description>
<wire x1="-2.159" y1="0" x2="-2.667" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="-0.254" x2="-2.413" y2="0.254" width="0.1524" layer="21"/>
<wire x1="-1.651" y1="0" x2="-0.762" y2="0" width="0.1524" layer="51"/>
<wire x1="-0.762" y1="0" x2="-0.762" y2="-1.27" width="0.1524" layer="51"/>
<wire x1="-0.762" y1="-1.27" x2="-0.254" y2="-1.27" width="0.1524" layer="51"/>
<wire x1="-0.254" y1="-1.27" x2="-0.254" y2="1.27" width="0.1524" layer="51"/>
<wire x1="-0.254" y1="1.27" x2="-0.762" y2="1.27" width="0.1524" layer="51"/>
<wire x1="-0.762" y1="1.27" x2="-0.762" y2="0" width="0.1524" layer="51"/>
<wire x1="0.635" y1="0" x2="1.651" y2="0" width="0.1524" layer="51"/>
<circle x="0" y="0" radius="2.794" width="0.1524" layer="21"/>
<pad name="-" x="1.27" y="0" drill="0.8128" diameter="1.5748" shape="octagon"/>
<pad name="+" x="-1.27" y="0" drill="0.8128" diameter="1.5748"/>
<text x="2.667" y="1.524" size="1.27" layer="25">&gt;NAME</text>
<text x="2.667" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="0.254" y1="-1.27" x2="0.762" y2="1.27" layer="51"/>
</package>
<package name="E2,5-4">
<wire x1="1.2065" y1="-1.27" x2="1.016" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.016" y1="-1.0795" x2="1.016" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.016" y1="-1.27" x2="0.8255" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.016" y1="-1.27" x2="1.016" y2="-1.4605" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0" x2="0.5842" y2="0" width="0.1524" layer="51"/>
<wire x1="0.5842" y1="0" x2="0.5842" y2="0.889" width="0.1524" layer="51"/>
<wire x1="0.5842" y1="0.889" x2="0.2032" y2="0.889" width="0.1524" layer="51"/>
<wire x1="0.2032" y1="0.889" x2="0.2032" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="0.2032" y1="-0.889" x2="0.5842" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="0.5842" y1="-0.889" x2="0.5842" y2="0" width="0.1524" layer="51"/>
<circle x="0" y="0" radius="2.032" width="0.1524" layer="21"/>
<pad name="-" x="-1.27" y="0" drill="0.8128" diameter="1.6002" shape="octagon" rot="R180"/>
<pad name="+" x="1.27" y="0" drill="0.8128" diameter="1.6002" rot="R180"/>
<text x="-1.397" y="-1.524" size="1.016" layer="25" rot="R180">&gt;NAME</text>
<text x="1.651" y="1.143" size="1.016" layer="27">&gt;VALUE</text>
<wire x1="-1.27" y1="0" x2="-0.5842" y2="0" width="0.1524" layer="51"/>
<wire x1="-0.5842" y1="0" x2="-0.5842" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="-0.5842" y1="-0.889" x2="-0.2032" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="-0.2032" y1="-0.889" x2="-0.2032" y2="0.889" width="0.1524" layer="51"/>
<wire x1="-0.2032" y1="0.889" x2="-0.5842" y2="0.889" width="0.1524" layer="51"/>
<wire x1="-0.5842" y1="0.889" x2="-0.5842" y2="0" width="0.1524" layer="51"/>
<rectangle x1="-0.508" y1="-0.8128" x2="-0.254" y2="0.8128" layer="21"/>
</package>
<package name="C050-020X036-M">
<wire x1="0" y1="1.524" x2="0.635" y2="0.889" width="0.127" layer="21" curve="-90"/>
<wire x1="0.635" y1="-0.889" x2="0.635" y2="0.889" width="0.127" layer="21"/>
<wire x1="0.635" y1="-0.889" x2="0" y2="-1.524" width="0.127" layer="21" curve="-90"/>
<pad name="2" x="0" y="-2.54" drill="0.8128" shape="octagon" rot="R270"/>
<text x="-1.016" y="0.635" size="0.6096" layer="25" align="center-right">&gt;NAME</text>
<text x="-1.016" y="-0.635" size="0.6096" layer="27" rot="R180" align="center-left">&gt;VALUE</text>
<pad name="1" x="0" y="2.54" drill="0.8128" shape="octagon" rot="R90"/>
<wire x1="0" y1="-1.524" x2="-0.635" y2="-0.889" width="0.127" layer="21" curve="-90"/>
<wire x1="-0.635" y1="0.889" x2="-0.635" y2="-0.889" width="0.127" layer="21"/>
<wire x1="-0.635" y1="0.889" x2="0" y2="1.524" width="0.127" layer="21" curve="-90"/>
<wire x1="0" y1="-2.54" x2="0" y2="-1.5367" width="0.127" layer="51"/>
<rectangle x1="-0.381" y1="0.0762" x2="0.381" y2="0.2032" layer="21"/>
<wire x1="0" y1="2.54" x2="0" y2="1.524" width="0.127" layer="51"/>
<wire x1="0" y1="1.524" x2="0.635" y2="0.889" width="0.127" layer="21" curve="-90"/>
<rectangle x1="-0.0254" y1="0.2032" x2="0.0254" y2="1.016" layer="21"/>
<rectangle x1="-0.381" y1="-0.2032" x2="0.381" y2="-0.0762" layer="21" rot="R180"/>
<rectangle x1="-0.0254" y1="-1.016" x2="0.0254" y2="-0.2032" layer="21" rot="R180"/>
</package>
<package name="E2,5-3">
<wire x1="0.762" y1="-0.9525" x2="0.635" y2="-0.9525" width="0.0762" layer="21"/>
<wire x1="0.635" y1="-0.8255" x2="0.635" y2="-0.9525" width="0.0762" layer="21"/>
<wire x1="0.635" y1="-0.9525" x2="0.508" y2="-0.9525" width="0.0762" layer="21"/>
<wire x1="0.635" y1="-0.9525" x2="0.635" y2="-1.0795" width="0.0762" layer="21"/>
<wire x1="1.27" y1="0" x2="0.4445" y2="0" width="0.0762" layer="51"/>
<wire x1="0.4445" y1="0" x2="0.4445" y2="0.6985" width="0.0762" layer="51"/>
<wire x1="0.4445" y1="0.6985" x2="0.1397" y2="0.6985" width="0.0762" layer="51"/>
<wire x1="0.1397" y1="0.6985" x2="0.1397" y2="-0.6985" width="0.0762" layer="51"/>
<wire x1="0.1397" y1="-0.6985" x2="0.4445" y2="-0.6985" width="0.0762" layer="51"/>
<wire x1="0.4445" y1="-0.6985" x2="0.4445" y2="0" width="0.0762" layer="51"/>
<circle x="0" y="0" radius="1.524" width="0.127" layer="21"/>
<pad name="-" x="-1.27" y="0" drill="0.8128" shape="octagon" rot="R180" stop="no"/>
<pad name="+" x="1.27" y="0" drill="0.8128" rot="R180" stop="no"/>
<text x="1.27" y="1.778" size="0.6096" layer="25" align="bottom-right">&gt;NAME</text>
<text x="1.27" y="-1.778" size="0.6096" layer="27" align="top-right">&gt;VALUE</text>
<wire x1="-1.27" y1="0" x2="-0.4445" y2="0" width="0.0762" layer="51"/>
<wire x1="-0.4445" y1="0" x2="-0.4445" y2="-0.6985" width="0.0762" layer="51"/>
<wire x1="-0.4445" y1="-0.6985" x2="-0.1397" y2="-0.6985" width="0.0762" layer="51"/>
<wire x1="-0.1397" y1="-0.6985" x2="-0.1397" y2="0.6985" width="0.0762" layer="51"/>
<wire x1="-0.1397" y1="0.6985" x2="-0.4445" y2="0.6985" width="0.0762" layer="51"/>
<wire x1="-0.4445" y1="0.6985" x2="-0.4445" y2="0" width="0.0762" layer="51"/>
<rectangle x1="-0.4064" y1="-0.6858" x2="-0.1778" y2="0.6858" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="C">
<wire x1="0" y1="0" x2="0" y2="-0.508" width="0.1524" layer="94"/>
<wire x1="0" y1="-2.54" x2="0" y2="-2.032" width="0.1524" layer="94"/>
<text x="1.524" y="0.381" size="1.778" layer="95">&gt;NAME</text>
<text x="1.524" y="-4.699" size="1.778" layer="96">&gt;VALUE</text>
<rectangle x1="-2.032" y1="-2.032" x2="2.032" y2="-1.524" layer="94"/>
<rectangle x1="-2.032" y1="-1.016" x2="2.032" y2="-0.508" layer="94"/>
<pin name="1" x="0" y="2.54" visible="off" length="short" direction="pas" swaplevel="1" rot="R270"/>
<pin name="2" x="0" y="-5.08" visible="off" length="short" direction="pas" swaplevel="1" rot="R90"/>
</symbol>
<symbol name="CPOL">
<wire x1="-1.524" y1="0.381" x2="1.524" y2="0.381" width="0.254" layer="94"/>
<wire x1="1.524" y1="0.381" x2="1.524" y2="1.27" width="0.254" layer="94"/>
<wire x1="-1.524" y1="1.27" x2="-1.524" y2="0.381" width="0.254" layer="94"/>
<wire x1="-1.524" y1="1.27" x2="1.524" y2="1.27" width="0.254" layer="94"/>
<text x="1.143" y="1.7526" size="1.778" layer="95">&gt;NAME</text>
<text x="-0.5842" y="1.6764" size="1.27" layer="94" rot="R90">+</text>
<text x="1.143" y="-3.3274" size="1.778" layer="96">&gt;VALUE</text>
<rectangle x1="-1.651" y1="-1.27" x2="1.651" y2="-0.381" layer="94"/>
<pin name="-" x="0" y="-3.81" visible="off" length="short" direction="pas" rot="R90"/>
<pin name="+" x="0" y="3.81" visible="off" length="short" direction="pas" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="C" prefix="C" uservalue="yes">
<description>&lt;B&gt;CAPACITOR&lt;/B&gt;, European symbol</description>
<gates>
<gate name="G$1" symbol="C" x="0" y="0"/>
</gates>
<devices>
<device name="025-024X044" package="C025-024X044">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="025-025X050" package="C025-025X050">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="025-030X050" package="C025-030X050">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="025-040X050" package="C025-040X050">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="025-050X050" package="C025-050X050">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="025-060X050" package="C025-060X050">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="050-024X044" package="C050-024X044">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="050-025X075" package="C050-025X075">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="050-045X075" package="C050-045X075">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="050-030X075" package="C050-030X075">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="050-050X075" package="C050-050X075">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="050-055X075" package="C050-055X075">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="050-075X075" package="C050-075X075">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="075-032X103" package="C075-032X103">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="075-042X103" package="C075-042X103">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="075-052X106" package="C075-052X106">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="102-043X133" package="C102-043X133">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="102-054X133" package="C102-054X133">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="102-064X133" package="C102-064X133">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="150-054X183" package="C150-054X183">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="150-064X183" package="C150-064X183">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="150-072X183" package="C150-072X183">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="150-084X183" package="C150-084X183">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="150-091X182" package="C150-091X182">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="050-035X075" package="C050-035X075">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="075-063X106" package="C075-063X106">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="025-020X036" package="C025-020X036">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="050-020X036" package="C050-020X036">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="050-020X036-M" package="C050-020X036-M">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="CPOL" prefix="C" uservalue="yes">
<description>&lt;B&gt;POLARIZED CAPACITOR&lt;/B&gt;, European symbol</description>
<gates>
<gate name="G$1" symbol="CPOL" x="0" y="0"/>
</gates>
<devices>
<device name="E15-5AXIAL" package="E15-5">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="E15-6AXIAL" package="E15-6">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="E15-9AXIAL" package="E15-9">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="E2.5-5V" package="E2,5-4R">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="E2.5-5" package="E2,5-5">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="E2.5-6" package="E2,5-6">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="E2.5-7" package="E2,5-7">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="E2.5-4V" package="E2,5RE">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="E25-10AXIAL" package="E25-10">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="E25-9AXIAL" package="E25-9">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="E30-10AXIAL" package="E30-10">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="E30-12AXIAL" package="E30-12">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="E30-16AXIAL" package="E30-16">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="E35-12AXIAL" package="E35-12">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="E35-14AXIAL" package="E35-14">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="E35-16AXIAL" package="E35-16">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="E35-18AXIAL" package="E35-18">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="E45-16AXIAL" package="E45-16">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="E45-18AXIAL" package="E45-18">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="E45-21AXIAL" package="E45-21">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="E45-22AXIAL" package="E45-22">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="E45-25AXIAL" package="E45-25">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="E5-10.5" package="E5-10,5">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="E5-13" package="E5-13">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="E5-4" package="E5-4">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="E5-5" package="E5-5">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="E5-6" package="E5-6">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="E5-8.5" package="E5-8,5">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="E50-25AXIAL" package="E50-25">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="E50-30AXIAL" package="E50-30">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="E55-25AXIAL" package="E55-25">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="E55-30AXIAL" package="E55-30">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="E5-9VAXIAL" package="E5R">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="E7.5-16" package="E7,5-16">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="E7.5-18" package="E7,5-18">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="E2,5-6E" package="E2,5-6E">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="E2,5-4" package="E2,5-4">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="E2,5-3" package="E2,5-3">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="t">
<packages>
<package name="TO92-CBE-A">
<wire x1="-1.651" y1="2.095" x2="-1.651" y2="-2.095" width="0.127" layer="21"/>
<wire x1="1.1359" y1="2.413" x2="1.1359" y2="-2.413" width="0.127" layer="21" curve="-129.583"/>
<wire x1="0" y1="-2.664" x2="0" y2="2.664" width="0.127" layer="21"/>
<wire x1="1.1359" y1="2.413" x2="0" y2="2.664" width="0.127" layer="21" curve="27.9376"/>
<wire x1="0" y1="2.664" x2="-1.1359" y2="2.413" width="0.127" layer="21" curve="22.4788"/>
<wire x1="-1.1359" y1="2.4135" x2="-1.651" y2="2.095" width="0.127" layer="21" curve="13.0385"/>
<wire x1="-1.1359" y1="-2.413" x2="0" y2="-2.664" width="0.127" layer="21" curve="22.4788"/>
<wire x1="0" y1="-2.664" x2="1.1359" y2="-2.413" width="0.127" layer="21" curve="27.9376"/>
<wire x1="-1.651" y1="-2.095" x2="-1.1118" y2="-2.4247" width="0.127" layer="21" curve="13.6094"/>
<pad name="C" x="0" y="2.54" drill="0.7" diameter="1.4224"/>
<pad name="E" x="0" y="-2.54" drill="0.7" diameter="1.4224"/>
<pad name="B" x="2.54" y="0" drill="0.7" diameter="1.4224"/>
<text x="1.016" y="0" size="0.6096" layer="25" ratio="10" align="center">&gt;NAME</text>
<text x="-0.8255" y="0" size="0.6096" layer="27" ratio="10" rot="R90" align="center">&gt;VALUE</text>
</package>
<package name="TO92-CBE">
<description>&lt;b&gt;TO-92&lt;/b&gt; Pads In Line  C B E from top&lt;p&gt;</description>
<pad name="C" x="0" y="2.54" drill="0.7" diameter="1.4224"/>
<pad name="E" x="0" y="-2.54" drill="0.7" diameter="1.4224"/>
<pad name="B" x="0" y="0" drill="0.7" diameter="1.4224"/>
<wire x1="-1.651" y1="2.095" x2="-1.651" y2="-2.095" width="0.127" layer="21"/>
<wire x1="1.1359" y1="2.413" x2="1.1359" y2="-2.413" width="0.127" layer="21" curve="-129.583"/>
<wire x1="0" y1="-2.664" x2="0" y2="2.664" width="0.127" layer="21"/>
<wire x1="1.1359" y1="2.413" x2="0" y2="2.664" width="0.127" layer="21" curve="27.9376"/>
<wire x1="0" y1="2.664" x2="-1.1359" y2="2.413" width="0.127" layer="21" curve="22.4788"/>
<wire x1="-1.1359" y1="2.4135" x2="-1.651" y2="2.095" width="0.127" layer="21" curve="13.0385"/>
<wire x1="-1.1359" y1="-2.413" x2="0" y2="-2.664" width="0.127" layer="21" curve="22.4788"/>
<wire x1="0" y1="-2.664" x2="1.1359" y2="-2.413" width="0.127" layer="21" curve="27.9376"/>
<wire x1="-1.651" y1="-2.095" x2="-1.1118" y2="-2.4247" width="0.127" layer="21" curve="13.6094"/>
<text x="1.016" y="0" size="0.6096" layer="25" ratio="10" align="center">&gt;NAME</text>
<text x="-0.8255" y="0" size="0.6096" layer="27" ratio="10" rot="R90" align="center">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="NPN">
<wire x1="2.54" y1="2.54" x2="0.0635" y2="1.30175" width="0.1524" layer="94"/>
<wire x1="1.4605" y1="-1.36525" x2="1.9685" y2="-2.25425" width="0.1524" layer="94"/>
<wire x1="1.9685" y1="-2.25425" x2="0.9525" y2="-2.38125" width="0.1524" layer="94"/>
<wire x1="0.9525" y1="-2.38125" x2="1.4605" y2="-1.36525" width="0.1524" layer="94"/>
<wire x1="2.54" y1="-2.54" x2="1.9685" y2="-2.25425" width="0.1524" layer="94"/>
<wire x1="1.9685" y1="-2.25425" x2="0.308" y2="-1.424" width="0.1524" layer="94"/>
<wire x1="1.2065" y1="-2.25425" x2="1.778" y2="-2.19075" width="0.3048" layer="94"/>
<wire x1="1.778" y1="-2.19075" x2="1.4605" y2="-1.61925" width="0.3048" layer="94"/>
<wire x1="1.4605" y1="-1.61925" x2="1.2065" y2="-2.12725" width="0.254" layer="94"/>
<wire x1="1.2065" y1="-2.12725" x2="1.5875" y2="-2.12725" width="0.254" layer="94"/>
<wire x1="1.5875" y1="-2.12725" x2="1.4605" y2="-1.87325" width="0.254" layer="94"/>
<text x="-1.524" y="2.54" size="1.778" layer="95" ratio="10" align="bottom-right">&gt;NAME</text>
<text x="4.064" y="2.54" size="1.778" layer="96" ratio="10">&gt;VALUE</text>
<rectangle x1="-0.508" y1="-2.54" x2="0.254" y2="2.54" layer="94"/>
<pin name="B" x="-2.54" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
<pin name="E" x="2.54" y="-5.08" visible="off" length="short" direction="pas" swaplevel="3" rot="R90"/>
<pin name="C" x="2.54" y="5.08" visible="off" length="short" direction="pas" swaplevel="2" rot="R270"/>
<circle x="1.27" y="0" radius="3.5921" width="0.381" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="BC547">
<gates>
<gate name="G$1" symbol="NPN" x="0" y="0"/>
</gates>
<devices>
<device name="CBE" package="TO92-CBE">
<connects>
<connect gate="G$1" pin="B" pad="B"/>
<connect gate="G$1" pin="C" pad="C"/>
<connect gate="G$1" pin="E" pad="E"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="CBE-A" package="TO92-CBE-A">
<connects>
<connect gate="G$1" pin="B" pad="B"/>
<connect gate="G$1" pin="C" pad="C"/>
<connect gate="G$1" pin="E" pad="E"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="q">
<packages>
<package name="HC49">
<wire x1="-2.667" y1="-1.143" x2="2.667" y2="-1.143" width="0.127" layer="21"/>
<wire x1="-2.54" y1="1.143" x2="2.794" y2="1.143" width="0.127" layer="21"/>
<wire x1="-2.667" y1="-1.651" x2="2.667" y2="-1.651" width="0.254" layer="21"/>
<wire x1="2.794" y1="1.651" x2="-2.54" y2="1.651" width="0.254" layer="21"/>
<wire x1="2.667" y1="-1.651" x2="2.794" y2="1.651" width="0.254" layer="21" curve="180"/>
<wire x1="2.667" y1="-1.143" x2="2.794" y2="1.143" width="0.127" layer="21" curve="180"/>
<wire x1="-2.54" y1="1.143" x2="-2.667" y2="-1.143" width="0.127" layer="21" curve="180"/>
<wire x1="-2.54" y1="1.651" x2="-2.667" y2="-1.651" width="0.254" layer="21" curve="180"/>
<wire x1="-0.254" y1="0.889" x2="0.254" y2="0.889" width="0.127" layer="21"/>
<wire x1="0.254" y1="0.889" x2="0.254" y2="-0.889" width="0.127" layer="21"/>
<wire x1="0.254" y1="-0.889" x2="-0.254" y2="-0.889" width="0.127" layer="21"/>
<wire x1="-0.254" y1="-0.889" x2="-0.254" y2="0.889" width="0.127" layer="21"/>
<wire x1="0.635" y1="0.889" x2="0.635" y2="0" width="0.127" layer="21"/>
<wire x1="0.635" y1="0" x2="0.635" y2="-0.889" width="0.127" layer="21"/>
<wire x1="-0.635" y1="0.889" x2="-0.635" y2="0" width="0.127" layer="21"/>
<wire x1="-0.635" y1="0" x2="-0.635" y2="-0.889" width="0.127" layer="21"/>
<wire x1="0.635" y1="0" x2="1.27" y2="0" width="0.127" layer="21"/>
<wire x1="-0.635" y1="0" x2="-1.27" y2="0" width="0.127" layer="21"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" shape="octagon" stop="no"/>
<pad name="2" x="2.54" y="0" drill="0.8128" shape="octagon" stop="no"/>
<text x="-5.08" y="2.54" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.27" layer="27" ratio="10" align="top-left">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="Q">
<wire x1="1.016" y1="0" x2="2.54" y2="0" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="0" x2="-1.016" y2="0" width="0.1524" layer="94"/>
<wire x1="-0.381" y1="1.524" x2="-0.381" y2="-1.524" width="0.254" layer="94"/>
<wire x1="-0.381" y1="-1.524" x2="0.381" y2="-1.524" width="0.254" layer="94"/>
<wire x1="0.381" y1="-1.524" x2="0.381" y2="1.524" width="0.254" layer="94"/>
<wire x1="0.381" y1="1.524" x2="-0.381" y2="1.524" width="0.254" layer="94"/>
<wire x1="1.016" y1="1.778" x2="1.016" y2="-1.778" width="0.254" layer="94"/>
<wire x1="-1.016" y1="1.778" x2="-1.016" y2="-1.778" width="0.254" layer="94"/>
<pin name="1" x="-2.54" y="0" visible="off" length="point" direction="pas" swaplevel="1"/>
<pin name="2" x="2.54" y="0" visible="off" length="point" direction="pas" swaplevel="1" rot="R180"/>
<text x="2.54" y="1.016" size="1.778" layer="95">&gt;NAME</text>
<text x="2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<text x="-2.159" y="-1.143" size="0.8636" layer="93">1</text>
<text x="1.524" y="-1.143" size="0.8636" layer="93">2</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="CRYSTAL">
<gates>
<gate name="G$1" symbol="Q" x="0" y="0"/>
</gates>
<devices>
<device name="HC49" package="HC49">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="sw">
<packages>
<package name="SLSW-2P2T">
<wire x1="-2.54" y1="-4.572" x2="2.54" y2="-4.572" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-4.572" x2="-2.54" y2="4.572" width="0.1524" layer="21"/>
<wire x1="2.54" y1="4.572" x2="-2.54" y2="4.572" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-3.81" x2="1.27" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-3.81" x2="-1.27" y2="0" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="0" x2="-1.27" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="1.016" x2="-1.27" y2="1.524" width="0.1524" layer="21"/>
<wire x1="1.27" y1="1.016" x2="-1.27" y2="1.016" width="0.1524" layer="21"/>
<wire x1="1.27" y1="1.016" x2="1.27" y2="0.508" width="0.1524" layer="21"/>
<wire x1="1.27" y1="1.524" x2="-1.27" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="1.524" x2="-1.27" y2="2.032" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="2.032" x2="-1.27" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="2.54" x2="-1.27" y2="3.81" width="0.1524" layer="21"/>
<wire x1="1.27" y1="2.032" x2="-1.27" y2="2.032" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="0.508" x2="1.27" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="0.508" x2="-1.27" y2="1.016" width="0.1524" layer="21"/>
<wire x1="1.27" y1="3.81" x2="-1.27" y2="3.81" width="0.1524" layer="21"/>
<wire x1="1.27" y1="3.81" x2="1.27" y2="2.54" width="0.1524" layer="21"/>
<wire x1="1.27" y1="2.54" x2="1.27" y2="2.032" width="0.1524" layer="21"/>
<wire x1="1.27" y1="2.032" x2="1.27" y2="1.524" width="0.1524" layer="21"/>
<wire x1="1.27" y1="1.016" x2="1.27" y2="1.524" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0.508" x2="1.27" y2="0" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0" x2="1.27" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-4.572" x2="2.54" y2="4.572" width="0.1524" layer="21"/>
<pad name="1" x="-1.27" y="2.54" drill="1.1176" diameter="1.778" shape="octagon"/>
<pad name="2" x="-1.27" y="0" drill="1.1176" diameter="1.778" shape="octagon"/>
<pad name="3" x="-1.27" y="-2.54" drill="1.1176" diameter="1.778" shape="octagon"/>
<wire x1="-1.27" y1="0" x2="1.27" y2="0" width="0.1524" layer="21"/>
<wire x1="1.27" y1="2.54" x2="-1.27" y2="2.54" width="0.1524" layer="21"/>
<pad name="4" x="1.27" y="2.54" drill="1.1176" diameter="1.778" shape="octagon"/>
<pad name="5" x="1.27" y="0" drill="1.1176" diameter="1.778" shape="octagon"/>
<pad name="6" x="1.27" y="-2.54" drill="1.1176" diameter="1.778" shape="octagon"/>
</package>
<package name="SLSW-2P2T-3D">
<wire x1="3.302" y1="-2.54" x2="0" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="3.302" y1="-2.54" x2="3.302" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="3.302" y1="1.27" x2="3.302" y2="4.572" width="0.1524" layer="21"/>
<wire x1="0" y1="4.572" x2="3.302" y2="4.572" width="0.1524" layer="21"/>
<wire x1="4.064" y1="0" x2="5.842" y2="0" width="0.1524" layer="51"/>
<wire x1="3.302" y1="-0.762" x2="5.334" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="3.302" y1="-0.254" x2="5.334" y2="-0.254" width="0.1524" layer="21"/>
<wire x1="3.302" y1="-0.254" x2="3.302" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="5.334" y1="-0.254" x2="5.334" y2="0.254" width="0.1524" layer="21"/>
<wire x1="3.302" y1="0.254" x2="5.334" y2="0.254" width="0.1524" layer="21"/>
<wire x1="3.302" y1="0.254" x2="3.302" y2="-0.254" width="0.1524" layer="21"/>
<wire x1="5.334" y1="0.254" x2="5.334" y2="0.762" width="0.1524" layer="21"/>
<wire x1="5.334" y1="0.762" x2="5.334" y2="1.27" width="0.1524" layer="21"/>
<wire x1="5.334" y1="-1.27" x2="5.334" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="5.334" y1="-0.762" x2="5.334" y2="-0.254" width="0.1524" layer="21"/>
<wire x1="3.302" y1="1.27" x2="3.302" y2="0.762" width="0.1524" layer="21"/>
<wire x1="3.302" y1="0.762" x2="3.302" y2="0.254" width="0.1524" layer="21"/>
<wire x1="3.302" y1="-0.762" x2="3.302" y2="-1.27" width="0.1524" layer="21"/>
<pad name="1" x="-2.54" y="-2.54" drill="1.1176" diameter="1.778" shape="octagon" rot="R180"/>
<pad name="2" x="-2.54" y="0" drill="1.1176" diameter="1.778" shape="octagon" rot="R180"/>
<pad name="3" x="-2.54" y="2.54" drill="1.1176" diameter="1.778" shape="octagon" rot="R180"/>
<text x="-2.54" y="-3.81" size="0.8128" layer="21" ratio="10" rot="R180" align="bottom-center">1</text>
<text x="-2.54" y="6.858" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.54" y="-5.588" size="1.27" layer="27" ratio="10" align="top-left">&gt;VALUE</text>
<wire x1="0" y1="-2.54" x2="0" y2="4.572" width="0.1524" layer="21"/>
<wire x1="3.302" y1="0.762" x2="5.334" y2="0.762" width="0.1524" layer="21"/>
<wire x1="3.302" y1="1.27" x2="5.334" y2="1.27" width="0.1524" layer="21"/>
<rectangle x1="-2.032" y1="-3.302" x2="-1.016" y2="-2.794" layer="21"/>
<wire x1="-2.54" y1="-2.54" x2="-2.54" y2="-3.048" width="0.3048" layer="21"/>
<wire x1="-2.54" y1="-3.048" x2="-1.778" y2="-3.048" width="0.3048" layer="21"/>
<rectangle x1="-2.032" y1="-0.762" x2="-1.016" y2="-0.254" layer="21"/>
<wire x1="-2.54" y1="0" x2="-2.54" y2="-0.508" width="0.3048" layer="21"/>
<wire x1="-2.54" y1="-0.508" x2="-1.778" y2="-0.508" width="0.3048" layer="21"/>
<rectangle x1="-2.032" y1="1.778" x2="-1.016" y2="2.286" layer="21"/>
<wire x1="-2.54" y1="2.54" x2="-2.54" y2="2.032" width="0.3048" layer="21"/>
<wire x1="-2.54" y1="2.032" x2="-1.778" y2="2.032" width="0.3048" layer="21"/>
<pad name="4" x="-5.08" y="-2.54" drill="1.1176" diameter="1.778" shape="octagon" rot="R180"/>
<pad name="5" x="-5.08" y="0" drill="1.1176" diameter="1.778" shape="octagon" rot="R180"/>
<pad name="6" x="-5.08" y="2.54" drill="1.1176" diameter="1.778" shape="octagon" rot="R180"/>
<rectangle x1="-3.81" y1="-2.032" x2="-0.254" y2="-1.524" layer="21"/>
<wire x1="-5.08" y1="-2.54" x2="-5.08" y2="-1.778" width="0.3048" layer="21"/>
<wire x1="-5.08" y1="-1.778" x2="-3.81" y2="-1.778" width="0.3048" layer="21"/>
<rectangle x1="-3.81" y1="0.508" x2="-0.254" y2="1.016" layer="21"/>
<wire x1="-5.08" y1="0.762" x2="-3.81" y2="0.762" width="0.3048" layer="21"/>
<rectangle x1="-3.81" y1="3.048" x2="-0.254" y2="3.556" layer="21"/>
<wire x1="-5.08" y1="3.302" x2="-3.81" y2="3.302" width="0.3048" layer="21"/>
<wire x1="-5.08" y1="0" x2="-5.08" y2="0.762" width="0.3048" layer="21"/>
<wire x1="-5.08" y1="2.54" x2="-5.08" y2="3.302" width="0.3048" layer="21"/>
<wire x1="-1.27" y1="-4.318" x2="-1.27" y2="2.794" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-4.318" x2="0" y2="-2.54" width="0.127" layer="21"/>
<wire x1="-1.27" y1="2.794" x2="0" y2="4.572" width="0.127" layer="21"/>
<wire x1="3.302" y1="-1.27" x2="5.334" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="2.032" y1="-4.318" x2="3.302" y2="-2.54" width="0.127" layer="21"/>
<wire x1="2.032" y1="-4.318" x2="-1.27" y2="-4.318" width="0.1524" layer="21"/>
</package>
<package name="SLSW-2P2T-V">
<wire x1="5.715" y1="3.81" x2="1.905" y2="3.81" width="0.1524" layer="21"/>
<wire x1="5.715" y1="3.81" x2="5.715" y2="1.27" width="0.1524" layer="21"/>
<wire x1="5.715" y1="-1.27" x2="5.715" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-3.81" x2="5.715" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="5.715" y1="0.762" x2="7.747" y2="0.762" width="0.1524" layer="21"/>
<wire x1="5.715" y1="0.254" x2="7.747" y2="0.254" width="0.1524" layer="21"/>
<wire x1="5.715" y1="0.254" x2="5.715" y2="0.762" width="0.1524" layer="21"/>
<wire x1="7.747" y1="0.254" x2="7.747" y2="-0.254" width="0.1524" layer="21"/>
<wire x1="5.715" y1="-0.254" x2="7.747" y2="-0.254" width="0.1524" layer="21"/>
<wire x1="5.715" y1="-0.254" x2="5.715" y2="0.254" width="0.1524" layer="21"/>
<wire x1="7.747" y1="-0.254" x2="7.747" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="7.747" y1="-0.762" x2="7.747" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="7.747" y1="1.27" x2="7.747" y2="0.762" width="0.1524" layer="21"/>
<wire x1="7.747" y1="0.762" x2="7.747" y2="0.254" width="0.1524" layer="21"/>
<wire x1="5.715" y1="-1.27" x2="5.715" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="5.715" y1="-0.762" x2="5.715" y2="-0.254" width="0.1524" layer="21"/>
<wire x1="5.715" y1="0.762" x2="5.715" y2="1.27" width="0.1524" layer="21"/>
<pad name="1" x="0" y="-2.54" drill="1.1176" diameter="1.778" shape="octagon" rot="R180"/>
<pad name="2" x="0" y="0" drill="1.1176" diameter="1.778" shape="octagon" rot="R180"/>
<pad name="3" x="0" y="2.54" drill="1.1176" diameter="1.778" shape="octagon" rot="R180"/>
<text x="0" y="-4.191" size="0.8128" layer="21" ratio="10" rot="R270">1</text>
<wire x1="1.905" y1="3.81" x2="1.905" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="5.715" y1="-0.762" x2="7.747" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="5.715" y1="-1.27" x2="7.747" y2="-1.27" width="0.1524" layer="21"/>
<rectangle x1="0.508" y1="2.794" x2="1.905" y2="3.302" layer="21"/>
<wire x1="0" y1="2.54" x2="0" y2="3.048" width="0.3048" layer="21"/>
<wire x1="0" y1="3.048" x2="0.762" y2="3.048" width="0.3048" layer="21"/>
<rectangle x1="0.508" y1="0.254" x2="1.905" y2="0.762" layer="21"/>
<wire x1="0" y1="0" x2="0" y2="0.508" width="0.3048" layer="21"/>
<wire x1="0" y1="0.508" x2="0.762" y2="0.508" width="0.3048" layer="21"/>
<rectangle x1="0.508" y1="-2.286" x2="1.905" y2="-1.778" layer="21"/>
<wire x1="0" y1="-2.54" x2="0" y2="-2.032" width="0.3048" layer="21"/>
<wire x1="0" y1="-2.032" x2="0.762" y2="-2.032" width="0.3048" layer="21"/>
<pad name="4" x="-2.54" y="-2.54" drill="1.1176" diameter="1.778" shape="octagon" rot="R180"/>
<pad name="5" x="-2.54" y="0" drill="1.1176" diameter="1.778" shape="octagon" rot="R180"/>
<pad name="6" x="-2.54" y="2.54" drill="1.1176" diameter="1.778" shape="octagon" rot="R180"/>
<rectangle x1="-1.27" y1="1.524" x2="1.905" y2="2.032" layer="21"/>
<wire x1="-2.54" y1="2.54" x2="-2.54" y2="1.778" width="0.3048" layer="21"/>
<wire x1="-2.54" y1="1.778" x2="-1.27" y2="1.778" width="0.3048" layer="21"/>
<rectangle x1="-1.27" y1="-1.016" x2="1.905" y2="-0.508" layer="21"/>
<wire x1="-2.54" y1="-0.762" x2="-1.27" y2="-0.762" width="0.3048" layer="21"/>
<rectangle x1="-1.27" y1="-3.556" x2="1.905" y2="-3.048" layer="21"/>
<wire x1="-2.54" y1="-3.302" x2="-1.27" y2="-3.302" width="0.3048" layer="21"/>
<wire x1="-2.54" y1="0" x2="-2.54" y2="-0.762" width="0.3048" layer="21"/>
<wire x1="-2.54" y1="-2.54" x2="-2.54" y2="-3.302" width="0.3048" layer="21"/>
<wire x1="5.715" y1="1.27" x2="7.747" y2="1.27" width="0.1524" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="SW-2P2T">
<wire x1="-11.43" y1="1.905" x2="-11.43" y2="0" width="0.254" layer="94"/>
<wire x1="-11.43" y1="0" x2="-9.525" y2="0" width="0.1524" layer="94"/>
<wire x1="-11.43" y1="0" x2="-11.43" y2="-1.905" width="0.254" layer="94"/>
<wire x1="-8.89" y1="0" x2="-8.382" y2="0" width="0.1524" layer="94"/>
<wire x1="-7.366" y1="0" x2="-6.985" y2="0" width="0.1524" layer="94"/>
<wire x1="-5.08" y1="-3.175" x2="-5.08" y2="-1.905" width="0.254" layer="94"/>
<wire x1="-5.08" y1="-1.905" x2="-6.985" y2="3.175" width="0.254" layer="94"/>
<wire x1="-3.81" y1="2.54" x2="-2.54" y2="2.54" width="0.254" layer="94"/>
<wire x1="-2.54" y1="2.54" x2="-2.54" y2="3.175" width="0.254" layer="94"/>
<wire x1="-7.62" y1="2.54" x2="-6.35" y2="2.54" width="0.254" layer="94"/>
<wire x1="-7.62" y1="2.54" x2="-7.62" y2="3.175" width="0.254" layer="94"/>
<wire x1="-8.382" y1="0" x2="-7.874" y2="-0.762" width="0.1524" layer="94"/>
<wire x1="-7.874" y1="-0.762" x2="-7.366" y2="0" width="0.1524" layer="94"/>
<text x="-13.97" y="-1.905" size="1.778" layer="95" rot="R90">&gt;NAME</text>
<text x="-11.43" y="3.175" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="P" x="-5.08" y="-5.08" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="S" x="-2.54" y="5.08" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="O" x="-7.62" y="5.08" visible="pad" length="short" direction="pas" rot="R270"/>
<wire x1="-1.27" y1="0" x2="0.635" y2="0" width="0.1524" layer="94"/>
<wire x1="5.08" y1="-1.905" x2="3.175" y2="3.175" width="0.254" layer="94"/>
<wire x1="6.35" y1="2.54" x2="7.62" y2="2.54" width="0.254" layer="94"/>
<wire x1="7.62" y1="2.54" x2="7.62" y2="3.175" width="0.254" layer="94"/>
<wire x1="2.54" y1="2.54" x2="3.81" y2="2.54" width="0.254" layer="94"/>
<wire x1="2.54" y1="2.54" x2="2.54" y2="3.175" width="0.254" layer="94"/>
<wire x1="3.81" y1="0" x2="4.445" y2="0" width="0.1524" layer="94"/>
<wire x1="1.27" y1="0" x2="3.175" y2="0" width="0.1524" layer="94"/>
<pin name="P1" x="5.08" y="-5.08" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="S1" x="7.62" y="5.08" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="O1" x="2.54" y="5.08" visible="pad" length="short" direction="pas" rot="R270"/>
<wire x1="-6.35" y1="0" x2="-4.445" y2="0" width="0.1524" layer="94"/>
<wire x1="-3.81" y1="0" x2="-1.905" y2="0" width="0.1524" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="SL-SW-2P-2T">
<gates>
<gate name="G$1" symbol="SW-2P2T" x="0" y="0"/>
</gates>
<devices>
<device name="V3D" package="SLSW-2P2T-3D">
<connects>
<connect gate="G$1" pin="O" pad="1"/>
<connect gate="G$1" pin="O1" pad="4"/>
<connect gate="G$1" pin="P" pad="2"/>
<connect gate="G$1" pin="P1" pad="5"/>
<connect gate="G$1" pin="S" pad="3"/>
<connect gate="G$1" pin="S1" pad="6"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="-V" package="SLSW-2P2T-V">
<connects>
<connect gate="G$1" pin="O" pad="1"/>
<connect gate="G$1" pin="O1" pad="4"/>
<connect gate="G$1" pin="P" pad="2"/>
<connect gate="G$1" pin="P1" pad="5"/>
<connect gate="G$1" pin="S" pad="3"/>
<connect gate="G$1" pin="S1" pad="6"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="" package="SLSW-2P2T">
<connects>
<connect gate="G$1" pin="O" pad="1"/>
<connect gate="G$1" pin="O1" pad="4"/>
<connect gate="G$1" pin="P" pad="2"/>
<connect gate="G$1" pin="P1" pad="5"/>
<connect gate="G$1" pin="S" pad="3"/>
<connect gate="G$1" pin="S1" pad="6"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="d">
<description>&lt;b&gt;Resistors, Capacitors, Inductors&lt;/b&gt;&lt;p&gt;
 Based on the previous libraries:
 &lt;ul&gt;
 &lt;li&gt;r.lbr
 &lt;li&gt;cap.lbr 
 &lt;li&gt;cap-fe.lbr
 &lt;li&gt;captant.lbr
 &lt;li&gt;polcap.lbr
 &lt;li&gt;ipc-smd.lbr
 &lt;/ul&gt;
 All SMD packages are defined according to the IPC specifications and  CECC&lt;p&gt;
 &lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;&lt;p&gt;
 &lt;p&gt;
 for Electrolyt Capacitors see also :&lt;p&gt;
 www.bccomponents.com &lt;p&gt;
 www.panasonic.com&lt;p&gt;
 www.kemet.com&lt;p&gt;
 &lt;p&gt;
 for trimmer refence see : &lt;u&gt;www.electrospec-inc.com/cross_references/trimpotcrossref.asp&lt;/u&gt;&lt;p&gt;
 
 &lt;map name="nav_main"&gt;
 &lt;area shape="rect" coords="0,1,140,23" href="../military_specs.asp" title=""&gt;
 &lt;area shape="rect" coords="0,24,140,51" href="../about.asp" title=""&gt;
 &lt;area shape="rect" coords="1,52,140,77" href="../rfq.asp" title=""&gt;
 &lt;area shape="rect" coords="0,78,139,103" href="../products.asp" title=""&gt;
 &lt;area shape="rect" coords="1,102,138,128" href="../excess_inventory.asp" title=""&gt;
 &lt;area shape="rect" coords="1,129,138,150" href="../edge.asp" title=""&gt;
 &lt;area shape="rect" coords="1,151,139,178" href="../industry_links.asp" title=""&gt;
 &lt;area shape="rect" coords="0,179,139,201" href="../comments.asp" title=""&gt;
 &lt;area shape="rect" coords="1,203,138,231" href="../directory.asp" title=""&gt;
 &lt;area shape="default" nohref&gt;
 &lt;/map&gt;
 
 &lt;html&gt;
 
 &lt;title&gt;&lt;/title&gt;
 
 &lt;LINK REL="StyleSheet" TYPE="text/css" HREF="style-sheet.css"&gt;
 
 &lt;body bgcolor="#ffffff" text="#000000" marginwidth="0" marginheight="0" topmargin="0" leftmargin="0"&gt;
 &lt;table border=0 cellspacing=0 cellpadding=0 width="100%" cellpaddding=0 height="55%"&gt;
 &lt;tr valign="top"&gt;
 
 &lt;/td&gt;
 &lt;! &lt;td width="10"&gt;&amp;nbsp;&lt;/td&gt;
 &lt;td width="90%"&gt;
 
 &lt;b&gt;&lt;font color="#0000FF" size="4"&gt;TRIM-POT CROSS REFERENCE&lt;/font&gt;&lt;/b&gt;
 &lt;P&gt;
 &lt;TABLE BORDER=0 CELLSPACING=1 CELLPADDING=2&gt;
 &lt;TR&gt;
 &lt;TD COLSPAN=8&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;RECTANGULAR MULTI-TURN&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;TR&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;B&gt;
 &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;BOURNS&lt;/FONT&gt;
 &lt;/B&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;B&gt;
 &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;BI&amp;nbsp;TECH&lt;/FONT&gt;
 &lt;/B&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;B&gt;
 &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;DALE-VISHAY&lt;/FONT&gt;
 &lt;/B&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;B&gt;
 &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;PHILIPS/MEPCO&lt;/FONT&gt;
 &lt;/B&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;B&gt;
 &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;MURATA&lt;/FONT&gt;
 &lt;/B&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;B&gt;
 &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;PANASONIC&lt;/FONT&gt;
 &lt;/B&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;B&gt;
 &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;SPECTROL&lt;/FONT&gt;
 &lt;/B&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;B&gt;
 &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;MILSPEC&lt;/FONT&gt;
 &lt;/B&gt;
 &lt;/TD&gt;&lt;TD&gt;&amp;nbsp;&lt;/TD&gt;
 &lt;/TR&gt;
 &lt;TR&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3 &gt;
 3005P&lt;BR&gt;
 3006P&lt;BR&gt;
 3006W&lt;BR&gt;
 3006Y&lt;BR&gt;
 3009P&lt;BR&gt;
 3009W&lt;BR&gt;
 3009Y&lt;BR&gt;
 3057J&lt;BR&gt;
 3057L&lt;BR&gt;
 3057P&lt;BR&gt;
 3057Y&lt;BR&gt;
 3059J&lt;BR&gt;
 3059L&lt;BR&gt;
 3059P&lt;BR&gt;
 3059Y&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 89P&lt;BR&gt;
 89W&lt;BR&gt;
 89X&lt;BR&gt;
 89PH&lt;BR&gt;
 76P&lt;BR&gt;
 89XH&lt;BR&gt;
 78SLT&lt;BR&gt;
 78L&amp;nbsp;ALT&lt;BR&gt;
 56P&amp;nbsp;ALT&lt;BR&gt;
 78P&amp;nbsp;ALT&lt;BR&gt;
 T8S&lt;BR&gt;
 78L&lt;BR&gt;
 56P&lt;BR&gt;
 78P&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 T18/784&lt;BR&gt;
 783&lt;BR&gt;
 781&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 2199&lt;BR&gt;
 1697/1897&lt;BR&gt;
 1680/1880&lt;BR&gt;
 2187&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 8035EKP/CT20/RJ-20P&lt;BR&gt;
 -&lt;BR&gt;
 RJ-20X&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 1211L&lt;BR&gt;
 8012EKQ&amp;nbsp;ALT&lt;BR&gt;
 8012EKR&amp;nbsp;ALT&lt;BR&gt;
 1211P&lt;BR&gt;
 8012EKJ&lt;BR&gt;
 8012EKL&lt;BR&gt;
 8012EKQ&lt;BR&gt;
 8012EKR&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 2101P&lt;BR&gt;
 2101W&lt;BR&gt;
 2101Y&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 2102L&lt;BR&gt;
 2102S&lt;BR&gt;
 2102Y&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 EVMCOG&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 43P&lt;BR&gt;
 43W&lt;BR&gt;
 43Y&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 40L&lt;BR&gt;
 40P&lt;BR&gt;
 40Y&lt;BR&gt;
 70Y-T602&lt;BR&gt;
 70L&lt;BR&gt;
 70P&lt;BR&gt;
 70Y&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 RT/RTR12&lt;BR&gt;
 RT/RTR12&lt;BR&gt;
 RT/RTR12&lt;BR&gt;
 -&lt;BR&gt;
 RJ/RJR12&lt;BR&gt;
 RJ/RJR12&lt;BR&gt;
 RJ/RJR12&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;TR&gt;
 &lt;TD COLSPAN=8&gt;&amp;nbsp;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;TR&gt;
 &lt;TD COLSPAN=8&gt;
 &lt;FONT SIZE=4 FACE=ARIAL&gt;&lt;B&gt;SQUARE MULTI-TURN&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;TR&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BOURN&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BI&amp;nbsp;TECH&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;DALE-VISHAY&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PHILIPS/MEPCO&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;MURATA&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PANASONIC&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;SPECTROL&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;MILSPEC&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;TR&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 3250L&lt;BR&gt;
 3250P&lt;BR&gt;
 3250W&lt;BR&gt;
 3250X&lt;BR&gt;
 3252P&lt;BR&gt;
 3252W&lt;BR&gt;
 3252X&lt;BR&gt;
 3260P&lt;BR&gt;
 3260W&lt;BR&gt;
 3260X&lt;BR&gt;
 3262P&lt;BR&gt;
 3262W&lt;BR&gt;
 3262X&lt;BR&gt;
 3266P&lt;BR&gt;
 3266W&lt;BR&gt;
 3266X&lt;BR&gt;
 3290H&lt;BR&gt;
 3290P&lt;BR&gt;
 3290W&lt;BR&gt;
 3292P&lt;BR&gt;
 3292W&lt;BR&gt;
 3292X&lt;BR&gt;
 3296P&lt;BR&gt;
 3296W&lt;BR&gt;
 3296X&lt;BR&gt;
 3296Y&lt;BR&gt;
 3296Z&lt;BR&gt;
 3299P&lt;BR&gt;
 3299W&lt;BR&gt;
 3299X&lt;BR&gt;
 3299Y&lt;BR&gt;
 3299Z&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 66P&amp;nbsp;ALT&lt;BR&gt;
 66W&amp;nbsp;ALT&lt;BR&gt;
 66X&amp;nbsp;ALT&lt;BR&gt;
 66P&amp;nbsp;ALT&lt;BR&gt;
 66W&amp;nbsp;ALT&lt;BR&gt;
 66X&amp;nbsp;ALT&lt;BR&gt;
 -&lt;BR&gt;
 64W&amp;nbsp;ALT&lt;BR&gt;
 -&lt;BR&gt;
 64P&amp;nbsp;ALT&lt;BR&gt;
 64W&amp;nbsp;ALT&lt;BR&gt;
 64X&amp;nbsp;ALT&lt;BR&gt;
 64P&lt;BR&gt;
 64W&lt;BR&gt;
 64X&lt;BR&gt;
 66X&amp;nbsp;ALT&lt;BR&gt;
 66P&amp;nbsp;ALT&lt;BR&gt;
 66W&amp;nbsp;ALT&lt;BR&gt;
 66P&lt;BR&gt;
 66W&lt;BR&gt;
 66X&lt;BR&gt;
 67P&lt;BR&gt;
 67W&lt;BR&gt;
 67X&lt;BR&gt;
 67Y&lt;BR&gt;
 67Z&lt;BR&gt;
 68P&lt;BR&gt;
 68W&lt;BR&gt;
 68X&lt;BR&gt;
 67Y&amp;nbsp;ALT&lt;BR&gt;
 67Z&amp;nbsp;ALT&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 5050&lt;BR&gt;
 5091&lt;BR&gt;
 5080&lt;BR&gt;
 5087&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 T63YB&lt;BR&gt;
 T63XB&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 5887&lt;BR&gt;
 5891&lt;BR&gt;
 5880&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 T93Z&lt;BR&gt;
 T93YA&lt;BR&gt;
 T93XA&lt;BR&gt;
 T93YB&lt;BR&gt;
 T93XB&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 8026EKP&lt;BR&gt;
 8026EKW&lt;BR&gt;
 8026EKM&lt;BR&gt;
 8026EKP&lt;BR&gt;
 8026EKB&lt;BR&gt;
 8026EKM&lt;BR&gt;
 1309X&lt;BR&gt;
 1309P&lt;BR&gt;
 1309W&lt;BR&gt;
 8024EKP&lt;BR&gt;
 8024EKW&lt;BR&gt;
 8024EKN&lt;BR&gt;
 RJ-9P/CT9P&lt;BR&gt;
 RJ-9W&lt;BR&gt;
 RJ-9X&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 3103P&lt;BR&gt;
 3103Y&lt;BR&gt;
 3103Z&lt;BR&gt;
 3103P&lt;BR&gt;
 3103Y&lt;BR&gt;
 3103Z&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 3105P/3106P&lt;BR&gt;
 3105W/3106W&lt;BR&gt;
 3105X/3106X&lt;BR&gt;
 3105Y/3106Y&lt;BR&gt;
 3105Z/3105Z&lt;BR&gt;
 3102P&lt;BR&gt;
 3102W&lt;BR&gt;
 3102X&lt;BR&gt;
 3102Y&lt;BR&gt;
 3102Z&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 EVMCBG&lt;BR&gt;
 EVMCCG&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 55-1-X&lt;BR&gt;
 55-4-X&lt;BR&gt;
 55-3-X&lt;BR&gt;
 55-2-X&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 50-2-X&lt;BR&gt;
 50-4-X&lt;BR&gt;
 50-3-X&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 64P&lt;BR&gt;
 64W&lt;BR&gt;
 64X&lt;BR&gt;
 64Y&lt;BR&gt;
 64Z&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 RT/RTR22&lt;BR&gt;
 RT/RTR22&lt;BR&gt;
 RT/RTR22&lt;BR&gt;
 RT/RTR22&lt;BR&gt;
 RJ/RJR22&lt;BR&gt;
 RJ/RJR22&lt;BR&gt;
 RJ/RJR22&lt;BR&gt;
 RT/RTR26&lt;BR&gt;
 RT/RTR26&lt;BR&gt;
 RT/RTR26&lt;BR&gt;
 RJ/RJR26&lt;BR&gt;
 RJ/RJR26&lt;BR&gt;
 RJ/RJR26&lt;BR&gt;
 RJ/RJR26&lt;BR&gt;
 RJ/RJR26&lt;BR&gt;
 RJ/RJR26&lt;BR&gt;
 RT/RTR24&lt;BR&gt;
 RT/RTR24&lt;BR&gt;
 RT/RTR24&lt;BR&gt;
 RJ/RJR24&lt;BR&gt;
 RJ/RJR24&lt;BR&gt;
 RJ/RJR24&lt;BR&gt;
 RJ/RJR24&lt;BR&gt;
 RJ/RJR24&lt;BR&gt;
 RJ/RJR24&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;TR&gt;
 &lt;TD COLSPAN=8&gt;&amp;nbsp;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;TR&gt;
 &lt;TD COLSPAN=8&gt;
 &lt;FONT SIZE=4 FACE=ARIAL&gt;&lt;B&gt;SINGLE TURN&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;TR&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BOURN&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BI&amp;nbsp;TECH&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;DALE-VISHAY&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PHILIPS/MEPCO&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;MURATA&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PANASONIC&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;SPECTROL&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;MILSPEC&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;TR&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 3323P&lt;BR&gt;
 3323S&lt;BR&gt;
 3323W&lt;BR&gt;
 3329H&lt;BR&gt;
 3329P&lt;BR&gt;
 3329W&lt;BR&gt;
 3339H&lt;BR&gt;
 3339P&lt;BR&gt;
 3339W&lt;BR&gt;
 3352E&lt;BR&gt;
 3352H&lt;BR&gt;
 3352K&lt;BR&gt;
 3352P&lt;BR&gt;
 3352T&lt;BR&gt;
 3352V&lt;BR&gt;
 3352W&lt;BR&gt;
 3362H&lt;BR&gt;
 3362M&lt;BR&gt;
 3362P&lt;BR&gt;
 3362R&lt;BR&gt;
 3362S&lt;BR&gt;
 3362U&lt;BR&gt;
 3362W&lt;BR&gt;
 3362X&lt;BR&gt;
 3386B&lt;BR&gt;
 3386C&lt;BR&gt;
 3386F&lt;BR&gt;
 3386H&lt;BR&gt;
 3386K&lt;BR&gt;
 3386M&lt;BR&gt;
 3386P&lt;BR&gt;
 3386S&lt;BR&gt;
 3386W&lt;BR&gt;
 3386X&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 25P&lt;BR&gt;
 25S&lt;BR&gt;
 25RX&lt;BR&gt;
 82P&lt;BR&gt;
 82M&lt;BR&gt;
 82PA&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 91E&lt;BR&gt;
 91X&lt;BR&gt;
 91T&lt;BR&gt;
 91B&lt;BR&gt;
 91A&lt;BR&gt;
 91V&lt;BR&gt;
 91W&lt;BR&gt;
 25W&lt;BR&gt;
 25V&lt;BR&gt;
 25P&lt;BR&gt;
 -&lt;BR&gt;
 25S&lt;BR&gt;
 25U&lt;BR&gt;
 25RX&lt;BR&gt;
 25X&lt;BR&gt;
 72XW&lt;BR&gt;
 72XL&lt;BR&gt;
 72PM&lt;BR&gt;
 72RX&lt;BR&gt;
 -&lt;BR&gt;
 72PX&lt;BR&gt;
 72P&lt;BR&gt;
 72RXW&lt;BR&gt;
 72RXL&lt;BR&gt;
 72X&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 T7YB&lt;BR&gt;
 T7YA&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 TXD&lt;BR&gt;
 TYA&lt;BR&gt;
 TYP&lt;BR&gt;
 -&lt;BR&gt;
 TYD&lt;BR&gt;
 TX&lt;BR&gt;
 -&lt;BR&gt;
 150SX&lt;BR&gt;
 100SX&lt;BR&gt;
 102T&lt;BR&gt;
 101S&lt;BR&gt;
 190T&lt;BR&gt;
 150TX&lt;BR&gt;
 101&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 101SX&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 ET6P&lt;BR&gt;
 ET6S&lt;BR&gt;
 ET6X&lt;BR&gt;
 RJ-6W/8014EMW&lt;BR&gt;
 RJ-6P/8014EMP&lt;BR&gt;
 RJ-6X/8014EMX&lt;BR&gt;
 TM7W&lt;BR&gt;
 TM7P&lt;BR&gt;
 TM7X&lt;BR&gt;
 -&lt;BR&gt;
 8017SMS&lt;BR&gt;
 -&lt;BR&gt;
 8017SMB&lt;BR&gt;
 8017SMA&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 CT-6W&lt;BR&gt;
 CT-6H&lt;BR&gt;
 CT-6P&lt;BR&gt;
 CT-6R&lt;BR&gt;
 -&lt;BR&gt;
 CT-6V&lt;BR&gt;
 CT-6X&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 8038EKV&lt;BR&gt;
 -&lt;BR&gt;
 8038EKX&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 8038EKP&lt;BR&gt;
 8038EKZ&lt;BR&gt;
 8038EKW&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 3321H&lt;BR&gt;
 3321P&lt;BR&gt;
 3321N&lt;BR&gt;
 1102H&lt;BR&gt;
 1102P&lt;BR&gt;
 1102T&lt;BR&gt;
 RVA0911V304A&lt;BR&gt;
 -&lt;BR&gt;
 RVA0911H413A&lt;BR&gt;
 RVG0707V100A&lt;BR&gt;
 RVA0607V(H)306A&lt;BR&gt;
 RVA1214H213A&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 3104B&lt;BR&gt;
 3104C&lt;BR&gt;
 3104F&lt;BR&gt;
 3104H&lt;BR&gt;
 -&lt;BR&gt;
 3104M&lt;BR&gt;
 3104P&lt;BR&gt;
 3104S&lt;BR&gt;
 3104W&lt;BR&gt;
 3104X&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 EVMQ0G&lt;BR&gt;
 EVMQIG&lt;BR&gt;
 EVMQ3G&lt;BR&gt;
 EVMS0G&lt;BR&gt;
 EVMQ0G&lt;BR&gt;
 EVMG0G&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 EVMK4GA00B&lt;BR&gt;
 EVM30GA00B&lt;BR&gt;
 EVMK0GA00B&lt;BR&gt;
 EVM38GA00B&lt;BR&gt;
 EVMB6&lt;BR&gt;
 EVLQ0&lt;BR&gt;
 -&lt;BR&gt;
 EVMMSG&lt;BR&gt;
 EVMMBG&lt;BR&gt;
 EVMMAG&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 EVMMCS&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 EVMM1&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 EVMM0&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 EVMM3&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 62-3-1&lt;BR&gt;
 62-1-2&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 67R&lt;BR&gt;
 -&lt;BR&gt;
 67P&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 67X&lt;BR&gt;
 63V&lt;BR&gt;
 63S&lt;BR&gt;
 63M&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 63H&lt;BR&gt;
 63P&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 63X&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 RJ/RJR50&lt;BR&gt;
 RJ/RJR50&lt;BR&gt;
 RJ/RJR50&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;/TABLE&gt;
 &lt;P&gt;&amp;nbsp;&lt;P&gt;
 &lt;TABLE BORDER=0 CELLSPACING=1 CELLPADDING=3&gt;
 &lt;TR&gt;
 &lt;TD COLSPAN=7&gt;
 &lt;FONT color="#0000FF" SIZE=4 FACE=ARIAL&gt;&lt;B&gt;SMD TRIM-POT CROSS REFERENCE&lt;/B&gt;&lt;/FONT&gt;
 &lt;P&gt;
 &lt;FONT SIZE=4 FACE=ARIAL&gt;&lt;B&gt;MULTI-TURN&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;TR&gt;
 &lt;TD&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BOURNS&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BI&amp;nbsp;TECH&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;DALE-VISHAY&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PHILIPS/MEPCO&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PANASONIC&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;TOCOS&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;AUX/KYOCERA&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;TR&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 3224G&lt;BR&gt;
 3224J&lt;BR&gt;
 3224W&lt;BR&gt;
 3269P&lt;BR&gt;
 3269W&lt;BR&gt;
 3269X&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 44G&lt;BR&gt;
 44J&lt;BR&gt;
 44W&lt;BR&gt;
 84P&lt;BR&gt;
 84W&lt;BR&gt;
 84X&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 ST63Z&lt;BR&gt;
 ST63Y&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 ST5P&lt;BR&gt;
 ST5W&lt;BR&gt;
 ST5X&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;TR&gt;
 &lt;TD COLSPAN=7&gt;&amp;nbsp;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;TR&gt;
 &lt;TD COLSPAN=7&gt;
 &lt;FONT SIZE=4 FACE=ARIAL&gt;&lt;B&gt;SINGLE TURN&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;TR&gt;
 &lt;TD&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BOURNS&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BI&amp;nbsp;TECH&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;DALE-VISHAY&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PHILIPS/MEPCO&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PANASONIC&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;TOCOS&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;AUX/KYOCERA&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;TR&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 3314G&lt;BR&gt;
 3314J&lt;BR&gt;
 3364A/B&lt;BR&gt;
 3364C/D&lt;BR&gt;
 3364W/X&lt;BR&gt;
 3313G&lt;BR&gt;
 3313J&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 23B&lt;BR&gt;
 23A&lt;BR&gt;
 21X&lt;BR&gt;
 21W&lt;BR&gt;
 -&lt;BR&gt;
 22B&lt;BR&gt;
 22A&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 ST5YL/ST53YL&lt;BR&gt;
 ST5YJ/5T53YJ&lt;BR&gt;
 ST-23A&lt;BR&gt;
 ST-22B&lt;BR&gt;
 ST-22&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 ST-4B&lt;BR&gt;
 ST-4A&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 ST-3B&lt;BR&gt;
 ST-3A&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 EVM-6YS&lt;BR&gt;
 EVM-1E&lt;BR&gt;
 EVM-1G&lt;BR&gt;
 EVM-1D&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 G4B&lt;BR&gt;
 G4A&lt;BR&gt;
 TR04-3S1&lt;BR&gt;
 TRG04-2S1&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 DVR-43A&lt;BR&gt;
 CVR-42C&lt;BR&gt;
 CVR-42A/C&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;/TABLE&gt;
 &lt;P&gt;
 &lt;FONT SIZE=4 FACE=ARIAL&gt;&lt;B&gt;ALT =&amp;nbsp;ALTERNATE&lt;/B&gt;&lt;/FONT&gt;
 &lt;P&gt;
 
 &amp;nbsp;
 &lt;P&gt;
 &lt;/td&gt;
 &lt;/tr&gt;
 &lt;/table&gt;
 &lt;/BODY&gt;&lt;/HTML&gt;</description>
<packages>
<package name="DO34-7">
<description>&lt;B&gt;DIODE&lt;/B&gt;&lt;p&gt;
 diameter 1.8 mm, horizontal, grid 7.62 mm</description>
<wire x1="-0.8255" y1="-0.762" x2="0.5715" y2="-0.762" width="0.127" layer="21"/>
<wire x1="0.5715" y1="0.762" x2="-0.889" y2="0.762" width="0.127" layer="21"/>
<wire x1="-0.889" y1="0.762" x2="-1.2065" y2="0.6985" width="0.127" layer="21"/>
<wire x1="-1.2065" y1="0.6985" x2="-1.4605" y2="0.508" width="0.127" layer="21"/>
<wire x1="-1.4605" y1="0.508" x2="-1.524" y2="0.254" width="0.127" layer="21"/>
<wire x1="1.2065" y1="-0.1905" x2="1.2065" y2="0.254" width="0.127" layer="21"/>
<wire x1="-1.524" y1="0.254" x2="-1.524" y2="-0.1905" width="0.127" layer="21"/>
<wire x1="3.81" y1="0" x2="2.921" y2="0" width="0.127" layer="51"/>
<wire x1="-3.81" y1="0" x2="-2.921" y2="0" width="0.127" layer="51"/>
<wire x1="-0.508" y1="0" x2="-0.127" y2="0" width="0.127" layer="21"/>
<wire x1="0.5715" y1="0.381" x2="0.5715" y2="-0.381" width="0.127" layer="21"/>
<wire x1="0.5715" y1="-0.381" x2="-0.127" y2="0" width="0.127" layer="21"/>
<wire x1="-0.127" y1="0" x2="0.9525" y2="0" width="0.127" layer="21"/>
<wire x1="-0.127" y1="0" x2="0.5715" y2="0.381" width="0.127" layer="21"/>
<wire x1="-0.127" y1="0.381" x2="-0.127" y2="0" width="0.127" layer="21"/>
<wire x1="-0.127" y1="0" x2="-0.127" y2="-0.381" width="0.127" layer="21"/>
<pad name="C" x="-3.81" y="0" drill="0.8128" shape="octagon"/>
<pad name="A" x="3.81" y="0" drill="0.8128" shape="octagon"/>
<text x="0" y="1.143" size="0.8128" layer="25" ratio="10" rot="R180" align="top-center">&gt;NAME</text>
<text x="0" y="-1.143" size="0.8128" layer="27" ratio="10" align="top-center">&gt;VALUE</text>
<rectangle x1="-1.143" y1="-0.6985" x2="-0.762" y2="0.6985" layer="21"/>
<rectangle x1="1.143" y1="-0.1016" x2="3.175" y2="0.1016" layer="21"/>
<rectangle x1="-3.175" y1="-0.1016" x2="-1.524" y2="0.1016" layer="21"/>
<wire x1="0.5715" y1="-0.762" x2="0.889" y2="-0.6985" width="0.127" layer="21"/>
<wire x1="0.889" y1="-0.6985" x2="1.143" y2="-0.508" width="0.127" layer="21"/>
<wire x1="1.143" y1="-0.508" x2="1.2065" y2="-0.254" width="0.127" layer="21"/>
<wire x1="-0.889" y1="-0.762" x2="-1.2065" y2="-0.6985" width="0.127" layer="21"/>
<wire x1="-1.2065" y1="-0.6985" x2="-1.4605" y2="-0.508" width="0.127" layer="21"/>
<wire x1="-1.4605" y1="-0.508" x2="-1.524" y2="-0.254" width="0.127" layer="21"/>
<wire x1="0.5715" y1="0.762" x2="0.889" y2="0.6985" width="0.127" layer="21"/>
<wire x1="0.889" y1="0.6985" x2="1.143" y2="0.508" width="0.127" layer="21"/>
<wire x1="1.143" y1="0.508" x2="1.2065" y2="0.254" width="0.127" layer="21"/>
</package>
<package name="DO35-7">
<description>&lt;B&gt;DIODE&lt;/B&gt;&lt;p&gt;
 diameter 2 mm, horizontal, grid 7.62 mm</description>
<wire x1="2.286" y1="0.762" x2="2.032" y2="1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="2.032" y1="-1.016" x2="2.286" y2="-0.762" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.032" y1="1.016" x2="-2.286" y2="0.762" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.286" y1="-0.762" x2="-2.032" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<rectangle x1="-1.905" y1="-1.016" x2="-1.397" y2="1.016" layer="21"/>
<rectangle x1="2.286" y1="-0.254" x2="2.921" y2="0.254" layer="21"/>
<rectangle x1="-2.921" y1="-0.254" x2="-2.286" y2="0.254" layer="21"/>
<pad name="A" x="3.81" y="0" drill="0.7"/>
<pad name="C" x="-3.81" y="0" drill="0.7"/>
<text x="-2.286" y="1.27" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.286" y="-2.667" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<wire x1="3.81" y1="0" x2="2.921" y2="0" width="0.508" layer="51"/>
<wire x1="-3.81" y1="0" x2="-2.921" y2="0" width="0.508" layer="51"/>
<wire x1="-0.635" y1="0" x2="0" y2="0" width="0.1524" layer="21"/>
<wire x1="1.016" y1="0.635" x2="1.016" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="1.016" y1="-0.635" x2="0" y2="0" width="0.1524" layer="21"/>
<wire x1="0" y1="0" x2="1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="0" y1="0" x2="1.016" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="0" y2="0" width="0.1524" layer="21"/>
<wire x1="0" y1="0" x2="0" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="2.032" y1="1.016" x2="2.286" y2="0.762" width="0.1524" layer="21" curve="-90"/>
<wire x1="2.286" y1="0.762" x2="2.286" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="2.032" y1="-1.016" x2="2.286" y2="-0.762" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.286" y1="0.762" x2="-2.032" y2="1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.286" y1="-0.762" x2="-2.032" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.032" y1="-1.016" x2="2.032" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="0.762" x2="-2.286" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="-2.032" y1="1.016" x2="2.032" y2="1.016" width="0.1524" layer="21"/>
<text x="-2.286" y="1.27" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.286" y="-2.667" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-1.905" y1="-1.016" x2="-1.397" y2="1.016" layer="21"/>
<rectangle x1="2.286" y1="-0.254" x2="2.921" y2="0.254" layer="21"/>
<rectangle x1="-2.921" y1="-0.254" x2="-2.286" y2="0.254" layer="21"/>
</package>
<package name="DO35-10">
<description>&lt;B&gt;DIODE&lt;/B&gt;&lt;p&gt;
 diameter 2 mm, horizontal, grid 10.16 mm</description>
<wire x1="2.286" y1="0.762" x2="2.032" y2="1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.032" y1="1.016" x2="-2.286" y2="0.762" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.286" y1="-0.762" x2="-2.032" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="2.032" y1="-1.016" x2="2.286" y2="-0.762" width="0.1524" layer="21" curve="90"/>
<rectangle x1="-1.905" y1="-1.016" x2="-1.397" y2="1.016" layer="21"/>
<rectangle x1="2.286" y1="-0.254" x2="4.191" y2="0.254" layer="21"/>
<rectangle x1="-4.191" y1="-0.254" x2="-2.286" y2="0.254" layer="21"/>
<pad name="A" x="5.08" y="0" drill="0.8128" shape="long"/>
<pad name="C" x="-5.08" y="0" drill="0.8128" shape="long"/>
<text x="-2.159" y="1.27" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.159" y="-2.667" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<wire x1="5.08" y1="0" x2="4.191" y2="0" width="0.508" layer="51"/>
<wire x1="-5.08" y1="0" x2="-4.191" y2="0" width="0.508" layer="51"/>
<wire x1="-0.635" y1="0" x2="0" y2="0" width="0.1524" layer="21"/>
<wire x1="1.016" y1="0.635" x2="1.016" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="1.016" y1="-0.635" x2="0" y2="0" width="0.1524" layer="21"/>
<wire x1="0" y1="0" x2="1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="0" y1="0" x2="1.016" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="0" y2="0" width="0.1524" layer="21"/>
<wire x1="0" y1="0" x2="0" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="2.032" y1="1.016" x2="2.286" y2="0.762" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.286" y1="0.762" x2="-2.032" y2="1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.286" y1="-0.762" x2="-2.032" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="2.032" y1="-1.016" x2="2.286" y2="-0.762" width="0.1524" layer="21" curve="90"/>
<wire x1="2.286" y1="-0.762" x2="2.286" y2="0.762" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="0.762" x2="-2.286" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="-2.032" y1="1.016" x2="2.032" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-2.032" y1="-1.016" x2="2.032" y2="-1.016" width="0.1524" layer="21"/>
<text x="-2.159" y="1.27" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.159" y="-2.667" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-1.905" y1="-1.016" x2="-1.397" y2="1.016" layer="21"/>
<rectangle x1="2.286" y1="-0.254" x2="4.191" y2="0.254" layer="21"/>
<rectangle x1="-4.191" y1="-0.254" x2="-2.286" y2="0.254" layer="21"/>
</package>
<package name="DO35-2_54">
<description>DO35-2_54</description>
<wire x1="-0.1905" y1="0" x2="0.381" y2="0" width="0.1524" layer="21"/>
<wire x1="1.143" y1="0.508" x2="1.143" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="1.143" y1="-0.508" x2="0.381" y2="0" width="0.1524" layer="21"/>
<wire x1="0.381" y1="0" x2="1.7145" y2="0" width="0.1524" layer="21"/>
<wire x1="0.381" y1="0" x2="1.143" y2="0.508" width="0.1524" layer="21"/>
<wire x1="0.381" y1="0" x2="0.381" y2="-0.4445" width="0.1524" layer="21"/>
<wire x1="0.381" y1="0.508" x2="0.381" y2="0" width="0.1524" layer="21"/>
<pad name="C" x="-1.27" y="0" drill="0.6" diameter="1.4224"/>
<text x="-2.159" y="1.397" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.159" y="-2.667" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<pad name="A" x="1.27" y="0" drill="0.6" diameter="1.4224"/>
<circle x="0.8255" y="0" radius="1.016" width="0.2032" layer="21"/>
<wire x1="-0.3175" y1="0" x2="-1.27" y2="0" width="0.4064" layer="21"/>
</package>
<package name="DO35-2_54A">
<wire x1="-2.286" y1="0" x2="-1.651" y2="0" width="0.1524" layer="22"/>
<wire x1="-0.762" y1="-0.635" x2="-0.762" y2="0.635" width="0.1524" layer="22"/>
<wire x1="-0.762" y1="0.635" x2="-1.651" y2="0" width="0.1524" layer="22"/>
<wire x1="-1.651" y1="0" x2="-0.381" y2="0" width="0.1524" layer="22"/>
<wire x1="-1.651" y1="0" x2="-0.762" y2="-0.635" width="0.1524" layer="22"/>
<wire x1="-1.651" y1="0" x2="-1.651" y2="0.635" width="0.1524" layer="22"/>
<wire x1="-1.651" y1="-0.635" x2="-1.651" y2="0" width="0.1524" layer="22"/>
<pad name="C" x="-1.27" y="0" drill="0.6" diameter="1.4224" rot="R180"/>
<text x="-2.159" y="1.397" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.159" y="-2.667" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<pad name="A" x="1.27" y="0" drill="0.6" diameter="1.4224" rot="R180"/>
<circle x="-1.27" y="0" radius="1.27" width="0.254" layer="22"/>
<wire x1="0.0635" y1="0" x2="1.27" y2="0" width="0.4064" layer="22"/>
</package>
<package name="DO34-12">
<pad name="C" x="-6.35" y="0" drill="0.8128" shape="long"/>
<pad name="A" x="6.35" y="0" drill="0.8128" shape="long"/>
<rectangle x1="1.3335" y1="-0.127" x2="5.08" y2="0.127" layer="21"/>
<rectangle x1="-5.08" y1="-0.127" x2="-1.397" y2="0.127" layer="21"/>
<wire x1="5.08" y1="0" x2="6.35" y2="0" width="0.254" layer="21"/>
<wire x1="-6.35" y1="0" x2="-5.08" y2="0" width="0.254" layer="21"/>
<wire x1="-0.6985" y1="-0.762" x2="0.6985" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="0.6985" y1="0.762" x2="-0.762" y2="0.762" width="0.1524" layer="21"/>
<wire x1="-0.762" y1="0.762" x2="-1.0795" y2="0.6985" width="0.1524" layer="21"/>
<wire x1="-1.0795" y1="0.6985" x2="-1.3335" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-1.3335" y1="0.508" x2="-1.397" y2="0.254" width="0.1524" layer="21"/>
<wire x1="1.3335" y1="-0.1905" x2="1.3335" y2="0.254" width="0.1524" layer="21"/>
<wire x1="-1.397" y1="0.254" x2="-1.397" y2="-0.1905" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="0" x2="0" y2="0" width="0.1524" layer="21"/>
<wire x1="0.6985" y1="0.381" x2="0.6985" y2="-0.381" width="0.1524" layer="21"/>
<wire x1="0.6985" y1="-0.381" x2="0" y2="0" width="0.1524" layer="21"/>
<wire x1="0" y1="0" x2="1.0795" y2="0" width="0.1524" layer="21"/>
<wire x1="0" y1="0" x2="0.6985" y2="0.381" width="0.1524" layer="21"/>
<wire x1="0" y1="0.381" x2="0" y2="0" width="0.1524" layer="21"/>
<wire x1="0" y1="0" x2="0" y2="-0.381" width="0.1524" layer="21"/>
<text x="0.127" y="1.143" size="0.8128" layer="25" ratio="10" rot="R180" align="top-center">&gt;NAME</text>
<text x="0.127" y="-1.143" size="0.8128" layer="27" ratio="10" align="top-center">&gt;VALUE</text>
<rectangle x1="-1.016" y1="-0.6985" x2="-0.635" y2="0.6985" layer="21"/>
<wire x1="0.6985" y1="-0.762" x2="1.016" y2="-0.6985" width="0.1524" layer="21"/>
<wire x1="1.016" y1="-0.6985" x2="1.27" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-0.508" x2="1.3335" y2="-0.254" width="0.1524" layer="21"/>
<wire x1="-0.762" y1="-0.762" x2="-1.0795" y2="-0.6985" width="0.1524" layer="21"/>
<wire x1="-1.0795" y1="-0.6985" x2="-1.3335" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="-1.3335" y1="-0.508" x2="-1.397" y2="-0.254" width="0.1524" layer="21"/>
<wire x1="0.6985" y1="0.762" x2="1.016" y2="0.6985" width="0.1524" layer="21"/>
<wire x1="1.016" y1="0.6985" x2="1.27" y2="0.508" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0.508" x2="1.3335" y2="0.254" width="0.1524" layer="21"/>
</package>
<package name="DO34-20">
<wire x1="-1.524" y1="-0.889" x2="1.524" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="1.524" y1="0.889" x2="-1.524" y2="0.889" width="0.1524" layer="21"/>
<wire x1="1.524" y1="-0.889" x2="1.524" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="0.889" x2="-1.524" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="8.89" y1="0" x2="2.921" y2="0" width="0.254" layer="51"/>
<wire x1="-8.89" y1="0" x2="-2.921" y2="0" width="0.254" layer="51"/>
<wire x1="-0.508" y1="0" x2="-0.127" y2="0" width="0.1524" layer="21"/>
<wire x1="0.889" y1="0.508" x2="0.889" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="0.889" y1="-0.508" x2="-0.127" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.127" y1="0" x2="1.27" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.127" y1="0" x2="0.889" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-0.127" y1="0.508" x2="-0.127" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.127" y1="0" x2="-0.127" y2="-0.508" width="0.1524" layer="21"/>
<pad name="C" x="-10.16" y="0" drill="0.8128" shape="long"/>
<pad name="A" x="10.16" y="0" drill="0.8128" shape="long"/>
<text x="-2.794" y="1.143" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.794" y="-2.413" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-1.143" y1="-0.889" x2="-0.762" y2="0.889" layer="21"/>
<rectangle x1="1.524" y1="-0.127" x2="2.921" y2="0.127" layer="21"/>
<rectangle x1="-2.921" y1="-0.127" x2="-1.524" y2="0.127" layer="21"/>
</package>
<package name="DO34-18">
<wire x1="-1.524" y1="-0.889" x2="1.524" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="1.524" y1="0.889" x2="-1.524" y2="0.889" width="0.1524" layer="21"/>
<wire x1="1.524" y1="-0.889" x2="1.524" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="0.889" x2="-1.524" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="-0.508" y1="0" x2="-0.127" y2="0" width="0.1524" layer="21"/>
<wire x1="0.889" y1="0.508" x2="0.889" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="0.889" y1="-0.508" x2="-0.127" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.127" y1="0" x2="1.27" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.127" y1="0" x2="0.889" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-0.127" y1="0.508" x2="-0.127" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.127" y1="0" x2="-0.127" y2="-0.508" width="0.1524" layer="21"/>
<pad name="C" x="-8.89" y="0" drill="0.8128" shape="long"/>
<pad name="A" x="8.89" y="0" drill="0.8128" shape="long"/>
<text x="-2.794" y="1.143" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.794" y="-2.413" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-1.143" y1="-0.889" x2="-0.762" y2="0.889" layer="21"/>
<wire x1="-7.62" y1="0" x2="-1.6002" y2="0" width="0.254" layer="21"/>
<wire x1="7.62" y1="0" x2="1.6002" y2="0" width="0.254" layer="21"/>
</package>
<package name="DO34-15">
<pad name="C" x="-7.62" y="0" drill="0.8128" shape="octagon"/>
<pad name="A" x="7.62" y="0" drill="0.8128" shape="octagon"/>
<rectangle x1="1.3335" y1="-0.127" x2="6.985" y2="0.127" layer="21"/>
<rectangle x1="-6.985" y1="-0.127" x2="-1.397" y2="0.127" layer="21"/>
<wire x1="-0.6985" y1="-0.762" x2="0.6985" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="0.6985" y1="0.762" x2="-0.762" y2="0.762" width="0.1524" layer="21"/>
<wire x1="-0.762" y1="0.762" x2="-1.0795" y2="0.6985" width="0.1524" layer="21"/>
<wire x1="-1.0795" y1="0.6985" x2="-1.3335" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-1.3335" y1="0.508" x2="-1.397" y2="0.254" width="0.1524" layer="21"/>
<wire x1="1.3335" y1="-0.1905" x2="1.3335" y2="0.254" width="0.1524" layer="21"/>
<wire x1="-1.397" y1="0.254" x2="-1.397" y2="-0.1905" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="0" x2="0" y2="0" width="0.1524" layer="21"/>
<wire x1="0.6985" y1="0.381" x2="0.6985" y2="-0.381" width="0.1524" layer="21"/>
<wire x1="0.6985" y1="-0.381" x2="0" y2="0" width="0.1524" layer="21"/>
<wire x1="0" y1="0" x2="1.0795" y2="0" width="0.1524" layer="21"/>
<wire x1="0" y1="0" x2="0.6985" y2="0.381" width="0.1524" layer="21"/>
<wire x1="0" y1="0.381" x2="0" y2="0" width="0.1524" layer="21"/>
<wire x1="0" y1="0" x2="0" y2="-0.381" width="0.1524" layer="21"/>
<text x="0.127" y="1.143" size="0.8128" layer="25" ratio="10" rot="R180" align="top-center">&gt;NAME</text>
<text x="0.127" y="-1.143" size="0.8128" layer="27" ratio="10" align="top-center">&gt;VALUE</text>
<rectangle x1="-1.016" y1="-0.6985" x2="-0.635" y2="0.6985" layer="21"/>
<wire x1="0.6985" y1="-0.762" x2="1.016" y2="-0.6985" width="0.1524" layer="21"/>
<wire x1="1.016" y1="-0.6985" x2="1.27" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-0.508" x2="1.3335" y2="-0.254" width="0.1524" layer="21"/>
<wire x1="-0.762" y1="-0.762" x2="-1.0795" y2="-0.6985" width="0.1524" layer="21"/>
<wire x1="-1.0795" y1="-0.6985" x2="-1.3335" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="-1.3335" y1="-0.508" x2="-1.397" y2="-0.254" width="0.1524" layer="21"/>
<wire x1="0.6985" y1="0.762" x2="1.016" y2="0.6985" width="0.1524" layer="21"/>
<wire x1="1.016" y1="0.6985" x2="1.27" y2="0.508" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0.508" x2="1.3335" y2="0.254" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="0" x2="-6.858" y2="0" width="0.127" layer="21"/>
<wire x1="7.62" y1="0" x2="6.858" y2="0" width="0.127" layer="21"/>
</package>
<package name="DO34-5">
<description>&lt;B&gt;DIODE&lt;/B&gt;&lt;p&gt;
 diameter 1.8 mm, horizontal, grid 5.08 mm</description>
<wire x1="-2.54" y1="0" x2="-1.778" y2="0" width="0.4064" layer="51"/>
<pad name="C" x="-2.54" y="0" drill="0.8128" shape="octagon"/>
<pad name="A" x="2.54" y="0" drill="0.8128" shape="octagon"/>
<text x="-1.651" y="1.27" size="0.8128" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.651" y="-1.27" size="0.8128" layer="27" ratio="10" align="top-left">&gt;VALUE</text>
<wire x1="-0.6985" y1="-0.762" x2="0.6985" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="0.6985" y1="0.762" x2="-0.762" y2="0.762" width="0.1524" layer="21"/>
<wire x1="-0.762" y1="0.762" x2="-1.0795" y2="0.6985" width="0.1524" layer="21"/>
<wire x1="-1.0795" y1="0.6985" x2="-1.3335" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-1.3335" y1="0.508" x2="-1.397" y2="0.254" width="0.1524" layer="21"/>
<wire x1="1.3335" y1="-0.1905" x2="1.3335" y2="0.254" width="0.1524" layer="21"/>
<wire x1="-1.397" y1="0.254" x2="-1.397" y2="-0.1905" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="0" x2="0" y2="0" width="0.1524" layer="21"/>
<wire x1="0.6985" y1="0.381" x2="0.6985" y2="-0.381" width="0.1524" layer="21"/>
<wire x1="0.6985" y1="-0.381" x2="0" y2="0" width="0.1524" layer="21"/>
<wire x1="0" y1="0" x2="1.0795" y2="0" width="0.1524" layer="21"/>
<wire x1="0" y1="0" x2="0.6985" y2="0.381" width="0.1524" layer="21"/>
<wire x1="0" y1="0.381" x2="0" y2="0" width="0.1524" layer="21"/>
<wire x1="0" y1="0" x2="0" y2="-0.381" width="0.1524" layer="21"/>
<rectangle x1="-1.016" y1="-0.6985" x2="-0.635" y2="0.6985" layer="21"/>
<rectangle x1="1.27" y1="-0.2032" x2="1.905" y2="0.2032" layer="21"/>
<rectangle x1="-1.905" y1="-0.2032" x2="-1.397" y2="0.2032" layer="21"/>
<wire x1="0.6985" y1="-0.762" x2="1.016" y2="-0.6985" width="0.1524" layer="21"/>
<wire x1="1.016" y1="-0.6985" x2="1.27" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-0.508" x2="1.3335" y2="-0.254" width="0.1524" layer="21"/>
<wire x1="-0.762" y1="-0.762" x2="-1.0795" y2="-0.6985" width="0.1524" layer="21"/>
<wire x1="-1.0795" y1="-0.6985" x2="-1.3335" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="-1.3335" y1="-0.508" x2="-1.397" y2="-0.254" width="0.1524" layer="21"/>
<wire x1="0.6985" y1="0.762" x2="1.016" y2="0.6985" width="0.1524" layer="21"/>
<wire x1="1.016" y1="0.6985" x2="1.27" y2="0.508" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0.508" x2="1.3335" y2="0.254" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0" x2="1.778" y2="0" width="0.4064" layer="51"/>
</package>
<package name="DO34-2,5">
<wire x1="-0.1905" y1="0" x2="0.381" y2="0" width="0.1524" layer="21"/>
<wire x1="1.143" y1="0.508" x2="1.143" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="1.143" y1="-0.508" x2="0.381" y2="0" width="0.1524" layer="21"/>
<wire x1="0.381" y1="0" x2="1.7145" y2="0" width="0.1524" layer="21"/>
<wire x1="0.381" y1="0" x2="1.143" y2="0.508" width="0.1524" layer="21"/>
<wire x1="0.381" y1="0" x2="0.381" y2="-0.4445" width="0.1524" layer="21"/>
<wire x1="0.381" y1="0.508" x2="0.381" y2="0" width="0.1524" layer="21"/>
<pad name="C" x="-1.27" y="0" drill="0.6" diameter="1.4224"/>
<text x="-2.159" y="1.397" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.159" y="-2.667" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<pad name="A" x="1.27" y="0" drill="0.6" diameter="1.4224"/>
<circle x="0.8255" y="0" radius="1.016" width="0.2032" layer="21"/>
<wire x1="-0.3175" y1="0" x2="-1.27" y2="0" width="0.4064" layer="21"/>
</package>
<package name="DO34-2,5-A">
<wire x1="0.5715" y1="0" x2="-0.889" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.127" y1="0.508" x2="-0.127" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="-0.127" y1="-0.508" x2="-0.889" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.889" y1="0" x2="-1.27" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.889" y1="0" x2="-0.127" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-0.889" y1="0" x2="-0.889" y2="-0.4445" width="0.1524" layer="21"/>
<wire x1="-0.889" y1="0.508" x2="-0.889" y2="0" width="0.1524" layer="21"/>
<pad name="A" x="1.27" y="0" drill="0.6" diameter="1.4224" rot="R180"/>
<text x="0" y="1.397" size="0.8128" layer="25" ratio="10" align="bottom-center">&gt;NAME</text>
<text x="0" y="-1.397" size="0.8128" layer="27" ratio="10" align="top-center">&gt;VALUE</text>
<pad name="C" x="-1.27" y="0" drill="0.6" diameter="1.4224"/>
<circle x="-0.4445" y="0" radius="1.016" width="0.1524" layer="21"/>
<wire x1="0.6985" y1="0" x2="1.27" y2="0" width="0.3048" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="D">
<pin name="A" x="0" y="-2.54" visible="off" length="short" direction="pas" rot="R90"/>
<pin name="C" x="0" y="2.54" visible="off" length="short" direction="pas" rot="R270"/>
<text x="-2.54" y="0" size="1.778" layer="95" align="bottom-right">&gt;NAME</text>
<text x="-2.54" y="-2.286" size="1.778" layer="96" align="bottom-right">&gt;VALUE</text>
<wire x1="1.27" y1="-1.27" x2="0" y2="1.27" width="0.254" layer="94"/>
<wire x1="0" y1="1.27" x2="-1.27" y2="-1.27" width="0.254" layer="94"/>
<wire x1="-1.27" y1="1.27" x2="0" y2="1.27" width="0.254" layer="94"/>
<wire x1="-1.27" y1="-1.27" x2="1.27" y2="-1.27" width="0.254" layer="94"/>
<wire x1="0" y1="1.27" x2="1.27" y2="1.27" width="0.254" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="1N4148" prefix="D">
<gates>
<gate name="G$1" symbol="D" x="0" y="0"/>
</gates>
<devices>
<device name="35-7" package="DO35-7">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="35-10" package="DO35-10">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="34-10" package="DO35-10">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="-7" package="DO35-7">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="35-2.54" package="DO35-2_54">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="35-2.54A" package="DO35-2_54A">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="-12" package="DO34-12">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="-20" package="DO34-20">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="-18" package="DO34-18">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="-15" package="DO34-15">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="34-5" package="DO34-5">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="34-7" package="DO34-7">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="34-2,5" package="DO34-2,5">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="34-2,5-A" package="DO34-2,5-A">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="pinconn">
<packages>
<package name="CONN-5P">
<pad name="5" x="10.16" y="0" drill="0.9" diameter="1.6764" shape="octagon" rot="R180"/>
<pad name="4" x="7.62" y="0" drill="0.9" diameter="1.6764" shape="octagon" rot="R180"/>
<pad name="3" x="5.08" y="0" drill="0.9" diameter="1.6764" shape="octagon" rot="R180"/>
<pad name="2" x="2.54" y="0" drill="0.9" diameter="1.6764" shape="octagon" rot="R180"/>
<pad name="1" x="0" y="0" drill="0.9" diameter="1.6764" shape="square" rot="R180"/>
<wire x1="-1.397" y1="1.397" x2="-1.397" y2="-1.397" width="0.127" layer="21"/>
<wire x1="-1.397" y1="-1.397" x2="11.557" y2="-1.397" width="0.127" layer="21"/>
<wire x1="11.557" y1="-1.397" x2="11.557" y2="1.397" width="0.127" layer="21"/>
<wire x1="11.557" y1="1.397" x2="-1.397" y2="1.397" width="0.127" layer="21"/>
<text x="-1.27" y="-1.524" size="0.8128" layer="25" align="top-left">&gt;NAME</text>
<text x="11.43" y="-1.524" size="0.8128" layer="27" align="top-right">&gt;VALUE</text>
</package>
<package name="CONN-8P">
<pad name="6" x="12.7" y="0" drill="0.9" diameter="1.778" shape="octagon" rot="R180"/>
<pad name="5" x="10.16" y="0" drill="0.9" diameter="1.778" shape="octagon" rot="R180"/>
<pad name="4" x="7.62" y="0" drill="0.9" diameter="1.778" shape="octagon" rot="R180"/>
<pad name="3" x="5.08" y="0" drill="0.9" diameter="1.778" shape="octagon" rot="R180"/>
<pad name="2" x="2.54" y="0" drill="0.9" diameter="1.778" shape="octagon" rot="R180"/>
<pad name="1" x="0" y="0" drill="0.9" diameter="1.778" shape="square" rot="R180"/>
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="-1.27" width="0.127" layer="21"/>
<wire x1="-1.27" y1="-1.27" x2="19.05" y2="-1.27" width="0.127" layer="21"/>
<wire x1="19.05" y1="-1.27" x2="19.05" y2="1.27" width="0.127" layer="21"/>
<wire x1="19.05" y1="1.27" x2="-1.27" y2="1.27" width="0.127" layer="21"/>
<text x="-1.524" y="-1.27" size="0.8128" layer="20" rot="R90">1</text>
<text x="-1.27" y="1.524" size="0.8128" layer="25" rot="R180" align="top-right">&gt;NAME</text>
<text x="19.05" y="1.524" size="0.8128" layer="27" rot="R180" align="top-left">&gt;VALUE</text>
<pad name="7" x="15.24" y="0" drill="0.9" diameter="1.778" shape="octagon" rot="R180"/>
<pad name="8" x="17.78" y="0" drill="0.9" diameter="1.778" shape="octagon" rot="R180"/>
</package>
<package name="PIC-UART">
<pad name="20" x="8.89" y="1.27" drill="0.8" diameter="1.778" shape="octagon" rot="R180"/>
<pad name="19" x="6.35" y="1.27" drill="0.8" diameter="1.778" shape="square" rot="R180"/>
<pad name="18" x="3.81" y="1.27" drill="0.8" diameter="1.778" shape="octagon" rot="R180"/>
<pad name="17" x="1.27" y="1.27" drill="0.8" diameter="1.778" shape="octagon" rot="R180"/>
<wire x1="10.16" y1="2.54" x2="10.16" y2="0" width="0.127" layer="22"/>
<wire x1="10.16" y1="0" x2="0" y2="0" width="0.127" layer="22"/>
<wire x1="0" y1="0" x2="0" y2="2.54" width="0.127" layer="22"/>
<wire x1="0" y1="2.54" x2="10.16" y2="2.54" width="0.127" layer="22"/>
<text x="-1.27" y="1.27" size="0.6096" layer="23" align="top-left">17</text>
<text x="0" y="-1.27" size="0.8128" layer="27">&gt;VALUE</text>
<text x="1.27" y="3.175" size="0.6096" layer="51" font="vector" align="center">TX</text>
<text x="3.81" y="3.175" size="0.6096" layer="51" font="vector" align="center">RX</text>
<text x="6.35" y="3.175" size="0.6096" layer="51" font="vector" align="center">VSS</text>
<text x="8.89" y="3.175" size="0.6096" layer="51" font="vector" align="center">VDD</text>
<text x="10.16" y="-1.27" size="0.8128" layer="25" rot="R180" align="top-left">&gt;NAME</text>
</package>
<package name="CONN-4P">
<pad name="4" x="7.62" y="0" drill="0.9" diameter="1.778" shape="octagon" rot="R180"/>
<pad name="3" x="5.08" y="0" drill="0.9" diameter="1.778" shape="octagon" rot="R180"/>
<pad name="2" x="2.54" y="0" drill="0.9" diameter="1.778" shape="octagon" rot="R180"/>
<pad name="1" x="0" y="0" drill="0.9" diameter="1.778" shape="square" rot="R180"/>
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="-1.27" width="0.127" layer="21"/>
<wire x1="-1.27" y1="-1.27" x2="8.89" y2="-1.27" width="0.127" layer="21"/>
<wire x1="8.89" y1="-1.27" x2="8.89" y2="1.27" width="0.127" layer="21"/>
<wire x1="8.89" y1="1.27" x2="-1.27" y2="1.27" width="0.127" layer="21"/>
<text x="-1.524" y="1.27" size="0.8128" layer="23" rot="R180">1</text>
<text x="8.89" y="-1.524" size="0.8128" layer="25" align="top-right">&gt;NAME</text>
<text x="-1.27" y="-1.524" size="0.8128" layer="27" align="top-left">&gt;VALUE</text>
</package>
<package name="PIC-ICSP">
<pad name="4" x="7.62" y="0" drill="0.8" diameter="1.778" shape="octagon" rot="R180"/>
<pad name="1" x="0" y="0" drill="0.8" diameter="1.778" shape="square" rot="R180"/>
<pad name="2" x="2.54" y="0" drill="0.8" diameter="1.778" shape="octagon" rot="R180"/>
<pad name="3" x="5.08" y="0" drill="0.8" diameter="1.778" shape="octagon" rot="R180"/>
<wire x1="11.43" y1="1.27" x2="11.43" y2="-1.27" width="0.127" layer="22"/>
<wire x1="11.43" y1="-1.27" x2="-1.27" y2="-1.27" width="0.127" layer="22"/>
<wire x1="-1.27" y1="-1.27" x2="-1.27" y2="1.27" width="0.127" layer="22"/>
<wire x1="-1.27" y1="1.27" x2="11.43" y2="1.27" width="0.127" layer="22"/>
<text x="-2.54" y="0" size="0.6096" layer="23" align="top-left">1</text>
<text x="11.43" y="-1.905" size="0.8128" layer="27" rot="R180">&gt;VALUE</text>
<text x="10.16" y="1.905" size="0.6096" layer="51" font="vector" align="center">PGD</text>
<text x="7.62" y="1.905" size="0.6096" layer="51" font="vector" align="center">PGC</text>
<text x="0" y="1.905" size="0.6096" layer="51" font="vector" align="center">VSS</text>
<text x="2.54" y="1.905" size="0.6096" layer="51" font="vector" align="center">VDD</text>
<pad name="5" x="10.16" y="0" drill="0.8" diameter="1.778" shape="octagon" rot="R180"/>
<text x="5.08" y="1.905" size="0.6096" layer="51" font="vector" align="center">VPP</text>
<text x="-1.27" y="-1.905" size="0.8128" layer="25" align="top-left">&gt;NAME</text>
</package>
</packages>
<symbols>
<symbol name="PIC-ICSP">
<pin name="VDD" x="-7.62" y="2.54" length="short" direction="pas"/>
<pin name="VSS" x="-7.62" y="5.08" length="short" direction="pas"/>
<pin name="PGC" x="-7.62" y="-2.54" length="short" direction="pas"/>
<pin name="PGD" x="-7.62" y="-5.08" length="short" direction="pas"/>
<wire x1="5.08" y1="7.62" x2="-5.08" y2="7.62" width="0.254" layer="94"/>
<wire x1="-5.08" y1="7.62" x2="-5.08" y2="-7.62" width="0.254" layer="94"/>
<wire x1="-5.08" y1="-7.62" x2="5.08" y2="-7.62" width="0.254" layer="94"/>
<wire x1="5.08" y1="-7.62" x2="5.08" y2="7.62" width="0.254" layer="94"/>
<text x="-5.08" y="10.16" size="1.778" layer="95" align="top-left">&gt;NAME</text>
<text x="-5.08" y="-10.16" size="1.778" layer="96">&gt;VALUE</text>
<text x="3.048" y="0" size="1.27" layer="97" font="fixed" rot="R270" align="center">PIC ICSP</text>
<pin name="MCLR" x="-7.62" y="0" length="short" direction="pas"/>
</symbol>
<symbol name="HD44780-8PIN">
<pin name="D5" x="0" y="5.08" length="short" direction="pas"/>
<pin name="D4" x="0" y="2.54" length="short" direction="pas"/>
<pin name="RS" x="0" y="-2.54" length="short" direction="pas"/>
<pin name="GND" x="0" y="-7.62" length="short" direction="pas"/>
<wire x1="12.7" y1="12.7" x2="2.54" y2="12.7" width="0.254" layer="94"/>
<wire x1="2.54" y1="12.7" x2="2.54" y2="-10.16" width="0.254" layer="94"/>
<wire x1="2.54" y1="-10.16" x2="12.7" y2="-10.16" width="0.254" layer="94"/>
<wire x1="12.7" y1="-10.16" x2="12.7" y2="12.7" width="0.254" layer="94"/>
<text x="2.54" y="15.24" size="1.778" layer="95" align="top-left">&gt;NAME</text>
<text x="2.54" y="-12.7" size="1.778" layer="96">&gt;VALUE</text>
<text x="10.668" y="1.27" size="1.27" layer="97" font="fixed" rot="R270" align="center">HD44780 4-bit</text>
<pin name="E" x="0" y="0" length="short" direction="pas"/>
<pin name="VCC" x="0" y="-5.08" length="short" direction="pas"/>
<pin name="D6" x="0" y="7.62" length="short" direction="pas"/>
<pin name="D7" x="0" y="10.16" length="short" direction="pas"/>
</symbol>
<symbol name="PIC-UART">
<pin name="VDD" x="-7.62" y="3.81" length="short" direction="pas"/>
<pin name="VSS" x="-7.62" y="1.27" length="short" direction="pas"/>
<pin name="RX" x="-7.62" y="-1.27" length="short" direction="pas"/>
<pin name="TX" x="-7.62" y="-3.81" length="short" direction="pas"/>
<wire x1="5.08" y1="6.35" x2="-5.08" y2="6.35" width="0.254" layer="94"/>
<wire x1="-5.08" y1="6.35" x2="-5.08" y2="-6.35" width="0.254" layer="94"/>
<wire x1="-5.08" y1="-6.35" x2="5.08" y2="-6.35" width="0.254" layer="94"/>
<wire x1="5.08" y1="-6.35" x2="5.08" y2="6.35" width="0.254" layer="94"/>
<text x="-5.08" y="8.89" size="1.778" layer="95" align="top-left">&gt;NAME</text>
<text x="-5.08" y="-8.89" size="1.778" layer="96">&gt;VALUE</text>
<text x="3.048" y="0" size="1.27" layer="97" font="fixed" rot="R270" align="center">PIC UART</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="PIC-ICSP" prefix="J">
<gates>
<gate name="G$1" symbol="PIC-ICSP" x="2.54" y="0"/>
</gates>
<devices>
<device name="" package="CONN-5P">
<connects>
<connect gate="G$1" pin="MCLR" pad="3"/>
<connect gate="G$1" pin="PGC" pad="4"/>
<connect gate="G$1" pin="PGD" pad="5"/>
<connect gate="G$1" pin="VDD" pad="2"/>
<connect gate="G$1" pin="VSS" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="-ICSP" package="PIC-ICSP">
<connects>
<connect gate="G$1" pin="MCLR" pad="3"/>
<connect gate="G$1" pin="PGC" pad="4"/>
<connect gate="G$1" pin="PGD" pad="5"/>
<connect gate="G$1" pin="VDD" pad="2"/>
<connect gate="G$1" pin="VSS" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="HD44780-4BIT" prefix="J">
<gates>
<gate name="G$1" symbol="HD44780-8PIN" x="-7.62" y="-1.27"/>
</gates>
<devices>
<device name="-8PIN" package="CONN-8P">
<connects>
<connect gate="G$1" pin="D4" pad="5"/>
<connect gate="G$1" pin="D5" pad="6"/>
<connect gate="G$1" pin="D6" pad="7"/>
<connect gate="G$1" pin="D7" pad="8"/>
<connect gate="G$1" pin="E" pad="4"/>
<connect gate="G$1" pin="GND" pad="1"/>
<connect gate="G$1" pin="RS" pad="3"/>
<connect gate="G$1" pin="VCC" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="PIC-UART" prefix="J">
<gates>
<gate name="1" symbol="PIC-UART" x="1.27" y="-5.08"/>
</gates>
<devices>
<device name="" package="PIC-UART">
<connects>
<connect gate="1" pin="RX" pad="18"/>
<connect gate="1" pin="TX" pad="17"/>
<connect gate="1" pin="VDD" pad="20"/>
<connect gate="1" pin="VSS" pad="19"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="-4P" package="CONN-4P">
<connects>
<connect gate="1" pin="RX" pad="2"/>
<connect gate="1" pin="TX" pad="1"/>
<connect gate="1" pin="VDD" pad="4"/>
<connect gate="1" pin="VSS" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="led">
<description>&lt;b&gt;LEDs&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;&lt;br&gt;
Extended by Federico Battaglin &lt;author&gt;&amp;lt;federico.rd@fdpinternational.com&amp;gt;&lt;/author&gt; with DUOLED</description>
<packages>
<package name="LED3MM">
<description>&lt;B&gt;LED&lt;/B&gt;&lt;p&gt;
3 mm, round</description>
<wire x1="1.5748" y1="-1.27" x2="1.5748" y2="1.27" width="0.254" layer="51"/>
<wire x1="-1.524" y1="0" x2="-1.1708" y2="0.9756" width="0.1524" layer="51" curve="-39.80361"/>
<wire x1="-1.524" y1="0" x2="-1.1391" y2="-1.0125" width="0.1524" layer="51" curve="41.633208"/>
<wire x1="1.1571" y1="0.9918" x2="1.524" y2="0" width="0.1524" layer="51" curve="-40.601165"/>
<wire x1="1.1708" y1="-0.9756" x2="1.524" y2="0" width="0.1524" layer="51" curve="39.80361"/>
<wire x1="0" y1="1.524" x2="1.2401" y2="0.8858" width="0.1524" layer="21" curve="-54.461337"/>
<wire x1="-1.2192" y1="0.9144" x2="0" y2="1.524" width="0.1524" layer="21" curve="-53.130102"/>
<wire x1="0" y1="-1.524" x2="1.203" y2="-0.9356" width="0.1524" layer="21" curve="52.126876"/>
<wire x1="-1.203" y1="-0.9356" x2="0" y2="-1.524" width="0.1524" layer="21" curve="52.126876"/>
<wire x1="-0.635" y1="0" x2="0" y2="0.635" width="0.1524" layer="51" curve="-90"/>
<wire x1="-1.016" y1="0" x2="0" y2="1.016" width="0.1524" layer="51" curve="-90"/>
<wire x1="0" y1="-0.635" x2="0.635" y2="0" width="0.1524" layer="51" curve="90"/>
<wire x1="0" y1="-1.016" x2="1.016" y2="0" width="0.1524" layer="51" curve="90"/>
<wire x1="0" y1="2.032" x2="1.561" y2="1.3009" width="0.254" layer="21" curve="-50.193108"/>
<wire x1="-1.7929" y1="0.9562" x2="0" y2="2.032" width="0.254" layer="21" curve="-61.926949"/>
<wire x1="0" y1="-2.032" x2="1.5512" y2="-1.3126" width="0.254" layer="21" curve="49.763022"/>
<wire x1="-1.7643" y1="-1.0082" x2="0" y2="-2.032" width="0.254" layer="21" curve="60.255215"/>
<wire x1="-2.032" y1="0" x2="-1.7891" y2="0.9634" width="0.254" layer="51" curve="-28.301701"/>
<wire x1="-2.032" y1="0" x2="-1.7306" y2="-1.065" width="0.254" layer="51" curve="31.60822"/>
<pad name="A" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="K" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="1.905" y="0.381" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="1.905" y="-1.651" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="LED">
<wire x1="-1.27" y1="1.27" x2="0" y2="-1.27" width="0.254" layer="94"/>
<wire x1="0" y1="-1.27" x2="1.27" y2="1.27" width="0.254" layer="94"/>
<wire x1="-1.27" y1="-1.27" x2="0" y2="-1.27" width="0.254" layer="94"/>
<wire x1="0" y1="-1.27" x2="1.27" y2="-1.27" width="0.254" layer="94"/>
<wire x1="-1.27" y1="1.27" x2="0" y2="1.27" width="0.254" layer="94"/>
<wire x1="0" y1="1.27" x2="1.27" y2="1.27" width="0.254" layer="94"/>
<wire x1="0" y1="1.27" x2="0" y2="-1.27" width="0.1524" layer="94"/>
<wire x1="2.032" y1="0.508" x2="3.429" y2="-0.889" width="0.1524" layer="94"/>
<wire x1="1.905" y1="-0.635" x2="3.302" y2="-2.032" width="0.1524" layer="94"/>
<text x="-1.27" y="2.54" size="1.778" layer="95" rot="R180">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.778" layer="96" rot="MR0">&gt;VALUE</text>
<pin name="C" x="0" y="-3.81" visible="off" length="short" direction="pas" rot="R90"/>
<pin name="A" x="0" y="3.81" visible="off" length="short" direction="pas" rot="R270"/>
<polygon width="0.1524" layer="94">
<vertex x="3.429" y="-0.889"/>
<vertex x="3.048" y="0"/>
<vertex x="2.54" y="-0.508"/>
</polygon>
<polygon width="0.1524" layer="94">
<vertex x="3.302" y="-2.032"/>
<vertex x="2.921" y="-1.143"/>
<vertex x="2.413" y="-1.651"/>
</polygon>
</symbol>
</symbols>
<devicesets>
<deviceset name="TLLG4400" prefix="LED">
<description>&lt;b&gt;Low Current (2mA) LED 3 mm Tinted Diffused Package&lt;/b&gt; color &lt;b&gt;&lt;font color="green"&gt;GREEN&lt;/font&gt;&lt;/b&gt;&lt;p&gt;
Source: &lt;a href="http://www.farnell.com/datasheets/391098.pdf"&gt; Data sheet&lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="LED" x="0" y="0"/>
</gates>
<devices>
<device name="" package="LED3MM">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="K"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="VISHAY SEMICONDUCTOR" constant="no"/>
<attribute name="OC_FARNELL" value="1612435" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="pinhead">
<description>&lt;b&gt;Pin Header Connectors&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="1X02">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-1.905" y1="1.27" x2="-0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="0" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="-0.635" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-0.635" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="1.27" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0.635" x2="2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.635" x2="1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="0" y2="-0.635" width="0.1524" layer="21"/>
<pad name="1" x="-1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-2.6162" y="1.8288" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.54" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.524" y1="-0.254" x2="-1.016" y2="0.254" layer="51"/>
<rectangle x1="1.016" y1="-0.254" x2="1.524" y2="0.254" layer="51"/>
</package>
<package name="1X02/90">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-2.54" y1="-1.905" x2="0" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="0" y1="-1.905" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="6.985" x2="-1.27" y2="1.27" width="0.762" layer="21"/>
<wire x1="0" y1="-1.905" x2="2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-1.905" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0.635" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="6.985" x2="1.27" y2="1.27" width="0.762" layer="21"/>
<pad name="1" x="-1.27" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="1.27" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<text x="-3.175" y="-3.81" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="4.445" y="-3.81" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-1.651" y1="0.635" x2="-0.889" y2="1.143" layer="21"/>
<rectangle x1="0.889" y1="0.635" x2="1.651" y2="1.143" layer="21"/>
<rectangle x1="-1.651" y1="-2.921" x2="-0.889" y2="-1.905" layer="21"/>
<rectangle x1="0.889" y1="-2.921" x2="1.651" y2="-1.905" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="PINHD2">
<wire x1="-6.35" y1="-2.54" x2="1.27" y2="-2.54" width="0.4064" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="1.27" y2="5.08" width="0.4064" layer="94"/>
<wire x1="1.27" y1="5.08" x2="-6.35" y2="5.08" width="0.4064" layer="94"/>
<wire x1="-6.35" y1="5.08" x2="-6.35" y2="-2.54" width="0.4064" layer="94"/>
<text x="-6.35" y="5.715" size="1.778" layer="95">&gt;NAME</text>
<text x="-6.35" y="-5.08" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="-2.54" y="2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="2" x="-2.54" y="0" visible="pad" length="short" direction="pas" function="dot"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="PINHD-1X2" prefix="JP" uservalue="yes">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="PINHD2" x="0" y="0"/>
</gates>
<devices>
<device name="" package="1X02">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="/90" package="1X02/90">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="IC1" library="mcu" deviceset="PIC16F876A-X/SP" device=""/>
<part name="R1" library="r" deviceset="R" device="0202/7" value="100kΩ"/>
<part name="R2" library="r" deviceset="R" device="0202/7" value="100kΩ"/>
<part name="R3" library="r" deviceset="R" device="0202/7" value="100kΩ"/>
<part name="R4" library="r" deviceset="R" device="0202/7" value="47kΩ"/>
<part name="R10" library="r" deviceset="R" device="0202/7" value="4.7kΩ"/>
<part name="C1" library="c" deviceset="C" device="050-020X036" value="1nF"/>
<part name="C2" library="c" deviceset="C" device="050-020X036" value="1nF"/>
<part name="C3" library="c" deviceset="CPOL" device="E5-4" value="10μF"/>
<part name="C4" library="c" deviceset="CPOL" device="E5-4" value="10μF"/>
<part name="C5" library="c" deviceset="C" device="025-020X036" value="33pF"/>
<part name="C6" library="c" deviceset="C" device="025-020X036" value="33pF"/>
<part name="C7" library="c" deviceset="CPOL" device="E2.5-6" value="100μF"/>
<part name="C9" library="rcl" deviceset="C-EU" device="025-024X044" value="100nF"/>
<part name="GND2" library="supply1" deviceset="GND" device=""/>
<part name="GND3" library="supply1" deviceset="GND" device=""/>
<part name="GND4" library="supply1" deviceset="GND" device=""/>
<part name="GND5" library="supply1" deviceset="GND" device=""/>
<part name="GND6" library="supply1" deviceset="GND" device=""/>
<part name="GND7" library="supply1" deviceset="GND" device=""/>
<part name="D1" library="d" deviceset="1N4148" device="34-7" value="1N4148"/>
<part name="L1" library="r" deviceset="L" device="02/7" value="100μH"/>
<part name="Q1" library="q" deviceset="CRYSTAL" device="HC49" value="20MHz"/>
<part name="GND11" library="supply1" deviceset="GND" device=""/>
<part name="P+2" library="supply1" deviceset="VCC" device=""/>
<part name="P+3" library="supply1" deviceset="VCC" device=""/>
<part name="P+4" library="supply1" deviceset="VCC" device=""/>
<part name="GND12" library="supply1" deviceset="GND" device=""/>
<part name="R5" library="r" deviceset="R" device="0202/7" value="4.7kΩ"/>
<part name="P+5" library="supply1" deviceset="VCC" device=""/>
<part name="GND14" library="supply1" deviceset="GND" device=""/>
<part name="SW1" library="mcu" deviceset="PB-SPST" device="" value="SPST"/>
<part name="K2" library="relay" deviceset="DS2Y-S-DC*" device="" technology="5V" value="DS2Y"/>
<part name="P+6" library="supply1" deviceset="VCC" device=""/>
<part name="T1" library="t" deviceset="BC547" device="CBE-A" value="BC547CBE-A"/>
<part name="GND8" library="supply1" deviceset="GND" device=""/>
<part name="R6" library="r" deviceset="R" device="0202/7" value="10kΩ"/>
<part name="P+7" library="supply1" deviceset="VCC" device=""/>
<part name="S1" library="sw" deviceset="SL-SW-2P-2T" device=""/>
<part name="X2" library="con-molex" deviceset="C-GRID-02" device="-70543" value="L/C"/>
<part name="X1" library="con-molex" deviceset="C-GRID-02" device="-70543" value="FREQ"/>
<part name="GND1" library="supply1" deviceset="GND" device=""/>
<part name="R7" library="r" deviceset="R" device="0202/10" value="10kΩ"/>
<part name="J3" library="pinconn" deviceset="PIC-ICSP" device="-ICSP" value="PIC-ICSP-ICSP"/>
<part name="P+1" library="supply1" deviceset="VCC" device=""/>
<part name="GND9" library="supply1" deviceset="GND" device=""/>
<part name="R8" library="r" deviceset="R" device="0202/5" value="100"/>
<part name="R9" library="r" deviceset="R" device="0202/5" value="100"/>
<part name="J1" library="pinconn" deviceset="HD44780-4BIT" device="-8PIN"/>
<part name="R11" library="r" deviceset="R" device="0202/5" value="1k"/>
<part name="LED1" library="led" deviceset="TLLG4400" device=""/>
<part name="GND10" library="supply1" deviceset="GND" device=""/>
<part name="P+8" library="supply1" deviceset="VCC" device=""/>
<part name="GND13" library="supply1" deviceset="GND" device=""/>
<part name="JP1" library="pinhead" deviceset="PINHD-1X2" device=""/>
<part name="J2" library="pinconn" deviceset="PIC-UART" device=""/>
<part name="GND15" library="supply1" deviceset="GND" device=""/>
<part name="P+9" library="supply1" deviceset="VCC" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="IC1" gate="A" x="91.44" y="22.86"/>
<instance part="R1" gate="G$1" x="16.51" y="38.1" rot="R270"/>
<instance part="R2" gate="G$1" x="7.62" y="22.86"/>
<instance part="R3" gate="G$1" x="7.62" y="45.72"/>
<instance part="R4" gate="G$1" x="25.4" y="22.86"/>
<instance part="R10" gate="G$1" x="177.8" y="30.48" rot="MR0"/>
<instance part="C1" gate="G$1" x="-17.78" y="20.32"/>
<instance part="C2" gate="G$1" x="-10.16" y="20.32"/>
<instance part="C3" gate="G$1" x="-1.27" y="30.48" smashed="yes" rot="R270">
<attribute name="NAME" x="-2.413" y="27.4574" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="-5.207" y="33.5026" size="1.778" layer="96"/>
</instance>
<instance part="C4" gate="G$1" x="25.4" y="7.62"/>
<instance part="C5" gate="G$1" x="45.72" y="7.62" smashed="yes" rot="MR180">
<attribute name="NAME" x="42.164" y="7.239" size="1.778" layer="95" rot="MR180"/>
<attribute name="VALUE" x="46.101" y="10.414" size="1.778" layer="96" rot="MR90"/>
</instance>
<instance part="C6" gate="G$1" x="35.56" y="7.62" smashed="yes" rot="R180">
<attribute name="NAME" x="39.116" y="7.239" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="33.401" y="10.414" size="1.778" layer="96" rot="R270" align="bottom-right"/>
</instance>
<instance part="C7" gate="G$1" x="147.32" y="-13.97" smashed="yes">
<attribute name="VALUE" x="150.6474" y="-15.367" size="1.778" layer="96" rot="R90" align="center"/>
</instance>
<instance part="C9" gate="G$1" x="162.56" y="-12.7" smashed="yes">
<attribute name="NAME" x="162.56" y="-12.065" size="1.778" layer="95" align="bottom-right"/>
<attribute name="VALUE" x="165.989" y="-13.716" size="1.778" layer="96" rot="R90" align="center"/>
</instance>
<instance part="GND2" gate="1" x="25.4" y="-2.54"/>
<instance part="GND3" gate="1" x="40.64" y="-2.54"/>
<instance part="GND4" gate="1" x="147.32" y="-25.4"/>
<instance part="GND5" gate="1" x="-17.78" y="-2.54"/>
<instance part="GND6" gate="1" x="-2.54" y="-2.54"/>
<instance part="GND7" gate="1" x="7.62" y="12.7" rot="MR0"/>
<instance part="D1" gate="G$1" x="15.24" y="0" rot="R180"/>
<instance part="L1" gate="G$1" x="-27.94" y="25.4" rot="R90"/>
<instance part="Q1" gate="G$1" x="40.64" y="15.24" smashed="yes">
<attribute name="NAME" x="37.465" y="17.526" size="1.778" layer="95"/>
<attribute name="VALUE" x="36.83" y="10.795" size="1.778" layer="96"/>
</instance>
<instance part="GND11" gate="1" x="50.8" y="-2.54" smashed="yes">
<attribute name="VALUE" x="50.8" y="-5.08" size="1.778" layer="96" align="bottom-center"/>
</instance>
<instance part="P+2" gate="VCC" x="177.8" y="48.26" smashed="yes">
<attribute name="VALUE" x="177.8" y="49.53" size="1.778" layer="96" align="bottom-center"/>
</instance>
<instance part="P+3" gate="VCC" x="162.56" y="0" smashed="yes">
<attribute name="VALUE" x="162.56" y="1.27" size="1.778" layer="96" align="bottom-center"/>
</instance>
<instance part="P+4" gate="VCC" x="7.62" y="55.88" smashed="yes">
<attribute name="VALUE" x="7.62" y="57.15" size="1.778" layer="96" align="bottom-center"/>
</instance>
<instance part="GND12" gate="1" x="177.8" y="-25.4"/>
<instance part="R5" gate="G$1" x="50.8" y="48.26" rot="MR0"/>
<instance part="P+5" gate="VCC" x="50.8" y="58.42" smashed="yes">
<attribute name="VALUE" x="50.8" y="59.69" size="1.778" layer="96" align="bottom-center"/>
</instance>
<instance part="GND14" gate="1" x="137.16" y="-25.4"/>
<instance part="SW1" gate="G$1" x="177.8" y="-10.16" smashed="yes" rot="R180">
<attribute name="NAME" x="173.99" y="-10.16" size="1.778" layer="95" rot="R270" align="top-center"/>
<attribute name="VALUE" x="171.45" y="-10.16" size="1.778" layer="96" rot="R270" align="top-center"/>
</instance>
<instance part="K2" gate="1" x="7.62" y="0" rot="MR180"/>
<instance part="P+6" gate="VCC" x="137.16" y="58.42" smashed="yes">
<attribute name="VALUE" x="137.16" y="59.69" size="1.778" layer="96" align="bottom-center"/>
</instance>
<instance part="T1" gate="G$1" x="101.6" y="-15.24" smashed="yes" rot="MR0">
<attribute name="NAME" x="99.06" y="-12.7" size="1.778" layer="95" rot="MR0" align="top-left"/>
<attribute name="VALUE" x="99.06" y="-15.24" size="1.778" layer="96" rot="MR0" align="top-left"/>
</instance>
<instance part="GND8" gate="1" x="99.06" y="-25.4" rot="MR0"/>
<instance part="R6" gate="G$1" x="111.76" y="-15.24" rot="MR270"/>
<instance part="K2" gate="2" x="-10.16" y="10.16" rot="R180"/>
<instance part="P+7" gate="VCC" x="15.24" y="12.7" smashed="yes">
<attribute name="VALUE" x="15.24" y="13.97" size="1.778" layer="96" align="bottom-center"/>
</instance>
<instance part="S1" gate="G$1" x="-44.45" y="22.86" smashed="yes" rot="R270">
<attribute name="NAME" x="-45.72" y="29.21" size="1.778" layer="95"/>
</instance>
<instance part="X2" gate="-2" x="-63.5" y="27.94" rot="R180"/>
<instance part="X2" gate="-1" x="-63.5" y="22.86" rot="R180"/>
<instance part="X1" gate="-2" x="-63.5" y="2.54" rot="R180"/>
<instance part="X1" gate="-1" x="-63.5" y="-1.27" rot="R180"/>
<instance part="GND1" gate="1" x="-58.42" y="-7.62"/>
<instance part="R7" gate="G$1" x="142.24" y="7.62" rot="MR180"/>
<instance part="J3" gate="G$1" x="172.72" y="68.58"/>
<instance part="P+1" gate="VCC" x="152.4" y="81.28" smashed="yes">
<attribute name="VALUE" x="152.4" y="82.55" size="1.778" layer="96" align="bottom-center"/>
</instance>
<instance part="GND9" gate="1" x="144.78" y="73.66" rot="R270"/>
<instance part="R8" gate="G$1" x="157.48" y="66.04" rot="R90"/>
<instance part="R9" gate="G$1" x="157.48" y="63.5" rot="R90"/>
<instance part="J1" gate="G$1" x="157.48" y="25.4"/>
<instance part="R11" gate="G$1" x="60.96" y="0" rot="R180"/>
<instance part="LED1" gate="G$1" x="60.96" y="-13.97" rot="MR0"/>
<instance part="GND10" gate="1" x="60.96" y="-27.94"/>
<instance part="P+8" gate="VCC" x="101.6" y="78.74" smashed="yes">
<attribute name="VALUE" x="101.6" y="80.01" size="1.778" layer="96" align="bottom-center"/>
</instance>
<instance part="GND13" gate="1" x="101.6" y="66.04"/>
<instance part="JP1" gate="G$1" x="111.76" y="71.12"/>
<instance part="J2" gate="1" x="195.58" y="16.51"/>
<instance part="GND15" gate="1" x="182.88" y="17.78" rot="R270"/>
<instance part="P+9" gate="VCC" x="182.88" y="20.32" smashed="yes" rot="R90">
<attribute name="VALUE" x="181.61" y="20.32" size="1.778" layer="96" rot="R90" align="bottom-center"/>
</instance>
</instances>
<busses>
<bus name="D[4..7],E,RS,VDD,VSS">
<segment>
<wire x1="124.46" y1="48.26" x2="124.46" y2="30.48" width="0.762" layer="92"/>
<wire x1="124.46" y1="48.26" x2="127" y2="50.8" width="0.762" layer="92"/>
<wire x1="127" y1="50.8" x2="149.86" y2="50.8" width="0.762" layer="92"/>
<wire x1="149.86" y1="50.8" x2="149.86" y2="25.4" width="0.762" layer="92"/>
<label x="126.365" y="52.07" size="1.778" layer="95"/>
<wire x1="149.86" y1="50.8" x2="149.86" y2="63.5" width="0.762" layer="92"/>
</segment>
</bus>
</busses>
<nets>
<net name="A3" class="0">
<segment>
<pinref part="IC1" gate="A" pin="RA3/AN3/VREF+"/>
<wire x1="63.5" y1="30.48" x2="7.62" y2="30.48" width="0.1524" layer="91"/>
<pinref part="R1" gate="G$1" pin="1"/>
<pinref part="R3" gate="G$1" pin="1"/>
<wire x1="7.62" y1="40.64" x2="7.62" y2="38.1" width="0.1524" layer="91"/>
<junction x="7.62" y="38.1"/>
<wire x1="7.62" y1="38.1" x2="11.43" y2="38.1" width="0.1524" layer="91"/>
<pinref part="R2" gate="G$1" pin="2"/>
<wire x1="7.62" y1="27.94" x2="7.62" y2="30.48" width="0.1524" layer="91"/>
<junction x="7.62" y="30.48"/>
<pinref part="C3" gate="G$1" pin="+"/>
<wire x1="2.54" y1="30.48" x2="7.62" y2="30.48" width="0.1524" layer="91"/>
<wire x1="7.62" y1="30.48" x2="7.62" y2="38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="C1" gate="G$1" pin="1"/>
<wire x1="-17.78" y1="22.86" x2="-17.78" y2="25.4" width="0.1524" layer="91"/>
<wire x1="-20.32" y1="25.4" x2="-17.78" y2="25.4" width="0.1524" layer="91"/>
<wire x1="-17.78" y1="25.4" x2="-17.78" y2="30.48" width="0.1524" layer="91"/>
<pinref part="L1" gate="G$1" pin="2"/>
<pinref part="C2" gate="G$1" pin="1"/>
<wire x1="-10.16" y1="30.48" x2="-10.16" y2="22.86" width="0.1524" layer="91"/>
<wire x1="-17.78" y1="30.48" x2="-10.16" y2="30.48" width="0.1524" layer="91"/>
<pinref part="C3" gate="G$1" pin="-"/>
<wire x1="-10.16" y1="30.48" x2="-5.08" y2="30.48" width="0.1524" layer="91"/>
<junction x="-10.16" y="30.48"/>
<wire x1="-39.37" y1="30.48" x2="-17.78" y2="30.48" width="0.1524" layer="91"/>
<junction x="-17.78" y="30.48"/>
<junction x="-17.78" y="25.4"/>
<pinref part="S1" gate="G$1" pin="O"/>
</segment>
</net>
<net name="A0" class="0">
<segment>
<pinref part="R4" gate="G$1" pin="2"/>
<pinref part="R1" gate="G$1" pin="2"/>
<wire x1="25.4" y1="27.94" x2="25.4" y2="38.1" width="0.1524" layer="91"/>
<wire x1="25.4" y1="38.1" x2="21.59" y2="38.1" width="0.1524" layer="91"/>
<pinref part="IC1" gate="A" pin="RA0/AN0"/>
<wire x1="25.4" y1="38.1" x2="41.91" y2="38.1" width="0.1524" layer="91"/>
<junction x="25.4" y="38.1"/>
<pinref part="IC1" gate="A" pin="RA5/AN4/*SS/C2OUT"/>
<wire x1="41.91" y1="38.1" x2="63.5" y2="38.1" width="0.1524" layer="91"/>
<wire x1="41.91" y1="38.1" x2="41.91" y2="25.4" width="0.1524" layer="91"/>
<wire x1="41.91" y1="25.4" x2="63.5" y2="25.4" width="0.1524" layer="91"/>
<junction x="41.91" y="38.1"/>
</segment>
</net>
<net name="A1" class="0">
<segment>
<pinref part="R4" gate="G$1" pin="1"/>
<pinref part="C4" gate="G$1" pin="+"/>
<wire x1="25.4" y1="17.78" x2="25.4" y2="15.24" width="0.1524" layer="91"/>
<wire x1="25.4" y1="11.43" x2="25.4" y2="15.24" width="0.1524" layer="91"/>
<wire x1="25.4" y1="15.24" x2="30.48" y2="15.24" width="0.1524" layer="91"/>
<junction x="25.4" y="15.24"/>
<wire x1="30.48" y1="15.24" x2="30.48" y2="35.56" width="0.1524" layer="91"/>
<wire x1="30.48" y1="35.56" x2="63.5" y2="35.56" width="0.1524" layer="91"/>
<pinref part="IC1" gate="A" pin="RA1/AN1"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="R2" gate="G$1" pin="1"/>
<pinref part="GND7" gate="1" pin="GND"/>
<wire x1="7.62" y1="17.78" x2="7.62" y2="15.24" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND5" gate="1" pin="GND"/>
<pinref part="C1" gate="G$1" pin="2"/>
<wire x1="-17.78" y1="0" x2="-17.78" y2="15.24" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND3" gate="1" pin="GND"/>
<pinref part="C5" gate="G$1" pin="1"/>
<wire x1="40.64" y1="0" x2="40.64" y2="2.54" width="0.1524" layer="91"/>
<wire x1="40.64" y1="2.54" x2="45.72" y2="2.54" width="0.1524" layer="91"/>
<wire x1="45.72" y1="2.54" x2="45.72" y2="5.08" width="0.1524" layer="91"/>
<pinref part="C6" gate="G$1" pin="1"/>
<wire x1="40.64" y1="2.54" x2="35.56" y2="2.54" width="0.1524" layer="91"/>
<wire x1="35.56" y1="2.54" x2="35.56" y2="5.08" width="0.1524" layer="91"/>
<junction x="40.64" y="2.54"/>
</segment>
<segment>
<pinref part="C4" gate="G$1" pin="-"/>
<pinref part="GND2" gate="1" pin="GND"/>
<wire x1="25.4" y1="3.81" x2="25.4" y2="0" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND4" gate="1" pin="GND"/>
<wire x1="147.32" y1="-22.86" x2="147.32" y2="-20.32" width="0.1524" layer="91"/>
<pinref part="C7" gate="G$1" pin="-"/>
<wire x1="147.32" y1="-20.32" x2="147.32" y2="-17.78" width="0.1524" layer="91"/>
<pinref part="C9" gate="G$1" pin="2"/>
<wire x1="147.32" y1="-20.32" x2="162.56" y2="-20.32" width="0.1524" layer="91"/>
<wire x1="162.56" y1="-20.32" x2="162.56" y2="-17.78" width="0.1524" layer="91"/>
<junction x="147.32" y="-20.32"/>
</segment>
<segment>
<pinref part="GND14" gate="1" pin="GND"/>
<wire x1="137.16" y1="17.78" x2="137.16" y2="-22.86" width="0.1524" layer="91"/>
<label x="152.4" y="17.78" size="1.778" layer="95"/>
<pinref part="IC1" gate="A" pin="VSS"/>
<wire x1="116.84" y1="17.78" x2="137.16" y2="17.78" width="0.1524" layer="91"/>
<junction x="137.16" y="17.78"/>
<wire x1="137.16" y1="17.78" x2="157.48" y2="17.78" width="0.1524" layer="91"/>
<pinref part="J1" gate="G$1" pin="GND"/>
</segment>
<segment>
<pinref part="IC1" gate="A" pin="VSS_2"/>
<wire x1="50.8" y1="22.86" x2="63.5" y2="22.86" width="0.1524" layer="91"/>
<pinref part="GND11" gate="1" pin="GND"/>
<wire x1="50.8" y1="22.86" x2="50.8" y2="0" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="T1" gate="G$1" pin="E"/>
<pinref part="GND8" gate="1" pin="GND"/>
<wire x1="99.06" y1="-20.32" x2="99.06" y2="-22.86" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="K2" gate="2" pin="S"/>
<wire x1="-5.08" y1="5.08" x2="-2.54" y2="5.08" width="0.1524" layer="91"/>
<wire x1="-2.54" y1="5.08" x2="-2.54" y2="0" width="0.1524" layer="91"/>
<pinref part="GND6" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="X1" gate="-1" pin="S"/>
<pinref part="GND1" gate="1" pin="GND"/>
<wire x1="-60.96" y1="-1.27" x2="-58.42" y2="-1.27" width="0.1524" layer="91"/>
<wire x1="-58.42" y1="-1.27" x2="-58.42" y2="-5.08" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="J3" gate="G$1" pin="VSS"/>
<pinref part="GND9" gate="1" pin="GND"/>
<wire x1="165.1" y1="73.66" x2="147.32" y2="73.66" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND12" gate="1" pin="GND"/>
<pinref part="SW1" gate="G$1" pin="S"/>
<wire x1="177.8" y1="-22.86" x2="177.8" y2="-15.24" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="LED1" gate="G$1" pin="C"/>
<pinref part="GND10" gate="1" pin="GND"/>
<wire x1="60.96" y1="-17.78" x2="60.96" y2="-25.4" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND13" gate="1" pin="GND"/>
<pinref part="JP1" gate="G$1" pin="2"/>
<wire x1="101.6" y1="68.58" x2="101.6" y2="71.12" width="0.1524" layer="91"/>
<wire x1="101.6" y1="71.12" x2="109.22" y2="71.12" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND15" gate="1" pin="GND"/>
<pinref part="J2" gate="1" pin="VSS"/>
<wire x1="185.42" y1="17.78" x2="187.96" y2="17.78" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<wire x1="-38.1" y1="25.4" x2="-38.1" y2="20.32" width="0.1524" layer="91"/>
<pinref part="L1" gate="G$1" pin="1"/>
<wire x1="-35.56" y1="25.4" x2="-38.1" y2="25.4" width="0.1524" layer="91"/>
<wire x1="-39.37" y1="25.4" x2="-38.1" y2="25.4" width="0.1524" layer="91"/>
<junction x="-38.1" y="25.4"/>
<wire x1="-39.37" y1="20.32" x2="-38.1" y2="20.32" width="0.1524" layer="91"/>
<pinref part="S1" gate="G$1" pin="S"/>
<pinref part="S1" gate="G$1" pin="O1"/>
</segment>
</net>
<net name="OSC1" class="0">
<segment>
<pinref part="C6" gate="G$1" pin="2"/>
<pinref part="Q1" gate="G$1" pin="1"/>
<wire x1="35.56" y1="12.7" x2="35.56" y2="15.24" width="0.1524" layer="91"/>
<wire x1="35.56" y1="15.24" x2="38.1" y2="15.24" width="0.1524" layer="91"/>
<pinref part="IC1" gate="A" pin="OSC1/CLKI"/>
<wire x1="63.5" y1="20.32" x2="35.56" y2="20.32" width="0.1524" layer="91"/>
<wire x1="35.56" y1="20.32" x2="35.56" y2="15.24" width="0.1524" layer="91"/>
<junction x="35.56" y="15.24"/>
</segment>
</net>
<net name="OSC2" class="0">
<segment>
<pinref part="C5" gate="G$1" pin="2"/>
<pinref part="Q1" gate="G$1" pin="2"/>
<wire x1="43.18" y1="15.24" x2="45.72" y2="15.24" width="0.1524" layer="91"/>
<pinref part="IC1" gate="A" pin="OSC2/CLKO"/>
<wire x1="63.5" y1="17.78" x2="45.72" y2="17.78" width="0.1524" layer="91"/>
<wire x1="45.72" y1="17.78" x2="45.72" y2="15.24" width="0.1524" layer="91"/>
<junction x="45.72" y="15.24"/>
<wire x1="45.72" y1="15.24" x2="45.72" y2="12.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="VCC" class="0">
<segment>
<pinref part="P+2" gate="VCC" pin="VCC"/>
<pinref part="R10" gate="G$1" pin="2"/>
<wire x1="177.8" y1="45.72" x2="177.8" y2="35.56" width="0.1524" layer="91"/>
<label x="152.4" y="20.32" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="R3" gate="G$1" pin="2"/>
<pinref part="P+4" gate="VCC" pin="VCC"/>
<wire x1="7.62" y1="50.8" x2="7.62" y2="53.34" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="R5" gate="G$1" pin="2"/>
<pinref part="P+5" gate="VCC" pin="VCC"/>
<wire x1="50.8" y1="53.34" x2="50.8" y2="55.88" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C7" gate="G$1" pin="+"/>
<wire x1="147.32" y1="-7.62" x2="147.32" y2="-10.16" width="0.1524" layer="91"/>
<pinref part="C9" gate="G$1" pin="1"/>
<wire x1="147.32" y1="-7.62" x2="162.56" y2="-7.62" width="0.1524" layer="91"/>
<wire x1="162.56" y1="-7.62" x2="162.56" y2="-10.16" width="0.1524" layer="91"/>
<pinref part="P+3" gate="VCC" pin="VCC"/>
<wire x1="162.56" y1="-7.62" x2="162.56" y2="-2.54" width="0.1524" layer="91"/>
<junction x="162.56" y="-7.62"/>
</segment>
<segment>
<wire x1="137.16" y1="20.32" x2="137.16" y2="25.4" width="0.1524" layer="91"/>
<pinref part="P+6" gate="VCC" pin="VCC"/>
<wire x1="137.16" y1="25.4" x2="137.16" y2="55.88" width="0.1524" layer="91"/>
<wire x1="157.48" y1="20.32" x2="137.16" y2="20.32" width="0.1524" layer="91"/>
<pinref part="IC1" gate="A" pin="VDD"/>
<wire x1="116.84" y1="20.32" x2="137.16" y2="20.32" width="0.1524" layer="91"/>
<junction x="137.16" y="20.32"/>
<pinref part="R7" gate="G$1" pin="1"/>
<wire x1="142.24" y1="12.7" x2="142.24" y2="25.4" width="0.1524" layer="91"/>
<wire x1="142.24" y1="25.4" x2="137.16" y2="25.4" width="0.1524" layer="91"/>
<junction x="137.16" y="25.4"/>
<pinref part="J1" gate="G$1" pin="VCC"/>
</segment>
<segment>
<wire x1="15.24" y1="10.16" x2="15.24" y2="7.62" width="0.1524" layer="91"/>
<pinref part="D1" gate="G$1" pin="A"/>
<wire x1="15.24" y1="7.62" x2="15.24" y2="2.54" width="0.1524" layer="91"/>
<wire x1="7.62" y1="5.08" x2="7.62" y2="7.62" width="0.1524" layer="91"/>
<wire x1="7.62" y1="7.62" x2="15.24" y2="7.62" width="0.1524" layer="91"/>
<junction x="15.24" y="7.62"/>
<pinref part="K2" gate="1" pin="-"/>
<pinref part="P+7" gate="VCC" pin="VCC"/>
</segment>
<segment>
<pinref part="P+1" gate="VCC" pin="VCC"/>
<pinref part="J3" gate="G$1" pin="VDD"/>
<wire x1="152.4" y1="78.74" x2="152.4" y2="71.12" width="0.1524" layer="91"/>
<wire x1="152.4" y1="71.12" x2="165.1" y2="71.12" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="P+8" gate="VCC" pin="VCC"/>
<wire x1="101.6" y1="73.66" x2="101.6" y2="76.2" width="0.1524" layer="91"/>
<pinref part="JP1" gate="G$1" pin="1"/>
<wire x1="109.22" y1="73.66" x2="101.6" y2="73.66" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="J2" gate="1" pin="VDD"/>
<pinref part="P+9" gate="VCC" pin="VCC"/>
<wire x1="187.96" y1="20.32" x2="185.42" y2="20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="D4" class="0">
<segment>
<pinref part="IC1" gate="A" pin="RB4"/>
<wire x1="116.84" y1="33.02" x2="121.92" y2="33.02" width="0.1524" layer="91"/>
<wire x1="121.92" y1="33.02" x2="124.46" y2="35.56" width="0.1524" layer="91"/>
<label x="119.38" y="33.02" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="152.4" y1="27.94" x2="149.86" y2="30.48" width="0.1524" layer="91"/>
<label x="152.4" y="27.94" size="1.778" layer="95"/>
<wire x1="152.4" y1="27.94" x2="157.48" y2="27.94" width="0.1524" layer="91"/>
<pinref part="J1" gate="G$1" pin="D4"/>
</segment>
</net>
<net name="E" class="0">
<segment>
<pinref part="IC1" gate="A" pin="RB3/PGM"/>
<wire x1="116.84" y1="30.48" x2="121.92" y2="30.48" width="0.1524" layer="91"/>
<wire x1="121.92" y1="30.48" x2="124.46" y2="33.02" width="0.1524" layer="91"/>
<label x="119.38" y="30.48" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="157.48" y1="25.4" x2="152.4" y2="25.4" width="0.1524" layer="91"/>
<wire x1="152.4" y1="25.4" x2="149.86" y2="27.94" width="0.1524" layer="91"/>
<label x="152.4" y="25.4" size="1.778" layer="95"/>
<pinref part="J1" gate="G$1" pin="E"/>
</segment>
</net>
<net name="RS" class="0">
<segment>
<pinref part="IC1" gate="A" pin="RB2"/>
<wire x1="116.84" y1="27.94" x2="121.92" y2="27.94" width="0.1524" layer="91"/>
<wire x1="121.92" y1="27.94" x2="124.46" y2="30.48" width="0.1524" layer="91"/>
<label x="119.38" y="27.94" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="157.48" y1="22.86" x2="152.4" y2="22.86" width="0.1524" layer="91"/>
<wire x1="152.4" y1="22.86" x2="149.86" y2="25.4" width="0.1524" layer="91"/>
<label x="152.4" y="22.86" size="1.778" layer="95"/>
<pinref part="J1" gate="G$1" pin="RS"/>
</segment>
</net>
<net name="A4" class="0">
<segment>
<pinref part="IC1" gate="A" pin="RA4/T0CKI/C1OUT"/>
<pinref part="R5" gate="G$1" pin="1"/>
<wire x1="63.5" y1="27.94" x2="50.8" y2="27.94" width="0.1524" layer="91"/>
<wire x1="50.8" y1="27.94" x2="50.8" y2="43.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="/LC" class="0">
<segment>
<wire x1="-39.37" y1="15.24" x2="-35.56" y2="15.24" width="0.1524" layer="91"/>
<label x="-40.64" y="15.24" size="1.778" layer="95"/>
<pinref part="S1" gate="G$1" pin="S1"/>
<wire x1="-35.56" y1="15.24" x2="-35.56" y2="-33.02" width="0.1524" layer="91"/>
<wire x1="-35.56" y1="-33.02" x2="124.46" y2="-33.02" width="0.1524" layer="91"/>
<wire x1="124.46" y1="-33.02" x2="124.46" y2="2.54" width="0.1524" layer="91"/>
<pinref part="IC1" gate="A" pin="RC4/SDI/SDA"/>
<wire x1="116.84" y1="7.62" x2="124.46" y2="7.62" width="0.1524" layer="91"/>
<wire x1="124.46" y1="7.62" x2="124.46" y2="2.54" width="0.1524" layer="91"/>
<label x="121.92" y="7.62" size="1.778" layer="95" rot="R180"/>
<label x="30.48" y="-33.02" size="1.778" layer="95" rot="MR180"/>
<pinref part="R7" gate="G$1" pin="2"/>
<wire x1="124.46" y1="2.54" x2="142.24" y2="2.54" width="0.1524" layer="91"/>
<junction x="124.46" y="2.54"/>
</segment>
</net>
<net name="/RELAY" class="0">
<segment>
<pinref part="T1" gate="G$1" pin="C"/>
<wire x1="99.06" y1="-10.16" x2="99.06" y2="-7.62" width="0.1524" layer="91"/>
<label x="97.79" y="-7.62" size="1.778" layer="95" rot="MR0"/>
<pinref part="D1" gate="G$1" pin="C"/>
<wire x1="15.24" y1="-2.54" x2="15.24" y2="-7.62" width="0.1524" layer="91"/>
<junction x="15.24" y="-7.62"/>
<wire x1="15.24" y1="-7.62" x2="99.06" y2="-7.62" width="0.1524" layer="91"/>
<wire x1="15.24" y1="-7.62" x2="7.62" y2="-7.62" width="0.1524" layer="91"/>
<label x="30.48" y="-7.62" size="1.778" layer="95" rot="MR180"/>
<wire x1="7.62" y1="-5.08" x2="7.62" y2="-7.62" width="0.1524" layer="91"/>
<pinref part="K2" gate="1" pin="+"/>
</segment>
</net>
<net name="/MCLR" class="0">
<segment>
<pinref part="R10" gate="G$1" pin="1"/>
<wire x1="177.8" y1="25.4" x2="177.8" y2="7.62" width="0.1524" layer="91"/>
<wire x1="177.8" y1="7.62" x2="166.37" y2="7.62" width="0.1524" layer="91"/>
<label x="167.64" y="7.62" size="1.778" layer="95"/>
<pinref part="SW1" gate="G$1" pin="P"/>
<wire x1="177.8" y1="-5.08" x2="177.8" y2="7.62" width="0.1524" layer="91"/>
<junction x="177.8" y="7.62"/>
</segment>
<segment>
<pinref part="IC1" gate="A" pin="*MCLR/VPP"/>
<wire x1="41.91" y1="40.64" x2="63.5" y2="40.64" width="0.1524" layer="91"/>
<label x="41.91" y="40.64" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J3" gate="G$1" pin="MCLR"/>
<wire x1="165.1" y1="68.58" x2="147.32" y2="68.58" width="0.1524" layer="91"/>
<label x="147.32" y="68.58" size="1.778" layer="95"/>
</segment>
</net>
<net name="RC5" class="0">
<segment>
<pinref part="IC1" gate="A" pin="RC5/SDO"/>
<wire x1="116.84" y1="10.16" x2="129.54" y2="10.16" width="0.1524" layer="91"/>
<wire x1="129.54" y1="10.16" x2="129.54" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="129.54" y1="-15.24" x2="116.84" y2="-15.24" width="0.1524" layer="91"/>
<pinref part="R6" gate="G$1" pin="1"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="T1" gate="G$1" pin="B"/>
<wire x1="106.68" y1="-15.24" x2="104.14" y2="-15.24" width="0.1524" layer="91"/>
<pinref part="R6" gate="G$1" pin="2"/>
</segment>
</net>
<net name="D5" class="0">
<segment>
<wire x1="157.48" y1="30.48" x2="152.4" y2="30.48" width="0.1524" layer="91"/>
<wire x1="152.4" y1="30.48" x2="149.86" y2="33.02" width="0.1524" layer="91"/>
<label x="152.4" y="30.48" size="1.778" layer="95"/>
<pinref part="J1" gate="G$1" pin="D5"/>
</segment>
<segment>
<pinref part="IC1" gate="A" pin="RB5"/>
<wire x1="124.46" y1="38.1" x2="121.92" y2="35.56" width="0.1524" layer="91"/>
<wire x1="121.92" y1="35.56" x2="116.84" y2="35.56" width="0.1524" layer="91"/>
<label x="119.38" y="35.56" size="1.778" layer="95"/>
</segment>
</net>
<net name="D6" class="0">
<segment>
<wire x1="157.48" y1="33.02" x2="152.4" y2="33.02" width="0.1524" layer="91"/>
<wire x1="152.4" y1="33.02" x2="149.86" y2="35.56" width="0.1524" layer="91"/>
<label x="152.4" y="33.02" size="1.778" layer="95"/>
<pinref part="J1" gate="G$1" pin="D6"/>
</segment>
<segment>
<pinref part="IC1" gate="A" pin="RB6/PGC"/>
<wire x1="124.46" y1="40.64" x2="121.92" y2="38.1" width="0.1524" layer="91"/>
<wire x1="121.92" y1="38.1" x2="116.84" y2="38.1" width="0.1524" layer="91"/>
<label x="119.38" y="38.1" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="149.86" y1="60.96" x2="152.4" y2="63.5" width="0.1524" layer="91"/>
<pinref part="R9" gate="G$1" pin="2"/>
</segment>
</net>
<net name="D7" class="0">
<segment>
<wire x1="157.48" y1="35.56" x2="152.4" y2="35.56" width="0.1524" layer="91"/>
<wire x1="152.4" y1="35.56" x2="149.86" y2="38.1" width="0.1524" layer="91"/>
<label x="152.4" y="35.56" size="1.778" layer="95"/>
<pinref part="J1" gate="G$1" pin="D7"/>
</segment>
<segment>
<pinref part="IC1" gate="A" pin="RB7/PGD"/>
<wire x1="124.46" y1="43.18" x2="121.92" y2="40.64" width="0.1524" layer="91"/>
<wire x1="121.92" y1="40.64" x2="116.84" y2="40.64" width="0.1524" layer="91"/>
<label x="119.38" y="40.64" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="152.4" y1="66.04" x2="149.86" y2="63.5" width="0.1524" layer="91"/>
<pinref part="R8" gate="G$1" pin="2"/>
</segment>
</net>
<net name="C2_CON" class="0">
<segment>
<pinref part="C2" gate="G$1" pin="2"/>
<pinref part="K2" gate="2" pin="P"/>
<wire x1="-10.16" y1="15.24" x2="-10.16" y2="12.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="M+" class="0">
<segment>
<wire x1="-60.96" y1="27.94" x2="-49.53" y2="27.94" width="0.1524" layer="91"/>
<pinref part="X2" gate="-2" pin="S"/>
<pinref part="S1" gate="G$1" pin="P"/>
</segment>
</net>
<net name="M-" class="0">
<segment>
<pinref part="S1" gate="G$1" pin="P1"/>
<wire x1="-60.96" y1="22.86" x2="-53.34" y2="22.86" width="0.1524" layer="91"/>
<wire x1="-53.34" y1="22.86" x2="-53.34" y2="17.78" width="0.1524" layer="91"/>
<wire x1="-53.34" y1="17.78" x2="-49.53" y2="17.78" width="0.1524" layer="91"/>
<pinref part="X2" gate="-1" pin="S"/>
</segment>
</net>
<net name="FREQ" class="0">
<segment>
<pinref part="X1" gate="-2" pin="S"/>
<wire x1="-60.96" y1="2.54" x2="-53.34" y2="2.54" width="0.1524" layer="91"/>
<label x="-58.42" y="2.54" size="1.778" layer="95"/>
<wire x1="-53.34" y1="2.54" x2="-53.34" y2="-25.4" width="0.1524" layer="91"/>
<pinref part="IC1" gate="A" pin="RC2/CCP1"/>
<wire x1="63.5" y1="10.16" x2="55.88" y2="10.16" width="0.1524" layer="91"/>
<label x="55.88" y="10.16" size="1.778" layer="95"/>
<wire x1="-53.34" y1="-25.4" x2="55.88" y2="-25.4" width="0.1524" layer="91"/>
<wire x1="55.88" y1="-25.4" x2="55.88" y2="10.16" width="0.1524" layer="91"/>
<label x="30.48" y="-25.4" size="1.778" layer="95" rot="MR180"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="J3" gate="G$1" pin="PGC"/>
<pinref part="R8" gate="G$1" pin="1"/>
<wire x1="162.56" y1="66.04" x2="165.1" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="R9" gate="G$1" pin="1"/>
<pinref part="J3" gate="G$1" pin="PGD"/>
<wire x1="162.56" y1="63.5" x2="165.1" y2="63.5" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="R11" gate="G$1" pin="1"/>
<wire x1="60.96" y1="5.08" x2="60.96" y2="7.62" width="0.1524" layer="91"/>
<pinref part="IC1" gate="A" pin="RC3/SCK/SCL"/>
<wire x1="60.96" y1="7.62" x2="63.5" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="R11" gate="G$1" pin="2"/>
<pinref part="LED1" gate="G$1" pin="A"/>
<wire x1="60.96" y1="-5.08" x2="60.96" y2="-10.16" width="0.1524" layer="91"/>
</segment>
</net>
<net name="RX" class="0">
<segment>
<pinref part="IC1" gate="A" pin="RC7/RX/DT"/>
<wire x1="116.84" y1="15.24" x2="187.96" y2="15.24" width="0.1524" layer="91"/>
<pinref part="J2" gate="1" pin="RX"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="IC1" gate="A" pin="RC6/TX/CK"/>
<pinref part="J2" gate="1" pin="TX"/>
<wire x1="116.84" y1="12.7" x2="187.96" y2="12.7" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
