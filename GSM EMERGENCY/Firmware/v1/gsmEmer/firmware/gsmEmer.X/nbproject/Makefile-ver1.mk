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
ifeq "$(wildcard nbproject/Makefile-local-ver1.mk)" "nbproject/Makefile-local-ver1.mk"
include nbproject/Makefile-local-ver1.mk
endif
endif

# Environment
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=ver1
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/gsmEmer.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/gsmEmer.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=../src/app.c ../src/gsmapp.c ../src/gpsapp.c ../src/oledapp.c ../src/system_config/ver1/framework/driver/adc/src/drv_adc_static.c ../src/system_config/ver1/framework/driver/spi/dynamic/drv_spi_tasks.c ../src/system_config/ver1/framework/driver/spi/dynamic/drv_spi_api.c ../src/system_config/ver1/framework/driver/spi/dynamic/drv_spi_master_rm_tasks.c ../src/system_config/ver1/framework/system/clk/src/sys_clk.c ../src/system_config/ver1/framework/system/clk/src/sys_clk_pic32mx.c ../src/system_config/ver1/framework/system/devcon/src/sys_devcon.c ../src/system_config/ver1/framework/system/devcon/src/sys_devcon_pic32mx.c ../src/system_config/ver1/framework/system/ports/src/sys_ports_static.c ../src/system_config/ver1/system_init.c ../src/system_config/ver1/system_interrupt.c ../src/system_config/ver1/system_exceptions.c ../src/main.c ../src/system_config/ver1/system_tasks.c ../src/system_config/ver1/framework/driver/spi/src/dynamic/drv_spi.c ../src/system_config/ver1/framework/driver/spi/src/drv_spi_sys_queue_fifo.c ../src/system_config/ver1/framework/driver/usart/src/dynamic/drv_usart.c ../src/system_config/ver1/framework/driver/usart/src/dynamic/drv_usart_read_write.c ../src/system_config/ver1/framework/system/int/src/sys_int_pic32.c ../src/system_config/ver1/framework/driver/usb/usbfs/src/dynamic/drv_usbfs.c ../src/system_config/ver1/framework/usb/src/dynamic/usb_device.c ../src/system_config/ver1/framework/driver/usb/usbfs/src/dynamic/drv_usbfs_device.c ../src/system_config/ver1/framework/usb/src/dynamic/usb_device_cdc.c ../src/system_config/ver1/framework/usb/src/dynamic/usb_device_cdc_acm.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/gsmapp.o ${OBJECTDIR}/_ext/1360937237/gpsapp.o ${OBJECTDIR}/_ext/1360937237/oledapp.o ${OBJECTDIR}/_ext/1092271287/drv_adc_static.o ${OBJECTDIR}/_ext/789699536/drv_spi_tasks.o ${OBJECTDIR}/_ext/789699536/drv_spi_api.o ${OBJECTDIR}/_ext/789699536/drv_spi_master_rm_tasks.o ${OBJECTDIR}/_ext/908991954/sys_clk.o ${OBJECTDIR}/_ext/908991954/sys_clk_pic32mx.o ${OBJECTDIR}/_ext/358216167/sys_devcon.o ${OBJECTDIR}/_ext/358216167/sys_devcon_pic32mx.o ${OBJECTDIR}/_ext/170324482/sys_ports_static.o ${OBJECTDIR}/_ext/92429509/system_init.o ${OBJECTDIR}/_ext/92429509/system_interrupt.o ${OBJECTDIR}/_ext/92429509/system_exceptions.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/92429509/system_tasks.o ${OBJECTDIR}/_ext/1247255173/drv_spi.o ${OBJECTDIR}/_ext/1947983275/drv_spi_sys_queue_fifo.o ${OBJECTDIR}/_ext/1279433054/drv_usart.o ${OBJECTDIR}/_ext/1279433054/drv_usart_read_write.o ${OBJECTDIR}/_ext/2004616735/sys_int_pic32.o ${OBJECTDIR}/_ext/1611640799/drv_usbfs.o ${OBJECTDIR}/_ext/1891674158/usb_device.o ${OBJECTDIR}/_ext/1611640799/drv_usbfs_device.o ${OBJECTDIR}/_ext/1891674158/usb_device_cdc.o ${OBJECTDIR}/_ext/1891674158/usb_device_cdc_acm.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1360937237/app.o.d ${OBJECTDIR}/_ext/1360937237/gsmapp.o.d ${OBJECTDIR}/_ext/1360937237/gpsapp.o.d ${OBJECTDIR}/_ext/1360937237/oledapp.o.d ${OBJECTDIR}/_ext/1092271287/drv_adc_static.o.d ${OBJECTDIR}/_ext/789699536/drv_spi_tasks.o.d ${OBJECTDIR}/_ext/789699536/drv_spi_api.o.d ${OBJECTDIR}/_ext/789699536/drv_spi_master_rm_tasks.o.d ${OBJECTDIR}/_ext/908991954/sys_clk.o.d ${OBJECTDIR}/_ext/908991954/sys_clk_pic32mx.o.d ${OBJECTDIR}/_ext/358216167/sys_devcon.o.d ${OBJECTDIR}/_ext/358216167/sys_devcon_pic32mx.o.d ${OBJECTDIR}/_ext/170324482/sys_ports_static.o.d ${OBJECTDIR}/_ext/92429509/system_init.o.d ${OBJECTDIR}/_ext/92429509/system_interrupt.o.d ${OBJECTDIR}/_ext/92429509/system_exceptions.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/92429509/system_tasks.o.d ${OBJECTDIR}/_ext/1247255173/drv_spi.o.d ${OBJECTDIR}/_ext/1947983275/drv_spi_sys_queue_fifo.o.d ${OBJECTDIR}/_ext/1279433054/drv_usart.o.d ${OBJECTDIR}/_ext/1279433054/drv_usart_read_write.o.d ${OBJECTDIR}/_ext/2004616735/sys_int_pic32.o.d ${OBJECTDIR}/_ext/1611640799/drv_usbfs.o.d ${OBJECTDIR}/_ext/1891674158/usb_device.o.d ${OBJECTDIR}/_ext/1611640799/drv_usbfs_device.o.d ${OBJECTDIR}/_ext/1891674158/usb_device_cdc.o.d ${OBJECTDIR}/_ext/1891674158/usb_device_cdc_acm.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/gsmapp.o ${OBJECTDIR}/_ext/1360937237/gpsapp.o ${OBJECTDIR}/_ext/1360937237/oledapp.o ${OBJECTDIR}/_ext/1092271287/drv_adc_static.o ${OBJECTDIR}/_ext/789699536/drv_spi_tasks.o ${OBJECTDIR}/_ext/789699536/drv_spi_api.o ${OBJECTDIR}/_ext/789699536/drv_spi_master_rm_tasks.o ${OBJECTDIR}/_ext/908991954/sys_clk.o ${OBJECTDIR}/_ext/908991954/sys_clk_pic32mx.o ${OBJECTDIR}/_ext/358216167/sys_devcon.o ${OBJECTDIR}/_ext/358216167/sys_devcon_pic32mx.o ${OBJECTDIR}/_ext/170324482/sys_ports_static.o ${OBJECTDIR}/_ext/92429509/system_init.o ${OBJECTDIR}/_ext/92429509/system_interrupt.o ${OBJECTDIR}/_ext/92429509/system_exceptions.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/92429509/system_tasks.o ${OBJECTDIR}/_ext/1247255173/drv_spi.o ${OBJECTDIR}/_ext/1947983275/drv_spi_sys_queue_fifo.o ${OBJECTDIR}/_ext/1279433054/drv_usart.o ${OBJECTDIR}/_ext/1279433054/drv_usart_read_write.o ${OBJECTDIR}/_ext/2004616735/sys_int_pic32.o ${OBJECTDIR}/_ext/1611640799/drv_usbfs.o ${OBJECTDIR}/_ext/1891674158/usb_device.o ${OBJECTDIR}/_ext/1611640799/drv_usbfs_device.o ${OBJECTDIR}/_ext/1891674158/usb_device_cdc.o ${OBJECTDIR}/_ext/1891674158/usb_device_cdc_acm.o

