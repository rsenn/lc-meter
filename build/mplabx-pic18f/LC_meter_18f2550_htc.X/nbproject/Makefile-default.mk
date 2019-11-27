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
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=cof
DEBUGGABLE_SUFFIX=cof
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/LC_meter_18f2550_htc.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=cof
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/LC_meter_18f2550_htc.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../../../lib/lcd44780.c ../../../lib/comparator.c ../../../lib/delay.c ../../../lib/format.c ../../../lib/timer.c ../../../lib/ser.c ../../../src/print.c ../../../LC-meter.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1386521430/lcd44780.p1 ${OBJECTDIR}/_ext/1386521430/comparator.p1 ${OBJECTDIR}/_ext/1386521430/delay.p1 ${OBJECTDIR}/_ext/1386521430/format.p1 ${OBJECTDIR}/_ext/1386521430/timer.p1 ${OBJECTDIR}/_ext/1386521430/ser.p1 ${OBJECTDIR}/_ext/1386528437/print.p1 ${OBJECTDIR}/_ext/2124829536/LC-meter.p1
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1386521430/lcd44780.p1.d ${OBJECTDIR}/_ext/1386521430/comparator.p1.d ${OBJECTDIR}/_ext/1386521430/delay.p1.d ${OBJECTDIR}/_ext/1386521430/format.p1.d ${OBJECTDIR}/_ext/1386521430/timer.p1.d ${OBJECTDIR}/_ext/1386521430/ser.p1.d ${OBJECTDIR}/_ext/1386528437/print.p1.d ${OBJECTDIR}/_ext/2124829536/LC-meter.p1.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1386521430/lcd44780.p1 ${OBJECTDIR}/_ext/1386521430/comparator.p1 ${OBJECTDIR}/_ext/1386521430/delay.p1 ${OBJECTDIR}/_ext/1386521430/format.p1 ${OBJECTDIR}/_ext/1386521430/timer.p1 ${OBJECTDIR}/_ext/1386521430/ser.p1 ${OBJECTDIR}/_ext/1386528437/print.p1 ${OBJECTDIR}/_ext/2124829536/LC-meter.p1

