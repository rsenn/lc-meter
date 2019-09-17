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
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=cof
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/LC_meter_16f876a_sdcc.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=cof
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/LC_meter_16f876a_sdcc.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=../../../lib/comparator.c ../../../lib/delay.c ../../../lib/lcd44780.c ../../../lib/format.c ../../../lib/timer.c ../../../lib/ser.c ../../../lib/buffer.c ../../../src/print.c ../../../src/measure.c ../../../LC-meter.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1386521430/comparator.o ${OBJECTDIR}/_ext/1386521430/delay.o ${OBJECTDIR}/_ext/1386521430/lcd44780.o ${OBJECTDIR}/_ext/1386521430/format.o ${OBJECTDIR}/_ext/1386521430/timer.o ${OBJECTDIR}/_ext/1386521430/ser.o ${OBJECTDIR}/_ext/1386521430/buffer.o ${OBJECTDIR}/_ext/1386528437/print.o ${OBJECTDIR}/_ext/1386528437/measure.o ${OBJECTDIR}/_ext/2124829536/LC-meter.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1386521430/comparator.o.d ${OBJECTDIR}/_ext/1386521430/delay.o.d ${OBJECTDIR}/_ext/1386521430/lcd44780.o.d ${OBJECTDIR}/_ext/1386521430/format.o.d ${OBJECTDIR}/_ext/1386521430/timer.o.d ${OBJECTDIR}/_ext/1386521430/ser.o.d ${OBJECTDIR}/_ext/1386521430/buffer.o.d ${OBJECTDIR}/_ext/1386528437/print.o.d ${OBJECTDIR}/_ext/1386528437/measure.o.d ${OBJECTDIR}/_ext/2124829536/LC-meter.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1386521430/comparator.o ${OBJECTDIR}/_ext/1386521430/delay.o ${OBJECTDIR}/_ext/1386521430/lcd44780.o ${OBJECTDIR}/_ext/1386521430/format.o ${OBJECTDIR}/_ext/1386521430/timer.o ${OBJECTDIR}/_ext/1386521430/ser.o ${OBJECTDIR}/_ext/1386521430/buffer.o ${OBJECTDIR}/_ext/1386528437/print.o ${OBJECTDIR}/_ext/1386528437/measure.o ${OBJECTDIR}/_ext/2124829536/LC-meter.o

# Source Files
SOURCEFILES=../../../lib/comparator.c ../../../lib/delay.c ../../../lib/lcd44780.c ../../../lib/format.c ../../../lib/timer.c ../../../lib/ser.c ../../../lib/buffer.c ../../../src/print.c ../../../src/measure.c ../../../LC-meter.c



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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/LC_meter_16f876a_sdcc.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1386521430/comparator.o: ../../../lib/comparator.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	${RM} ${OBJECTDIR}/_ext/1386521430/comparator.o 
	${MP_CC} --use-non-free -DNOT_USE_HD44780_LCD=1 -DSDCC=1 -DUSE_SER=1 -DXTAL_FREQ=20000000 -DBAUD_RATE=38400 -D__16f876a=1 -DUSE_TIMER0=1 -DNOT_USE_TIMER1=1 -DUSE_TIMER2=1 -I"../../../lib" -I"../../../src" -I"../../.." --opt-code-speed --opt-code-size --debug-xtra -llibm.lib --debug -c -mpic14 -p16f876a ../../../lib/comparator.c  -o${OBJECTDIR}/_ext/1386521430/comparator.o
	
${OBJECTDIR}/_ext/1386521430/delay.o: ../../../lib/delay.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	${RM} ${OBJECTDIR}/_ext/1386521430/delay.o 
	${MP_CC} --use-non-free -DNOT_USE_HD44780_LCD=1 -DSDCC=1 -DUSE_SER=1 -DXTAL_FREQ=20000000 -DBAUD_RATE=38400 -D__16f876a=1 -DUSE_TIMER0=1 -DNOT_USE_TIMER1=1 -DUSE_TIMER2=1 -I"../../../lib" -I"../../../src" -I"../../.." --opt-code-speed --opt-code-size --debug-xtra -llibm.lib --debug -c -mpic14 -p16f876a ../../../lib/delay.c  -o${OBJECTDIR}/_ext/1386521430/delay.o
	
