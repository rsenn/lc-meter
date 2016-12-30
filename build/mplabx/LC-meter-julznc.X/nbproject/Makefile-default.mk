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
OUTPUT_SUFFIX=cof
DEBUGGABLE_SUFFIX=cof
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/LC-meter-julznc.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=cof
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/LC-meter-julznc.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=../../../src/julznc/main.c ../../../src/julznc/lcd3310.c ../../../src/julznc/display.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/807959592/main.p1 ${OBJECTDIR}/_ext/807959592/lcd3310.p1 ${OBJECTDIR}/_ext/807959592/display.p1
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/807959592/main.p1.d ${OBJECTDIR}/_ext/807959592/lcd3310.p1.d ${OBJECTDIR}/_ext/807959592/display.p1.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/807959592/main.p1 ${OBJECTDIR}/_ext/807959592/lcd3310.p1 ${OBJECTDIR}/_ext/807959592/display.p1

# Source Files
SOURCEFILES=../../../src/julznc/main.c ../../../src/julznc/lcd3310.c ../../../src/julznc/display.c


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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/LC-meter-julznc.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=16F876A
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/807959592/main.p1: ../../../src/julznc/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/807959592" 
	${MP_CC} --pass1 ../../../src/julznc/main.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\807959592" -DDEBUG=1 -D__DEBUG=1 -DUART_BAUD=38400 -D_XTAL_FREQ=20000000 -UNDEBUG -P -N127 -I"../../../src/julznc" -I"." -v --warn=5 --runtime=default,+clear,+init,-keep,+osccal,-resetbits,-download,-stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=default,+asm,-asmfile,-speed,+space,+debug,3 -D__DEBUG   --double=24 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@${MP_CC} --scandep  ../../../src/julznc/main.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\807959592" -DDEBUG=1 -D__DEBUG=1 -DUART_BAUD=38400 -D_XTAL_FREQ=20000000 -UNDEBUG -P -N127 -I"../../../src/julznc" -I"." -v --warn=5 --runtime=default,+clear,+init,-keep,+osccal,-resetbits,-download,-stackcall,+clib --opt=default,+asm,-asmfile,-speed,+space,+debug,3 -D__DEBUG   --double=24 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@echo ${OBJECTDIR}/_ext/807959592/main.p1: > ${OBJECTDIR}/_ext/807959592/main.p1.d
	@cat ${OBJECTDIR}/_ext/807959592/main.dep >> ${OBJECTDIR}/_ext/807959592/main.p1.d
	@${FIXDEPS} "${OBJECTDIR}/_ext/807959592/main.p1.d" $(SILENT) -ht  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/807959592/lcd3310.p1: ../../../src/julznc/lcd3310.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/807959592" 
	${MP_CC} --pass1 ../../../src/julznc/lcd3310.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\807959592" -DDEBUG=1 -D__DEBUG=1 -DUART_BAUD=38400 -D_XTAL_FREQ=20000000 -UNDEBUG -P -N127 -I"../../../src/julznc" -I"." -v --warn=5 --runtime=default,+clear,+init,-keep,+osccal,-resetbits,-download,-stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=default,+asm,-asmfile,-speed,+space,+debug,3 -D__DEBUG   --double=24 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@${MP_CC} --scandep  ../../../src/julznc/lcd3310.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\807959592" -DDEBUG=1 -D__DEBUG=1 -DUART_BAUD=38400 -D_XTAL_FREQ=20000000 -UNDEBUG -P -N127 -I"../../../src/julznc" -I"." -v --warn=5 --runtime=default,+clear,+init,-keep,+osccal,-resetbits,-download,-stackcall,+clib --opt=default,+asm,-asmfile,-speed,+space,+debug,3 -D__DEBUG   --double=24 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@echo ${OBJECTDIR}/_ext/807959592/lcd3310.p1: > ${OBJECTDIR}/_ext/807959592/lcd3310.p1.d
	@cat ${OBJECTDIR}/_ext/807959592/lcd3310.dep >> ${OBJECTDIR}/_ext/807959592/lcd3310.p1.d
	@${FIXDEPS} "${OBJECTDIR}/_ext/807959592/lcd3310.p1.d" $(SILENT) -ht  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/807959592/display.p1: ../../../src/julznc/display.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/807959592" 
	${MP_CC} --pass1 ../../../src/julznc/display.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\807959592" -DDEBUG=1 -D__DEBUG=1 -DUART_BAUD=38400 -D_XTAL_FREQ=20000000 -UNDEBUG -P -N127 -I"../../../src/julznc" -I"." -v --warn=5 --runtime=default,+clear,+init,-keep,+osccal,-resetbits,-download,-stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=default,+asm,-asmfile,-speed,+space,+debug,3 -D__DEBUG   --double=24 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@${MP_CC} --scandep  ../../../src/julznc/display.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\807959592" -DDEBUG=1 -D__DEBUG=1 -DUART_BAUD=38400 -D_XTAL_FREQ=20000000 -UNDEBUG -P -N127 -I"../../../src/julznc" -I"." -v --warn=5 --runtime=default,+clear,+init,-keep,+osccal,-resetbits,-download,-stackcall,+clib --opt=default,+asm,-asmfile,-speed,+space,+debug,3 -D__DEBUG   --double=24 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@echo ${OBJECTDIR}/_ext/807959592/display.p1: > ${OBJECTDIR}/_ext/807959592/display.p1.d
	@cat ${OBJECTDIR}/_ext/807959592/display.dep >> ${OBJECTDIR}/_ext/807959592/display.p1.d
	@${FIXDEPS} "${OBJECTDIR}/_ext/807959592/display.p1.d" $(SILENT) -ht  -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/807959592/main.p1: ../../../src/julznc/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/807959592" 
	${MP_CC} --pass1 ../../../src/julznc/main.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\807959592" -DDEBUG=1 -D__DEBUG=1 -DUART_BAUD=38400 -D_XTAL_FREQ=20000000 -UNDEBUG -P -N127 -I"../../../src/julznc" -I"." -v --warn=5 --runtime=default,+clear,+init,-keep,+osccal,-resetbits,-download,-stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=default,+asm,-asmfile,-speed,+space,+debug,3  --double=24 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@${MP_CC} --scandep  ../../../src/julznc/main.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\807959592" -DDEBUG=1 -D__DEBUG=1 -DUART_BAUD=38400 -D_XTAL_FREQ=20000000 -UNDEBUG -P -N127 -I"../../../src/julznc" -I"." -v --warn=5 --runtime=default,+clear,+init,-keep,+osccal,-resetbits,-download,-stackcall,+clib --opt=default,+asm,-asmfile,-speed,+space,+debug,3  --double=24 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@echo ${OBJECTDIR}/_ext/807959592/main.p1: > ${OBJECTDIR}/_ext/807959592/main.p1.d
	@cat ${OBJECTDIR}/_ext/807959592/main.dep >> ${OBJECTDIR}/_ext/807959592/main.p1.d
	@${FIXDEPS} "${OBJECTDIR}/_ext/807959592/main.p1.d" $(SILENT) -ht  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/807959592/lcd3310.p1: ../../../src/julznc/lcd3310.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/807959592" 
	${MP_CC} --pass1 ../../../src/julznc/lcd3310.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\807959592" -DDEBUG=1 -D__DEBUG=1 -DUART_BAUD=38400 -D_XTAL_FREQ=20000000 -UNDEBUG -P -N127 -I"../../../src/julznc" -I"." -v --warn=5 --runtime=default,+clear,+init,-keep,+osccal,-resetbits,-download,-stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=default,+asm,-asmfile,-speed,+space,+debug,3  --double=24 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@${MP_CC} --scandep  ../../../src/julznc/lcd3310.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\807959592" -DDEBUG=1 -D__DEBUG=1 -DUART_BAUD=38400 -D_XTAL_FREQ=20000000 -UNDEBUG -P -N127 -I"../../../src/julznc" -I"." -v --warn=5 --runtime=default,+clear,+init,-keep,+osccal,-resetbits,-download,-stackcall,+clib --opt=default,+asm,-asmfile,-speed,+space,+debug,3  --double=24 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@echo ${OBJECTDIR}/_ext/807959592/lcd3310.p1: > ${OBJECTDIR}/_ext/807959592/lcd3310.p1.d
	@cat ${OBJECTDIR}/_ext/807959592/lcd3310.dep >> ${OBJECTDIR}/_ext/807959592/lcd3310.p1.d
	@${FIXDEPS} "${OBJECTDIR}/_ext/807959592/lcd3310.p1.d" $(SILENT) -ht  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/807959592/display.p1: ../../../src/julznc/display.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/807959592" 
	${MP_CC} --pass1 ../../../src/julznc/display.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\807959592" -DDEBUG=1 -D__DEBUG=1 -DUART_BAUD=38400 -D_XTAL_FREQ=20000000 -UNDEBUG -P -N127 -I"../../../src/julznc" -I"." -v --warn=5 --runtime=default,+clear,+init,-keep,+osccal,-resetbits,-download,-stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=default,+asm,-asmfile,-speed,+space,+debug,3  --double=24 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@${MP_CC} --scandep  ../../../src/julznc/display.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\807959592" -DDEBUG=1 -D__DEBUG=1 -DUART_BAUD=38400 -D_XTAL_FREQ=20000000 -UNDEBUG -P -N127 -I"../../../src/julznc" -I"." -v --warn=5 --runtime=default,+clear,+init,-keep,+osccal,-resetbits,-download,-stackcall,+clib --opt=default,+asm,-asmfile,-speed,+space,+debug,3  --double=24 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@echo ${OBJECTDIR}/_ext/807959592/display.p1: > ${OBJECTDIR}/_ext/807959592/display.p1.d
	@cat ${OBJECTDIR}/_ext/807959592/display.dep >> ${OBJECTDIR}/_ext/807959592/display.p1.d
	@${FIXDEPS} "${OBJECTDIR}/_ext/807959592/display.p1.d" $(SILENT) -ht  -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/LC-meter-julznc.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE) -odist/${CND_CONF}/${IMAGE_TYPE}/LC-meter-julznc.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  -mdist/${CND_CONF}/${IMAGE_TYPE}/LC-meter-julznc.X.${IMAGE_TYPE}.map --summary=default,-psect,-class,+mem,-hex --chip=$(MP_PROCESSOR_OPTION) -P --runtime=default,+clear,+init,-keep,+osccal,-resetbits,-download,-stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=default,+asm,-asmfile,-speed,+space,+debug,3 -D__DEBUG  -DDEBUG=1 -D__DEBUG=1 -DUART_BAUD=38400 -D_XTAL_FREQ=20000000 -UNDEBUG -P -N127 -I"../../../src/julznc" -I"." -v --warn=5  --double=24 --float=24 --addrqual=ignore --mode=pro --output=default,-inhx032 -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s" ${OBJECTFILES_QUOTED_IF_SPACED}  
	@${RM} dist/${CND_CONF}/${IMAGE_TYPE}/LC-meter-julznc.X.${IMAGE_TYPE}.hex
else
dist/${CND_CONF}/${IMAGE_TYPE}/LC-meter-julznc.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE) -odist/${CND_CONF}/${IMAGE_TYPE}/LC-meter-julznc.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -mdist/${CND_CONF}/${IMAGE_TYPE}/LC-meter-julznc.X.${IMAGE_TYPE}.map --summary=default,-psect,-class,+mem,-hex --chip=$(MP_PROCESSOR_OPTION) -P --runtime=default,+clear,+init,-keep,+osccal,-resetbits,-download,-stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=default,+asm,-asmfile,-speed,+space,+debug,3 -DDEBUG=1 -D__DEBUG=1 -DUART_BAUD=38400 -D_XTAL_FREQ=20000000 -UNDEBUG -P -N127 -I"../../../src/julznc" -I"." -v --warn=5  --double=24 --float=24 --addrqual=ignore --mode=pro --output=default,-inhx032 -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s" ${OBJECTFILES_QUOTED_IF_SPACED}  
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
