<?xml version="1.0" encoding="UTF-8"?>
<configurationDescriptor version="62">
  <logicalFolder name="root" displayName="root" projectFiles="true">
    <logicalFolder name="HeaderFiles"
                   displayName="Header Files"
                   projectFiles="true">
      <itemPath>../adc.h</itemPath>
      <itemPath>../const.h</itemPath>
      <itemPath>../delay.h</itemPath>
      <itemPath>../device.h</itemPath>
      <itemPath>../ds18b20.h</itemPath>
      <itemPath>../interrupt.h</itemPath>
      <itemPath>../lcd44780.h</itemPath>
      <itemPath>../ledsense.h</itemPath>
      <itemPath>../midi.h</itemPath>
      <itemPath>../onewire.h</itemPath>
      <itemPath>../oscillator.h</itemPath>
      <itemPath>../pictest.h</itemPath>
      <itemPath>../pwm.h</itemPath>
      <itemPath>../shell.h</itemPath>
      <itemPath>../softser.h</itemPath>
      <itemPath>../tsmdelay.h</itemPath>
      <itemPath>../types.h</itemPath>
      <itemPath>../uart.h</itemPath>
      <itemPath>../lcd44780-config.h</itemPath>
    </logicalFolder>
    <logicalFolder name="SourceFiles"
                   displayName="Source Files"
                   projectFiles="true">
      <itemPath>../adc.c</itemPath>
      <itemPath>../delay.c</itemPath>
      <itemPath>../ds18b20.c</itemPath>
      <itemPath>../lcd44780.c</itemPath>
      <itemPath>../ledsense.c</itemPath>
      <itemPath>../midi.c</itemPath>
      <itemPath>../onewire.c</itemPath>
      <itemPath>../pictest.c</itemPath>
      <itemPath>../pwm.c</itemPath>
      <itemPath>../shell.c</itemPath>
      <itemPath>../softser.c</itemPath>
      <itemPath>../uart.c</itemPath>
    </logicalFolder>
    <logicalFolder name="ExternalFiles"
                   displayName="Important Files"
                   projectFiles="false">
      <itemPath>Makefile</itemPath>
    </logicalFolder>
    <logicalFolder name="OtherFiles" displayName="Other Files" projectFiles="false">
      <itemPath>../Makefile</itemPath>
      <itemPath>../Makefile.common</itemPath>
      <itemPath>../Makefile.htc</itemPath>
      <itemPath>../Makefile.sdcc</itemPath>
      <itemPath>../Makefile.vars</itemPath>
    </logicalFolder>
  </logicalFolder>
  <sourceRootList>
    <Elem>..</Elem>
    <Elem>../mplab</Elem>
  </sourceRootList>
  <projectmakefile>Makefile</projectmakefile>
  <confs>
    <conf name="default" type="2">
      <toolsSet>
        <developmentServer>localhost</developmentServer>
        <targetDevice>PIC16F876A</targetDevice>
        <targetHeader></targetHeader>
        <targetPluginBoard></targetPluginBoard>
        <platformTool>PICkit2PlatformTool</platformTool>
        <languageToolchain>hi-tech-picc</languageToolchain>
        <languageToolchainVersion>9.83</languageToolchainVersion>
        <platform>3</platform>
      </toolsSet>
      <compileType>
        <linkerTool>
          <linkerLibItems>
          </linkerLibItems>
        </linkerTool>
        <archiverTool>
        </archiverTool>
        <loading>
          <useAlternateLoadableFile>false</useAlternateLoadableFile>
          <parseOnProdLoad>false</parseOnProdLoad>
          <alternateLoadableFile></alternateLoadableFile>
        </loading>
      </compileType>
      <makeCustomizationType>
        <makeCustomizationPreStepEnabled>false</makeCustomizationPreStepEnabled>
        <makeCustomizationPreStep></makeCustomizationPreStep>
        <makeCustomizationPostStepEnabled>false</makeCustomizationPostStepEnabled>
        <makeCustomizationPostStep></makeCustomizationPostStep>
        <makeCustomizationPutChecksumInUserID>false</makeCustomizationPutChecksumInUserID>
        <makeCustomizationEnableLongLines>false</makeCustomizationEnableLongLines>
        <makeCustomizationNormalizeHexFile>false</makeCustomizationNormalizeHexFile>
      </makeCustomizationType>
      <HI-TECH-COMP>
        <property key="define-macros"
                  value="HAVE_UART=1;_XTAL_FREQ=20000000;UART_BAUD=38400"/>
        <property key="extra-include-directories" value="..;;."/>
        <property key="identifier-length" value="145"/>
        <property key="operation-mode" value="pro"/>
        <property key="optimization-assembler" value="true"/>
        <property key="optimization-assembler-files" value="false"/>
        <property key="optimization-debug" value="false"/>
        <property key="optimization-global" value="true"/>
        <property key="optimization-level" value="9"/>
        <property key="optimization-set" value="default"/>
        <property key="optimization-speed" value="true"/>
        <property key="preprocess-assembler" value="true"/>
        <property key="undefine-macros" value="HAVE_ADC;HAVE_PWM"/>
        <property key="verbose" value="true"/>
        <property key="warning-level" value="9"/>
        <property key="what-to-do" value="ignore"/>
        <property key="what-to-do-ex" value="ignore"/>
      </HI-TECH-COMP>
      <HI-TECH-LINK>
        <property key="additional-options-callgraph" value="std"/>
        <property key="additional-options-checksum" value=""/>
        <property key="additional-options-code-offset" value=""/>
        <property key="additional-options-command-line" value=""/>
        <property key="additional-options-errata" value=""/>
        <property key="additional-options-extend-address" value="false"/>
        <property key="additional-options-trace-type" value=""/>
        <property key="backup-reset-condition-flags" value="false"/>
        <property key="calibrate-oscillator" value="true"/>
        <property key="calibrate-oscillator-value" value="0"/>
        <property key="checksum-verification" value="false"/>
        <property key="clear-bss" value="true"/>
        <property key="code-model-external" value="wordwrite"/>
        <property key="code-model-instruction-set" value="mips32r2"/>
        <property key="code-model-pointer-size" value="16"/>
        <property key="code-model-rom" value=""/>
        <property key="create-html-files" value="false"/>
        <property key="data-model-memory" value="small"/>
        <property key="data-model-ram" value=""/>
        <property key="data-model-size-of-double" value="32"/>
        <property key="data-model-size-of-float" value="24"/>
        <property key="data-model-strict" value="false"/>
        <property key="display-class-usage" value="false"/>
        <property key="display-hex-usage" value="false"/>
        <property key="display-overall-usage" value="true"/>
        <property key="display-psect-usage" value="false"/>
        <property key="fill-flash-options-addr" value=""/>
        <property key="fill-flash-options-const" value=""/>
        <property key="fill-flash-options-how" value="0"/>
        <property key="fill-flash-options-inc-const" value=""/>
        <property key="fill-flash-options-increment" value=""/>
        <property key="fill-flash-options-seq" value=""/>
        <property key="fill-flash-options-what" value="0"/>
        <property key="format-hex-file-for-download" value="true"/>
        <property key="initialize-cp0" value="false"/>
        <property key="initialize-data" value="true"/>
        <property key="initialize-gprs" value="false"/>
        <property key="initialize-heap" value="false"/>
        <property key="initialize-stack" value="false"/>
        <property key="keep-generated-startup.as" value="false"/>
        <property key="link-in-c-library" value="true"/>
        <property key="link-in-peripheral-library" value="false"/>
        <property key="linker-interrupts-disable-usage" value="false"/>
        <property key="linker-interrupts-number-of-vectors" value="multi"/>
        <property key="linker-interrupts-table-location" value="boot"/>
        <property key="linker-interrupts-vector-type" value="rom"/>
        <property key="managed-stack" value="false"/>
        <property key="nmi-handler" value="false"/>
        <property key="optimal-performance" value="false"/>
        <property key="program-the-device-with-default-config-words" value="false"/>
        <prop-D_XTAL_FREQ=20000000 -DUSE_TIMER_0=1 -DUSE_SER=1 -DUSE_NOKIA3310_LCD=1 -DUART_BAUD=38400 -P -N127 -I".." -I"." -I"../../../lib" -I"../../../src" -v --warn=3 --runtime=default,+clear,+init,+keep,-osccal,+oscval:0x3400,-resetbits,+download,+stackcall,+clib --opt=default,+asm,+asmfile,+speed,-space,-debug,9 -D__DEBUG   --double=32 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@echo ${OBJECTDIR}/_ext/1386521430/ser.p1: > ${OBJECTDIR}/_ext/1386521430/ser.p1.d
	@cat ${OBJECTDIR}/_ext/1386521430/ser.dep >> ${OBJECTDIR}/_ext/1386521430/ser.p1.d
	@${FIXDEPS} "${OBJECTDIR}/_ext/1386521430/ser.p1.d" $(SILENT) -ht  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1386521430/timer.p1: ../../../lib/timer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	${MP_CC} --pass1 ../../../lib/timer.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\1386521430" -D_XTAL_FREQ=20000000 -DUSE_TIMER_0=1 -DUSE_SER=1 -DUSE_NOKIA3310_LCD=1 -DUART_BAUD=38400 -P -N127 -I".." -I"." -I"../../../lib" -I"../../../src" -v --warn=3 --runtime=default,+clear,+init,+keep,-osccal,+oscval:0x3400,-resetbits,+download,+stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=default,+asm,+asmfile,+speed,-space,-debug,9 -D__DEBUG   --double=32 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@${MP_CC} --scandep  ../../../lib/timer.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\1386521430" -D_XTAL_FREQ=20000000 -DUSE_TIMER_0=1 -DUSE_SER=1 -DUSE_NOKIA3310_LCD=1 -DUART_BAUD=38400 -P -N127 -I".." -I"." -I"../../../lib" -I"../../../src" -v --warn=3 --runtime=default,+clear,+init,+keep,-osccal,+oscval:0x3400,-resetbits,+download,+stackcall,+clib --opt=default,+asm,+asmfile,+speed,-space,-debug,9 -D__DEBUG   --double=32 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@echo ${OBJECTDIR}/_ext/1386521430/timer.p1: > ${OBJECTDIR}/_ext/1386521430/timer.p1.d
	@cat ${OBJECTDIR}/_ext/1386521430/timer.dep >> ${OBJECTDIR}/_ext/1386521430/timer.p1.d
	@${FIXDEPS} "${OBJECTDIR}/_ext/1386521430/timer.p1.d" $(SILENT) -ht  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1386521430/uart.p1: ../../../lib/uart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	${MP_CC} --pass1 ../../../lib/uart.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\1386521430" -D_XTAL_FREQ=20000000 -DUSE_TIMER_0=1 -DUSE_SER=1 -DUSE_NOKIA3310_LCD=1 -DUART_BAUD=38400 -P -N127 -I".." -I"." -I"../../../lib" -I"../../../src" -v --warn=3 --runtime=default,+clear,+init,+keep,-osccal,+oscval:0x3400,-resetbits,+download,+stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=default,+asm,+asmfile,+speed,-space,-debug,9 -D__DEBUG   --double=32 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@${MP_CC} --scandep  ../../../lib/uart.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\1386521430" -D_XTAL_FREQ=20000000 -DUSE_TIMER_0=1 -DUSE_SER=1 -DUSE_NOKIA3310_LCD=1 -DUART_BAUD=38400 -P -N127 -I".." -I"." -I"../../../lib" -I"../../../src" -v --warn=3 --runtime=default,+clear,+init,+keep,-osccal,+oscval:0x3400,-resetbits,+download,+stackcall,+clib --opt=default,+asm,+asmfile,+speed,-space,-debug,9 -D__DEBUG   --double=32 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@echo ${OBJECTDIR}/_ext/1386521430/uart.p1: > ${OBJECTDIR}/_ext/1386521430/uart.p1.d
	@cat ${OBJECTDIR}/_ext/1386521430/uart.dep >> ${OBJECTDIR}/_ext/1386521430/uart.p1.d
	@${FIXDEPS} "${OBJECTDIR}/_ext/1386521430/uart.p1.d" $(SILENT) -ht  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1386521430/lcd3310.p1: ../../../lib/lcd3310.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	${MP_CC} --pass1 ../../../lib/lcd3310.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\1386521430" -D_XTAL_FREQ=20000000 -DUSE_TIMER_0=1 -DUSE_SER=1 -DUSE_NOKIA3310_LCD=1 -DUART_BAUD=38400 -P -N127 -I".." -I"." -I"../../../lib" -I"../../../src" -v --warn=3 --runtime=default,+clear,+init,+keep,-osccal,+oscval:0x3400,-resetbits,+download,+stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=default,+asm,+asmfile,+speed,-space,-debug,9 -D__DEBUG   --double=32 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@${MP_CC} --scandep  ../../../lib/lcd3310.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\1386521430" -D_XTAL_FREQ=20000000 -DUSE_TIMER_0=1 -DUSE_SER=1 -DUSE_NOKIA3310_LCD=1 -DUART_BAUD=38400 -P -N127 -I".." -I"." -I"../../../lib" -I"../../../src" -v --warn=3 --runtime=default,+clear,+init,+keep,-osccal,+oscval:0x3400,-resetbits,+download,+stackcall,+clib --opt=default,+asm,+asmfile,+speed,-space,-debug,9 -D__DEBUG   --double=32 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@echo ${OBJECTDIR}/_ext/1386521430/lcd3310.p1: > ${OBJECTDIR}/_ext/1386521430/lcd3310.p1.d
	@cat ${OBJECTDIR}/_ext/1386521430/lcd3310.dep >> ${OBJECTDIR}/_ext/1386521430/lcd3310.p1.d
	@${FIXDEPS} "${OBJECTDIR}/_ext/1386521430/lcd3310.p1.d" $(SILENT) -ht  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1386528437/display.p1: ../../../src/display.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386528437" 
	${MP_CC} --pass1 ../../../src/display.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\1386528437" -D_XTAL_FREQ=20000000 -DUSE_TIMER_0=1 -DUSE_SER=1 -DUSE_NOKIA3310_LCD=1 -DUART_BAUD=38400 -P -N127 -I".." -I"." -I"../../../lib" -I"../../../src" -v --warn=3 --runtime=default,+clear,+init,+keep,-osccal,+oscval:0x3400,-resetbits,+download,+stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=default,+asm,+asmfile,+speed,-space,-debug,9 -D__DEBUG   --double=32 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@${MP_CC} --scandep  ../../../src/display.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\1386528437" -D_XTAL_FREQ=20000000 -DUSE_TIMER_0=1 -DUSE_SER=1 -DUSE_NOKIA3310_LCD=1 -DUART_BAUD=38400 -P -N127 -I".." -I"." -I"../../../lib" -I"../../../src" -v --warn=3 --runtime=default,+clear,+init,+keep,-osccal,+oscval:0x3400,-resetbits,+download,+stackcall,+clib --opt=default,+asm,+asmfile,+speed,-space,-debug,9 -D__DEBUG   --double=32 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@echo ${OBJECTDIR}/_ext/1386528437/display.p1: > ${OBJECTDIR}/_ext/1386528437/display.p1.d
	@cat ${OBJECTDIR}/_ext/1386528437/display.dep >> ${OBJECTDIR}/_ext/1386528437/display.p1.d
	@${FIXDEPS} "${OBJECTDIR}/_ext/1386528437/display.p1.d" $(SILENT) -ht  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1386528437/LC-meter.p1: ../../../src/LC-meter.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386528437" 
	${MP_CC} --pass1 ../../../src/LC-meter.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\1386528437" -D_XTAL_FREQ=20000000 -DUSE_TIMER_0=1 -DUSE_SER=1 -DUSE_NOKIA3310_LCD=1 -DUART_BAUD=38400 -P -N127 -I".." -I"." -I"../../../lib" -I"../../../src" -v --warn=3 --runtime=default,+clear,+init,+keep,-osccal,+oscval:0x3400,-resetbits,+download,+stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=default,+asm,+asmfile,+speed,-space,-debug,9 -D__DEBUG   --double=32 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@${MP_CC} --scandep  ../../../src/LC-meter.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\1386528437" -D_XTAL_FREQ=20000000 -DUSE_TIMER_0=1 -DUSE_SER=1 -DUSE_NOKIA3310_LCD=1 -DUART_BAUD=38400 -P -N127 -I".." -I"." -I"../../../lib" -I"../../../src" -v --warn=3 --runtime=default,+clear,+init,+keep,-osccal,+oscval:0x3400,-resetbits,+download,+stackcall,+clib --opt=default,+asm,+asmfile,+speed,-space,-debug,9 -D__DEBUG   --double=32 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@echo ${OBJECTDIR}/_ext/1386528437/LC-meter.p1: > ${OBJECTDIR}/_ext/1386528437/LC-meter.p1.d
	@cat ${OBJECTDIR}/_ext/1386528437/LC-meter.dep >> ${OBJECTDIR}/_ext/1386528437/LC-meter.p1.d
	@${FIXDEPS} "${OBJECTDIR}/_ext/1386528437/LC-meter.p1.d" $(SILENT) -ht  -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/1386521430/delay.p1: ../../../lib/delay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	${MP_CC} --pass1 ../../../lib/delay.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\1386521430" -D_XTAL_FREQ=20000000 -DUSE_TIMER_0=1 -DUSE_SER=1 -DUSE_NOKIA3310_LCD=1 -DUART_BAUD=38400 -P -N127 -I".." -I"." -I"../../../lib" -I"../../../src" -v --warn=3 --runtime=default,+clear,+init,+keep,-osccal,+oscval:0x3400,-resetbits,+download,+stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=default,+asm,+asmfile,+speed,-space,-debug,9  --double=32 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@${MP_CC} --scandep  ../../../lib/delay.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\1386521430" -D_XTAL_FREQ=20000000 -DUSE_TIMER_0=1 -DUSE_SER=1 -DUSE_NOKIA3310_LCD=1 -DUART_BAUD=38400 -P -N127 -I".." -I"." -I"../../../lib" -I"../../../src" -v --warn=3 --runtime=default,+clear,+init,+keep,-osccal,+oscval:0x3400,-resetbits,+download,+stackcall,+clib --opt=default,+asm,+asmfile,+speed,-space,-debug,9  --double=32 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@echo ${OBJECTDIR}/_ext/1386521430/delay.p1: > ${OBJECTDIR}/_ext/1386521430/delay.p1.d
	@cat ${OBJECTDIR}/_ext/1386521430/delay.dep >> ${OBJECTDIR}/_ext/1386521430/delay.p1.d
	@${FIXDEPS} "${OBJECTDIR}/_ext/1386521430/delay.p1.d" $(SILENT) -ht  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1386521430/format.p1: ../../../lib/format.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	${MP_CC} --pass1 ../../../lib/format.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\1386521430" -D_XTAL_FREQ=20000000 -DUSE_TIMER_0=1 -DUSE_SER=1 -DUSE_NOKIA3310_LCD=1 -DUART_BAUD=38400 -P -N127 -I".." -I"." -I"../../../lib" -I"../../../src" -v --warn=3 --runtime=default,+clear,+init,+keep,-osccal,+oscval:0x3400,-resetbits,+download,+stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=default,+asm,+asmfile,+speed,-space,-debug,9  --double=32 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@${MP_CC} --scandep  ../../../lib/format.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\1386521430" -D_XTAL_FREQ=20000000 -DUSE_TIMER_0=1 -DUSE_SER=1 -DUSE_NOKIA3310_LCD=1 -DUART_BAUD=38400 -P -N127 -I".." -I"." -I"../../../lib" -I"../../../src" -v --warn=3 --runtime=default,+clear,+init,+keep,-osccal,+oscval:0x3400,-resetbits,+download,+stackcall,+clib --opt=default,+asm,+asmfile,+speed,-space,-debug,9  --double=32 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@echo ${OBJECTDIR}/_ext/1386521430/format.p1: > ${OBJECTDIR}/_ext/1386521430/format.p1.d
	@cat ${OBJECTDIR}/_ext/1386521430/format.dep >> ${OBJECTDIR}/_ext/1386521430/format.p1.d
	@${FIXDEPS} "${OBJECTDIR}/_ext/1386521430/format.p1.d" $(SILENT) -ht  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1386521430/ser.p1: ../../../lib/ser.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	${MP_CC} --pass1 ../../../lib/ser.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\1386521430" -D_XTAL_FREQ=20000000 -DUSE_TIMER_0=1 -DUSE_SER=1 -DUSE_NOKIA3310_LCD=1 -DUART_BAUD=38400 -P -N127 -I".." -I"." -I"../../../lib" -I"../../../src" -v --warn=3 --runtime=default,+clear,+init,+keep,-osccal,+oscval:0x3400,-resetbits,+download,+stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=default,+asm,+asmfile,+speed,-space,-debug,9  --double=32 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@${MP_CC} --scandep  ../../../lib/ser.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\1386521430" -D_XTAL_FREQ=20000000 -DUSE_TIMER_0=1 -DUSE_SER=1 -DUSE_NOKIA3310_LCD=1 -DUART_BAUD=38400 -P -N127 -I".." -I"." -I"../../../lib" -I"../../../src" -v --warn=3 --runtime=default,+clear,+init,+keep,-osccal,+oscval:0x3400,-resetbits,+download,+stackcall,+clib --opt=default,+asm,+asmfile,+speed,-space,-debug,9  --double=32 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@echo ${OBJECTDIR}/_ext/1386521430/ser.p1: > ${OBJECTDIR}/_ext/1386521430/ser.p1.d
	@cat ${OBJECTDIR}/_ext/1386521430/ser.dep >> ${OBJECTDIR}/_ext/1386521430/ser.p1.d
	@${FIXDEPS} "${OBJECTDIR}/_ext/1386521430/ser.p1.d" $(SILENT) -ht  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1386521430/timer.p1: ../../../lib/timer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	${MP_CC} --pass1 ../../../lib/timer.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\1386521430" -D_XTAL_FREQ=20000000 -DUSE_TIMER_0=1 -DUSE_SER=1 -DUSE_NOKIA3310_LCD=1 -DUART_BAUD=38400 -P -N127 -I".." -I"." -I"../../../lib" -I"../../../src" -v --warn=3 --runtime=default,+clear,+init,+keep,-osccal,+oscval:0x3400,-resetbits,+download,+stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=default,+asm,+asmfile,+speed,-space,-debug,9  --double=32 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@${MP_CC} --scandep  ../../../lib/timer.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\1386521430" -D_XTAL_FREQ=20000000 -DUSE_TIMER_0=1 -DUSE_SER=1 -DUSE_NOKIA3310_LCD=1 -DUART_BAUD=38400 -P -N127 -I".." -I"." -I"../../../lib" -I"../../../src" -v --warn=3 --runtime=default,+clear,+init,+keep,-osccal,+oscval:0x3400,-resetbits,+download,+stackcall,+clib --opt=default,+asm,+asmfile,+speed,-space,-debug,9  --double=32 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@echo ${OBJECTDIR}/_ext/1386521430/timer.p1: > ${OBJECTDIR}/_ext/1386521430/timer.p1.d
	@cat ${OBJECTDIR}/_ext/1386521430/timer.dep >> ${OBJECTDIR}/_ext/1386521430/timer.p1.d
	@${FIXDEPS} "${OBJECTDIR}/_ext/1386521430/timer.p1.d" $(SILENT) -ht  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1386521430/uart.p1: ../../../lib/uart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	${MP_CC} --pass1 ../../../lib/uart.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\1386521430" -D_XTAL_FREQ=20000000 -DUSE_TIMER_0=1 -DUSE_SER=1 -DUSE_NOKIA3310_LCD=1 -DUART_BAUD=38400 -P -N127 -I".." -I"." -I"../../../lib" -I"../../../src" -v --warn=3 --runtime=default,+clear,+init,+keep,-osccal,+oscval:0x3400,-resetbits,+download,+stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=default,+asm,+asmfile,+speed,-space,-debug,9  --double=32 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@${MP_CC} --scandep  ../../../lib/uart.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\1386521430" -D_XTAL_FREQ=20000000 -DUSE_TIMER_0=1 -DUSE_SER=1 -DUSE_NOKIA3310_LCD=1 -DUART_BAUD=38400 -P -N127 -I".." -I"." -I"../../../lib" -I"../../../src" -v --warn=3 --runtime=default,+clear,+init,+keep,-osccal,+oscval:0x3400,-resetbits,+download,+stackcall,+clib --opt=default,+asm,+asmfile,+speed,-space,-debug,9  --double=32 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@echo ${OBJECTDIR}/_ext/1386521430/uart.p1: > ${OBJECTDIR}/_ext/1386521430/uart.p1.d
	@cat ${OBJECTDIR}/_ext/1386521430/uart.dep >> ${OBJECTDIR}/_ext/1386521430/uart.p1.d
	@${FIXDEPS} "${OBJECTDIR}/_ext/1386521430/uart.p1.d" $(SILENT) -ht  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1386521430/lcd3310.p1: ../../../lib/lcd3310.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	${MP_CC} --pass1 ../../../lib/lcd3310.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\1386521430" -D_XTAL_FREQ=20000000 -DUSE_TIMER_0=1 -DUSE_SER=1 -DUSE_NOKIA3310_LCD=1 -DUART_BAUD=38400 -P -N127 -I".." -I"." -I"../../../lib" -I"../../../src" -v --warn=3 --runtime=default,+clear,+init,+keep,-osccal,+oscval:0x3400,-resetbits,+download,+stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=default,+asm,+asmfile,+speed,-space,-debug,9  --double=32 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@${MP_CC} --scandep  ../../../lib/lcd3310.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\1386521430" -D_XTAL_FREQ=20000000 -DUSE_TIMER_0=1 -DUSE_SER=1 -DUSE_NOKIA3310_LCD=1 -DUART_BAUD=38400 -P -N127 -I".." -I"." -I"../../../lib" -I"../../../src" -v --warn=3 --runtime=default,+clear,+init,+keep,-osccal,+oscval:0x3400,-resetbits,+download,+stackcall,+clib --opt=default,+asm,+asmfile,+speed,-space,-debug,9  --double=32 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@echo ${OBJECTDIR}/_ext/1386521430/lcd3310.p1: > ${OBJECTDIR}/_ext/1386521430/lcd3310.p1.d
	@cat ${OBJECTDIR}/_ext/1386521430/lcd3310.dep >> ${OBJECTDIR}/_ext/1386521430/lcd3310.p1.d
	@${FIXDEPS} "${OBJECTDIR}/_ext/1386521430/lcd3310.p1.d" $(SILENT) -ht  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1386528437/display.p1: ../../../src/display.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386528437" 
	${MP_CC} --pass1 ../../../src/display.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\1386528437" -D_XTAL_FREQ=20000000 -DUSE_TIMER_0=1 -DUSE_SER=1 -DUSE_NOKIA3310_LCD=1 -DUART_BAUD=38400 -P -N127 -I".." -I"." -I"../../../lib" -I"../../../src" -v --warn=3 --runtime=default,+clear,+init,+keep,-osccal,+oscval:0x3400,-resetbits,+download,+stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=default,+asm,+asmfile,+speed,-space,-debug,9  --double=32 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@${MP_CC} --scandep  ../../../src/display.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\1386528437" -D_XTAL_FREQ=20000000 -DUSE_TIMER_0=1 -DUSE_SER=1 -DUSE_NOKIA3310_LCD=1 -DUART_BAUD=38400 -P -N127 -I".." -I"." -I"../../../lib" -I"../../../src" -v --warn=3 --runtime=default,+clear,+init,+keep,-osccal,+oscval:0x3400,-resetbits,+download,+stackcall,+clib --opt=default,+asm,+asmfile,+speed,-space,-debug,9  --double=32 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@echo ${OBJECTDIR}/_ext/1386528437/display.p1: > ${OBJECTDIR}/_ext/1386528437/display.p1.d
	@cat ${OBJECTDIR}/_ext/1386528437/display.dep >> ${OBJECTDIR}/_ext/1386528437/display.p1.d
	@${FIXDEPS} "${OBJECTDIR}/_ext/1386528437/display.p1.d" $(SILENT) -ht  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1386528437/LC-meter.p1: ../../../src/LC-meter.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386528437" 
	${MP_CC} --pass1 ../../../src/LC-meter.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\1386528437" -D_XTAL_FREQ=20000000 -DUSE_TIMER_0=1 -DUSE_SER=1 -DUSE_NOKIA3310_LCD=1 -DUART_BAUD=38400 -P -N127 -I".." -I"." -I"../../../lib" -I"../../../src" -v --warn=3 --runtime=default,+clear,+init,+keep,-osccal,+oscval:0x3400,-resetbits,+download,+stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=default,+asm,+asmfile,+speed,-space,-debug,9  --double=32 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@${MP_CC} --scandep  ../../../src/LC-meter.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\1386528437" -D_XTAL_FREQ=20000000 -DUSE_TIMER_0=1 -DUSE_SER=1 -DUSE_NOKIA3310_LCD=1 -DUART_BAUD=38400 -P -N127 -I".." -I"." -I"../../../lib" -I"../../../src" -v --warn=3 --runtime=default,+clear,+init,+keep,-osccal,+oscval:0x3400,-resetbits,+download,+stackcall,+clib --opt=default,+asm,+asmfile,+speed,-space,-debug,9  --double=32 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@echo ${OBJECTDIR}/_ext/1386528437/LC-meter.p1: > ${OBJECTDIR}/_ext/1386528437/LC-meter.p1.d
	@cat ${OBJECTDIR}/_ext/1386528437/LC-meter.dep >> ${OBJECTDIR}/_ext/1386528437/LC-meter.p1.d
	@${FIXDEPS} "${OBJECTDIR}/_ext/1386528437/LC-meter.p1.d" $(SILENT) -ht  -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/LC-meter-Nokia3310.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE) -odist/${CND_CONF}/${IMAGE_TYPE}/LC-meter-Nokia3310.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  -mdist/${CND_CONF}/${IMAGE_TYPE}/LC-meter-Nokia3310.X.${IMAGE_TYPE}.map --summary=default,-psect,-class,+mem,-hex --chip=$(MP_PROCESSOR_OPTION) -P --runtime=default,+clear,+init,+keep,-osccal,+oscval:0x3400,-resetbits,+download,+stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=default,+asm,+asmfile,+speed,-space,-debug,9 -D__DEBUG  -D_XTAL_FREQ=20000000 -DUSE_TIMER_0=1 -DUSE_SER=1 -DUSE_NOKIA3310_LCD=1 -DUART_BAUD=38400 -P -N127 -I".." -I"." -I"../../../lib" -I"../../../src" -v --warn=3  --double=32 --float=24 --addrqual=ignore --mode=pro --output=default,-inhx032 -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s" ${OBJECTFILES_QUOTED_IF_SPACED}  
	@${RM} dist/${CND_CONF}/${IMAGE_TYPE}/LC-meter-Nokia3310.X.${IMAGE_TYPE}.hex