${OBJECTDIR}/_ext/1386521430/lcd44780.o: ../../../lib/lcd44780.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	${RM} ${OBJECTDIR}/_ext/1386521430/lcd44780.o 
	${MP_CC} --use-non-free -DNOT_USE_HD44780_LCD=1 -DSDCC=1 -DUSE_SER=1 -DXTAL_FREQ=20000000 -DBAUD_RATE=38400 -D__16f876a=1 -DUSE_TIMER0=1 -DNOT_USE_TIMER1=1 -DUSE_TIMER2=1 -I"../../../lib" -I"../../../src" -I"../../.." --opt-code-speed --opt-code-size --debug-xtra -llibm.lib --debug -c -mpic14 -p16f876a ../../../lib/lcd44780.c  -o${OBJECTDIR}/_ext/1386521430/lcd44780.o
	
${OBJECTDIR}/_ext/1386521430/format.o: ../../../lib/format.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	${RM} ${OBJECTDIR}/_ext/1386521430/format.o 
	${MP_CC} --use-non-free -DNOT_USE_HD44780_LCD=1 -DSDCC=1 -DUSE_SER=1 -DXTAL_FREQ=20000000 -DBAUD_RATE=38400 -D__16f876a=1 -DUSE_TIMER0=1 -DNOT_USE_TIMER1=1 -DUSE_TIMER2=1 -I"../../../lib" -I"../../../src" -I"../../.." --opt-code-speed --opt-code-size --debug-xtra -llibm.lib --debug -c -mpic14 -p16f876a ../../../lib/format.c  -o${OBJECTDIR}/_ext/1386521430/format.o
	
${OBJECTDIR}/_ext/1386521430/timer.o: ../../../lib/timer.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	${RM} ${OBJECTDIR}/_ext/1386521430/timer.o 
	${MP_CC} --use-non-free -DNOT_USE_HD44780_LCD=1 -DSDCC=1 -DUSE_SER=1 -DXTAL_FREQ=20000000 -DBAUD_RATE=38400 -D__16f876a=1 -DUSE_TIMER0=1 -DNOT_USE_TIMER1=1 -DUSE_TIMER2=1 -I"../../../lib" -I"../../../src" -I"../../.." --opt-code-speed --opt-code-size --debug-xtra -llibm.lib --debug -c -mpic14 -p16f876a ../../../lib/timer.c  -o${OBJECTDIR}/_ext/1386521430/timer.o
	
${OBJECTDIR}/_ext/1386521430/ser.o: ../../../lib/ser.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	${RM} ${OBJECTDIR}/_ext/1386521430/ser.o 
	${MP_CC} --use-non-free -DNOT_USE_HD44780_LCD=1 -DSDCC=1 -DUSE_SER=1 -DXTAL_FREQ=20000000 -DBAUD_RATE=38400 -D__16f876a=1 -DUSE_TIMER0=1 -DNOT_USE_TIMER1=1 -DUSE_TIMER2=1 -I"../../../lib" -I"../../../src" -I"../../.." --opt-code-speed --opt-code-size --debug-xtra -llibm.lib --debug -c -mpic14 -p16f876a ../../../lib/ser.c  -o${OBJECTDIR}/_ext/1386521430/ser.o
	
${OBJECTDIR}/_ext/1386521430/buffer.o: ../../../lib/buffer.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	${RM} ${OBJECTDIR}/_ext/1386521430/buffer.o 
	${MP_CC} --use-non-free -DNOT_USE_HD44780_LCD=1 -DSDCC=1 -DUSE_SER=1 -DXTAL_FREQ=20000000 -DBAUD_RATE=38400 -D__16f876a=1 -DUSE_TIMER0=1 -DNOT_USE_TIMER1=1 -DUSE_TIMER2=1 -I"../../../lib" -I"../../../src" -I"../../.." --opt-code-speed --opt-code-size --debug-xtra -llibm.lib --debug -c -mpic14 -p16f876a ../../../lib/buffer.c  -o${OBJECTDIR}/_ext/1386521430/buffer.o
	
