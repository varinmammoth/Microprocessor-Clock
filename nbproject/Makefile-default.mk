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
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/MicroprocessorsLab.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/MicroprocessorsLab.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=16x16multiplier.s Display.s LCD.s config.s delays.s hex_to_decimal.s keypad.s lookup_tables.s main.s timer_setup.s w_to_usb.s updateTime.s Alarm.s LCD_screen.s

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/16x16multiplier.o ${OBJECTDIR}/Display.o ${OBJECTDIR}/LCD.o ${OBJECTDIR}/config.o ${OBJECTDIR}/delays.o ${OBJECTDIR}/hex_to_decimal.o ${OBJECTDIR}/keypad.o ${OBJECTDIR}/lookup_tables.o ${OBJECTDIR}/main.o ${OBJECTDIR}/timer_setup.o ${OBJECTDIR}/w_to_usb.o ${OBJECTDIR}/updateTime.o ${OBJECTDIR}/Alarm.o ${OBJECTDIR}/LCD_screen.o
POSSIBLE_DEPFILES=${OBJECTDIR}/16x16multiplier.o.d ${OBJECTDIR}/Display.o.d ${OBJECTDIR}/LCD.o.d ${OBJECTDIR}/config.o.d ${OBJECTDIR}/delays.o.d ${OBJECTDIR}/hex_to_decimal.o.d ${OBJECTDIR}/keypad.o.d ${OBJECTDIR}/lookup_tables.o.d ${OBJECTDIR}/main.o.d ${OBJECTDIR}/timer_setup.o.d ${OBJECTDIR}/w_to_usb.o.d ${OBJECTDIR}/updateTime.o.d ${OBJECTDIR}/Alarm.o.d ${OBJECTDIR}/LCD_screen.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/16x16multiplier.o ${OBJECTDIR}/Display.o ${OBJECTDIR}/LCD.o ${OBJECTDIR}/config.o ${OBJECTDIR}/delays.o ${OBJECTDIR}/hex_to_decimal.o ${OBJECTDIR}/keypad.o ${OBJECTDIR}/lookup_tables.o ${OBJECTDIR}/main.o ${OBJECTDIR}/timer_setup.o ${OBJECTDIR}/w_to_usb.o ${OBJECTDIR}/updateTime.o ${OBJECTDIR}/Alarm.o ${OBJECTDIR}/LCD_screen.o

# Source Files
SOURCEFILES=16x16multiplier.s Display.s LCD.s config.s delays.s hex_to_decimal.s keypad.s lookup_tables.s main.s timer_setup.s w_to_usb.s updateTime.s Alarm.s LCD_screen.s



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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/MicroprocessorsLab.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=PIC18F87K22
# ------------------------------------------------------------------------------------
# Rules for buildStep: pic-as-assembler
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/16x16multiplier.o: 16x16multiplier.s  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/16x16multiplier.o 
	${MP_AS} -mcpu=PIC18F87K22 -c \
	-o ${OBJECTDIR}/16x16multiplier.o \
	16x16multiplier.s \
	 -misa=std -msummary=+mem,+psect,-class,-hex,-file,-sha1,-sha256,-xml,-xmlfull -fmax-errors=20 -mwarn=0 -xassembler-with-cpp -Wa,-a -Wl,-Map=output.map
	
${OBJECTDIR}/Display.o: Display.s  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Display.o 
	${MP_AS} -mcpu=PIC18F87K22 -c \
	-o ${OBJECTDIR}/Display.o \
	Display.s \
	 -misa=std -msummary=+mem,+psect,-class,-hex,-file,-sha1,-sha256,-xml,-xmlfull -fmax-errors=20 -mwarn=0 -xassembler-with-cpp -Wa,-a -Wl,-Map=output.map
	
${OBJECTDIR}/LCD.o: LCD.s  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/LCD.o 
	${MP_AS} -mcpu=PIC18F87K22 -c \
	-o ${OBJECTDIR}/LCD.o \
	LCD.s \
	 -misa=std -msummary=+mem,+psect,-class,-hex,-file,-sha1,-sha256,-xml,-xmlfull -fmax-errors=20 -mwarn=0 -xassembler-with-cpp -Wa,-a -Wl,-Map=output.map
	
