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
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/hcsr04_macro.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/hcsr04_macro.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../../lib/lib/src/dataXfer.c ../../lib/lib/src/dataXferImpl.c ../../lib/lib/src/pic24_adc.c ../../lib/lib/src/pic24_clockfreq.c ../../lib/lib/src/pic24_configbits.c ../../lib/lib/src/pic24_ecan.c ../../lib/lib/src/pic24_flash.c ../../lib/lib/src/pic24_i2c.c ../../lib/lib/src/pic24_serial.c ../../lib/lib/src/pic24_spi.c ../../lib/lib/src/pic24_stdio_uart.c ../../lib/lib/src/pic24_timer.c ../../lib/lib/src/pic24_uart.c ../../lib/lib/src/pic24_util.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1106609200/dataXfer.o ${OBJECTDIR}/_ext/1106609200/dataXferImpl.o ${OBJECTDIR}/_ext/1106609200/pic24_adc.o ${OBJECTDIR}/_ext/1106609200/pic24_clockfreq.o ${OBJECTDIR}/_ext/1106609200/pic24_configbits.o ${OBJECTDIR}/_ext/1106609200/pic24_ecan.o ${OBJECTDIR}/_ext/1106609200/pic24_flash.o ${OBJECTDIR}/_ext/1106609200/pic24_i2c.o ${OBJECTDIR}/_ext/1106609200/pic24_serial.o ${OBJECTDIR}/_ext/1106609200/pic24_spi.o ${OBJECTDIR}/_ext/1106609200/pic24_stdio_uart.o ${OBJECTDIR}/_ext/1106609200/pic24_timer.o ${OBJECTDIR}/_ext/1106609200/pic24_uart.o ${OBJECTDIR}/_ext/1106609200/pic24_util.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1106609200/dataXfer.o.d ${OBJECTDIR}/_ext/1106609200/dataXferImpl.o.d ${OBJECTDIR}/_ext/1106609200/pic24_adc.o.d ${OBJECTDIR}/_ext/1106609200/pic24_clockfreq.o.d ${OBJECTDIR}/_ext/1106609200/pic24_configbits.o.d ${OBJECTDIR}/_ext/1106609200/pic24_ecan.o.d ${OBJECTDIR}/_ext/1106609200/pic24_flash.o.d ${OBJECTDIR}/_ext/1106609200/pic24_i2c.o.d ${OBJECTDIR}/_ext/1106609200/pic24_serial.o.d ${OBJECTDIR}/_ext/1106609200/pic24_spi.o.d ${OBJECTDIR}/_ext/1106609200/pic24_stdio_uart.o.d ${OBJECTDIR}/_ext/1106609200/pic24_timer.o.d ${OBJECTDIR}/_ext/1106609200/pic24_uart.o.d ${OBJECTDIR}/_ext/1106609200/pic24_util.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1106609200/dataXfer.o ${OBJECTDIR}/_ext/1106609200/dataXferImpl.o ${OBJECTDIR}/_ext/1106609200/pic24_adc.o ${OBJECTDIR}/_ext/1106609200/pic24_clockfreq.o ${OBJECTDIR}/_ext/1106609200/pic24_configbits.o ${OBJECTDIR}/_ext/1106609200/pic24_ecan.o ${OBJECTDIR}/_ext/1106609200/pic24_flash.o ${OBJECTDIR}/_ext/1106609200/pic24_i2c.o ${OBJECTDIR}/_ext/1106609200/pic24_serial.o ${OBJECTDIR}/_ext/1106609200/pic24_spi.o ${OBJECTDIR}/_ext/1106609200/pic24_stdio_uart.o ${OBJECTDIR}/_ext/1106609200/pic24_timer.o ${OBJECTDIR}/_ext/1106609200/pic24_uart.o ${OBJECTDIR}/_ext/1106609200/pic24_util.o