${OBJECTDIR}/_ext/1386528437/print.o: ../../../src/print.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} "${OBJECTDIR}/_ext/1386528437" 
	${RM} ${OBJECTDIR}/_ext/1386528437/print.o 
	${MP_CC} --use-non-free -DNOT_USE_HD44780_LCD=1 -DSDCC=1 -DUSE_SER=1 -DXTAL_FREQ=20000000 -DBAUD_RATE=38400 -D__16f876a=1 -DUSE_TIMER0=1 -DNOT_USE_TIMER1=1 -DUSE_TIMER2=1 -I"../../../lib" -I"../../../src" -I"../../.." --opt-code-speed --opt-code-size --debug-xtra -llibm.lib --debug -c -mpic14 -p16f876a ../../../src/print.c  -o${OBJECTDIR}/_ext/1386528437/print.o
	
${OBJECTDIR}/_ext/1386528437/measure.o: ../../../src/measure.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} "${OBJECTDIR}/_ext/1386528437" 
	${RM} ${OBJECTDIR}/_ext/1386528437/measure.o 
	${MP_CC} --use-non-free -DNOT_USE_HD44780_LCD=1 -DSDCC=1 -DUSE_SER=1 -DXTAL_FREQ=20000000 -DBAUD_RATE=38400 -D__16f876a=1 -DUSE_TIMER0=1 -DNOT_USE_TIMER1=1 -DUSE_TIMER2=1 -I"../../../lib" -I"../../../src" -I"../../.." --opt-code-speed --opt-code-size --debug-xtra -llibm.lib --debug -c -mpic14 -p16f876a ../../../src/measure.c  -o${OBJECTDIR}/_ext/1386528437/measure.o
	
${OBJECTDIR}/_ext/2124829536/LC-meter.o: ../../../LC-meter.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} "${OBJECTDIR}/_ext/2124829536" 
	${RM} ${OBJECTDIR}/_ext/2124829536/LC-meter.o 
	${MP_CC} --use-non-free -DNOT_USE_HD44780_LCD=1 -DSDCC=1 -DUSE_SER=1 -DXTAL_FREQ=20000000 -DBAUD_RATE=38400 -D__16f876a=1 -DUSE_TIMER0=1 -DNOT_USE_TIMER1=1 -DUSE_TIMER2=1 -I"../../../lib" -I"../../../src" -I"../../.." --opt-code-speed --opt-code-size --debug-xtra -llibm.lib --debug -c -mpic14 -p16f876a ../../../LC-meter.c  -o${OBJECTDIR}/_ext/2124829536/LC-meter.o
	
else
${OBJECTDIR}/_ext/1386521430/comparator.o: ../../../lib/comparator.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	${RM} ${OBJECTDIR}/_ext/1386521430/comparator.o 
	${MP_CC} --use-non-free -DNOT_USE_HD44780_LCD=1 -DSDCC=1 -DUSE_SER=1 -DXTAL_FREQ=20000000 -DBAUD_RATE=38400 -D__16f876a=1 -DUSE_TIMER0=1 -DNOT_USE_TIMER1=1 -DUSE_TIMER2=1 -I"../../../lib" -I"../../../src" -I"../../.." --opt-code-speed --opt-code-size --debug-xtra -llibm.lib -c -mpic14 -p16f876a ../../../lib/comparator.c  -o${OBJECTDIR}/_ext/1386521430/comparator.o
	
${OBJECTDIR}/_ext/1386521430/delay.o: ../../../lib/delay.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	${RM} ${OBJECTDIR}/_ext/1386521430/delay.o 
	${MP_CC} --use-non-free -DNOT_USE_HD44780_LCD=1 -DSDCC=1 -DUSE_SER=1 -DXTAL_FREQ=20000000 -DBAUD_RATE=38400 -D__16f876a=1 -DUSE_TIMER0=1 -DNOT_USE_TIMER1=1 -DUSE_TIMER2=1 -I"../../../lib" -I"../../../src" -I"../../.." --opt-code-speed --opt-code-size --debug-xtra -llibm.lib -c -mpic14 -p16f876a ../../../lib/delay.c  -o${OBJECTDIR}/_ext/1386521430/delay.o
	
