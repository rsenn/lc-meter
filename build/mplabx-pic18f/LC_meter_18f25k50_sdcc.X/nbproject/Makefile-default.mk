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
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=cof
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/LC_meter_18f25k50_sdcc.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=cof
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/LC_meter_18f25k50_sdcc.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=../../../lib/buffer.c ../../../lib/comparator.c ../../../lib/delay.c ../../../lib/format.c ../../../lib/lcd44780.c ../../../lib/timer.c ../../../lib/uart.c ../../../src/measure.c ../../../src/print.c ../../../LC-meter.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1386521430/buffer.o ${OBJECTDIR}/_ext/1386521430/comparator.o ${OBJECTDIR}/_ext/1386521430/delay.o ${OBJECTDIR}/_ext/1386521430/format.o ${OBJECTDIR}/_ext/1386521430/lcd44780.o ${OBJECTDIR}/_ext/1386521430/timer.o ${OBJECTDIR}/_ext/1386521430/uart.o ${OBJECTDIR}/_ext/1386528437/measure.o ${OBJECTDIR}/_ext/1386528437/print.o ${OBJECTDIR}/_ext/2124829536/LC-meter.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1386521430/buffer.o.d ${OBJECTDIR}/_ext/1386521430/comparator.o.d ${OBJECTDIR}/_ext/1386521430/delay.o.d ${OBJECTDIR}/_ext/1386521430/format.o.d ${OBJECTDIR}/_ext/1386521430/lcd44780.o.d ${OBJECTDIR}/_ext/1386521430/timer.o.d ${OBJECTDIR}/_ext/1386521430/uart.o.d ${OBJECTDIR}/_ext/1386528437/measure.o.d ${OBJECTDIR}/_ext/1386528437/print.o.d ${OBJECTDIR}/_ext/2124829536/LC-meter.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1386521430/buffer.o ${OBJECTDIR}/_ext/1386521430/comparator.o ${OBJECTDIR}/_ext/1386521430/delay.o ${OBJECTDIR}/_ext/1386521430/format.o ${OBJECTDIR}/_ext/1386521430/lcd44780.o ${OBJECTDIR}/_ext/1386521430/timer.o ${OBJECTDIR}/_ext/1386521430/uart.o ${OBJECTDIR}/_ext/1386528437/measure.o ${OBJECTDIR}/_ext/1386528437/print.o ${OBJECTDIR}/_ext/2124829536/LC-meter.o

# Source Files
SOURCEFILES=../../../lib/buffer.c ../../../lib/comparator.c ../../../lib/delay.c ../../../lib/format.c ../../../lib/lcd44780.c ../../../lib/timer.c ../../../lib/uart.c ../../../src/measure.c ../../../src/print.c ../../../LC-meter.c


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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/LC_meter_18f25k50_sdcc.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1386521430/buffer.o: ../../../lib/buffer.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	${RM} ${OBJECTDIR}/_ext/1386521430/buffer.o 
	${MP_CC} --use-non-free -D__18f25k50=1 -DPIC18F25K50=1 -DSDCC=1 -DUSE_HD44780_LCD=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -DUSE_UART=1 -I"../../../lib" -I"../../../src" -I"../../.." --pstack-model=large -llibm18f.lib --debug -c -mpic16 -p18f25k50 ../../../lib/buffer.c  -o${OBJECTDIR}/_ext/1386521430/buffer.o
	
${OBJECTDIR}/_ext/1386521430/comparator.o: ../../../lib/comparator.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	${RM} ${OBJECTDIR}/_ext/1386521430/comparator.o 
	${MP_CC} --use-non-free -D__18f25k50=1 -DPIC18F25K50=1 -DSDCC=1 -DUSE_HD44780_LCD=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -DUSE_UART=1 -I"../../../lib" -I"../../../src" -I"../../.." --pstack-model=large -llibm18f.lib --debug -c -mpic16 -p18f25k50 ../../../lib/comparator.c  -o${OBJECTDIR}/_ext/1386521430/comparator.o
	