${OBJECTDIR}/config.o: config.s  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/config.o 
	${MP_AS} -mcpu=PIC18F87K22 -c \
	-o ${OBJECTDIR}/config.o \
	config.s \
	 -misa=std -msummary=+mem,+psect,-class,-hex,-file,-sha1,-sha256,-xml,-xmlfull -fmax-errors=20 -mwarn=0 -xassembler-with-cpp -Wa,-a -Wl,-Map=output.map
	
${OBJECTDIR}/delays.o: delays.s  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/delays.o 
	${MP_AS} -mcpu=PIC18F87K22 -c \
	-o ${OBJECTDIR}/delays.o \
	delays.s \
	 -misa=std -msummary=+mem,+psect,-class,-hex,-file,-sha1,-sha256,-xml,-xmlfull -fmax-errors=20 -mwarn=0 -xassembler-with-cpp -Wa,-a -Wl,-Map=output.map
	
${OBJECTDIR}/hex_to_decimal.o: hex_to_decimal.s  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/hex_to_decimal.o 
	${MP_AS} -mcpu=PIC18F87K22 -c \
	-o ${OBJECTDIR}/hex_to_decimal.o \
	hex_to_decimal.s \
	 -misa=std -msummary=+mem,+psect,-class,-hex,-file,-sha1,-sha256,-xml,-xmlfull -fmax-errors=20 -mwarn=0 -xassembler-with-cpp -Wa,-a -Wl,-Map=output.map
	
${OBJECTDIR}/keypad.o: keypad.s  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/keypad.o 
	${MP_AS} -mcpu=PIC18F87K22 -c \
	-o ${OBJECTDIR}/keypad.o \
	keypad.s \
	 -misa=std -msummary=+mem,+psect,-class,-hex,-file,-sha1,-sha256,-xml,-xmlfull -fmax-errors=20 -mwarn=0 -xassembler-with-cpp -Wa,-a -Wl,-Map=output.map
	
${OBJECTDIR}/lookup_tables.o: lookup_tables.s  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/lookup_tables.o 
	${MP_AS} -mcpu=PIC18F87K22 -c \
	-o ${OBJECTDIR}/lookup_tables.o \
	lookup_tables.s \
	 -misa=std -msummary=+mem,+psect,-class,-hex,-file,-sha1,-sha256,-xml,-xmlfull -fmax-errors=20 -mwarn=0 -xassembler-with-cpp -Wa,-a -Wl,-Map=output.map
	
${OBJECTDIR}/main.o: main.s  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_AS} -mcpu=PIC18F87K22 -c \
	-o ${OBJECTDIR}/main.o \
	main.s \
	 -misa=std -msummary=+mem,+psect,-class,-hex,-file,-sha1,-sha256,-xml,-xmlfull -fmax-errors=20 -mwarn=0 -xassembler-with-cpp -Wa,-a -Wl,-Map=output.map
	
${OBJECTDIR}/timer_setup.o: timer_setup.s  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/timer_setup.o 
	${MP_AS} -mcpu=PIC18F87K22 -c \
	-o ${OBJECTDIR}/timer_setup.o \
	timer_setup.s \
	 -misa=std -msummary=+mem,+psect,-class,-hex,-file,-sha1,-sha256,-xml,-xmlfull -fmax-errors=20 -mwarn=0 -xassembler-with-cpp -Wa,-a -Wl,-Map=output.map
	
${OBJECTDIR}/w_to_usb.o: w_to_usb.s  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/w_to_usb.o 
	${MP_AS} -mcpu=PIC18F87K22 -c \
	-o ${OBJECTDIR}/w_to_usb.o \
	w_to_usb.s \
	 -misa=std -msummary=+mem,+psect,-class,-hex,-file,-sha1,-sha256,-xml,-xmlfull -fmax-errors=20 -mwarn=0 -xassembler-with-cpp -Wa,-a -Wl,-Map=output.map
	
${OBJECTDIR}/updateTime.o: updateTime.s  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/updateTime.o 
	${MP_AS} -mcpu=PIC18F87K22 -c \
	-o ${OBJECTDIR}/updateTime.o \
	updateTime.s \
	 -misa=std -msummary=+mem,+psect,-class,-hex,-file,-sha1,-sha256,-xml,-xmlfull -fmax-errors=20 -mwarn=0 -xassembler-with-cpp -Wa,-a -Wl,-Map=output.map
	
