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
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/LC_meter_16f876a_xc8.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/LC_meter_16f876a_xc8.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
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
SOURCEFILES_QUOTED_IF_SPACED=../../../lib/lcd44780.c ../../../lib/format.c ../../../lib/ser.c ../../../lib/timer.c ../../../lib/buffer.c ../../../src/print.c ../../../src/measure.c ../../../LC-meter.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1386521430/lcd44780.p1 ${OBJECTDIR}/_ext/1386521430/format.p1 ${OBJECTDIR}/_ext/1386521430/ser.p1 ${OBJECTDIR}/_ext/1386521430/timer.p1 ${OBJECTDIR}/_ext/1386521430/buffer.p1 ${OBJECTDIR}/_ext/1386528437/print.p1 ${OBJECTDIR}/_ext/1386528437/measure.p1 ${OBJECTDIR}/_ext/2124829536/LC-meter.p1
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1386521430/lcd44780.p1.d ${OBJECTDIR}/_ext/1386521430/format.p1.d ${OBJECTDIR}/_ext/1386521430/ser.p1.d ${OBJECTDIR}/_ext/1386521430/timer.p1.d ${OBJECTDIR}/_ext/1386521430/buffer.p1.d ${OBJECTDIR}/_ext/1386528437/print.p1.d ${OBJECTDIR}/_ext/1386528437/measure.p1.d ${OBJECTDIR}/_ext/2124829536/LC-meter.p1.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1386521430/lcd44780.p1 ${OBJECTDIR}/_ext/1386521430/format.p1 ${OBJECTDIR}/_ext/1386521430/ser.p1 ${OBJECTDIR}/_ext/1386521430/timer.p1 ${OBJECTDIR}/_ext/1386521430/buffer.p1 ${OBJECTDIR}/_ext/1386528437/print.p1 ${OBJECTDIR}/_ext/1386528437/measure.p1 ${OBJECTDIR}/_ext/2124829536/LC-meter.p1