${OBJECTDIR}/_ext/1386521430/delay.o: ../../../lib/delay.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	${RM} ${OBJECTDIR}/_ext/1386521430/delay.o 
	${MP_CC} --use-non-free -D__18f25k50=1 -DPIC18F25K50=1 -DSDCC=1 -DUSE_HD44780_LCD=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -DUSE_UART=1 -I"../../../lib" -I"../../../src" -I"../../.." --pstack-model=large -llibm18f.lib --debug -c -mpic16 -p18f25k50 ../../../lib/delay.c  -o${OBJECTDIR}/_ext/1386521430/delay.o
	
${OBJECTDIR}/_ext/1386521430/format.o: ../../../lib/format.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	${RM} ${OBJECTDIR}/_ext/1386521430/format.o 
	${MP_CC} --use-non-free -D__18f25k50=1 -DPIC18F25K50=1 -DSDCC=1 -DUSE_HD44780_LCD=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -DUSE_UART=1 -I"../../../lib" -I"../../../src" -I"../../.." --pstack-model=large -llibm18f.lib --debug -c -mpic16 -p18f25k50 ../../../lib/format.c  -o${OBJECTDIR}/_ext/1386521430/format.o
	
${OBJECTDIR}/_ext/1386521430/lcd44780.o: ../../../lib/lcd44780.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	${RM} ${OBJECTDIR}/_ext/1386521430/lcd44780.o 
	${MP_CC} --use-non-free -D__18f25k50=1 -DPIC18F25K50=1 -DSDCC=1 -DUSE_HD44780_LCD=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -DUSE_UART=1 -I"../../../lib" -I"../../../src" -I"../../.." --pstack-model=large -llibm18f.lib --debug -c -mpic16 -p18f25k50 ../../../lib/lcd44780.c  -o${OBJECTDIR}/_ext/1386521430/lcd44780.o
	
${OBJECTDIR}/_ext/1386521430/timer.o: ../../../lib/timer.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	${RM} ${OBJECTDIR}/_ext/1386521430/timer.o 
	${MP_CC} --use-non-free -D__18f25k50=1 -DPIC18F25K50=1 -DSDCC=1 -DUSE_HD44780_LCD=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -DUSE_UART=1 -I"../../../lib" -I"../../../src" -I"../../.." --pstack-model=large -llibm18f.lib --debug -c -mpic16 -p18f25k50 ../../../lib/timer.c  -o${OBJECTDIR}/_ext/1386521430/timer.o
	
${OBJECTDIR}/_ext/1386521430/uart.o: ../../../lib/uart.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	${RM} ${OBJECTDIR}/_ext/1386521430/uart.o 
	${MP_CC} --use-non-free -D__18f25k50=1 -DPIC18F25K50=1 -DSDCC=1 -DUSE_HD44780_LCD=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -DUSE_UART=1 -I"../../../lib" -I"../../../src" -I"../../.." --pstack-model=large -llibm18f.lib --debug -c -mpic16 -p18f25k50 ../../../lib/uart.c  -o${OBJECTDIR}/_ext/1386521430/uart.o
	
${OBJECTDIR}/_ext/1386528437/measure.o: ../../../src/measure.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} "${OBJECTDIR}/_ext/1386528437" 
	${RM} ${OBJECTDIR}/_ext/1386528437/measure.o 
	${MP_CC} --use-non-free -D__18f25k50=1 -DPIC18F25K50=1 -DSDCC=1 -DUSE_HD44780_LCD=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -DUSE_UART=1 -I"../../../lib" -I"../../../src" -I"../../.." --pstack-model=large -llibm18f.lib --debug -c -mpic16 -p18f25k50 ../../../src/measure.c  -o${OBJECTDIR}/_ext/1386528437/measure.o
	
${OBJECTDIR}/_ext/1386528437/print.o: ../../../src/print.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} "${OBJECTDIR}/_ext/1386528437" 
	${RM} ${OBJECTDIR}/_ext/1386528437/print.o 
	${MP_CC} --use-non-free -D__18f25k50=1 -DPIC18F25K50=1 -DSDCC=1 -DUSE_HD44780_LCD=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -DUSE_UART=1 -I"../../../lib" -I"../../../src" -I"../../.." --pstack-model=large -llibm18f.lib --debug -c -mpic16 -p18f25k50 ../../../src/print.c  -o${OBJECTDIR}/_ext/1386528437/print.o
	