# Source Files
SOURCEFILES=../../../lib/lcd44780.c ../../../lib/comparator.c ../../../lib/delay.c ../../../lib/format.c ../../../lib/timer.c ../../../lib/ser.c ../../../src/print.c ../../../LC-meter.c



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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/LC_meter_18f2550_htc.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18F2550
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1386521430/lcd44780.p1: ../../../lib/lcd44780.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	${MP_CC} --pass1 ../../../lib/lcd44780.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}/_ext/1386521430" -D__HTC=1 -D__18f2550=1 -DUSE_TIMER2=1 -DUSE_SER=1 -DXTAL_FREQ=20000000 -DBAUD_RATE=38400 -DUSE_TIMER1=1 -DUSE_TIMER0=1 -N31 -I"../../../lib" -I"../../../src" --warn=0 --runtime=default,+clear,+init,-keep,-download,+stackwarn,-config,+clib,-plib --opt=all,+asm,-asmfile,+speed,-space,9 -D__DEBUG --debugger=realice --cp=16 -Blarge --double=32  --mode=pro -g --asmlist "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"  
	@${MP_CC} --scandep  ../../../lib/lcd44780.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}/_ext/1386521430" -D__HTC=1 -D__18f2550=1 -DUSE_TIMER2=1 -DUSE_SER=1 -DXTAL_FREQ=20000000 -DBAUD_RATE=38400 -DUSE_TIMER1=1 -DUSE_TIMER0=1 -N31 -I"../../../lib" -I"../../../src" --warn=0 --runtime=default,+clear,+init,-keep,-download,+stackwarn,-config,+clib,-plib --opt=all,+asm,-asmfile,+speed,-space,9 -D__DEBUG --debugger=realice --cp=16 -Blarge --double=32  --mode=pro -g --asmlist "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"  
	@echo ${OBJECTDIR}/_ext/1386521430/lcd44780.p1: > ${OBJECTDIR}/_ext/1386521430/lcd44780.p1.d
	@cat ${OBJECTDIR}/_ext/1386521430/lcd44780.dep >> ${OBJECTDIR}/_ext/1386521430/lcd44780.p1.d
	@${FIXDEPS} "${OBJECTDIR}/_ext/1386521430/lcd44780.p1.d" $(SILENT) -ht  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1386521430/comparator.p1: ../../../lib/comparator.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	${MP_CC} --pass1 ../../../lib/comparator.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}/_ext/1386521430" -D__HTC=1 -D__18f2550=1 -DUSE_TIMER2=1 -DUSE_SER=1 -DXTAL_FREQ=20000000 -DBAUD_RATE=38400 -DUSE_TIMER1=1 -DUSE_TIMER0=1 -N31 -I"../../../lib" -I"../../../src" --warn=0 --runtime=default,+clear,+init,-keep,-download,+stackwarn,-config,+clib,-plib --opt=all,+asm,-asmfile,+speed,-space,9 -D__DEBUG --debugger=realice --cp=16 -Blarge --double=32  --mode=pro -g --asmlist "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"  
	@${MP_CC} --scandep  ../../../lib/comparator.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}/_ext/1386521430" -D__HTC=1 -D__18f2550=1 -DUSE_TIMER2=1 -DUSE_SER=1 -DXTAL_FREQ=20000000 -DBAUD_RATE=38400 -DUSE_TIMER1=1 -DUSE_TIMER0=1 -N31 -I"../../../lib" -I"../../../src" --warn=0 --runtime=default,+clear,+init,-keep,-download,+stackwarn,-config,+clib,-plib --opt=all,+asm,-asmfile,+speed,-space,9 -D__DEBUG --debugger=realice --cp=16 -Blarge --double=32  --mode=pro -g --asmlist "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"  
	@echo ${OBJECTDIR}/_ext/1386521430/comparator.p1: > ${OBJECTDIR}/_ext/1386521430/comparator.p1.d
	@cat ${OBJECTDIR}/_ext/1386521430/comparator.dep >> ${OBJECTDIR}/_ext/1386521430/comparator.p1.d
	@${FIXDEPS} "${OBJECTDIR}/_ext/1386521430/comparator.p1.d" $(SILENT) -ht  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1386521430/delay.p1: ../../../lib/delay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	${MP_CC} --pass1 ../../../lib/delay.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}/_ext/1386521430" -D__HTC=1 -D__18f2550=1 -DUSE_TIMER2=1 -DUSE_SER=1 -DXTAL_FREQ=20000000 -DBAUD_RATE=38400 -DUSE_TIMER1=1 -DUSE_TIMER0=1 -N31 -I"../../../lib" -I"../../../src" --warn=0 --runtime=default,+clear,+init,-keep,-download,+stackwarn,-config,+clib,-plib --opt=all,+asm,-asmfile,+speed,-space,9 -D__DEBUG --debugger=realice --cp=16 -Blarge --double=32  --mode=pro -g --asmlist "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"  
	@${MP_CC} --scandep  ../../../lib/delay.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}/_ext/1386521430" -D__HTC=1 -D__18f2550=1 -DUSE_TIMER2=1 -DUSE_SER=1 -DXTAL_FREQ=20000000 -DBAUD_RATE=38400 -DUSE_TIMER1=1 -DUSE_TIMER0=1 -N31 -I"../../../lib" -I"../../../src" --warn=0 --runtime=default,+clear,+init,-keep,-download,+stackwarn,-config,+clib,-plib --opt=all,+asm,-asmfile,+speed,-space,9 -D__DEBUG --debugger=realice --cp=16 -Blarge --double=32  --mode=pro -g --asmlist "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"  
	@echo ${OBJECTDIR}/_ext/1386521430/delay.p1: > ${OBJECTDIR}/_ext/1386521430/delay.p1.d
	@cat ${OBJECTDIR}/_ext/1386521430/delay.dep >> ${OBJECTDIR}/_ext/1386521430/delay.p1.d
	@${FIXDEPS} "${OBJECTDIR}/_ext/1386521430/delay.p1.d" $(SILENT) -ht  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1386521430/format.p1: ../../../lib/format.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	${MP_CC} --pass1 ../../../lib/format.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}/_ext/1386521430" -D__HTC=1 -D__18f2550=1 -DUSE_TIMER2=1 -DUSE_SER=1 -DXTAL_FREQ=20000000 -DBAUD_RATE=38400 -DUSE_TIMER1=1 -DUSE_TIMER0=1 -N31 -I"../../../lib" -I"../../../src" --warn=0 --runtime=default,+clear,+init,-keep,-download,+stackwarn,-config,+clib,-plib --opt=all,+asm,-asmfile,+speed,-space,9 -D__DEBUG --debugger=realice --cp=16 -Blarge --double=32  --mode=pro -g --asmlist "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"  
	@${MP_CC} --scandep  ../../../lib/format.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}/_ext/1386521430" -D__HTC=1 -D__18f2550=1 -DUSE_TIMER2=1 -DUSE_SER=1 -DXTAL_FREQ=20000000 -DBAUD_RATE=38400 -DUSE_TIMER1=1 -DUSE_TIMER0=1 -N31 -I"../../../lib" -I"../../../src" --warn=0 --runtime=default,+clear,+init,-keep,-download,+stackwarn,-config,+clib,-plib --opt=all,+asm,-asmfile,+speed,-space,9 -D__DEBUG --debugger=realice --cp=16 -Blarge --double=32  --mode=pro -g --asmlist "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"  
	@echo ${OBJECTDIR}/_ext/1386521430/format.p1: > ${OBJECTDIR}/_ext/1386521430/format.p1.d
	@cat ${OBJECTDIR}/_ext/1386521430/format.dep >> ${OBJECTDIR}/_ext/1386521430/format.p1.d
	@${FIXDEPS} "${OBJECTDIR}/_ext/1386521430/format.p1.d" $(SILENT) -ht  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1386521430/timer.p1: ../../../lib/timer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	${MP_CC} --pass1 ../../../lib/timer.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}/_ext/1386521430" -D__HTC=1 -D__18f2550=1 -DUSE_TIMER2=1 -DUSE_SER=1 -DXTAL_FREQ=20000000 -DBAUD_RATE=38400 -DUSE_TIMER1=1 -DUSE_TIMER0=1 -N31 -I"../../../lib" -I"../../../src" --warn=0 --runtime=default,+clear,+init,-keep,-download,+stackwarn,-config,+clib,-plib --opt=all,+asm,-asmfile,+speed,-space,9 -D__DEBUG --debugger=realice --cp=16 -Blarge --double=32  --mode=pro -g --asmlist "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"  
	@${MP_CC} --scandep  ../../../lib/timer.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}/_ext/1386521430" -D__HTC=1 -D__18f2550=1 -DUSE_TIMER2=1 -DUSE_SER=1 -DXTAL_FREQ=20000000 -DBAUD_RATE=38400 -DUSE_TIMER1=1 -DUSE_TIMER0=1 -N31 -I"../../../lib" -I"../../../src" --warn=0 --runtime=default,+clear,+init,-keep,-download,+stackwarn,-config,+clib,-plib --opt=all,+asm,-asmfile,+speed,-space,9 -D__DEBUG --debugger=realice --cp=16 -Blarge --double=32  --mode=pro -g --asmlist "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"  
	@echo ${OBJECTDIR}/_ext/1386521430/timer.p1: > ${OBJECTDIR}/_ext/1386521430/timer.p1.d
	@cat ${OBJECTDIR}/_ext/1386521430/timer.dep >> ${OBJECTDIR}/_ext/1386521430/timer.p1.d
	@${FIXDEPS} "${OBJECTDIR}/_ext/1386521430/timer.p1.d" $(SILENT) -ht  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1386521430/ser.p1: ../../../lib/ser.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	${MP_CC} --pass1 ../../../lib/ser.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}/_ext/1386521430" -D__HTC=1 -D__18f2550=1 -DUSE_TIMER2=1 -DUSE_SER=1 -DXTAL_FREQ=20000000 -DBAUD_RATE=38400 -DUSE_TIMER1=1 -DUSE_TIMER0=1 -N31 -I"../../../lib" -I"../../../src" --warn=0 --runtime=default,+clear,+init,-keep,-download,+stackwarn,-config,+clib,-plib --opt=all,+asm,-asmfile,+speed,-space,9 -D__DEBUG --debugger=realice --cp=16 -Blarge --double=32  --mode=pro -g --asmlist "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"  
	@${MP_CC} --scandep  ../../../lib/ser.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}/_ext/1386521430" -D__HTC=1 -D__18f2550=1 -DUSE_TIMER2=1 -DUSE_SER=1 -DXTAL_FREQ=20000000 -DBAUD_RATE=38400 -DUSE_TIMER1=1 -DUSE_TIMER0=1 -N31 -I"../../../lib" -I"../../../src" --warn=0 --runtime=default,+clear,+init,-keep,-download,+stackwarn,-config,+clib,-plib --opt=all,+asm,-asmfile,+speed,-space,9 -D__DEBUG --debugger=realice --cp=16 -Blarge --double=32  --mode=pro -g --asmlist "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"  
	@echo ${OBJECTDIR}/_ext/1386521430/ser.p1: > ${OBJECTDIR}/_ext/1386521430/ser.p1.d
	@cat ${OBJECTDIR}/_ext/1386521430/ser.dep >> ${OBJECTDIR}/_ext/1386521430/ser.p1.d
	@${FIXDEPS} "${OBJECTDIR}/_ext/1386521430/ser.p1.d" $(SILENT) -ht  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1386528437/print.p1: ../../../src/print.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386528437" 
	${MP_CC} --pass1 ../../../src/print.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}/_ext/1386528437" -D__HTC=1 -D__18f2550=1 -DUSE_TIMER2=1 -DUSE_SER=1 -DXTAL_FREQ=20000000 -DBAUD_RATE=38400 -DUSE_TIMER1=1 -DUSE_TIMER0=1 -N31 -I"../../../lib" -I"../../../src" --warn=0 --runtime=default,+clear,+init,-keep,-download,+stackwarn,-config,+clib,-plib --opt=all,+asm,-asmfile,+speed,-space,9 -D__DEBUG --debugger=realice --cp=16 -Blarge --double=32  --mode=pro -g --asmlist "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"  
	@${MP_CC} --scandep  ../../../src/print.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}/_ext/1386528437" -D__HTC=1 -D__18f2550=1 -DUSE_TIMER2=1 -DUSE_SER=1 -DXTAL_FREQ=20000000 -DBAUD_RATE=38400 -DUSE_TIMER1=1 -DUSE_TIMER0=1 -N31 -I"../../../lib" -I"../../../src" --warn=0 --runtime=default,+clear,+init,-keep,-download,+stackwarn,-config,+clib,-plib --opt=all,+asm,-asmfile,+speed,-space,9 -D__DEBUG --debugger=realice --cp=16 -Blarge --double=32  --mode=pro -g --asmlist "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"  
	@echo ${OBJECTDIR}/_ext/1386528437/print.p1: > ${OBJECTDIR}/_ext/1386528437/print.p1.d
	@cat ${OBJECTDIR}/_ext/1386528437/print.dep >> ${OBJECTDIR}/_ext/1386528437/print.p1.d
	@${FIXDEPS} "${OBJECTDIR}/_ext/1386528437/print.p1.d" $(SILENT) -ht  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2124829536/LC-meter.p1: ../../../LC-meter.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2124829536" 
	${MP_CC} --pass1 ../../../LC-meter.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}/_ext/2124829536" -D__HTC=1 -D__18f2550=1 -DUSE_TIMER2=1 -DUSE_SER=1 -DXTAL_FREQ=20000000 -DBAUD_RATE=38400 -DUSE_TIMER1=1 -DUSE_TIMER0=1 -N31 -I"../../../lib" -I"../../../src" --warn=0 --runtime=default,+clear,+init,-keep,-download,+stackwarn,-config,+clib,-plib --opt=all,+asm,-asmfile,+speed,-space,9 -D__DEBUG --debugger=realice --cp=16 -Blarge --double=32  --mode=pro -g --asmlist "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"  
	@${MP_CC} --scandep  ../../../LC-meter.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}/_ext/2124829536" -D__HTC=1 -D__18f2550=1 -DUSE_TIMER2=1 -DUSE_SER=1 -DXTAL_FREQ=20000000 -DBAUD_RATE=38400 -DUSE_TIMER1=1 -DUSE_TIMER0=1 -N31 -I"../../../lib" -I"../../../src" --warn=0 --runtime=default,+clear,+init,-keep,-download,+stackwarn,-config,+clib,-plib --opt=all,+asm,-asmfile,+speed,-space,9 -D__DEBUG --debugger=realice --cp=16 -Blarge --double=32  --mode=pro -g --asmlist "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"  
	@echo ${OBJECTDIR}/_ext/2124829536/LC-meter.p1: > ${OBJECTDIR}/_ext/2124829536/LC-meter.p1.d
	@cat ${OBJECTDIR}/_ext/2124829536/LC-meter.dep >> ${OBJECTDIR}/_ext/2124829536/LC-meter.p1.d
	@${FIXDEPS} "${OBJECTDIR}/_ext/2124829536/LC-meter.p1.d" $(SILENT) -ht  -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/1386521430/lcd44780.p1: ../../../lib/lcd44780.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	${MP_CC} --pass1 ../../../lib/lcd44780.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}/_ext/1386521430" -D__HTC=1 -D__18f2550=1 -DUSE_TIMER2=1 -DUSE_SER=1 -DXTAL_FREQ=20000000 -DBAUD_RATE=38400 -DUSE_TIMER1=1 -DUSE_TIMER0=1 -N31 -I"../../../lib" -I"../../../src" --warn=0 --runtime=default,+clear,+init,-keep,-download,+stackwarn,-config,+clib,-plib --opt=all,+asm,-asmfile,+speed,-space,9 --cp=16 -Blarge --double=32  --mode=pro -g --asmlist "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"  
	@${MP_CC} --scandep  ../../../lib/lcd44780.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}/_ext/1386521430" -D__HTC=1 -D__18f2550=1 -DUSE_TIMER2=1 -DUSE_SER=1 -DXTAL_FREQ=20000000 -DBAUD_RATE=38400 -DUSE_TIMER1=1 -DUSE_TIMER0=1 -N31 -I"../../../lib" -I"../../../src" --warn=0 --runtime=default,+clear,+init,-keep,-download,+stackwarn,-config,+clib,-plib --opt=all,+asm,-asmfile,+speed,-space,9 --cp=16 -Blarge --double=32  --mode=pro -g --asmlist "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"  
	@echo ${OBJECTDIR}/_ext/1386521430/lcd44780.p1: > ${OBJECTDIR}/_ext/1386521430/lcd44780.p1.d
	@cat ${OBJECTDIR}/_ext/1386521430/lcd44780.dep >> ${OBJECTDIR}/_ext/1386521430/lcd44780.p1.d
	@${FIXDEPS} "${OBJECTDIR}/_ext/1386521430/lcd44780.p1.d" $(SILENT) -ht  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1386521430/comparator.p1: ../../../lib/comparator.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	${MP_CC} --pass1 ../../../lib/comparator.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}/_ext/1386521430" -D__HTC=1 -D__18f2550=1 -DUSE_TIMER2=1 -DUSE_SER=1 -DXTAL_FREQ=20000000 -DBAUD_RATE=38400 -DUSE_TIMER1=1 -DUSE_TIMER0=1 -N31 -I"../../../lib" -I"../../../src" --warn=0 --runtime=default,+clear,+init,-keep,-download,+stackwarn,-config,+clib,-plib --opt=all,+asm,-asmfile,+speed,-space,9 --cp=16 -Blarge --double=32  --mode=pro -g --asmlist "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"  
	@${MP_CC} --scandep  ../../../lib/comparator.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}/_ext/1386521430" -D__HTC=1 -D__18f2550=1 -DUSE_TIMER2=1 -DUSE_SER=1 -DXTAL_FREQ=20000000 -DBAUD_RATE=38400 -DUSE_TIMER1=1 -DUSE_TIMER0=1 -N31 -I"../../../lib" -I"../../../src" --warn=0 --runtime=default,+clear,+init,-keep,-download,+stackwarn,-config,+clib,-plib --opt=all,+asm,-asmfile,+speed,-space,9 --cp=16 -Blarge --double=32  --mode=pro -g --asmlist "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"  
	@echo ${OBJECTDIR}/_ext/1386521430/comparator.p1: > ${OBJECTDIR}/_ext/1386521430/comparator.p1.d
	@cat ${OBJECTDIR}/_ext/1386521430/comparator.dep >> ${OBJECTDIR}/_ext/1386521430/comparator.p1.d
	@${FIXDEPS} "${OBJECTDIR}/_ext/1386521430/comparator.p1.d" $(SILENT) -ht  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1386521430/delay.p1: ../../../lib/delay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	${MP_CC} --pass1 ../../../lib/delay.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}/_ext/1386521430" -D__HTC=1 -D__18f2550=1 -DUSE_TIMER2=1 -DUSE_SER=1 -DXTAL_FREQ=20000000 -DBAUD_RATE=38400 -DUSE_TIMER1=1 -DUSE_TIMER0=1 -N31 -I"../../../lib" -I"../../../src" --warn=0 --runtime=default,+clear,+init,-keep,-download,+stackwarn,-config,+clib,-plib --opt=all,+asm,-asmfile,+speed,-space,9 --cp=16 -Blarge --double=32  --mode=pro -g --asmlist "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"  
	@${MP_CC} --scandep  ../../../lib/delay.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}/_ext/1386521430" -D__HTC=1 -D__18f2550=1 -DUSE_TIMER2=1 -DUSE_SER=1 -DXTAL_FREQ=20000000 -DBAUD_RATE=38400 -DUSE_TIMER1=1 -DUSE_TIMER0=1 -N31 -I"../../../lib" -I"../../../src" --warn=0 --runtime=default,+clear,+init,-keep,-download,+stackwarn,-config,+clib,-plib --opt=all,+asm,-asmfile,+speed,-space,9 --cp=16 -Blarge --double=32  --mode=pro -g --asmlist "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"  
	@echo ${OBJECTDIR}/_ext/1386521430/delay.p1: > ${OBJECTDIR}/_ext/1386521430/delay.p1.d
	@cat ${OBJECTDIR}/_ext/1386521430/delay.dep >> ${OBJECTDIR}/_ext/1386521430/delay.p1.d
	@${FIXDEPS} "${OBJECTDIR}/_ext/1386521430/delay.p1.d" $(SILENT) -ht  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1386521430/format.p1: ../../../lib/format.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	${MP_CC} --pass1 ../../../lib/format.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}/_ext/1386521430" -D__HTC=1 -D__18f2550=1 -DUSE_TIMER2=1 -DUSE_SER=1 -DXTAL_FREQ=20000000 -DBAUD_RATE=38400 -DUSE_TIMER1=1 -DUSE_TIMER0=1 -N31 -I"../../../lib" -I"../../../src" --warn=0 --runtime=default,+clear,+init,-keep,-download,+stackwarn,-config,+clib,-plib --opt=all,+asm,-asmfile,+speed,-space,9 --cp=16 -Blarge --double=32  --mode=pro -g --asmlist "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"  
	@${MP_CC} --scandep  ../../../lib/format.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}/_ext/1386521430" -D__HTC=1 -D__18f2550=1 -DUSE_TIMER2=1 -DUSE_SER=1 -DXTAL_FREQ=20000000 -DBAUD_RATE=38400 -DUSE_TIMER1=1 -DUSE_TIMER0=1 -N31 -I"../../../lib" -I"../../../src" --warn=0 --runtime=default,+clear,+init,-keep,-download,+stackwarn,-config,+clib,-plib --opt=all,+asm,-asmfile,+speed,-space,9 --cp=16 -Blarge --double=32  --mode=pro -g --asmlist "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"  
	@echo ${OBJECTDIR}/_ext/1386521430/format.p1: > ${OBJECTDIR}/_ext/1386521430/format.p1.d
	@cat ${OBJECTDIR}/_ext/1386521430/format.dep >> ${OBJECTDIR}/_ext/1386521430/format.p1.d
	@${FIXDEPS} "${OBJECTDIR}/_ext/1386521430/format.p1.d" $(SILENT) -ht  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1386521430/timer.p1: ../../../lib/timer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	${MP_CC} --pass1 ../../../lib/timer.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}/_ext/1386521430" -D__HTC=1 -D__18f2550=1 -DUSE_TIMER2=1 -DUSE_SER=1 -DXTAL_FREQ=20000000 -DBAUD_RATE=38400 -DUSE_TIMER1=1 -DUSE_TIMER0=1 -N31 -I"../../../lib" -I"../../../src" --warn=0 --runtime=default,+clear,+init,-keep,-download,+stackwarn,-config,+clib,-plib --opt=all,+asm,-asmfile,+speed,-space,9 --cp=16 -Blarge --double=32  --mode=pro -g --asmlist "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"  
	@${MP_CC} --scandep  ../../../lib/timer.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}/_ext/1386521430" -D__HTC=1 -D__18f2550=1 -DUSE_TIMER2=1 -DUSE_SER=1 -DXTAL_FREQ=20000000 -DBAUD_RATE=38400 -DUSE_TIMER1=1 -DUSE_TIMER0=1 -N31 -I"../../../lib" -I"../../../src" --warn=0 --runtime=default,+clear,+init,-keep,-download,+stackwarn,-config,+clib,-plib --opt=all,+asm,-asmfile,+speed,-space,9 --cp=16 -Blarge --double=32  --mode=pro -g --asmlist "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"  
	@echo ${OBJECTDIR}/_ext/1386521430/timer.p1: > ${OBJECTDIR}/_ext/1386521430/timer.p1.d
	@cat ${OBJECTDIR}/_ext/1386521430/timer.dep >> ${OBJECTDIR}/_ext/1386521430/timer.p1.d
	@${FIXDEPS} "${OBJECTDIR}/_ext/1386521430/timer.p1.d" $(SILENT) -ht  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1386521430/ser.p1: ../../../lib/ser.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	${MP_CC} --pass1 ../../../lib/ser.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}/_ext/1386521430" -D__HTC=1 -D__18f2550=1 -DUSE_TIMER2=1 -DUSE_SER=1 -DXTAL_FREQ=20000000 -DBAUD_RATE=38400 -DUSE_TIMER1=1 -DUSE_TIMER0=1 -N31 -I"../../../lib" -I"../../../src" --warn=0 --runtime=default,+clear,+init,-keep,-download,+stackwarn,-config,+clib,-plib --opt=all,+asm,-asmfile,+speed,-space,9 --cp=16 -Blarge --double=32  --mode=pro -g --asmlist "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"  
	@${MP_CC} --scandep  ../../../lib/ser.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}/_ext/1386521430" -D__HTC=1 -D__18f2550=1 -DUSE_TIMER2=1 -DUSE_SER=1 -DXTAL_FREQ=20000000 -DBAUD_RATE=38400 -DUSE_TIMER1=1 -DUSE_TIMER0=1 -N31 -I"../../../lib" -I"../../../src" --warn=0 --runtime=default,+clear,+init,-keep,-download,+stackwarn,-config,+clib,-plib --opt=all,+asm,-asmfile,+speed,-space,9 --cp=16 -Blarge --double=32  --mode=pro -g --asmlist "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"  
	@echo ${OBJECTDIR}/_ext/1386521430/ser.p1: > ${OBJECTDIR}/_ext/1386521430/ser.p1.d
	@cat ${OBJECTDIR}/_ext/1386521430/ser.dep >> ${OBJECTDIR}/_ext/1386521430/ser.p1.d
	@${FIXDEPS} "${OBJECTDIR}/_ext/1386521430/ser.p1.d" $(SILENT) -ht  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1386528437/print.p1: ../../../src/print.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386528437" 
	${MP_CC} --pass1 ../../../src/print.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}/_ext/1386528437" -D__HTC=1 -D__18f2550=1 -DUSE_TIMER2=1 -DUSE_SER=1 -DXTAL_FREQ=20000000 -DBAUD_RATE=38400 -DUSE_TIMER1=1 -DUSE_TIMER0=1 -N31 -I"../../../lib" -I"../../../src" --warn=0 --runtime=default,+clear,+init,-keep,-download,+stackwarn,-config,+clib,-plib --opt=all,+asm,-asmfile,+speed,-space,9 --cp=16 -Blarge --double=32  --mode=pro -g --asmlist "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"  
	@${MP_CC} --scandep  ../../../src/print.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}/_ext/1386528437" -D__HTC=1 -D__18f2550=1 -DUSE_TIMER2=1 -DUSE_SER=1 -DXTAL_FREQ=20000000 -DBAUD_RATE=38400 -DUSE_TIMER1=1 -DUSE_TIMER0=1 -N31 -I"../../../lib" -I"../../../src" --warn=0 --runtime=default,+clear,+init,-keep,-download,+stackwarn,-config,+clib,-plib --opt=all,+asm,-asmfile,+speed,-space,9 --cp=16 -Blarge --double=32  --mode=pro -g --asmlist "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"  
	@echo ${OBJECTDIR}/_ext/1386528437/print.p1: > ${OBJECTDIR}/_ext/1386528437/print.p1.d
	@cat ${OBJECTDIR}/_ext/1386528437/print.dep >> ${OBJECTDIR}/_ext/1386528437/print.p1.d
	@${FIXDEPS} "${OBJECTDIR}/_ext/1386528437/print.p1.d" $(SILENT) -ht  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2124829536/LC-meter.p1: ../../../LC-meter.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2124829536" 
	${MP_CC} --pass1 ../../../LC-meter.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}/_ext/2124829536" -D__HTC=1 -D__18f2550=1 -DUSE_TIMER2=1 -DUSE_SER=1 -DXTAL_FREQ=20000000 -DBAUD_RATE=38400 -DUSE_TIMER1=1 -DUSE_TIMER0=1 -N31 -I"../../../lib" -I"../../../src" --warn=0 --runtime=default,+clear,+init,-keep,-download,+stackwarn,-config,+clib,-plib --opt=all,+asm,-asmfile,+speed,-space,9 --cp=16 -Blarge --double=32  --mode=pro -g --asmlist "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"  
	@${MP_CC} --scandep  ../../../LC-meter.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}/_ext/2124829536" -D__HTC=1 -D__18f2550=1 -DUSE_TIMER2=1 -DUSE_SER=1 -DXTAL_FREQ=20000000 -DBAUD_RATE=38400 -DUSE_TIMER1=1 -DUSE_TIMER0=1 -N31 -I"../../../lib" -I"../../../src" --warn=0 --runtime=default,+clear,+init,-keep,-download,+stackwarn,-config,+clib,-plib --opt=all,+asm,-asmfile,+speed,-space,9 --cp=16 -Blarge --double=32  --mode=pro -g --asmlist "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"  
	@echo ${OBJECTDIR}/_ext/2124829536/LC-meter.p1: > ${OBJECTDIR}/_ext/2124829536/LC-meter.p1.d
	@cat ${OBJECTDIR}/_ext/2124829536/LC-meter.dep >> ${OBJECTDIR}/_ext/2124829536/LC-meter.p1.d
	@${FIXDEPS} "${OBJECTDIR}/_ext/2124829536/LC-meter.p1.d" $(SILENT) -ht  -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/LC_meter_18f2550_htc.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE) -odist/${CND_CONF}/${IMAGE_TYPE}/LC_meter_18f2550_htc.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  -mdist/${CND_CONF}/${IMAGE_TYPE}/LC_meter_18f2550_htc.X.${IMAGE_TYPE}.map --summary=default,-psect,-class,+mem,-hex --chip=$(MP_PROCESSOR_OPTION) -P --runtime=default,+clear,+init,-keep,-download,+stackwarn,-config,+clib,-plib --opt=all,+asm,-asmfile,+speed,-space,9 -D__DEBUG --debugger=realice -D__HTC=1 -D__18f2550=1 -DUSE_TIMER2=1 -DUSE_SER=1 -DXTAL_FREQ=20000000 -DBAUD_RATE=38400 -DUSE_TIMER1=1 -DUSE_TIMER0=1 -N31 -I"../../../lib" -I"../../../src" --warn=0 --cp=16 -Blarge --double=32  --mode=pro  --output=default,-inhx032 -g --asmlist "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s" ${OBJECTFILES_QUOTED_IF_SPACED}    
	${RM} dist/${CND_CONF}/${IMAGE_TYPE}/LC_meter_18f2550_htc.X.${IMAGE_TYPE}.hex
else
dist/${CND_CONF}/${IMAGE_TYPE}/LC_meter_18f2550_htc.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE) -odist/${CND_CONF}/${IMAGE_TYPE}/LC_meter_18f2550_htc.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -mdist/${CND_CONF}/${IMAGE_TYPE}/LC_meter_18f2550_htc.X.${IMAGE_TYPE}.map --summary=default,-psect,-class,+mem,-hex --chip=$(MP_PROCESSOR_OPTION) -P --runtime=default,+clear,+init,-keep,-download,+stackwarn,-config,+clib,-plib --opt=all,+asm,-asmfile,+speed,-space,9 -D__HTC=1 -D__18f2550=1 -DUSE_TIMER2=1 -DUSE_SER=1 -DXTAL_FREQ=20000000 -DBAUD_RATE=38400 -DUSE_TIMER1=1 -DUSE_TIMER0=1 -N31 -I"../../../lib" -I"../../../src" --warn=0 --cp=16 -Blarge --double=32  --mode=pro  --output=default,-inhx032 -g --asmlist "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s" ${OBJECTFILES_QUOTED_IF_SPACED}    
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell "${PATH_TO_IDE_BIN}"mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