${OBJECTDIR}/Alarm.o: Alarm.s  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Alarm.o 
	${MP_AS} -mcpu=PIC18F87K22 -c \
	-o ${OBJECTDIR}/Alarm.o \
	Alarm.s \
	 -misa=std -msummary=+mem,+psect,-class,-hex,-file,-sha1,-sha256,-xml,-xmlfull -fmax-errors=20 -mwarn=0 -xassembler-with-cpp -Wa,-a -Wl,-Map=output.map
	
${OBJECTDIR}/LCD_screen.o: LCD_screen.s  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/LCD_screen.o 
	${MP_AS} -mcpu=PIC18F87K22 -c \
	-o ${OBJECTDIR}/LCD_screen.o \
	LCD_screen.s \
	 -misa=std -msummary=+mem,+psect,-class,-hex,-file,-sha1,-sha256,-xml,-xmlfull -fmax-errors=20 -mwarn=0 -xassembler-with-cpp -Wa,-a -Wl,-Map=output.map
	
else
${OBJECTDIR}/16x16multiplier.o: 16x16multiplier.s  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/16x16multiplier.o 
	${MP_AS} -mcpu=PIC18F87K22 -c \
	-o ${OBJECTDIR}/16x16multiplier.o \
	16x16multiplier.s \
	 -misa=std -msummary=+mem,+psect,-class,-hex,-file,-sha1,-sha256,-xml,-xmlfull -fmax-errors=20 -mwarn=0 -xassembler-with-cpp -Wa,-a -Wl,-Map=output.map
	
${OBJECTDIR}/Display.o: Display.s  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Display.o 
	${MP_AS} -mcpu=PIC18F87K22 -c \
	-o ${OBJECTDIR}/Display.o \
	Display.s \
	 -misa=std -msummary=+mem,+psect,-class,-hex,-file,-sha1,-sha256,-xml,-xmlfull -fmax-errors=20 -mwarn=0 -xassembler-with-cpp -Wa,-a -Wl,-Map=output.map
	
${OBJECTDIR}/LCD.o: LCD.s  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/LCD.o 
	${MP_AS} -mcpu=PIC18F87K22 -c \
	-o ${OBJECTDIR}/LCD.o \
	LCD.s \
	 -misa=std -msummary=+mem,+psect,-class,-hex,-file,-sha1,-sha256,-xml,-xmlfull -fmax-errors=20 -mwarn=0 -xassembler-with-cpp -Wa,-a -Wl,-Map=output.map
	
${OBJECTDIR}/config.o: config.s  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/config.o 
	${MP_AS} -mcpu=PIC18F87K22 -c \
	-o ${OBJECTDIR}/config.o \
	config.s \
	 -misa=std -msummary=+mem,+psect,-class,-hex,-file,-sha1,-sha256,-xml,-xmlfull -fmax-errors=20 -mwarn=0 -xassembler-with-cpp -Wa,-a -Wl,-Map=output.map
	
${OBJECTDIR}/delays.o: delays.s  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/delays.o 
	${MP_AS} -mcpu=PIC18F87K22 -c \
	-o ${OBJECTDIR}/delays.o \
	delays.s \
	 -misa=std -msummary=+mem,+psect,-class,-hex,-file,-sha1,-sha256,-xml,-xmlfull -fmax-errors=20 -mwarn=0 -xassembler-with-cpp -Wa,-a -Wl,-Map=output.map
	
${OBJECTDIR}/hex_to_decimal.o: hex_to_decimal.s  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/hex_to_decimal.o 
	${MP_AS} -mcpu=PIC18F87K22 -c \
	-o ${OBJECTDIR}/hex_to_decimal.o \
	hex_to_decimal.s \
	 -misa=std -msummary=+mem,+psect,-class,-hex,-file,-sha1,-sha256,-xml,-xmlfull -fmax-errors=20 -mwarn=0 -xassembler-with-cpp -Wa,-a -Wl,-Map=output.map
	
${OBJECTDIR}/keypad.o: keypad.s  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/keypad.o 
	${MP_AS} -mcpu=PIC18F87K22 -c \
	-o ${OBJECTDIR}/keypad.o \
	keypad.s \
	 -misa=std -msummary=+mem,+psect,-class,-hex,-file,-sha1,-sha256,-xml,-xmlfull -fmax-errors=20 -mwarn=0 -xassembler-with-cpp -Wa,-a -Wl,-Map=output.map
	