${OBJECTDIR}/_ext/2124829536/LC-meter.o: ../../../LC-meter.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} "${OBJECTDIR}/_ext/2124829536" 
	${RM} ${OBJECTDIR}/_ext/2124829536/LC-meter.o 
	${MP_CC} --use-non-free -D__18f25k50=1 -DPIC18F25K50=1 -DSDCC=1 -DUSE_HD44780_LCD=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -DUSE_UART=1 -I"../../../lib" -I"../../../src" -I"../../.." --pstack-model=large -llibm18f.lib --debug -c -mpic16 -p18f25k50 ../../../LC-meter.c  -o${OBJECTDIR}/_ext/2124829536/LC-meter.o
	
else
${OBJECTDIR}/_ext/1386521430/buffer.o: ../../../lib/buffer.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	${RM} ${OBJECTDIR}/_ext/1386521430/buffer.o 
	${MP_CC} --use-non-free -D__18f25k50=1 -DPIC18F25K50=1 -DSDCC=1 -DUSE_HD44780_LCD=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -DUSE_UART=1 -I"../../../lib" -I"../../../src" -I"../../.." --pstack-model=large -llibm18f.lib -c -mpic16 -p18f25k50 ../../../lib/buffer.c  -o${OBJECTDIR}/_ext/1386521430/buffer.o
	
${OBJECTDIR}/_ext/1386521430/comparator.o: ../../../lib/comparator.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	${RM} ${OBJECTDIR}/_ext/1386521430/comparator.o 
	${MP_CC} --use-non-free -D__18f25k50=1 -DPIC18F25K50=1 -DSDCC=1 -DUSE_HD44780_LCD=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -DUSE_UART=1 -I"../../../lib" -I"../../../src" -I"../../.." --pstack-model=large -llibm18f.lib -c -mpic16 -p18f25k50 ../../../lib/comparator.c  -o${OBJECTDIR}/_ext/1386521430/comparator.o
	
${OBJECTDIR}/_ext/1386521430/delay.o: ../../../lib/delay.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	${RM} ${OBJECTDIR}/_ext/1386521430/delay.o 
	${MP_CC} --use-non-free -D__18f25k50=1 -DPIC18F25K50=1 -DSDCC=1 -DUSE_HD44780_LCD=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -DUSE_UART=1 -I"../../../lib" -I"../../../src" -I"../../.." --pstack-model=large -llibm18f.lib -c -mpic16 -p18f25k50 ../../../lib/delay.c  -o${OBJECTDIR}/_ext/1386521430/delay.o
	
${OBJECTDIR}/_ext/1386521430/format.o: ../../../lib/format.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	${RM} ${OBJECTDIR}/_ext/1386521430/format.o 
	${MP_CC} --use-non-free -D__18f25k50=1 -DPIC18F25K50=1 -DSDCC=1 -DUSE_HD44780_LCD=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -DUSE_UART=1 -I"../../../lib" -I"../../../src" -I"../../.." --pstack-model=large -llibm18f.lib -c -mpic16 -p18f25k50 ../../../lib/format.c  -o${OBJECTDIR}/_ext/1386521430/format.o
	
${OBJECTDIR}/_ext/1386521430/lcd44780.o: ../../../lib/lcd44780.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	${RM} ${OBJECTDIR}/_ext/1386521430/lcd44780.o 
	${MP_CC} --use-non-free -D__18f25k50=1 -DPIC18F25K50=1 -DSDCC=1 -DUSE_HD44780_LCD=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -DUSE_UART=1 -I"../../../lib" -I"../../../src" -I"../../.." --pstack-model=large -llibm18f.lib -c -mpic16 -p18f25k50 ../../../lib/lcd44780.c  -o${OBJECTDIR}/_ext/1386521430/lcd44780.o
	
