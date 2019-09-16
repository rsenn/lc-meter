#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-release.mk)" "nbproject/Makefile-local-release.mk"
include nbproject/Makefile-local-release.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=release
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=cof
DEBUGGABLE_SUFFIX=cof
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/LC-meter-Nokia5110.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=cof
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/LC-meter-Nokia5110.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../../../lib/delay.c ../../../lib/format.c ../../../lib/ser.c ../../../lib/timer.c ../../../lib/uart.c ../../../lib/lcd5110.c ../../../LC-meter.c ../../../src/print.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1386521430/delay.p1 ${OBJECTDIR}/_ext/1386521430/format.p1 ${OBJECTDIR}/_ext/1386521430/ser.p1 ${OBJECTDIR}/_ext/1386521430/timer.p1 ${OBJECTDIR}/_ext/1386521430/uart.p1 ${OBJECTDIR}/_ext/1386521430/lcd5110.p1 ${OBJECTDIR}/_ext/1386528437/LC-meter.p1 ${OBJECTDIR}/_ext/1386528437/print.p1
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1386521430/delay.p1.d ${OBJECTDIR}/_ext/1386521430/format.p1.d ${OBJECTDIR}/_ext/1386521430/ser.p1.d ${OBJECTDIR}/_ext/1386521430/timer.p1.d ${OBJECTDIR}/_ext/1386521430/uart.p1.d ${OBJECTDIR}/_ext/1386521430/lcd5110.p1.d ${OBJECTDIR}/_ext/1386528437/LC-meter.p1.d ${OBJECTDIR}/_ext/1386528437/print.p1.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1386521430/delay.p1 ${OBJECTDIR}/_ext/1386521430/format.p1 ${OBJECTDIR}/_ext/1386521430/ser.p1 ${OBJECTDIR}/_ext/1386521430/timer.p1 ${OBJECTDIR}/_ext/1386521430/uart.p1 ${OBJECTDIR}/_ext/1386521430/lcd5110.p1 ${OBJECTDIR}/_ext/1386528437/LC-meter.p1 ${OBJECTDIR}/_ext/1386528437/print.p1