${OBJECTDIR}/lookup_tables.o: lookup_tables.s  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/lookup_tables.o 
	${MP_AS} -mcpu=PIC18F87K22 -c \
	-o ${OBJECTDIR}/lookup_tables.o \
	lookup_tables.s \
	 -misa=std -msummary=+mem,+psect,-class,-hex,-file,-sha1,-sha256,-xml,-xmlfull -fmax-errors=20 -mwarn=0 -xassembler-with-cpp -Wa,-a -Wl,-Map=output.map
	
${OBJECTDIR}/main.o: main.s  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_AS} -mcpu=PIC18F87K22 -c \
	-o ${OBJECTDIR}/main.o \
	main.s \
	 -misa=std -msummary=+mem,+psect,-class,-hex,-file,-sha1,-sha256,-xml,-xmlfull -fmax-errors=20 -mwarn=0 -xassembler-with-cpp -Wa,-a -Wl,-Map=output.map
	
${OBJECTDIR}/timer_setup.o: timer_setup.s  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/timer_setup.o 
	${MP_AS} -mcpu=PIC18F87K22 -c \
	-o ${OBJECTDIR}/timer_setup.o \
	timer_setup.s \
	 -misa=std -msummary=+mem,+psect,-class,-hex,-file,-sha1,-sha256,-xml,-xmlfull -fmax-errors=20 -mwarn=0 -xassembler-with-cpp -Wa,-a -Wl,-Map=output.map
	
${OBJECTDIR}/w_to_usb.o: w_to_usb.s  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/w_to_usb.o 
	${MP_AS} -mcpu=PIC18F87K22 -c \
	-o ${OBJECTDIR}/w_to_usb.o \
	w_to_usb.s \
	 -misa=std -msummary=+mem,+psect,-class,-hex,-file,-sha1,-sha256,-xml,-xmlfull -fmax-errors=20 -mwarn=0 -xassembler-with-cpp -Wa,-a -Wl,-Map=output.map
	
${OBJECTDIR}/updateTime.o: updateTime.s  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/updateTime.o 
	${MP_AS} -mcpu=PIC18F87K22 -c \
	-o ${OBJECTDIR}/updateTime.o \
	updateTime.s \
	 -misa=std -msummary=+mem,+psect,-class,-hex,-file,-sha1,-sha256,-xml,-xmlfull -fmax-errors=20 -mwarn=0 -xassembler-with-cpp -Wa,-a -Wl,-Map=output.map
	
${OBJECTDIR}/Alarm.o: Alarm.s  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Alarm.o 
	${MP_AS} -mcpu=PIC18F87K22 -c \
	-o ${OBJECTDIR}/Alarm.o \
	Alarm.s \
	 -misa=std -msummary=+mem,+psect,-class,-hex,-file,-sha1,-sha256,-xml,-xmlfull -fmax-errors=20 -mwarn=0 -xassembler-with-cpp -Wa,-a -Wl,-Map=output.map
	
${OBJECTDIR}/LCD_screen.o: LCD_screen.s  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/LCD_screen.o 
	${MP_AS} -mcpu=PIC18F87K22 -c \
	-o ${OBJECTDIR}/LCD_screen.o \
	LCD_screen.s \
	 -misa=std -msummary=+mem,+psect,-class,-hex,-file,-sha1,-sha256,-xml,-xmlfull -fmax-errors=20 -mwarn=0 -xassembler-with-cpp -Wa,-a -Wl,-Map=output.map
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: pic-as-linker
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/MicroprocessorsLab.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} -mcpu=PIC18F87K22 ${OBJECTFILES_QUOTED_IF_SPACED} \
	-o dist/${CND_CONF}/${IMAGE_TYPE}/MicroprocessorsLab.${IMAGE_TYPE}.${OUTPUT_SUFFIX} \
	 -misa=std -msummary=+mem,+psect,-class,-hex,-file,-sha1,-sha256,-xml,-xmlfull -mcallgraph=full -mno-download-hex -Wa,-a -Wl,-Map=output.map
else
dist/${CND_CONF}/${IMAGE_TYPE}/MicroprocessorsLab.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} -mcpu=PIC18F87K22 ${OBJECTFILES_QUOTED_IF_SPACED} \
	-o dist/${CND_CONF}/${IMAGE_TYPE}/MicroprocessorsLab.${IMAGE_TYPE}.${OUTPUT_SUFFIX} \
	 -misa=std -msummary=+mem,+psect,-class,-hex,-file,-sha1,-sha256,-xml,-xmlfull -mcallgraph=full -mno-download-hex -Wa,-a -Wl,-Map=output.map
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