${OBJECTDIR}/_ext/1386521430/timer.o: ../../../lib/timer.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	${RM} ${OBJECTDIR}/_ext/1386521430/timer.o 
	${MP_CC} --use-non-free -D__18f25k50=1 -DPIC18F25K50=1 -DSDCC=1 -DUSE_HD44780_LCD=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -DUSE_UART=1 -I"../../../lib" -I"../../../src" -I"../../.." --pstack-model=large -llibm18f.lib -c -mpic16 -p18f25k50 ../../../lib/timer.c  -o${OBJECTDIR}/_ext/1386521430/timer.o
	
${OBJECTDIR}/_ext/1386521430/uart.o: ../../../lib/uart.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	${RM} ${OBJECTDIR}/_ext/1386521430/uart.o 
	${MP_CC} --use-non-free -D__18f25k50=1 -DPIC18F25K50=1 -DSDCC=1 -DUSE_HD44780_LCD=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -DUSE_UART=1 -I"../../../lib" -I"../../../src" -I"../../.." --pstack-model=large -llibm18f.lib -c -mpic16 -p18f25k50 ../../../lib/uart.c  -o${OBJECTDIR}/_ext/1386521430/uart.o
	
${OBJECTDIR}/_ext/1386528437/measure.o: ../../../src/measure.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} "${OBJECTDIR}/_ext/1386528437" 
	${RM} ${OBJECTDIR}/_ext/1386528437/measure.o 
	${MP_CC} --use-non-free -D__18f25k50=1 -DPIC18F25K50=1 -DSDCC=1 -DUSE_HD44780_LCD=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -DUSE_UART=1 -I"../../../lib" -I"../../../src" -I"../../.." --pstack-model=large -llibm18f.lib -c -mpic16 -p18f25k50 ../../../src/measure.c  -o${OBJECTDIR}/_ext/1386528437/measure.o
	
${OBJECTDIR}/_ext/1386528437/print.o: ../../../src/print.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} "${OBJECTDIR}/_ext/1386528437" 
	${RM} ${OBJECTDIR}/_ext/1386528437/print.o 
	${MP_CC} --use-non-free -D__18f25k50=1 -DPIC18F25K50=1 -DSDCC=1 -DUSE_HD44780_LCD=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -DUSE_UART=1 -I"../../../lib" -I"../../../src" -I"../../.." --pstack-model=large -llibm18f.lib -c -mpic16 -p18f25k50 ../../../src/print.c  -o${OBJECTDIR}/_ext/1386528437/print.o
	
${OBJECTDIR}/_ext/2124829536/LC-meter.o: ../../../LC-meter.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} "${OBJECTDIR}/_ext/2124829536" 
	${RM} ${OBJECTDIR}/_ext/2124829536/LC-meter.o 
	${MP_CC} --use-non-free -D__18f25k50=1 -DPIC18F25K50=1 -DSDCC=1 -DUSE_HD44780_LCD=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -DUSE_UART=1 -I"../../../lib" -I"../../../src" -I"../../.." --pstack-model=large -llibm18f.lib -c -mpic16 -p18f25k50 ../../../LC-meter.c  -o${OBJECTDIR}/_ext/2124829536/LC-meter.o
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/LC_meter_18f25k50_sdcc.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} -Wl-c -Wl-m --use-non-free -D__18f25k50=1 -DPIC18F25K50=1 -DSDCC=1 -DUSE_HD44780_LCD=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -DUSE_UART=1 -I"../../../lib" -I"../../../src" -I"../../.." --pstack-model=large -llibm18f.lib -mpic16 -p18f25k50 ${OBJECTFILES_QUOTED_IF_SPACED} -odist/${CND_CONF}/${IMAGE_TYPE}/LC_meter_18f25k50_sdcc.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} 
else
dist/${CND_CONF}/${IMAGE_TYPE}/LC_meter_18f25k50_sdcc.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} -Wl-c -Wl-m --use-non-free -D__18f25k50=1 -DPIC18F25K50=1 -DSDCC=1 -DUSE_HD44780_LCD=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -DUSE_UART=1 -I"../../../lib" -I"../../../src" -I"../../.." --pstack-model=large -llibm18f.lib -mpic16 -p18f25k50 ${OBJECTFILES_QUOTED_IF_SPACED} -odist/${CND_CONF}/${IMAGE_TYPE}/LC_meter_18f25k50_sdcc.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} 
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

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