# Source Files
SOURCEFILES=../../../lib/delay.c ../../../lib/format.c ../../../lib/ser.c ../../../lib/timer.c ../../../lib/uart.c ../../../lib/lcd5110.c ../../../LC-meter.c ../../../src/print.c


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-release.mk dist/${CND_CONF}/${IMAGE_TYPE}/LC-meter-Nokia5110.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=16F876A
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1386521430/delay.p1: ../../../lib/delay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	${MP_CC} --pass1 ../../../lib/delay.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\1386521430" -DNDEBUG=1 -DUART_BAUD=38400 -DUSE_NOKIA5110_LCD=1 -DUSE_UART=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -D_XTAL_FREQ=20000000 -D__NDEBUG=1 -P -N127 -I".." -I"." -I"../../../lib" -I"../../../src" -v --warn=3 --runtime=default,+clear,+init,+keep,-osccal,+oscval:0x3400,-resetbits,+download,+stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=all,+asm,+asmfile,+speed,-space,-debug,9 -D__DEBUG   --double=32 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@${MP_CC} --scandep  ../../../lib/delay.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\1386521430" -DNDEBUG=1 -DUART_BAUD=38400 -DUSE_NOKIA5110_LCD=1 -DUSE_UART=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -D_XTAL_FREQ=20000000 -D__NDEBUG=1 -P -N127 -I".." -I"." -I"../../../lib" -I"../../../src" -v --warn=3 --runtime=default,+clear,+init,+keep,-osccal,+oscval:0x3400,-resetbits,+download,+stackcall,+clib --opt=all,+asm,+asmfile,+speed,-space,-debug,9 -D__DEBUG   --double=32 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@echo ${OBJECTDIR}/_ext/1386521430/delay.p1: > ${OBJECTDIR}/_ext/1386521430/delay.p1.d
	@cat ${OBJECTDIR}/_ext/1386521430/delay.dep >> ${OBJECTDIR}/_ext/1386521430/delay.p1.d
	@${FIXDEPS} "${OBJECTDIR}/_ext/1386521430/delay.p1.d" $(SILENT) -ht  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1386521430/format.p1: ../../../lib/format.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	${MP_CC} --pass1 ../../../lib/format.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\1386521430" -DNDEBUG=1 -DUART_BAUD=38400 -DUSE_NOKIA5110_LCD=1 -DUSE_UART=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -D_XTAL_FREQ=20000000 -D__NDEBUG=1 -P -N127 -I".." -I"." -I"../../../lib" -I"../../../src" -v --warn=3 --runtime=default,+clear,+init,+keep,-osccal,+oscval:0x3400,-resetbits,+download,+stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=all,+asm,+asmfile,+speed,-space,-debug,9 -D__DEBUG   --double=32 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@${MP_CC} --scandep  ../../../lib/format.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\1386521430" -DNDEBUG=1 -DUART_BAUD=38400 -DUSE_NOKIA5110_LCD=1 -DUSE_UART=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -D_XTAL_FREQ=20000000 -D__NDEBUG=1 -P -N127 -I".." -I"." -I"../../../lib" -I"../../../src" -v --warn=3 --runtime=default,+clear,+init,+keep,-osccal,+oscval:0x3400,-resetbits,+download,+stackcall,+clib --opt=all,+asm,+asmfile,+speed,-space,-debug,9 -D__DEBUG   --double=32 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@echo ${OBJECTDIR}/_ext/1386521430/format.p1: > ${OBJECTDIR}/_ext/1386521430/format.p1.d
	@cat ${OBJECTDIR}/_ext/1386521430/format.dep >> ${OBJECTDIR}/_ext/1386521430/format.p1.d
	@${FIXDEPS} "${OBJECTDIR}/_ext/1386521430/format.p1.d" $(SILENT) -ht  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1386521430/ser.p1: ../../../lib/ser.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	${MP_CC} --pass1 ../../../lib/ser.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\1386521430" -DNDEBUG=1 -DUART_BAUD=38400 -DUSE_NOKIA5110_LCD=1 -DUSE_UART=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -D_XTAL_FREQ=20000000 -D__NDEBUG=1 -P -N127 -I".." -I"." -I"../../../lib" -I"../../../src" -v --warn=3 --runtime=default,+clear,+init,+keep,-osccal,+oscval:0x3400,-resetbits,+download,+stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=all,+asm,+asmfile,+speed,-space,-debug,9 -D__DEBUG   --double=32 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@${MP_CC} --scandep  ../../../lib/ser.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\1386521430" -DNDEBUG=1 -DUART_BAUD=38400 -DUSE_NOKIA5110_LCD=1 -DUSE_UART=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -D_XTAL_FREQ=20000000 -D__NDEBUG=1 -P -N127 -I".." -I"." -I"../../../lib" -I"../../../src" -v --warn=3 --runtime=default,+clear,+init,+keep,-osccal,+oscval:0x3400,-resetbits,+download,+stackcall,+clib --opt=all,+asm,+asmfile,+speed,-space,-debug,9 -D__DEBUG   --double=32 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@echo ${OBJECTDIR}/_ext/1386521430/ser.p1: > ${OBJECTDIR}/_ext/1386521430/ser.p1.d
	@cat ${OBJECTDIR}/_ext/1386521430/ser.dep >> ${OBJECTDIR}/_ext/1386521430/ser.p1.d
	@${FIXDEPS} "${OBJECTDIR}/_ext/1386521430/ser.p1.d" $(SILENT) -ht  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1386521430/timer.p1: ../../../lib/timer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	${MP_CC} --pass1 ../../../lib/timer.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\1386521430" -DNDEBUG=1 -DUART_BAUD=38400 -DUSE_NOKIA5110_LCD=1 -DUSE_UART=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -D_XTAL_FREQ=20000000 -D__NDEBUG=1 -P -N127 -I".." -I"." -I"../../../lib" -I"../../../src" -v --warn=3 --runtime=default,+clear,+init,+keep,-osccal,+oscval:0x3400,-resetbits,+download,+stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=all,+asm,+asmfile,+speed,-space,-debug,9 -D__DEBUG   --double=32 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@${MP_CC} --scandep  ../../../lib/timer.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\1386521430" -DNDEBUG=1 -DUART_BAUD=38400 -DUSE_NOKIA5110_LCD=1 -DUSE_UART=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -D_XTAL_FREQ=20000000 -D__NDEBUG=1 -P -N127 -I".." -I"." -I"../../../lib" -I"../../../src" -v --warn=3 --runtime=default,+clear,+init,+keep,-osccal,+oscval:0x3400,-resetbits,+download,+stackcall,+clib --opt=all,+asm,+asmfile,+speed,-space,-debug,9 -D__DEBUG   --double=32 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@echo ${OBJECTDIR}/_ext/1386521430/timer.p1: > ${OBJECTDIR}/_ext/1386521430/timer.p1.d
	@cat ${OBJECTDIR}/_ext/1386521430/timer.dep >> ${OBJECTDIR}/_ext/1386521430/timer.p1.d
	@${FIXDEPS} "${OBJECTDIR}/_ext/1386521430/timer.p1.d" $(SILENT) -ht  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1386521430/uart.p1: ../../../lib/uart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	${MP_CC} --pass1 ../../../lib/uart.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\1386521430" -DNDEBUG=1 -DUART_BAUD=38400 -DUSE_NOKIA5110_LCD=1 -DUSE_UART=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -D_XTAL_FREQ=20000000 -D__NDEBUG=1 -P -N127 -I".." -I"." -I"../../../lib" -I"../../../src" -v --warn=3 --runtime=default,+clear,+init,+keep,-osccal,+oscval:0x3400,-resetbits,+download,+stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=all,+asm,+asmfile,+speed,-space,-debug,9 -D__DEBUG   --double=32 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@${MP_CC} --scandep  ../../../lib/uart.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\1386521430" -DNDEBUG=1 -DUART_BAUD=38400 -DUSE_NOKIA5110_LCD=1 -DUSE_UART=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -D_XTAL_FREQ=20000000 -D__NDEBUG=1 -P -N127 -I".." -I"." -I"../../../lib" -I"../../../src" -v --warn=3 --runtime=default,+clear,+init,+keep,-osccal,+oscval:0x3400,-resetbits,+download,+stackcall,+clib --opt=all,+asm,+asmfile,+speed,-space,-debug,9 -D__DEBUG   --double=32 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@echo ${OBJECTDIR}/_ext/1386521430/uart.p1: > ${OBJECTDIR}/_ext/1386521430/uart.p1.d
	@cat ${OBJECTDIR}/_ext/1386521430/uart.dep >> ${OBJECTDIR}/_ext/1386521430/uart.p1.d
	@${FIXDEPS} "${OBJECTDIR}/_ext/1386521430/uart.p1.d" $(SILENT) -ht  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1386521430/lcd5110.p1: ../../../lib/lcd5110.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	${MP_CC} --pass1 ../../../lib/lcd5110.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\1386521430" -DNDEBUG=1 -DUART_BAUD=38400 -DUSE_NOKIA5110_LCD=1 -DUSE_UART=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -D_XTAL_FREQ=20000000 -D__NDEBUG=1 -P -N127 -I".." -I"." -I"../../../lib" -I"../../../src" -v --warn=3 --runtime=default,+clear,+init,+keep,-osccal,+oscval:0x3400,-resetbits,+download,+stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=all,+asm,+asmfile,+speed,-space,-debug,9 -D__DEBUG   --double=32 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@${MP_CC} --scandep  ../../../lib/lcd5110.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\1386521430" -DNDEBUG=1 -DUART_BAUD=38400 -DUSE_NOKIA5110_LCD=1 -DUSE_UART=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -D_XTAL_FREQ=20000000 -D__NDEBUG=1 -P -N127 -I".." -I"." -I"../../../lib" -I"../../../src" -v --warn=3 --runtime=default,+clear,+init,+keep,-osccal,+oscval:0x3400,-resetbits,+download,+stackcall,+clib --opt=all,+asm,+asmfile,+speed,-space,-debug,9 -D__DEBUG   --double=32 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@echo ${OBJECTDIR}/_ext/1386521430/lcd5110.p1: > ${OBJECTDIR}/_ext/1386521430/lcd5110.p1.d
	@cat ${OBJECTDIR}/_ext/1386521430/lcd5110.dep >> ${OBJECTDIR}/_ext/1386521430/lcd5110.p1.d
	@${FIXDEPS} "${OBJECTDIR}/_ext/1386521430/lcd5110.p1.d" $(SILENT) -ht  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1386528437/LC-meter.p1: ../../../LC-meter.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386528437" 
	${MP_CC} --pass1 ../../../LC-meter.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\1386528437" -DNDEBUG=1 -DUART_BAUD=38400 -DUSE_NOKIA5110_LCD=1 -DUSE_UART=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -D_XTAL_FREQ=20000000 -D__NDEBUG=1 -P -N127 -I".." -I"." -I"../../../lib" -I"../../../src" -v --warn=3 --runtime=default,+clear,+init,+keep,-osccal,+oscval:0x3400,-resetbits,+download,+stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=all,+asm,+asmfile,+speed,-space,-debug,9 -D__DEBUG   --double=32 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@${MP_CC} --scandep  ../../../LC-meter.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\1386528437" -DNDEBUG=1 -DUART_BAUD=38400 -DUSE_NOKIA5110_LCD=1 -DUSE_UART=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -D_XTAL_FREQ=20000000 -D__NDEBUG=1 -P -N127 -I".." -I"." -I"../../../lib" -I"../../../src" -v --warn=3 --runtime=default,+clear,+init,+keep,-osccal,+oscval:0x3400,-resetbits,+download,+stackcall,+clib --opt=all,+asm,+asmfile,+speed,-space,-debug,9 -D__DEBUG   --double=32 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@echo ${OBJECTDIR}/_ext/1386528437/LC-meter.p1: > ${OBJECTDIR}/_ext/1386528437/LC-meter.p1.d
	@cat ${OBJECTDIR}/_ext/1386528437/LC-meter.dep >> ${OBJECTDIR}/_ext/1386528437/LC-meter.p1.d
	@${FIXDEPS} "${OBJECTDIR}/_ext/1386528437/LC-meter.p1.d" $(SILENT) -ht  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1386528437/print.p1: ../../../src/print.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386528437" 
	${MP_CC} --pass1 ../../../src/print.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\1386528437" -DNDEBUG=1 -DUART_BAUD=38400 -DUSE_NOKIA5110_LCD=1 -DUSE_UART=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -D_XTAL_FREQ=20000000 -D__NDEBUG=1 -P -N127 -I".." -I"." -I"../../../lib" -I"../../../src" -v --warn=3 --runtime=default,+clear,+init,+keep,-osccal,+oscval:0x3400,-resetbits,+download,+stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=all,+asm,+asmfile,+speed,-space,-debug,9 -D__DEBUG   --double=32 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@${MP_CC} --scandep  ../../../src/print.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\1386528437" -DNDEBUG=1 -DUART_BAUD=38400 -DUSE_NOKIA5110_LCD=1 -DUSE_UART=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -D_XTAL_FREQ=20000000 -D__NDEBUG=1 -P -N127 -I".." -I"." -I"../../../lib" -I"../../../src" -v --warn=3 --runtime=default,+clear,+init,+keep,-osccal,+oscval:0x3400,-resetbits,+download,+stackcall,+clib --opt=all,+asm,+asmfile,+speed,-space,-debug,9 -D__DEBUG   --double=32 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@echo ${OBJECTDIR}/_ext/1386528437/print.p1: > ${OBJECTDIR}/_ext/1386528437/print.p1.d
	@cat ${OBJECTDIR}/_ext/1386528437/print.dep >> ${OBJECTDIR}/_ext/1386528437/print.p1.d
	@${FIXDEPS} "${OBJECTDIR}/_ext/1386528437/print.p1.d" $(SILENT) -ht  -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/1386521430/delay.p1: ../../../lib/delay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	${MP_CC} --pass1 ../../../lib/delay.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\1386521430" -DNDEBUG=1 -DUART_BAUD=38400 -DUSE_NOKIA5110_LCD=1 -DUSE_UART=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -D_XTAL_FREQ=20000000 -D__NDEBUG=1 -P -N127 -I".." -I"." -I"../../../lib" -I"../../../src" -v --warn=3 --runtime=default,+clear,+init,+keep,-osccal,+oscval:0x3400,-resetbits,+download,+stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=all,+asm,+asmfile,+speed,-space,-debug,9  --double=32 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@${MP_CC} --scandep  ../../../lib/delay.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\1386521430" -DNDEBUG=1 -DUART_BAUD=38400 -DUSE_NOKIA5110_LCD=1 -DUSE_UART=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -D_XTAL_FREQ=20000000 -D__NDEBUG=1 -P -N127 -I".." -I"." -I"../../../lib" -I"../../../src" -v --warn=3 --runtime=default,+clear,+init,+keep,-osccal,+oscval:0x3400,-resetbits,+download,+stackcall,+clib --opt=all,+asm,+asmfile,+speed,-space,-debug,9  --double=32 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@echo ${OBJECTDIR}/_ext/1386521430/delay.p1: > ${OBJECTDIR}/_ext/1386521430/delay.p1.d
	@cat ${OBJECTDIR}/_ext/1386521430/delay.dep >> ${OBJECTDIR}/_ext/1386521430/delay.p1.d
	@${FIXDEPS} "${OBJECTDIR}/_ext/1386521430/delay.p1.d" $(SILENT) -ht  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1386521430/format.p1: ../../../lib/format.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	${MP_CC} --pass1 ../../../lib/format.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\1386521430" -DNDEBUG=1 -DUART_BAUD=38400 -DUSE_NOKIA5110_LCD=1 -DUSE_UART=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -D_XTAL_FREQ=20000000 -D__NDEBUG=1 -P -N127 -I".." -I"." -I"../../../lib" -I"../../../src" -v --warn=3 --runtime=default,+clear,+init,+keep,-osccal,+oscval:0x3400,-resetbits,+download,+stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=all,+asm,+asmfile,+speed,-space,-debug,9  --double=32 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@${MP_CC} --scandep  ../../../lib/format.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\1386521430" -DNDEBUG=1 -DUART_BAUD=38400 -DUSE_NOKIA5110_LCD=1 -DUSE_UART=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -D_XTAL_FREQ=20000000 -D__NDEBUG=1 -P -N127 -I".." -I"." -I"../../../lib" -I"../../../src" -v --warn=3 --runtime=default,+clear,+init,+keep,-osccal,+oscval:0x3400,-resetbits,+download,+stackcall,+clib --opt=all,+asm,+asmfile,+speed,-space,-debug,9  --double=32 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@echo ${OBJECTDIR}/_ext/1386521430/format.p1: > ${OBJECTDIR}/_ext/1386521430/format.p1.d
	@cat ${OBJECTDIR}/_ext/1386521430/format.dep >> ${OBJECTDIR}/_ext/1386521430/format.p1.d
	@${FIXDEPS} "${OBJECTDIR}/_ext/1386521430/format.p1.d" $(SILENT) -ht  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1386521430/ser.p1: ../../../lib/ser.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	${MP_CC} --pass1 ../../../lib/ser.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\1386521430" -DNDEBUG=1 -DUART_BAUD=38400 -DUSE_NOKIA5110_LCD=1 -DUSE_UART=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -D_XTAL_FREQ=20000000 -D__NDEBUG=1 -P -N127 -I".." -I"." -I"../../../lib" -I"../../../src" -v --warn=3 --runtime=default,+clear,+init,+keep,-osccal,+oscval:0x3400,-resetbits,+download,+stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=all,+asm,+asmfile,+speed,-space,-debug,9  --double=32 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@${MP_CC} --scandep  ../../../lib/ser.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\1386521430" -DNDEBUG=1 -DUART_BAUD=38400 -DUSE_NOKIA5110_LCD=1 -DUSE_UART=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -D_XTAL_FREQ=20000000 -D__NDEBUG=1 -P -N127 -I".." -I"." -I"../../../lib" -I"../../../src" -v --warn=3 --runtime=default,+clear,+init,+keep,-osccal,+oscval:0x3400,-resetbits,+download,+stackcall,+clib --opt=all,+asm,+asmfile,+speed,-space,-debug,9  --double=32 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@echo ${OBJECTDIR}/_ext/1386521430/ser.p1: > ${OBJECTDIR}/_ext/1386521430/ser.p1.d
	@cat ${OBJECTDIR}/_ext/1386521430/ser.dep >> ${OBJECTDIR}/_ext/1386521430/ser.p1.d
	@${FIXDEPS} "${OBJECTDIR}/_ext/1386521430/ser.p1.d" $(SILENT) -ht  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1386521430/timer.p1: ../../../lib/timer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	${MP_CC} --pass1 ../../../lib/timer.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\1386521430" -DNDEBUG=1 -DUART_BAUD=38400 -DUSE_NOKIA5110_LCD=1 -DUSE_UART=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -D_XTAL_FREQ=20000000 -D__NDEBUG=1 -P -N127 -I".." -I"." -I"../../../lib" -I"../../../src" -v --warn=3 --runtime=default,+clear,+init,+keep,-osccal,+oscval:0x3400,-resetbits,+download,+stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=all,+asm,+asmfile,+speed,-space,-debug,9  --double=32 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@${MP_CC} --scandep  ../../../lib/timer.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\1386521430" -DNDEBUG=1 -DUART_BAUD=38400 -DUSE_NOKIA5110_LCD=1 -DUSE_UART=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -D_XTAL_FREQ=20000000 -D__NDEBUG=1 -P -N127 -I".." -I"." -I"../../../lib" -I"../../../src" -v --warn=3 --runtime=default,+clear,+init,+keep,-osccal,+oscval:0x3400,-resetbits,+download,+stackcall,+clib --opt=all,+asm,+asmfile,+speed,-space,-debug,9  --double=32 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@echo ${OBJECTDIR}/_ext/1386521430/timer.p1: > ${OBJECTDIR}/_ext/1386521430/timer.p1.d
	@cat ${OBJECTDIR}/_ext/1386521430/timer.dep >> ${OBJECTDIR}/_ext/1386521430/timer.p1.d
	@${FIXDEPS} "${OBJECTDIR}/_ext/1386521430/timer.p1.d" $(SILENT) -ht  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1386521430/uart.p1: ../../../lib/uart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	${MP_CC} --pass1 ../../../lib/uart.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\1386521430" -DNDEBUG=1 -DUART_BAUD=38400 -DUSE_NOKIA5110_LCD=1 -DUSE_UART=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -D_XTAL_FREQ=20000000 -D__NDEBUG=1 -P -N127 -I".." -I"." -I"../../../lib" -I"../../../src" -v --warn=3 --runtime=default,+clear,+init,+keep,-osccal,+oscval:0x3400,-resetbits,+download,+stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=all,+asm,+asmfile,+speed,-space,-debug,9  --double=32 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@${MP_CC} --scandep  ../../../lib/uart.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\1386521430" -DNDEBUG=1 -DUART_BAUD=38400 -DUSE_NOKIA5110_LCD=1 -DUSE_UART=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -D_XTAL_FREQ=20000000 -D__NDEBUG=1 -P -N127 -I".." -I"." -I"../../../lib" -I"../../../src" -v --warn=3 --runtime=default,+clear,+init,+keep,-osccal,+oscval:0x3400,-resetbits,+download,+stackcall,+clib --opt=all,+asm,+asmfile,+speed,-space,-debug,9  --double=32 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@echo ${OBJECTDIR}/_ext/1386521430/uart.p1: > ${OBJECTDIR}/_ext/1386521430/uart.p1.d
	@cat ${OBJECTDIR}/_ext/1386521430/uart.dep >> ${OBJECTDIR}/_ext/1386521430/uart.p1.d
	@${FIXDEPS} "${OBJECTDIR}/_ext/1386521430/uart.p1.d" $(SILENT) -ht  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1386521430/lcd5110.p1: ../../../lib/lcd5110.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	${MP_CC} --pass1 ../../../lib/lcd5110.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\1386521430" -DNDEBUG=1 -DUART_BAUD=38400 -DUSE_NOKIA5110_LCD=1 -DUSE_UART=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -D_XTAL_FREQ=20000000 -D__NDEBUG=1 -P -N127 -I".." -I"." -I"../../../lib" -I"../../../src" -v --warn=3 --runtime=default,+clear,+init,+keep,-osccal,+oscval:0x3400,-resetbits,+download,+stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=all,+asm,+asmfile,+speed,-space,-debug,9  --double=32 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@${MP_CC} --scandep  ../../../lib/lcd5110.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\1386521430" -DNDEBUG=1 -DUART_BAUD=38400 -DUSE_NOKIA5110_LCD=1 -DUSE_UART=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -D_XTAL_FREQ=20000000 -D__NDEBUG=1 -P -N127 -I".." -I"." -I"../../../lib" -I"../../../src" -v --warn=3 --runtime=default,+clear,+init,+keep,-osccal,+oscval:0x3400,-resetbits,+download,+stackcall,+clib --opt=all,+asm,+asmfile,+speed,-space,-debug,9  --double=32 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@echo ${OBJECTDIR}/_ext/1386521430/lcd5110.p1: > ${OBJECTDIR}/_ext/1386521430/lcd5110.p1.d
	@cat ${OBJECTDIR}/_ext/1386521430/lcd5110.dep >> ${OBJECTDIR}/_ext/1386521430/lcd5110.p1.d
	@${FIXDEPS} "${OBJECTDIR}/_ext/1386521430/lcd5110.p1.d" $(SILENT) -ht  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1386528437/LC-meter.p1: ../../../LC-meter.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386528437" 
	${MP_CC} --pass1 ../../../LC-meter.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\1386528437" -DNDEBUG=1 -DUART_BAUD=38400 -DUSE_NOKIA5110_LCD=1 -DUSE_UART=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -D_XTAL_FREQ=20000000 -D__NDEBUG=1 -P -N127 -I".." -I"." -I"../../../lib" -I"../../../src" -v --warn=3 --runtime=default,+clear,+init,+keep,-osccal,+oscval:0x3400,-resetbits,+download,+stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=all,+asm,+asmfile,+speed,-space,-debug,9  --double=32 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@${MP_CC} --scandep  ../../../LC-meter.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\1386528437" -DNDEBUG=1 -DUART_BAUD=38400 -DUSE_NOKIA5110_LCD=1 -DUSE_UART=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -D_XTAL_FREQ=20000000 -D__NDEBUG=1 -P -N127 -I".." -I"." -I"../../../lib" -I"../../../src" -v --warn=3 --runtime=default,+clear,+init,+keep,-osccal,+oscval:0x3400,-resetbits,+download,+stackcall,+clib --opt=all,+asm,+asmfile,+speed,-space,-debug,9  --double=32 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@echo ${OBJECTDIR}/_ext/1386528437/LC-meter.p1: > ${OBJECTDIR}/_ext/1386528437/LC-meter.p1.d
	@cat ${OBJECTDIR}/_ext/1386528437/LC-meter.dep >> ${OBJECTDIR}/_ext/1386528437/LC-meter.p1.d
	@${FIXDEPS} "${OBJECTDIR}/_ext/1386528437/LC-meter.p1.d" $(SILENT) -ht  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1386528437/print.p1: ../../../src/print.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386528437" 
	${MP_CC} --pass1 ../../../src/print.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\1386528437" -DNDEBUG=1 -DUART_BAUD=38400 -DUSE_NOKIA5110_LCD=1 -DUSE_UART=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -D_XTAL_FREQ=20000000 -D__NDEBUG=1 -P -N127 -I".." -I"." -I"../../../lib" -I"../../../src" -v --warn=3 --runtime=default,+clear,+init,+keep,-osccal,+oscval:0x3400,-resetbits,+download,+stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=all,+asm,+asmfile,+speed,-space,-debug,9  --double=32 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@${MP_CC} --scandep  ../../../src/print.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\1386528437" -DNDEBUG=1 -DUART_BAUD=38400 -DUSE_NOKIA5110_LCD=1 -DUSE_UART=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -D_XTAL_FREQ=20000000 -D__NDEBUG=1 -P -N127 -I".." -I"." -I"../../../lib" -I"../../../src" -v --warn=3 --runtime=default,+clear,+init,+keep,-osccal,+oscval:0x3400,-resetbits,+download,+stackcall,+clib --opt=all,+asm,+asmfile,+speed,-space,-debug,9  --double=32 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@echo ${OBJECTDIR}/_ext/1386528437/print.p1: > ${OBJECTDIR}/_ext/1386528437/print.p1.d
	@cat ${OBJECTDIR}/_ext/1386528437/print.dep >> ${OBJECTDIR}/_ext/1386528437/print.p1.d
	@${FIXDEPS} "${OBJECTDIR}/_ext/1386528437/print.p1.d" $(SILENT) -ht  -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/LC-meter-Nokia5110.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE) -odist/${CND_CONF}/${IMAGE_TYPE}/LC-meter-Nokia5110.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  -mdist/${CND_CONF}/${IMAGE_TYPE}/LC-meter-Nokia5110.X.${IMAGE_TYPE}.map --summary=default,-psect,-class,+mem,-hex --chip=$(MP_PROCESSOR_OPTION) -P --runtime=default,+clear,+init,+keep,-osccal,+oscval:0x3400,-resetbits,+download,+stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=all,+asm,+asmfile,+speed,-space,-debug,9 -D__DEBUG  -DNDEBUG=1 -DUART_BAUD=38400 -DUSE_NOKIA5110_LCD=1 -DUSE_UART=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -D_XTAL_FREQ=20000000 -D__NDEBUG=1 -P -N127 -I".." -I"." -I"../../../lib" -I"../../../src" -v --warn=3  --double=32 --float=24 --addrqual=ignore --mode=pro --output=default,-inhx032 -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s" ${OBJECTFILES_QUOTED_IF_SPACED}  
	@${RM} dist/${CND_CONF}/${IMAGE_TYPE}/LC-meter-Nokia5110.X.${IMAGE_TYPE}.hex
else
dist/${CND_CONF}/${IMAGE_TYPE}/LC-meter-Nokia5110.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE) -odist/${CND_CONF}/${IMAGE_TYPE}/LC-meter-Nokia5110.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -mdist/${CND_CONF}/${IMAGE_TYPE}/LC-meter-Nokia5110.X.${IMAGE_TYPE}.map --summary=default,-psect,-class,+mem,-hex --chip=$(MP_PROCESSOR_OPTION) -P --runtime=default,+clear,+init,+keep,-osccal,+oscval:0x3400,-resetbits,+download,+stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=all,+asm,+asmfile,+speed,-space,-debug,9 -DNDEBUG=1 -DUART_BAUD=38400 -DUSE_NOKIA5110_LCD=1 -DUSE_UART=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -D_XTAL_FREQ=20000000 -D__NDEBUG=1 -P -N127 -I".." -I"." -I"../../../lib" -I"../../../src" -v --warn=3  --double=32 --float=24 --addrqual=ignore --mode=pro --output=default,-inhx032 -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s" ${OBJECTFILES_QUOTED_IF_SPACED}  
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/release
	${RM} -r dist/release

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