# Source Files
SOURCEFILES=../src/app.c ../src/gsmapp.c ../src/gpsapp.c ../src/oledapp.c ../src/system_config/ver1/framework/driver/adc/src/drv_adc_static.c ../src/system_config/ver1/framework/driver/spi/dynamic/drv_spi_tasks.c ../src/system_config/ver1/framework/driver/spi/dynamic/drv_spi_api.c ../src/system_config/ver1/framework/driver/spi/dynamic/drv_spi_master_rm_tasks.c ../src/system_config/ver1/framework/system/clk/src/sys_clk.c ../src/system_config/ver1/framework/system/clk/src/sys_clk_pic32mx.c ../src/system_config/ver1/framework/system/devcon/src/sys_devcon.c ../src/system_config/ver1/framework/system/devcon/src/sys_devcon_pic32mx.c ../src/system_config/ver1/framework/system/ports/src/sys_ports_static.c ../src/system_config/ver1/system_init.c ../src/system_config/ver1/system_interrupt.c ../src/system_config/ver1/system_exceptions.c ../src/main.c ../src/system_config/ver1/system_tasks.c ../src/system_config/ver1/framework/driver/spi/src/dynamic/drv_spi.c ../src/system_config/ver1/framework/driver/spi/src/drv_spi_sys_queue_fifo.c ../src/system_config/ver1/framework/driver/usart/src/dynamic/drv_usart.c ../src/system_config/ver1/framework/driver/usart/src/dynamic/drv_usart_read_write.c ../src/system_config/ver1/framework/system/int/src/sys_int_pic32.c ../src/system_config/ver1/framework/driver/usb/usbfs/src/dynamic/drv_usbfs.c ../src/system_config/ver1/framework/usb/src/dynamic/usb_device.c ../src/system_config/ver1/framework/driver/usb/usbfs/src/dynamic/drv_usbfs_device.c ../src/system_config/ver1/framework/usb/src/dynamic/usb_device_cdc.c ../src/system_config/ver1/framework/usb/src/dynamic/usb_device_cdc_acm.c


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
	${MAKE}  -f nbproject/Makefile-ver1.mk dist/${CND_CONF}/${IMAGE_TYPE}/gsmEmer.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX440F512H