# Source Files
SOURCEFILES=../../../lib/lcd44780.c ../../../lib/format.c ../../../lib/ser.c ../../../lib/timer.c ../../../lib/buffer.c ../../../src/print.c ../../../src/measure.c ../../../LC-meter.c


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
	${MAKE}  -f nbproject/Makefile-release.mk dist/${CND_CONF}/${IMAGE_TYPE}/LC_meter_16f876a_xc8.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=16F876A
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1386521430/lcd44780.p1: ../../../lib/lcd44780.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	@${RM} ${OBJECTDIR}/_ext/1386521430/lcd44780.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1386521430/lcd44780.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fshort-float -Os -fasmfile -maddrqual=ignore -D__16f876a=1 -DBAUD_RATE=38400 -DUSE_SER=1 -DUSE_TIMER0=1 -D_XTAL_FREQ=20000000 -DNDEBUG=1 -xassembler-with-cpp -I"../../.." -I"../../../lib" -I"../../../src" -I"." -v -mwarn=3 -Wa,-a -DXPRJ_release=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--no-data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mdownload -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/_ext/1386521430/lcd44780.p1 ../../../lib/lcd44780.c 
	@-${MV} ${OBJECTDIR}/_ext/1386521430/lcd44780.d ${OBJECTDIR}/_ext/1386521430/lcd44780.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1386521430/lcd44780.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1386521430/format.p1: ../../../lib/format.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	@${RM} ${OBJECTDIR}/_ext/1386521430/format.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1386521430/format.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fshort-float -Os -fasmfile -maddrqual=ignore -D__16f876a=1 -DBAUD_RATE=38400 -DUSE_SER=1 -DUSE_TIMER0=1 -D_XTAL_FREQ=20000000 -DNDEBUG=1 -xassembler-with-cpp -I"../../.." -I"../../../lib" -I"../../../src" -I"." -v -mwarn=3 -Wa,-a -DXPRJ_release=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--no-data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mdownload -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/_ext/1386521430/format.p1 ../../../lib/format.c 
	@-${MV} ${OBJECTDIR}/_ext/1386521430/format.d ${OBJECTDIR}/_ext/1386521430/format.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1386521430/format.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1386521430/ser.p1: ../../../lib/ser.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	@${RM} ${OBJECTDIR}/_ext/1386521430/ser.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1386521430/ser.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fshort-float -Os -fasmfile -maddrqual=ignore -D__16f876a=1 -DBAUD_RATE=38400 -DUSE_SER=1 -DUSE_TIMER0=1 -D_XTAL_FREQ=20000000 -DNDEBUG=1 -xassembler-with-cpp -I"../../.." -I"../../../lib" -I"../../../src" -I"." -v -mwarn=3 -Wa,-a -DXPRJ_release=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--no-data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mdownload -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/_ext/1386521430/ser.p1 ../../../lib/ser.c 
	@-${MV} ${OBJECTDIR}/_ext/1386521430/ser.d ${OBJECTDIR}/_ext/1386521430/ser.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1386521430/ser.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1386521430/timer.p1: ../../../lib/timer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	@${RM} ${OBJECTDIR}/_ext/1386521430/timer.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1386521430/timer.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fshort-float -Os -fasmfile -maddrqual=ignore -D__16f876a=1 -DBAUD_RATE=38400 -DUSE_SER=1 -DUSE_TIMER0=1 -D_XTAL_FREQ=20000000 -DNDEBUG=1 -xassembler-with-cpp -I"../../.." -I"../../../lib" -I"../../../src" -I"." -v -mwarn=3 -Wa,-a -DXPRJ_release=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--no-data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mdownload -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/_ext/1386521430/timer.p1 ../../../lib/timer.c 
	@-${MV} ${OBJECTDIR}/_ext/1386521430/timer.d ${OBJECTDIR}/_ext/1386521430/timer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1386521430/timer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1386521430/buffer.p1: ../../../lib/buffer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	@${RM} ${OBJECTDIR}/_ext/1386521430/buffer.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1386521430/buffer.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fshort-float -Os -fasmfile -maddrqual=ignore -D__16f876a=1 -DBAUD_RATE=38400 -DUSE_SER=1 -DUSE_TIMER0=1 -D_XTAL_FREQ=20000000 -DNDEBUG=1 -xassembler-with-cpp -I"../../.." -I"../../../lib" -I"../../../src" -I"." -v -mwarn=3 -Wa,-a -DXPRJ_release=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--no-data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mdownload -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/_ext/1386521430/buffer.p1 ../../../lib/buffer.c 
	@-${MV} ${OBJECTDIR}/_ext/1386521430/buffer.d ${OBJECTDIR}/_ext/1386521430/buffer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1386521430/buffer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1386528437/print.p1: ../../../src/print.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386528437" 
	@${RM} ${OBJECTDIR}/_ext/1386528437/print.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1386528437/print.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fshort-float -Os -fasmfile -maddrqual=ignore -D__16f876a=1 -DBAUD_RATE=38400 -DUSE_SER=1 -DUSE_TIMER0=1 -D_XTAL_FREQ=20000000 -DNDEBUG=1 -xassembler-with-cpp -I"../../.." -I"../../../lib" -I"../../../src" -I"." -v -mwarn=3 -Wa,-a -DXPRJ_release=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--no-data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mdownload -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/_ext/1386528437/print.p1 ../../../src/print.c 
	@-${MV} ${OBJECTDIR}/_ext/1386528437/print.d ${OBJECTDIR}/_ext/1386528437/print.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1386528437/print.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1386528437/measure.p1: ../../../src/measure.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386528437" 
	@${RM} ${OBJECTDIR}/_ext/1386528437/measure.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1386528437/measure.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fshort-float -Os -fasmfile -maddrqual=ignore -D__16f876a=1 -DBAUD_RATE=38400 -DUSE_SER=1 -DUSE_TIMER0=1 -D_XTAL_FREQ=20000000 -DNDEBUG=1 -xassembler-with-cpp -I"../../.." -I"../../../lib" -I"../../../src" -I"." -v -mwarn=3 -Wa,-a -DXPRJ_release=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--no-data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mdownload -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/_ext/1386528437/measure.p1 ../../../src/measure.c 
	@-${MV} ${OBJECTDIR}/_ext/1386528437/measure.d ${OBJECTDIR}/_ext/1386528437/measure.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1386528437/measure.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2124829536/LC-meter.p1: ../../../LC-meter.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2124829536" 
	@${RM} ${OBJECTDIR}/_ext/2124829536/LC-meter.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2124829536/LC-meter.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fshort-float -Os -fasmfile -maddrqual=ignore -D__16f876a=1 -DBAUD_RATE=38400 -DUSE_SER=1 -DUSE_TIMER0=1 -D_XTAL_FREQ=20000000 -DNDEBUG=1 -xassembler-with-cpp -I"../../.." -I"../../../lib" -I"../../../src" -I"." -v -mwarn=3 -Wa,-a -DXPRJ_release=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--no-data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mdownload -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/_ext/2124829536/LC-meter.p1 ../../../LC-meter.c 
	@-${MV} ${OBJECTDIR}/_ext/2124829536/LC-meter.d ${OBJECTDIR}/_ext/2124829536/LC-meter.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2124829536/LC-meter.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/_ext/1386521430/lcd44780.p1: ../../../lib/lcd44780.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	@${RM} ${OBJECTDIR}/_ext/1386521430/lcd44780.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1386521430/lcd44780.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fshort-float -Os -fasmfile -maddrqual=ignore -D__16f876a=1 -DBAUD_RATE=38400 -DUSE_SER=1 -DUSE_TIMER0=1 -D_XTAL_FREQ=20000000 -DNDEBUG=1 -xassembler-with-cpp -I"../../.." -I"../../../lib" -I"../../../src" -I"." -v -mwarn=3 -Wa,-a -DXPRJ_release=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--no-data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mdownload -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/_ext/1386521430/lcd44780.p1 ../../../lib/lcd44780.c 
	@-${MV} ${OBJECTDIR}/_ext/1386521430/lcd44780.d ${OBJECTDIR}/_ext/1386521430/lcd44780.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1386521430/lcd44780.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1386521430/format.p1: ../../../lib/format.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	@${RM} ${OBJECTDIR}/_ext/1386521430/format.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1386521430/format.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fshort-float -Os -fasmfile -maddrqual=ignore -D__16f876a=1 -DBAUD_RATE=38400 -DUSE_SER=1 -DUSE_TIMER0=1 -D_XTAL_FREQ=20000000 -DNDEBUG=1 -xassembler-with-cpp -I"../../.." -I"../../../lib" -I"../../../src" -I"." -v -mwarn=3 -Wa,-a -DXPRJ_release=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--no-data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mdownload -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/_ext/1386521430/format.p1 ../../../lib/format.c 
	@-${MV} ${OBJECTDIR}/_ext/1386521430/format.d ${OBJECTDIR}/_ext/1386521430/format.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1386521430/format.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1386521430/ser.p1: ../../../lib/ser.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	@${RM} ${OBJECTDIR}/_ext/1386521430/ser.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1386521430/ser.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fshort-float -Os -fasmfile -maddrqual=ignore -D__16f876a=1 -DBAUD_RATE=38400 -DUSE_SER=1 -DUSE_TIMER0=1 -D_XTAL_FREQ=20000000 -DNDEBUG=1 -xassembler-with-cpp -I"../../.." -I"../../../lib" -I"../../../src" -I"." -v -mwarn=3 -Wa,-a -DXPRJ_release=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--no-data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mdownload -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/_ext/1386521430/ser.p1 ../../../lib/ser.c 
	@-${MV} ${OBJECTDIR}/_ext/1386521430/ser.d ${OBJECTDIR}/_ext/1386521430/ser.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1386521430/ser.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1386521430/timer.p1: ../../../lib/timer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	@${RM} ${OBJECTDIR}/_ext/1386521430/timer.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1386521430/timer.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fshort-float -Os -fasmfile -maddrqual=ignore -D__16f876a=1 -DBAUD_RATE=38400 -DUSE_SER=1 -DUSE_TIMER0=1 -D_XTAL_FREQ=20000000 -DNDEBUG=1 -xassembler-with-cpp -I"../../.." -I"../../../lib" -I"../../../src" -I"." -v -mwarn=3 -Wa,-a -DXPRJ_release=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--no-data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mdownload -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/_ext/1386521430/timer.p1 ../../../lib/timer.c 
	@-${MV} ${OBJECTDIR}/_ext/1386521430/timer.d ${OBJECTDIR}/_ext/1386521430/timer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1386521430/timer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1386521430/buffer.p1: ../../../lib/buffer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	@${RM} ${OBJECTDIR}/_ext/1386521430/buffer.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1386521430/buffer.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fshort-float -Os -fasmfile -maddrqual=ignore -D__16f876a=1 -DBAUD_RATE=38400 -DUSE_SER=1 -DUSE_TIMER0=1 -D_XTAL_FREQ=20000000 -DNDEBUG=1 -xassembler-with-cpp -I"../../.." -I"../../../lib" -I"../../../src" -I"." -v -mwarn=3 -Wa,-a -DXPRJ_release=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--no-data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mdownload -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/_ext/1386521430/buffer.p1 ../../../lib/buffer.c 
	@-${MV} ${OBJECTDIR}/_ext/1386521430/buffer.d ${OBJECTDIR}/_ext/1386521430/buffer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1386521430/buffer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1386528437/print.p1: ../../../src/print.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386528437" 
	@${RM} ${OBJECTDIR}/_ext/1386528437/print.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1386528437/print.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fshort-float -Os -fasmfile -maddrqual=ignore -D__16f876a=1 -DBAUD_RATE=38400 -DUSE_SER=1 -DUSE_TIMER0=1 -D_XTAL_FREQ=20000000 -DNDEBUG=1 -xassembler-with-cpp -I"../../.." -I"../../../lib" -I"../../../src" -I"." -v -mwarn=3 -Wa,-a -DXPRJ_release=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--no-data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mdownload -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/_ext/1386528437/print.p1 ../../../src/print.c 
	@-${MV} ${OBJECTDIR}/_ext/1386528437/print.d ${OBJECTDIR}/_ext/1386528437/print.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1386528437/print.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1386528437/measure.p1: ../../../src/measure.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386528437" 
	@${RM} ${OBJECTDIR}/_ext/1386528437/measure.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1386528437/measure.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fshort-float -Os -fasmfile -maddrqual=ignore -D__16f876a=1 -DBAUD_RATE=38400 -DUSE_SER=1 -DUSE_TIMER0=1 -D_XTAL_FREQ=20000000 -DNDEBUG=1 -xassembler-with-cpp -I"../../.." -I"../../../lib" -I"../../../src" -I"." -v -mwarn=3 -Wa,-a -DXPRJ_release=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--no-data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mdownload -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/_ext/1386528437/measure.p1 ../../../src/measure.c 
	@-${MV} ${OBJECTDIR}/_ext/1386528437/measure.d ${OBJECTDIR}/_ext/1386528437/measure.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1386528437/measure.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2124829536/LC-meter.p1: ../../../LC-meter.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2124829536" 
	@${RM} ${OBJECTDIR}/_ext/2124829536/LC-meter.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2124829536/LC-meter.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fshort-float -Os -fasmfile -maddrqual=ignore -D__16f876a=1 -DBAUD_RATE=38400 -DUSE_SER=1 -DUSE_TIMER0=1 -D_XTAL_FREQ=20000000 -DNDEBUG=1 -xassembler-with-cpp -I"../../.." -I"../../../lib" -I"../../../src" -I"." -v -mwarn=3 -Wa,-a -DXPRJ_release=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--no-data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mdownload -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/_ext/2124829536/LC-meter.p1 ../../../LC-meter.c 
	@-${MV} ${OBJECTDIR}/_ext/2124829536/LC-meter.d ${OBJECTDIR}/_ext/2124829536/LC-meter.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2124829536/LC-meter.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/LC_meter_16f876a_xc8.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=dist/${CND_CONF}/${IMAGE_TYPE}/LC_meter_16f876a_xc8.X.${IMAGE_TYPE}.map  -D__DEBUG=1  -DXPRJ_release=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1  -fno-short-double -fshort-float -Os -fasmfile -maddrqual=ignore -D__16f876a=1 -DBAUD_RATE=38400 -DUSE_SER=1 -DUSE_TIMER0=1 -D_XTAL_FREQ=20000000 -DNDEBUG=1 -xassembler-with-cpp -I"../../.." -I"../../../lib" -I"../../../src" -I"." -v -mwarn=3 -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--no-data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mdownload -mno-stackcall -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -mrom=default,-1f00-1fff -mram=default,-0-0,-70-70,-80-80,-f0-f0,-100-100,-170-170,-180-180,-1e5-1f0  $(COMPARISON_BUILD) -Wl,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -o dist/${CND_CONF}/${IMAGE_TYPE}/LC_meter_16f876a_xc8.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	@${RM} dist/${CND_CONF}/${IMAGE_TYPE}/LC_meter_16f876a_xc8.X.${IMAGE_TYPE}.hex 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/LC_meter_16f876a_xc8.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=dist/${CND_CONF}/${IMAGE_TYPE}/LC_meter_16f876a_xc8.X.${IMAGE_TYPE}.map  -DXPRJ_release=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1  -fno-short-double -fshort-float -Os -fasmfile -maddrqual=ignore -D__16f876a=1 -DBAUD_RATE=38400 -DUSE_SER=1 -DUSE_TIMER0=1 -D_XTAL_FREQ=20000000 -DNDEBUG=1 -xassembler-with-cpp -I"../../.." -I"../../../lib" -I"../../../src" -I"." -v -mwarn=3 -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--no-data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mdownload -mno-stackcall -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     $(COMPARISON_BUILD) -Wl,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -o dist/${CND_CONF}/${IMAGE_TYPE}/LC_meter_16f876a_xc8.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	
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