${OBJECTDIR}/_ext/1386521430/lcd44780.o: ../../../lib/lcd44780.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	${RM} ${OBJECTDIR}/_ext/1386521430/lcd44780.o 
	${MP_CC} --use-non-free -DNOT_USE_HD44780_LCD=1 -DSDCC=1 -DUSE_SER=1 -DXTAL_FREQ=20000000 -DBAUD_RATE=38400 -D__16f876a=1 -DUSE_TIMER0=1 -DNOT_USE_TIMER1=1 -DUSE_TIMER2=1 -I"../../../lib" -I"../../../src" -I"../../.." --opt-code-speed --opt-code-size --debug-xtra -llibm.lib -c -mpic14 -p16f876a ../../../lib/lcd44780.c  -o${OBJECTDIR}/_ext/1386521430/lcd44780.o
	
${OBJECTDIR}/_ext/1386521430/format.o: ../../../lib/format.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	${RM} ${OBJECTDIR}/_ext/1386521430/format.o 
	${MP_CC} --use-non-free -DNOT_USE_HD44780_LCD=1 -DSDCC=1 -DUSE_SER=1 -DXTAL_FREQ=20000000 -DBAUD_RATE=38400 -D__16f876a=1 -DUSE_TIMER0=1 -DNOT_USE_TIMER1=1 -DUSE_TIMER2=1 -I"../../../lib" -I"../../../src" -I"../../.." --opt-code-speed --opt-code-size --debug-xtra -llibm.lib -c -mpic14 -p16f876a ../../../lib/format.c  -o${OBJECTDIR}/_ext/1386521430/format.o
	
${OBJECTDIR}/_ext/1386521430/timer.o: ../../../lib/timer.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	${RM} ${OBJECTDIR}/_ext/1386521430/timer.o 
	${MP_CC} --use-non-free -DNOT_USE_HD44780_LCD=1 -DSDCC=1 -DUSE_SER=1 -DXTAL_FREQ=20000000 -DBAUD_RATE=38400 -D__16f876a=1 -DUSE_TIMER0=1 -DNOT_USE_TIMER1=1 -DUSE_TIMER2=1 -I"../../../lib" -I"../../../src" -I"../../.." --opt-code-speed --opt-code-size --debug-xtra -llibm.lib -c -mpic14 -p16f876a ../../../lib/timer.c  -o${OBJECTDIR}/_ext/1386521430/timer.o
	
${OBJECTDIR}/_ext/1386521430/ser.o: ../../../lib/ser.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	${RM} ${OBJECTDIR}/_ext/1386521430/ser.o 
	${MP_CC} --use-non-free -DNOT_USE_HD44780_LCD=1 -DSDCC=1 -DUSE_SER=1 -DXTAL_FREQ=20000000 -DBAUD_RATE=38400 -D__16f876a=1 -DUSE_TIMER0=1 -DNOT_USE_TIMER1=1 -DUSE_TIMER2=1 -I"../../../lib" -I"../../../src" -I"../../.." --opt-code-speed --opt-code-size --debug-xtra -llibm.lib -c -mpic14 -p16f876a ../../../lib/ser.c  -o${OBJECTDIR}/_ext/1386521430/ser.o
	
${OBJECTDIR}/_ext/1386521430/buffer.o: ../../../lib/buffer.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	${RM} ${OBJECTDIR}/_ext/1386521430/buffer.o 
	${MP_CC} --use-non-free -DNOT_USE_HD44780_LCD=1 -DSDCC=1 -DUSE_SER=1 -DXTAL_FREQ=20000000 -DBAUD_RATE=38400 -D__16f876a=1 -DUSE_TIMER0=1 -DNOT_USE_TIMER1=1 -DUSE_TIMER2=1 -I"../../../lib" -I"../../../src" -I"../../.." --opt-code-speed --opt-code-size --debug-xtra -llibm.lib -c -mpic14 -p16f876a ../../../lib/buffer.c  -o${OBJECTDIR}/_ext/1386521430/buffer.o
	