MP_LINKER_FILE_OPTION=
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
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/app.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/ver1" -I"../src/ver1" -I"../src/system_config/ver1/framework" -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_ver1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/gsmapp.o: ../src/gsmapp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/gsmapp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/gsmapp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/gsmapp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/ver1" -I"../src/ver1" -I"../src/system_config/ver1/framework" -MMD -MF "${OBJECTDIR}/_ext/1360937237/gsmapp.o.d" -o ${OBJECTDIR}/_ext/1360937237/gsmapp.o ../src/gsmapp.c    -DXPRJ_ver1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/gpsapp.o: ../src/gpsapp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/gpsapp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/gpsapp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/gpsapp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/ver1" -I"../src/ver1" -I"../src/system_config/ver1/framework" -MMD -MF "${OBJECTDIR}/_ext/1360937237/gpsapp.o.d" -o ${OBJECTDIR}/_ext/1360937237/gpsapp.o ../src/gpsapp.c    -DXPRJ_ver1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/oledapp.o: ../src/oledapp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/oledapp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/oledapp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/oledapp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/ver1" -I"../src/ver1" -I"../src/system_config/ver1/framework" -MMD -MF "${OBJECTDIR}/_ext/1360937237/oledapp.o.d" -o ${OBJECTDIR}/_ext/1360937237/oledapp.o ../src/oledapp.c    -DXPRJ_ver1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1092271287/drv_adc_static.o: ../src/system_config/ver1/framework/driver/adc/src/drv_adc_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1092271287" 
	@${RM} ${OBJECTDIR}/_ext/1092271287/drv_adc_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/1092271287/drv_adc_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1092271287/drv_adc_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/ver1" -I"../src/ver1" -I"../src/system_config/ver1/framework" -MMD -MF "${OBJECTDIR}/_ext/1092271287/drv_adc_static.o.d" -o ${OBJECTDIR}/_ext/1092271287/drv_adc_static.o ../src/system_config/ver1/framework/driver/adc/src/drv_adc_static.c    -DXPRJ_ver1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/789699536/drv_spi_tasks.o: ../src/system_config/ver1/framework/driver/spi/dynamic/drv_spi_tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/789699536" 
	@${RM} ${OBJECTDIR}/_ext/789699536/drv_spi_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/789699536/drv_spi_tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/789699536/drv_spi_tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/ver1" -I"../src/ver1" -I"../src/system_config/ver1/framework" -MMD -MF "${OBJECTDIR}/_ext/789699536/drv_spi_tasks.o.d" -o ${OBJECTDIR}/_ext/789699536/drv_spi_tasks.o ../src/system_config/ver1/framework/driver/spi/dynamic/drv_spi_tasks.c    -DXPRJ_ver1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/789699536/drv_spi_api.o: ../src/system_config/ver1/framework/driver/spi/dynamic/drv_spi_api.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/789699536" 
	@${RM} ${OBJECTDIR}/_ext/789699536/drv_spi_api.o.d 
	@${RM} ${OBJECTDIR}/_ext/789699536/drv_spi_api.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/789699536/drv_spi_api.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/ver1" -I"../src/ver1" -I"../src/system_config/ver1/framework" -MMD -MF "${OBJECTDIR}/_ext/789699536/drv_spi_api.o.d" -o ${OBJECTDIR}/_ext/789699536/drv_spi_api.o ../src/system_config/ver1/framework/driver/spi/dynamic/drv_spi_api.c    -DXPRJ_ver1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/789699536/drv_spi_master_rm_tasks.o: ../src/system_config/ver1/framework/driver/spi/dynamic/drv_spi_master_rm_tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/789699536" 
	@${RM} ${OBJECTDIR}/_ext/789699536/drv_spi_master_rm_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/789699536/drv_spi_master_rm_tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/789699536/drv_spi_master_rm_tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/ver1" -I"../src/ver1" -I"../src/system_config/ver1/framework" -MMD -MF "${OBJECTDIR}/_ext/789699536/drv_spi_master_rm_tasks.o.d" -o ${OBJECTDIR}/_ext/789699536/drv_spi_master_rm_tasks.o ../src/system_config/ver1/framework/driver/spi/dynamic/drv_spi_master_rm_tasks.c    -DXPRJ_ver1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/908991954/sys_clk.o: ../src/system_config/ver1/framework/system/clk/src/sys_clk.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/908991954" 
	@${RM} ${OBJECTDIR}/_ext/908991954/sys_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/908991954/sys_clk.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/908991954/sys_clk.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/ver1" -I"../src/ver1" -I"../src/system_config/ver1/framework" -MMD -MF "${OBJECTDIR}/_ext/908991954/sys_clk.o.d" -o ${OBJECTDIR}/_ext/908991954/sys_clk.o ../src/system_config/ver1/framework/system/clk/src/sys_clk.c    -DXPRJ_ver1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/908991954/sys_clk_pic32mx.o: ../src/system_config/ver1/framework/system/clk/src/sys_clk_pic32mx.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/908991954" 
	@${RM} ${OBJECTDIR}/_ext/908991954/sys_clk_pic32mx.o.d 
	@${RM} ${OBJECTDIR}/_ext/908991954/sys_clk_pic32mx.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/908991954/sys_clk_pic32mx.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/ver1" -I"../src/ver1" -I"../src/system_config/ver1/framework" -MMD -MF "${OBJECTDIR}/_ext/908991954/sys_clk_pic32mx.o.d" -o ${OBJECTDIR}/_ext/908991954/sys_clk_pic32mx.o ../src/system_config/ver1/framework/system/clk/src/sys_clk_pic32mx.c    -DXPRJ_ver1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/358216167/sys_devcon.o: ../src/system_config/ver1/framework/system/devcon/src/sys_devcon.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/358216167" 
	@${RM} ${OBJECTDIR}/_ext/358216167/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/358216167/sys_devcon.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/358216167/sys_devcon.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/ver1" -I"../src/ver1" -I"../src/system_config/ver1/framework" -MMD -MF "${OBJECTDIR}/_ext/358216167/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/358216167/sys_devcon.o ../src/system_config/ver1/framework/system/devcon/src/sys_devcon.c    -DXPRJ_ver1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/358216167/sys_devcon_pic32mx.o: ../src/system_config/ver1/framework/system/devcon/src/sys_devcon_pic32mx.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/358216167" 
	@${RM} ${OBJECTDIR}/_ext/358216167/sys_devcon_pic32mx.o.d 
	@${RM} ${OBJECTDIR}/_ext/358216167/sys_devcon_pic32mx.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/358216167/sys_devcon_pic32mx.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/ver1" -I"../src/ver1" -I"../src/system_config/ver1/framework" -MMD -MF "${OBJECTDIR}/_ext/358216167/sys_devcon_pic32mx.o.d" -o ${OBJECTDIR}/_ext/358216167/sys_devcon_pic32mx.o ../src/system_config/ver1/framework/system/devcon/src/sys_devcon_pic32mx.c    -DXPRJ_ver1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/170324482/sys_ports_static.o: ../src/system_config/ver1/framework/system/ports/src/sys_ports_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/170324482" 
	@${RM} ${OBJECTDIR}/_ext/170324482/sys_ports_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/170324482/sys_ports_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/170324482/sys_ports_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/ver1" -I"../src/ver1" -I"../src/system_config/ver1/framework" -MMD -MF "${OBJECTDIR}/_ext/170324482/sys_ports_static.o.d" -o ${OBJECTDIR}/_ext/170324482/sys_ports_static.o ../src/system_config/ver1/framework/system/ports/src/sys_ports_static.c    -DXPRJ_ver1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/92429509/system_init.o: ../src/system_config/ver1/system_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/92429509" 
	@${RM} ${OBJECTDIR}/_ext/92429509/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/92429509/system_init.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/92429509/system_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/ver1" -I"../src/ver1" -I"../src/system_config/ver1/framework" -MMD -MF "${OBJECTDIR}/_ext/92429509/system_init.o.d" -o ${OBJECTDIR}/_ext/92429509/system_init.o ../src/system_config/ver1/system_init.c    -DXPRJ_ver1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/92429509/system_interrupt.o: ../src/system_config/ver1/system_interrupt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/92429509" 
	@${RM} ${OBJECTDIR}/_ext/92429509/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/92429509/system_interrupt.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/92429509/system_interrupt.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/ver1" -I"../src/ver1" -I"../src/system_config/ver1/framework" -MMD -MF "${OBJECTDIR}/_ext/92429509/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/92429509/system_interrupt.o ../src/system_config/ver1/system_interrupt.c    -DXPRJ_ver1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/92429509/system_exceptions.o: ../src/system_config/ver1/system_exceptions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/92429509" 
	@${RM} ${OBJECTDIR}/_ext/92429509/system_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/92429509/system_exceptions.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/92429509/system_exceptions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/ver1" -I"../src/ver1" -I"../src/system_config/ver1/framework" -MMD -MF "${OBJECTDIR}/_ext/92429509/system_exceptions.o.d" -o ${OBJECTDIR}/_ext/92429509/system_exceptions.o ../src/system_config/ver1/system_exceptions.c    -DXPRJ_ver1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/ver1" -I"../src/ver1" -I"../src/system_config/ver1/framework" -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_ver1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/92429509/system_tasks.o: ../src/system_config/ver1/system_tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/92429509" 
	@${RM} ${OBJECTDIR}/_ext/92429509/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/92429509/system_tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/92429509/system_tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/ver1" -I"../src/ver1" -I"../src/system_config/ver1/framework" -MMD -MF "${OBJECTDIR}/_ext/92429509/system_tasks.o.d" -o ${OBJECTDIR}/_ext/92429509/system_tasks.o ../src/system_config/ver1/system_tasks.c    -DXPRJ_ver1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1247255173/drv_spi.o: ../src/system_config/ver1/framework/driver/spi/src/dynamic/drv_spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1247255173" 
	@${RM} ${OBJECTDIR}/_ext/1247255173/drv_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1247255173/drv_spi.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1247255173/drv_spi.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/ver1" -I"../src/ver1" -I"../src/system_config/ver1/framework" -MMD -MF "${OBJECTDIR}/_ext/1247255173/drv_spi.o.d" -o ${OBJECTDIR}/_ext/1247255173/drv_spi.o ../src/system_config/ver1/framework/driver/spi/src/dynamic/drv_spi.c    -DXPRJ_ver1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1947983275/drv_spi_sys_queue_fifo.o: ../src/system_config/ver1/framework/driver/spi/src/drv_spi_sys_queue_fifo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1947983275" 
	@${RM} ${OBJECTDIR}/_ext/1947983275/drv_spi_sys_queue_fifo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1947983275/drv_spi_sys_queue_fifo.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1947983275/drv_spi_sys_queue_fifo.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/ver1" -I"../src/ver1" -I"../src/system_config/ver1/framework" -MMD -MF "${OBJECTDIR}/_ext/1947983275/drv_spi_sys_queue_fifo.o.d" -o ${OBJECTDIR}/_ext/1947983275/drv_spi_sys_queue_fifo.o ../src/system_config/ver1/framework/driver/spi/src/drv_spi_sys_queue_fifo.c    -DXPRJ_ver1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1279433054/drv_usart.o: ../src/system_config/ver1/framework/driver/usart/src/dynamic/drv_usart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1279433054" 
	@${RM} ${OBJECTDIR}/_ext/1279433054/drv_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1279433054/drv_usart.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1279433054/drv_usart.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/ver1" -I"../src/ver1" -I"../src/system_config/ver1/framework" -MMD -MF "${OBJECTDIR}/_ext/1279433054/drv_usart.o.d" -o ${OBJECTDIR}/_ext/1279433054/drv_usart.o ../src/system_config/ver1/framework/driver/usart/src/dynamic/drv_usart.c    -DXPRJ_ver1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1279433054/drv_usart_read_write.o: ../src/system_config/ver1/framework/driver/usart/src/dynamic/drv_usart_read_write.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1279433054" 
	@${RM} ${OBJECTDIR}/_ext/1279433054/drv_usart_read_write.o.d 
	@${RM} ${OBJECTDIR}/_ext/1279433054/drv_usart_read_write.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1279433054/drv_usart_read_write.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/ver1" -I"../src/ver1" -I"../src/system_config/ver1/framework" -MMD -MF "${OBJECTDIR}/_ext/1279433054/drv_usart_read_write.o.d" -o ${OBJECTDIR}/_ext/1279433054/drv_usart_read_write.o ../src/system_config/ver1/framework/driver/usart/src/dynamic/drv_usart_read_write.c    -DXPRJ_ver1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/2004616735/sys_int_pic32.o: ../src/system_config/ver1/framework/system/int/src/sys_int_pic32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2004616735" 
	@${RM} ${OBJECTDIR}/_ext/2004616735/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/2004616735/sys_int_pic32.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2004616735/sys_int_pic32.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/ver1" -I"../src/ver1" -I"../src/system_config/ver1/framework" -MMD -MF "${OBJECTDIR}/_ext/2004616735/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/2004616735/sys_int_pic32.o ../src/system_config/ver1/framework/system/int/src/sys_int_pic32.c    -DXPRJ_ver1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1611640799/drv_usbfs.o: ../src/system_config/ver1/framework/driver/usb/usbfs/src/dynamic/drv_usbfs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1611640799" 
	@${RM} ${OBJECTDIR}/_ext/1611640799/drv_usbfs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1611640799/drv_usbfs.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1611640799/drv_usbfs.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/ver1" -I"../src/ver1" -I"../src/system_config/ver1/framework" -MMD -MF "${OBJECTDIR}/_ext/1611640799/drv_usbfs.o.d" -o ${OBJECTDIR}/_ext/1611640799/drv_usbfs.o ../src/system_config/ver1/framework/driver/usb/usbfs/src/dynamic/drv_usbfs.c    -DXPRJ_ver1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1891674158/usb_device.o: ../src/system_config/ver1/framework/usb/src/dynamic/usb_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1891674158" 
	@${RM} ${OBJECTDIR}/_ext/1891674158/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1891674158/usb_device.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1891674158/usb_device.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/ver1" -I"../src/ver1" -I"../src/system_config/ver1/framework" -MMD -MF "${OBJECTDIR}/_ext/1891674158/usb_device.o.d" -o ${OBJECTDIR}/_ext/1891674158/usb_device.o ../src/system_config/ver1/framework/usb/src/dynamic/usb_device.c    -DXPRJ_ver1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1611640799/drv_usbfs_device.o: ../src/system_config/ver1/framework/driver/usb/usbfs/src/dynamic/drv_usbfs_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1611640799" 
	@${RM} ${OBJECTDIR}/_ext/1611640799/drv_usbfs_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1611640799/drv_usbfs_device.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1611640799/drv_usbfs_device.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/ver1" -I"../src/ver1" -I"../src/system_config/ver1/framework" -MMD -MF "${OBJECTDIR}/_ext/1611640799/drv_usbfs_device.o.d" -o ${OBJECTDIR}/_ext/1611640799/drv_usbfs_device.o ../src/system_config/ver1/framework/driver/usb/usbfs/src/dynamic/drv_usbfs_device.c    -DXPRJ_ver1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1891674158/usb_device_cdc.o: ../src/system_config/ver1/framework/usb/src/dynamic/usb_device_cdc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1891674158" 
	@${RM} ${OBJECTDIR}/_ext/1891674158/usb_device_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1891674158/usb_device_cdc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1891674158/usb_device_cdc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/ver1" -I"../src/ver1" -I"../src/system_config/ver1/framework" -MMD -MF "${OBJECTDIR}/_ext/1891674158/usb_device_cdc.o.d" -o ${OBJECTDIR}/_ext/1891674158/usb_device_cdc.o ../src/system_config/ver1/framework/usb/src/dynamic/usb_device_cdc.c    -DXPRJ_ver1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1891674158/usb_device_cdc_acm.o: ../src/system_config/ver1/framework/usb/src/dynamic/usb_device_cdc_acm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1891674158" 
	@${RM} ${OBJECTDIR}/_ext/1891674158/usb_device_cdc_acm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1891674158/usb_device_cdc_acm.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1891674158/usb_device_cdc_acm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/ver1" -I"../src/ver1" -I"../src/system_config/ver1/framework" -MMD -MF "${OBJECTDIR}/_ext/1891674158/usb_device_cdc_acm.o.d" -o ${OBJECTDIR}/_ext/1891674158/usb_device_cdc_acm.o ../src/system_config/ver1/framework/usb/src/dynamic/usb_device_cdc_acm.c    -DXPRJ_ver1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