else
dist/${CND_CONF}/${IMAGE_TYPE}/LC-meter-Nokia3310.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE) -odist/${CND_CONF}/${IMAGE_TYPE}/LC-meter-Nokia3310.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -mdist/${CND_CONF}/${IMAGE_TYPE}/LC-meter-Nokia3310.X.${IMAGE_TYPE}.map --summary=default,-psect,-class,+mem,-hex --chip=$(MP_PROCESSOR_OPTION) -P --runtime=default,+clear,+init,+keep,-osccal,+oscval:0x3400,-resetbits,+download,+stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=default,+asm,+asmfile,+speed,-space,-debug,9 -D_XTAL_FREQ=20000000 -DUSE_TIMER_0=1 -DUSE_SER=1 -DUSE_NOKIA<?xml version="1.0" encoding="UTF-8"?>
<configurationDescriptor version="62">
  <projectmakefile>Makefile</projectmakefile>
  <defaultConf>0</defaultConf>
  <confs>
    <conf name="default" type="2">
      <platformToolSN></platformToolSN>
      <languageToolchainDir>C:\Program Files (x86)\Microchip\xc8\v1.34\bin</languageToolchainDir>
      <mdbdebugger version="1">
        <placeholder1>place holder 1</placeholder1>
        <placeholder2>place holder 2</placeholder2>
      </mdbdebugger>
      <runprofile version="6">
        <args></args>
        <rundir></rundir>
        <buildfirst>true</buildfirst>
        <console-type