${OBJECTDIR}/_ext/1386528437/print.o: ../../../src/print.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} "${OBJECTDIR}/_ext/1386528437" 
	${RM} ${OBJECTDIR}/_ext/1386528437/print.o 
	${MP_CC} --use-non-free -DNOT_USE_HD44780_LCD=1 -DSDCC=1 -DUSE_SER=1 -DXTAL_FREQ=20000000 -DBAUD_RATE=38400 -D__16f876a=1 -DUSE_TIMER0=1 -DNOT_USE_TIMER1=1 -DUSE_TIMER2=1 -I"../../../lib" -I"../../../src" -I"../../.." --opt-code-speed --opt-code-size --debug-xtra -llibm.lib -c -mpic14 -p16f876a ../../../src/print.c  -o${OBJECTDIR}/_ext/1386528437/print.o
	
${OBJECTDIR}/_ext/1386528437/measure.o: ../../../src/measure.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} "${OBJECTDIR}/_ext/1386528437" 
	${RM} ${OBJECTDIR}/_ext/1386528437/measure.o 
	${MP_CC} --use-non-free -DNOT_USE_HD44780_LCD=1 -DSDCC=1 -DUSE_SER=1 -DXTAL_FREQ=20000000 -DBAUD_RATE=38400 -D__16f876a=1 -DUSE_TIMER0=1 -DNOT_USE_TIMER1=1 -DUSE_TIMER2=1 -I"../../../lib" -I"../../../src" -I"../../.." --opt-code-speed --opt-code-size --debug-xtra -llibm.lib -c -mpic14 -p16f876a ../../../src/measure.c  -o${OBJECTDIR}/_ext/1386528437/measure.o
	
${OBJECTDIR}/_ext/2124829536/LC-meter.o: ../../../LC-meter.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} "${OBJECTDIR}/_ext/2124829536" 
	${RM} ${OBJECTDIR}/_ext/2124829536/LC-meter.o 
	${MP_CC} --use-non-free -DNOT_USE_HD44780_LCD=1 -DSDCC=1 -DUSE_SER=1 -DXTAL_FREQ=20000000 -DBAUD_RATE=38400 -D__16f876a=1 -DUSE_TIMER0=1 -DNOT_USE_TIMER1=1 -DUSE_TIMER2=1 -I"../../../lib" -I"../../../src" -I"../../.." --opt-code-speed --opt-code-size --debug-xtra -llibm.lib -c -mpic14 -p16f876a ../../../LC-meter.c  -o${OBJECTDIR}/_ext/2124829536/LC-meter.o
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/LC_meter_16f876a_sdcc.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  C:/Program\ Files/SDCC/lib/pic14/libm.lib  
	${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} -Wl-c -Wl-m --use-non-free -DNOT_USE_HD44780_LCD=1 -DSDCC=1 -DUSE_SER=1 -DXTAL_FREQ=20000000 -DBAUD_RATE=38400 -D__16f876a=1 -DUSE_TIMER0=1 -DNOT_USE_TIMER1=1 -DUSE_TIMER2=1 -I"../../../lib" -I"../../../src" -I"../../.." --opt-code-speed --opt-code-size --debug-xtra -llibm.lib -mpic14 -p16f876a ${OBJECTFILES_QUOTED_IF_SPACED} -odist/${CND_CONF}/${IMAGE_TYPE}/LC_meter_16f876a_sdcc.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} 
else
dist/${CND_CONF}/${IMAGE_TYPE}/LC_meter_16f876a_sdcc.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  C:/Program\ Files/SDCC/lib/pic14/libm.lib 
	${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} -Wl-c -Wl-m --use-non-free -DNOT_USE_HD44780_LCD=1 -DSDCC=1 -DUSE_SER=1 -DXTAL_FREQ=20000000 -DBAUD_RATE=38400 -D__16f876a=1 -DUSE_TIMER0=1 -DNOT_USE_TIMER1=1 -DUSE_TIMER2=1 -I"../../../lib" -I"../../../src" -I"../../.." --opt-code-speed --opt-code-size --debug-xtra -llibm.lib -mpic14 -p16f876a ${OBJECTFILES_QUOTED_IF_SPACED} -odist/${CND_CONF}/${IMAGE_TYPE}/LC_meter_16f876a_sdcc.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} 
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