# Source Files
SOURCEFILES=../../lib/lib/src/dataXfer.c ../../lib/lib/src/dataXferImpl.c ../../lib/lib/src/pic24_adc.c ../../lib/lib/src/pic24_clockfreq.c ../../lib/lib/src/pic24_configbits.c ../../lib/lib/src/pic24_ecan.c ../../lib/lib/src/pic24_flash.c ../../lib/lib/src/pic24_i2c.c ../../lib/lib/src/pic24_serial.c ../../lib/lib/src/pic24_spi.c ../../lib/lib/src/pic24_stdio_uart.c ../../lib/lib/src/pic24_timer.c ../../lib/lib/src/pic24_uart.c ../../lib/lib/src/pic24_util.c



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
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/hcsr04_macro.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=33EP128GP502
MP_LINKER_FILE_OPTION=,--script="..\..\lib\lib\application_linker_file\p33EP128GP502_application.gld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1106609200/dataXfer.o: ../../lib/lib/src/dataXfer.c  .generated_files/flags/default/9a20645c20e183fd570350183798faff1f37a2f5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1106609200" 
	@${RM} ${OBJECTDIR}/_ext/1106609200/dataXfer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1106609200/dataXfer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../lib/lib/src/dataXfer.c  -o ${OBJECTDIR}/_ext/1106609200/dataXfer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1106609200/dataXfer.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"../../lib/lib/include" -DCLOCK_CONFIG=FRCPLL_FCY40MHz -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1106609200/dataXferImpl.o: ../../lib/lib/src/dataXferImpl.c  .generated_files/flags/default/f6079c4ef07313f3efea7f3385e0c05143070316 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1106609200" 
	@${RM} ${OBJECTDIR}/_ext/1106609200/dataXferImpl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1106609200/dataXferImpl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../lib/lib/src/dataXferImpl.c  -o ${OBJECTDIR}/_ext/1106609200/dataXferImpl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1106609200/dataXferImpl.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"../../lib/lib/include" -DCLOCK_CONFIG=FRCPLL_FCY40MHz -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1106609200/pic24_adc.o: ../../lib/lib/src/pic24_adc.c  .generated_files/flags/default/2f1315bbdf5d049297952e66e0aa05ea4a9b7f28 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1106609200" 
	@${RM} ${OBJECTDIR}/_ext/1106609200/pic24_adc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1106609200/pic24_adc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../lib/lib/src/pic24_adc.c  -o ${OBJECTDIR}/_ext/1106609200/pic24_adc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1106609200/pic24_adc.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"../../lib/lib/include" -DCLOCK_CONFIG=FRCPLL_FCY40MHz -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1106609200/pic24_clockfreq.o: ../../lib/lib/src/pic24_clockfreq.c  .generated_files/flags/default/6d34f7b94f453bec8768c3ba61213c59a1246f99 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1106609200" 
	@${RM} ${OBJECTDIR}/_ext/1106609200/pic24_clockfreq.o.d 
	@${RM} ${OBJECTDIR}/_ext/1106609200/pic24_clockfreq.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../lib/lib/src/pic24_clockfreq.c  -o ${OBJECTDIR}/_ext/1106609200/pic24_clockfreq.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1106609200/pic24_clockfreq.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"../../lib/lib/include" -DCLOCK_CONFIG=FRCPLL_FCY40MHz -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1106609200/pic24_configbits.o: ../../lib/lib/src/pic24_configbits.c  .generated_files/flags/default/a6f84414c40d7d40b10bbf54c736a4c0da35cee6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1106609200" 
	@${RM} ${OBJECTDIR}/_ext/1106609200/pic24_configbits.o.d 
	@${RM} ${OBJECTDIR}/_ext/1106609200/pic24_configbits.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../lib/lib/src/pic24_configbits.c  -o ${OBJECTDIR}/_ext/1106609200/pic24_configbits.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1106609200/pic24_configbits.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"../../lib/lib/include" -DCLOCK_CONFIG=FRCPLL_FCY40MHz -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1106609200/pic24_ecan.o: ../../lib/lib/src/pic24_ecan.c  .generated_files/flags/default/d7a5917d5293ad4bdf1527b5a30d5e55f4b0d54c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1106609200" 
	@${RM} ${OBJECTDIR}/_ext/1106609200/pic24_ecan.o.d 
	@${RM} ${OBJECTDIR}/_ext/1106609200/pic24_ecan.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../lib/lib/src/pic24_ecan.c  -o ${OBJECTDIR}/_ext/1106609200/pic24_ecan.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1106609200/pic24_ecan.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"../../lib/lib/include" -DCLOCK_CONFIG=FRCPLL_FCY40MHz -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1106609200/pic24_flash.o: ../../lib/lib/src/pic24_flash.c  .generated_files/flags/default/7c1722c62627a17dadb86aaaa8dc33de590325d1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1106609200" 
	@${RM} ${OBJECTDIR}/_ext/1106609200/pic24_flash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1106609200/pic24_flash.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../lib/lib/src/pic24_flash.c  -o ${OBJECTDIR}/_ext/1106609200/pic24_flash.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1106609200/pic24_flash.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"../../lib/lib/include" -DCLOCK_CONFIG=FRCPLL_FCY40MHz -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1106609200/pic24_i2c.o: ../../lib/lib/src/pic24_i2c.c  .generated_files/flags/default/82569bf5190a1692d457e718819d095387bd3a23 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1106609200" 
	@${RM} ${OBJECTDIR}/_ext/1106609200/pic24_i2c.o.d 
	@${RM} ${OBJECTDIR}/_ext/1106609200/pic24_i2c.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../lib/lib/src/pic24_i2c.c  -o ${OBJECTDIR}/_ext/1106609200/pic24_i2c.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1106609200/pic24_i2c.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"../../lib/lib/include" -DCLOCK_CONFIG=FRCPLL_FCY40MHz -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1106609200/pic24_serial.o: ../../lib/lib/src/pic24_serial.c  .generated_files/flags/default/467ef4760dcb46ce556c93249a1f2006e5fb90ee .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1106609200" 
	@${RM} ${OBJECTDIR}/_ext/1106609200/pic24_serial.o.d 
	@${RM} ${OBJECTDIR}/_ext/1106609200/pic24_serial.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../lib/lib/src/pic24_serial.c  -o ${OBJECTDIR}/_ext/1106609200/pic24_serial.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1106609200/pic24_serial.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"../../lib/lib/include" -DCLOCK_CONFIG=FRCPLL_FCY40MHz -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1106609200/pic24_spi.o: ../../lib/lib/src/pic24_spi.c  .generated_files/flags/default/10539ed214bf2dbfb099b7a79f2ccf0fe5cfa070 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1106609200" 
	@${RM} ${OBJECTDIR}/_ext/1106609200/pic24_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1106609200/pic24_spi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../lib/lib/src/pic24_spi.c  -o ${OBJECTDIR}/_ext/1106609200/pic24_spi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1106609200/pic24_spi.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"../../lib/lib/include" -DCLOCK_CONFIG=FRCPLL_FCY40MHz -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1106609200/pic24_stdio_uart.o: ../../lib/lib/src/pic24_stdio_uart.c  .generated_files/flags/default/580dfe83271acf4c8ab9b49e1563ca7bf93a1030 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1106609200" 
	@${RM} ${OBJECTDIR}/_ext/1106609200/pic24_stdio_uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1106609200/pic24_stdio_uart.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../lib/lib/src/pic24_stdio_uart.c  -o ${OBJECTDIR}/_ext/1106609200/pic24_stdio_uart.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1106609200/pic24_stdio_uart.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"../../lib/lib/include" -DCLOCK_CONFIG=FRCPLL_FCY40MHz -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1106609200/pic24_timer.o: ../../lib/lib/src/pic24_timer.c  .generated_files/flags/default/b63696c7b3d3f92d91550fee575fc08d0e6aa9cc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1106609200" 
	@${RM} ${OBJECTDIR}/_ext/1106609200/pic24_timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1106609200/pic24_timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../lib/lib/src/pic24_timer.c  -o ${OBJECTDIR}/_ext/1106609200/pic24_timer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1106609200/pic24_timer.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"../../lib/lib/include" -DCLOCK_CONFIG=FRCPLL_FCY40MHz -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1106609200/pic24_uart.o: ../../lib/lib/src/pic24_uart.c  .generated_files/flags/default/17181c2530d66fb962ebdac9b76e3b97386ffee3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1106609200" 
	@${RM} ${OBJECTDIR}/_ext/1106609200/pic24_uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1106609200/pic24_uart.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../lib/lib/src/pic24_uart.c  -o ${OBJECTDIR}/_ext/1106609200/pic24_uart.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1106609200/pic24_uart.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"../../lib/lib/include" -DCLOCK_CONFIG=FRCPLL_FCY40MHz -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1106609200/pic24_util.o: ../../lib/lib/src/pic24_util.c  .generated_files/flags/default/314dc6c1fb2e1ad9a65b397929e7868d46f4be2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1106609200" 
	@${RM} ${OBJECTDIR}/_ext/1106609200/pic24_util.o.d 
	@${RM} ${OBJECTDIR}/_ext/1106609200/pic24_util.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../lib/lib/src/pic24_util.c  -o ${OBJECTDIR}/_ext/1106609200/pic24_util.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1106609200/pic24_util.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"../../lib/lib/include" -DCLOCK_CONFIG=FRCPLL_FCY40MHz -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/_ext/1106609200/dataXfer.o: ../../lib/lib/src/dataXfer.c  .generated_files/flags/default/97269dde2c39732bc32c4edadc575c0c46c52319 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1106609200" 
	@${RM} ${OBJECTDIR}/_ext/1106609200/dataXfer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1106609200/dataXfer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../lib/lib/src/dataXfer.c  -o ${OBJECTDIR}/_ext/1106609200/dataXfer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1106609200/dataXfer.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"../../lib/lib/include" -DCLOCK_CONFIG=FRCPLL_FCY40MHz -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1106609200/dataXferImpl.o: ../../lib/lib/src/dataXferImpl.c  .generated_files/flags/default/30c3ad5307eff3c16e4bc6d1fbb21633f77744ab .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1106609200" 
	@${RM} ${OBJECTDIR}/_ext/1106609200/dataXferImpl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1106609200/dataXferImpl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../lib/lib/src/dataXferImpl.c  -o ${OBJECTDIR}/_ext/1106609200/dataXferImpl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1106609200/dataXferImpl.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"../../lib/lib/include" -DCLOCK_CONFIG=FRCPLL_FCY40MHz -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1106609200/pic24_adc.o: ../../lib/lib/src/pic24_adc.c  .generated_files/flags/default/ca81f4e058ed82292774fcf06b60c7ac55b27f74 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1106609200" 
	@${RM} ${OBJECTDIR}/_ext/1106609200/pic24_adc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1106609200/pic24_adc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../lib/lib/src/pic24_adc.c  -o ${OBJECTDIR}/_ext/1106609200/pic24_adc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1106609200/pic24_adc.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"../../lib/lib/include" -DCLOCK_CONFIG=FRCPLL_FCY40MHz -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1106609200/pic24_clockfreq.o: ../../lib/lib/src/pic24_clockfreq.c  .generated_files/flags/default/658f462e467e299555e191ef04ea666cad4d9f9b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1106609200" 
	@${RM} ${OBJECTDIR}/_ext/1106609200/pic24_clockfreq.o.d 
	@${RM} ${OBJECTDIR}/_ext/1106609200/pic24_clockfreq.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../lib/lib/src/pic24_clockfreq.c  -o ${OBJECTDIR}/_ext/1106609200/pic24_clockfreq.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1106609200/pic24_clockfreq.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"../../lib/lib/include" -DCLOCK_CONFIG=FRCPLL_FCY40MHz -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1106609200/pic24_configbits.o: ../../lib/lib/src/pic24_configbits.c  .generated_files/flags/default/b2cff2bccc4cb2e41c61a2498b86a0d30ac19e88 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1106609200" 
	@${RM} ${OBJECTDIR}/_ext/1106609200/pic24_configbits.o.d 
	@${RM} ${OBJECTDIR}/_ext/1106609200/pic24_configbits.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../lib/lib/src/pic24_configbits.c  -o ${OBJECTDIR}/_ext/1106609200/pic24_configbits.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1106609200/pic24_configbits.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"../../lib/lib/include" -DCLOCK_CONFIG=FRCPLL_FCY40MHz -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1106609200/pic24_ecan.o: ../../lib/lib/src/pic24_ecan.c  .generated_files/flags/default/555822f4c1b1909eed6681fb9affb78475d30689 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1106609200" 
	@${RM} ${OBJECTDIR}/_ext/1106609200/pic24_ecan.o.d 
	@${RM} ${OBJECTDIR}/_ext/1106609200/pic24_ecan.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../lib/lib/src/pic24_ecan.c  -o ${OBJECTDIR}/_ext/1106609200/pic24_ecan.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1106609200/pic24_ecan.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"../../lib/lib/include" -DCLOCK_CONFIG=FRCPLL_FCY40MHz -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1106609200/pic24_flash.o: ../../lib/lib/src/pic24_flash.c  .generated_files/flags/default/2f37a42f2b770acd08491bf21d017689e65f777a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1106609200" 
	@${RM} ${OBJECTDIR}/_ext/1106609200/pic24_flash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1106609200/pic24_flash.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../lib/lib/src/pic24_flash.c  -o ${OBJECTDIR}/_ext/1106609200/pic24_flash.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1106609200/pic24_flash.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"../../lib/lib/include" -DCLOCK_CONFIG=FRCPLL_FCY40MHz -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1106609200/pic24_i2c.o: ../../lib/lib/src/pic24_i2c.c  .generated_files/flags/default/93ba41778401bd62c5aa97ec75df91b2a522b55 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1106609200" 
	@${RM} ${OBJECTDIR}/_ext/1106609200/pic24_i2c.o.d 
	@${RM} ${OBJECTDIR}/_ext/1106609200/pic24_i2c.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../lib/lib/src/pic24_i2c.c  -o ${OBJECTDIR}/_ext/1106609200/pic24_i2c.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1106609200/pic24_i2c.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"../../lib/lib/include" -DCLOCK_CONFIG=FRCPLL_FCY40MHz -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1106609200/pic24_serial.o: ../../lib/lib/src/pic24_serial.c  .generated_files/flags/default/21bed5231efcf407d5a12c55f5d22eb3ea82d294 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1106609200" 
	@${RM} ${OBJECTDIR}/_ext/1106609200/pic24_serial.o.d 
	@${RM} ${OBJECTDIR}/_ext/1106609200/pic24_serial.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../lib/lib/src/pic24_serial.c  -o ${OBJECTDIR}/_ext/1106609200/pic24_serial.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1106609200/pic24_serial.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"../../lib/lib/include" -DCLOCK_CONFIG=FRCPLL_FCY40MHz -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1106609200/pic24_spi.o: ../../lib/lib/src/pic24_spi.c  .generated_files/flags/default/4a73503238e2e7f9ca56e1e83b9127f9de67d518 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1106609200" 
	@${RM} ${OBJECTDIR}/_ext/1106609200/pic24_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1106609200/pic24_spi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../lib/lib/src/pic24_spi.c  -o ${OBJECTDIR}/_ext/1106609200/pic24_spi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1106609200/pic24_spi.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"../../lib/lib/include" -DCLOCK_CONFIG=FRCPLL_FCY40MHz -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1106609200/pic24_stdio_uart.o: ../../lib/lib/src/pic24_stdio_uart.c  .generated_files/flags/default/a39965d22850814c57c53cf81405b2fda368e586 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1106609200" 
	@${RM} ${OBJECTDIR}/_ext/1106609200/pic24_stdio_uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1106609200/pic24_stdio_uart.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../lib/lib/src/pic24_stdio_uart.c  -o ${OBJECTDIR}/_ext/1106609200/pic24_stdio_uart.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1106609200/pic24_stdio_uart.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"../../lib/lib/include" -DCLOCK_CONFIG=FRCPLL_FCY40MHz -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1106609200/pic24_timer.o: ../../lib/lib/src/pic24_timer.c  .generated_files/flags/default/ab4f35b221120a70cbaf007b6d11ad023208acd1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1106609200" 
	@${RM} ${OBJECTDIR}/_ext/1106609200/pic24_timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1106609200/pic24_timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../lib/lib/src/pic24_timer.c  -o ${OBJECTDIR}/_ext/1106609200/pic24_timer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1106609200/pic24_timer.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"../../lib/lib/include" -DCLOCK_CONFIG=FRCPLL_FCY40MHz -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1106609200/pic24_uart.o: ../../lib/lib/src/pic24_uart.c  .generated_files/flags/default/8464d242cbac58c2d175884a8443b8f7ef749917 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1106609200" 
	@${RM} ${OBJECTDIR}/_ext/1106609200/pic24_uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1106609200/pic24_uart.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../lib/lib/src/pic24_uart.c  -o ${OBJECTDIR}/_ext/1106609200/pic24_uart.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1106609200/pic24_uart.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"../../lib/lib/include" -DCLOCK_CONFIG=FRCPLL_FCY40MHz -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1106609200/pic24_util.o: ../../lib/lib/src/pic24_util.c  .generated_files/flags/default/6f277c8e5a50114059e4de78a035c05b40f08f30 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1106609200" 
	@${RM} ${OBJECTDIR}/_ext/1106609200/pic24_util.o.d 
	@${RM} ${OBJECTDIR}/_ext/1106609200/pic24_util.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../lib/lib/src/pic24_util.c  -o ${OBJECTDIR}/_ext/1106609200/pic24_util.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1106609200/pic24_util.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"../../lib/lib/include" -DCLOCK_CONFIG=FRCPLL_FCY40MHz -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/hcsr04_macro.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../../lib/lib/application_linker_file/p33EP128GP502_application.gld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/hcsr04_macro.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG=__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)      -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D__DEBUG=__DEBUG,,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,${DISTDIR}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	
else
${DISTDIR}/hcsr04_macro.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../../lib/lib/application_linker_file/p33EP128GP502_application.gld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/hcsr04_macro.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,${DISTDIR}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	${MP_CC_DIR}\\xc16-bin2hex ${DISTDIR}/hcsr04_macro.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf   -mdfp="${DFP_DIR}/xc16" 
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(wildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