else
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/app.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/ver1" -I"../src/ver1" -I"../src/system_config/ver1/framework" -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_ver1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/gsmapp.o: ../src/gsmapp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/gsmapp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/gsmapp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/gsmapp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/ver1" -I"../src/ver1" -I"../src/system_config/ver1/framework" -MMD -MF "${OBJECTDIR}/_ext/1360937237/gsmapp.o.d" -o ${OBJECTDIR}/_ext/1360937237/gsmapp.o ../src/gsmapp.c    -DXPRJ_ver1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/gpsapp.o: ../src/gpsapp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/gpsapp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/gpsapp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/gpsapp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/ver1" -I"../src/ver1" -I"../src/system_config/ver1/framework" -MMD -MF "${OBJECTDIR}/_ext/1360937237/gpsapp.o.d" -o ${OBJECTDIR}/_ext/1360937237/gpsapp.o ../src/gpsapp.c    -DXPRJ_ver1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/oledapp.o: ../src/oledapp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/oledapp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/oledapp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/oledapp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/ver1" -I"../src/ver1" -I"../src/system_config/ver1/framework" -MMD -MF "${OBJECTDIR}/_ext/1360937237/oledapp.o.d" -o ${OBJECTDIR}/_ext/1360937237/oledapp.o ../src/oledapp.c    -DXPRJ_ver1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1092271287/drv_adc_static.o: ../src/system_config/ver1/framework/driver/adc/src/drv_adc_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1092271287" 
	@${RM} ${OBJECTDIR}/_ext/1092271287/drv_adc_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/1092271287/drv_adc_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1092271287/drv_adc_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/ver1" -I"../src/ver1" -I"../src/system_config/ver1/framework" -MMD -MF "${OBJECTDIR}/_ext/1092271287/drv_adc_static.o.d" -o ${OBJECTDIR}/_ext/1092271287/drv_adc_static.o ../src/system_config/ver1/framework/driver/adc/src/drv_adc_static.c    -DXPRJ_ver1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/789699536/drv_spi_tasks.o: ../src/system_config/ver1/framework/driver/spi/dynamic/drv_spi_tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/789699536" 
	@${RM} ${OBJECTDIR}/_ext/789699536/drv_spi_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/789699536/drv_spi_tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/789699536/drv_spi_tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/ver1" -I"../src/ver1" -I"../src/system_config/ver1/framework" -MMD -MF "${OBJECTDIR}/_ext/789699536/drv_spi_tasks.o.d" -o ${OBJECTDIR}/_ext/789699536/drv_spi_tasks.o ../src/system_config/ver1/framework/driver/spi/dynamic/drv_spi_tasks.c    -DXPRJ_ver1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/789699536/drv_spi_api.o: ../src/system_config/ver1/framework/driver/spi/dynamic/drv_spi_api.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/789699536" 
	@${RM} ${OBJECTDIR}/_ext/789699536/drv_spi_api.o.d 
	@${RM} ${OBJECTDIR}/_ext/789699536/drv_spi_api.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/789699536/drv_spi_api.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/ver1" -I"../src/ver1" -I"../src/system_config/ver1/framework" -MMD -MF "${OBJECTDIR}/_ext/789699536/drv_spi_api.o.d" -o ${OBJECTDIR}/_ext/789699536/drv_spi_api.o ../src/system_config/ver1/framework/driver/spi/dynamic/drv_spi_api.c    -DXPRJ_ver1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/789699536/drv_spi_master_rm_tasks.o: ../src/system_config/ver1/framework/driver/spi/dynamic/drv_spi_master_rm_tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/789699536" 
	@${RM} ${OBJECTDIR}/_ext/789699536/drv_spi_master_rm_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/789699536/drv_spi_master_rm_tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/789699536/drv_spi_master_rm_tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/ver1" -I"../src/ver1" -I"../src/system_config/ver1/framework" -MMD -MF "${OBJECTDIR}/_ext/789699536/drv_spi_master_rm_tasks.o.d" -o ${OBJECTDIR}/_ext/789699536/drv_spi_master_rm_tasks.o ../src/system_config/ver1/framework/driver/spi/dynamic/drv_spi_master_rm_tasks.c    -DXPRJ_ver1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/908991954/sys_clk.o: ../src/system_config/ver1/framework/system/clk/src/sys_clk.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/908991954" 
	@${RM} ${OBJECTDIR}/_ext/908991954/sys_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/908991954/sys_clk.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/908991954/sys_clk.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/ver1" -I"../src/ver1" -I"../src/system_config/ver1/framework" -MMD -MF "${OBJECTDIR}/_ext/908991954/sys_clk.o.d" -o ${OBJECTDIR}/_ext/908991954/sys_clk.o ../src/system_config/ver1/framework/system/clk/src/sys_clk.c    -DXPRJ_ver1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/908991954/sys_clk_pic32mx.o: ../src/system_config/ver1/framework/system/clk/src/sys_clk_pic32mx.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/908991954" 
	@${RM} ${OBJECTDIR}/_ext/908991954/sys_clk_pic32mx.o.d 
	@${RM} ${OBJECTDIR}/_ext/908991954/sys_clk_pic32mx.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/908991954/sys_clk_pic32mx.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/ver1" -I"../src/ver1" -I"../src/system_config/ver1/framework" -MMD -MF "${OBJECTDIR}/_ext/908991954/sys_clk_pic32mx.o.d" -o ${OBJECTDIR}/_ext/908991954/sys_clk_pic32mx.o ../src/system_config/ver1/framework/system/clk/src/sys_clk_pic32mx.c    -DXPRJ_ver1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/358216167/sys_devcon.o: ../src/system_config/ver1/framework/system/devcon/src/sys_devcon.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/358216167" 
	@${RM} ${OBJECTDIR}/_ext/358216167/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/358216167/sys_devcon.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/358216167/sys_devcon.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/ver1" -I"../src/ver1" -I"../src/system_config/ver1/framework" -MMD -MF "${OBJECTDIR}/_ext/358216167/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/358216167/sys_devcon.o ../src/system_config/ver1/framework/system/devcon/src/sys_devcon.c    -DXPRJ_ver1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/358216167/sys_devcon_pic32mx.o: ../src/system_config/ver1/framework/system/devcon/src/sys_devcon_pic32mx.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/358216167" 
	@${RM} ${OBJECTDIR}/_ext/358216167/sys_devcon_pic32mx.o.d 
	@${RM} ${OBJECTDIR}/_ext/358216167/sys_devcon_pic32mx.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/358216167/sys_devcon_pic32mx.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/ver1" -I"../src/ver1" -I"../src/system_config/ver1/framework" -MMD -MF "${OBJECTDIR}/_ext/358216167/sys_devcon_pic32mx.o.d" -o ${OBJECTDIR}/_ext/358216167/sys_devcon_pic32mx.o ../src/system_config/ver1/framework/system/devcon/src/sys_devcon_pic32mx.c    -DXPRJ_ver1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/170324482/sys_ports_static.o: ../src/system_config/ver1/framework/system/ports/src/sys_ports_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/170324482" 
	@${RM} ${OBJECTDIR}/_ext/170324482/sys_ports_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/170324482/sys_ports_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/170324482/sys_ports_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/ver1" -I"../src/ver1" -I"../src/system_config/ver1/framework" -MMD -MF "${OBJECTDIR}/_ext/170324482/sys_ports_static.o.d" -o ${OBJECTDIR}/_ext/170324482/sys_ports_static.o ../src/system_config/ver1/framework/system/ports/src/sys_ports_static.c    -DXPRJ_ver1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/92429509/system_init.o: ../src/system_config/ver1/system_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/92429509" 
	@${RM} ${OBJECTDIR}/_ext/92429509/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/92429509/system_init.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/92429509/system_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/ver1" -I"../src/ver1" -I"../src/system_config/ver1/framework" -MMD -MF "${OBJECTDIR}/_ext/92429509/system_init.o.d" -o ${OBJECTDIR}/_ext/92429509/system_init.o ../src/system_config/ver1/system_init.c    -DXPRJ_ver1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/92429509/system_interrupt.o: ../src/system_config/ver1/system_interrupt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/92429509" 
	@${RM} ${OBJECTDIR}/_ext/92429509/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/92429509/system_interrupt.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/92429509/system_interrupt.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/ver1" -I"../src/ver1" -I"../src/system_config/ver1/framework" -MMD -MF "${OBJECTDIR}/_ext/92429509/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/92429509/system_interrupt.o ../src/system_config/ver1/system_interrupt.c    -DXPRJ_ver1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/92429509/system_exceptions.o: ../src/system_config/ver1/system_exceptions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/92429509" 
	@${RM} ${OBJECTDIR}/_ext/92429509/system_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/92429509/system_exceptions.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/92429509/system_exceptions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/ver1" -I"../src/ver1" -I"../src/system_config/ver1/framework" -MMD -MF "${OBJECTDIR}/_ext/92429509/system_exceptions.o.d" -o ${OBJECTDIR}/_ext/92429509/system_exceptions.o ../src/system_config/ver1/system_exceptions.c    -DXPRJ_ver1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/ver1" -I"../src/ver1" -I"../src/system_config/ver1/framework" -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_ver1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/92429509/system_tasks.o: ../src/system_config/ver1/system_tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/92429509" 
	@${RM} ${OBJECTDIR}/_ext/92429509/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/92429509/system_tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/92429509/system_tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/ver1" -I"../src/ver1" -I"../src/system_config/ver1/framework" -MMD -MF "${OBJECTDIR}/_ext/92429509/system_tasks.o.d" -o ${OBJECTDIR}/_ext/92429509/system_tasks.o ../src/system_config/ver1/system_tasks.c    -DXPRJ_ver1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1247255173/drv_spi.o: ../src/system_config/ver1/framework/driver/spi/src/dynamic/drv_spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1247255173" 
	@${RM} ${OBJECTDIR}/_ext/1247255173/drv_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1247255173/drv_spi.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1247255173/drv_spi.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/ver1" -I"../src/ver1" -I"../src/system_config/ver1/framework" -MMD -MF "${OBJECTDIR}/_ext/1247255173/drv_spi.o.d" -o ${OBJECTDIR}/_ext/1247255173/drv_spi.o ../src/system_config/ver1/framework/driver/spi/src/dynamic/drv_spi.c    -DXPRJ_ver1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1947983275/drv_spi_sys_queue_fifo.o: ../src/system_config/ver1/framework/driver/spi/src/drv_spi_sys_queue_fifo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1947983275" 
	@${RM} ${OBJECTDIR}/_ext/1947983275/drv_spi_sys_queue_fifo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1947983275/drv_spi_sys_queue_fifo.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1947983275/drv_spi_sys_queue_fifo.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/ver1" -I"../src/ver1" -I"../src/system_config/ver1/framework" -MMD -MF "${OBJECTDIR}/_ext/1947983275/drv_spi_sys_queue_fifo.o.d" -o ${OBJECTDIR}/_ext/1947983275/drv_spi_sys_queue_fifo.o ../src/system_config/ver1/framework/driver/spi/src/drv_spi_sys_queue_fifo.c    -DXPRJ_ver1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1279433054/drv_usart.o: ../src/system_config/ver1/framework/driver/usart/src/dynamic/drv_usart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1279433054" 
	@${RM} ${OBJECTDIR}/_ext/1279433054/drv_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1279433054/drv_usart.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1279433054/drv_usart.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/ver1" -I"../src/ver1" -I"../src/system_config/ver1/framework" -MMD -MF "${OBJECTDIR}/_ext/1279433054/drv_usart.o.d" -o ${OBJECTDIR}/_ext/1279433054/drv_usart.o ../src/system_config/ver1/framework/driver/usart/src/dynamic/drv_usart.c    -DXPRJ_ver1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1279433054/drv_usart_read_write.o: ../src/system_config/ver1/framework/driver/usart/src/dynamic/drv_usart_read_write.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1279433054" 
	@${RM} ${OBJECTDIR}/_ext/1279433054/drv_usart_read_write.o.d 
	@${RM} ${OBJECTDIR}/_ext/1279433054/drv_usart_read_write.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1279433054/drv_usart_read_write.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/ver1" -I"../src/ver1" -I"../src/system_config/ver1/framework" -MMD -MF "${OBJECTDIR}/_ext/1279433054/drv_usart_read_write.o.d" -o ${OBJECTDIR}/_ext/1279433054/drv_usart_read_write.o ../src/system_config/ver1/framework/driver/usart/src/dynamic/drv_usart_read_write.c    -DXPRJ_ver1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/2004616735/sys_int_pic32.o: ../src/system_config/ver1/framework/system/int/src/sys_int_pic32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2004616735" 
	@${RM} ${OBJECTDIR}/_ext/2004616735/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/2004616735/sys_int_pic32.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2004616735/sys_int_pic32.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/ver1" -I"../src/ver1" -I"../src/system_config/ver1/framework" -MMD -MF "${OBJECTDIR}/_ext/2004616735/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/2004616735/sys_int_pic32.o ../src/system_config/ver1/framework/system/int/src/sys_int_pic32.c    -DXPRJ_ver1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1611640799/drv_usbfs.o: ../src/system_config/ver1/framework/driver/usb/usbfs/src/dynamic/drv_usbfs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1611640799" 
	@${RM} ${OBJECTDIR}/_ext/1611640799/drv_usbfs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1611640799/drv_usbfs.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1611640799/drv_usbfs.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/ver1" -I"../src/ver1" -I"../src/system_config/ver1/framework" -MMD -MF "${OBJECTDIR}/_ext/1611640799/drv_usbfs.o.d" -o ${OBJECTDIR}/_ext/1611640799/drv_usbfs.o ../src/system_config/ver1/framework/driver/usb/usbfs/src/dynamic/drv_usbfs.c    -DXPRJ_ver1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1891674158/usb_device.o: ../src/system_config/ver1/framework/usb/src/dynamic/usb_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1891674158" 
	@${RM} ${OBJECTDIR}/_ext/1891674158/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1891674158/usb_device.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1891674158/usb_device.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/ver1" -I"../src/ver1" -I"../src/system_config/ver1/framework" -MMD -MF "${OBJECTDIR}/_ext/1891674158/usb_device.o.d" -o ${OBJECTDIR}/_ext/1891674158/usb_device.o ../src/system_config/ver1/framework/usb/src/dynamic/usb_device.c    -DXPRJ_ver1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1611640799/drv_usbfs_device.o: ../src/system_config/ver1/framework/driver/usb/usbfs/src/dynamic/drv_usbfs_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1611640799" 
	@${RM} ${OBJECTDIR}/_ext/1611640799/drv_usbfs_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1611640799/drv_usbfs_device.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1611640799/drv_usbfs_device.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/ver1" -I"../src/ver1" -I"../src/system_config/ver1/framework" -MMD -MF "${OBJECTDIR}/_ext/1611640799/drv_usbfs_device.o.d" -o ${OBJECTDIR}/_ext/1611640799/drv_usbfs_device.o ../src/system_config/ver1/framework/driver/usb/usbfs/src/dynamic/drv_usbfs_device.c    -DXPRJ_ver1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1891674158/usb_device_cdc.o: ../src/system_config/ver1/framework/usb/src/dynamic/usb_device_cdc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1891674158" 
	@${RM} ${OBJECTDIR}/_ext/1891674158/usb_device_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1891674158/usb_device_cdc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1891674158/usb_device_cdc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/ver1" -I"../src/ver1" -I"../src/system_config/ver1/framework" -MMD -MF "${OBJECTDIR}/_ext/1891674158/usb_device_cdc.o.d" -o ${OBJECTDIR}/_ext/1891674158/usb_device_cdc.o ../src/system_config/ver1/framework/usb/src/dynamic/usb_device_cdc.c    -DXPRJ_ver1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1891674158/usb_device_cdc_acm.o: ../src/system_config/ver1/framework/usb/src/dynamic/usb_device_cdc_acm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1891674158" 
	@${RM} ${OBJECTDIR}/_ext/1891674158/usb_device_cdc_acm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1891674158/usb_device_cdc_acm.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1891674158/usb_device_cdc_acm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/ver1" -I"../src/ver1" -I"../src/system_config/ver1/framework" -MMD -MF "${OBJECTDIR}/_ext/1891674158/usb_device_cdc_acm.o.d" -o ${OBJECTDIR}/_ext/1891674158/usb_device_cdc_acm.o ../src/system_config/ver1/framework/usb/src/dynamic/usb_device_cdc_acm.c    -DXPRJ_ver1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/gsmEmer.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../src/system_config/ver1/bin/framework/peripheral/PIC32MX440F512H_peripherals.a  
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mdebugger -D__MPLAB_DEBUGGER_PK3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/gsmEmer.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ../src/system_config/ver1/bin/framework/peripheral/PIC32MX440F512H_peripherals.a      -DXPRJ_ver1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x0:0x1FC -mreserve=boot@0x1FC02000:0x1FC02FEF -mreserve=boot@0x1FC02000:0x1FC024FF  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_PK3=1,--defsym=_min_heap_size=32768,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/gsmEmer.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../src/system_config/ver1/bin/framework/peripheral/PIC32MX440F512H_peripherals.a 
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/gsmEmer.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ../src/system_config/ver1/bin/framework/peripheral/PIC32MX440F512H_peripherals.a      -DXPRJ_ver1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=32768,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml
	${MP_CC_DIR}/xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/gsmEmer.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/ver1
	${RM} -r dist/ver1

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell "${PATH_TO_IDE_BIN}"mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
