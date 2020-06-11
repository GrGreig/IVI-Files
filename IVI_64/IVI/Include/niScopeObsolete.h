/****************************************************************************
 *                                niScope                                   *
 *--------------------------------------------------------------------------*
 *      Copyright (c) National Instruments 2001.  All Rights Reserved.      *
 *--------------------------------------------------------------------------*
 *                                                                          *
 * Title:    niScopeObsolete.h                                              *
 * Purpose:  niScope                                                        *
 *           instrument driver declarations.                                *
 *              These macros, constants, and functions are defined to keep  *
 *              backward compatibility with previous versions of niScope.   *
 *              Programs should no longer use these macros, constants, and  *
 *              functions. Instead, programs should use definitions from    *
 *              the current niScope.h header file.                          *
 *                                                                          *
 ****************************************************************************/

#ifndef __NISCOPE_HEADER_OBSOLETE
#define __NISCOPE_HEADER_OBSOLETE

#define IVI_DO_NOT_INCLUDE_VISA_HEADERS
#include "ivi.h"
#undef IVI_DO_NOT_INCLUDE_VISA_HEADERS

/* Pragma used in CVI to indicate that functions in this file have
 * user protection associated with them */
#ifdef _CVI_
 #pragma EnableLibraryRuntimeChecking
#endif

/*********************************************************
  Obsolete functions and functions used for class driver
  compliance.
 *********************************************************/
#if defined(__cplusplus) || defined(__cplusplus__)
extern "C" {
#endif

ViStatus _VI_FUNC niScope_ClearError (ViSession vi);  /* Not recommended */

ViStatus _VI_FUNC niScope_GetNextInterchangeWarning (ViSession vi, /* Not recommended */
                                                     ViInt32 bufferSize,
                                                     ViChar warnString[]);

ViStatus _VI_FUNC niScope_ResetInterchangeCheck (ViSession vi);   /* Not recommended */

ViStatus _VI_FUNC niScope_ClearInterchangeWarnings (ViSession vi);   /* Not recommended */

ViStatus _VI_FUNC niScope_GetNextCoercionRecord (ViSession vi,
                                                 ViInt32 bufferSize,
                                                 ViChar record[]); /* Not recommended */

ViStatus _VI_FUNC niScope_InvalidateAllAttributes (ViSession vi); /* Not recommended */

ViStatus _VI_FUNC niScope_ResetWithDefaults (ViSession vi); /* Not recommended */

ViStatus _VI_FUNC niScope_ConfigureAcquisitionType (ViSession vi,  /* Not recommended */
                                                    ViInt32 acquisitionType);

/* Vertical */
ViStatus _VI_FUNC niScope_ConfigureChannel (ViSession vi,          /* Not recommended */
                                             ViConstString channel,
                                             ViReal64 range,
                                             ViReal64 offset,
                                             ViInt32 coupling,
                                             ViReal64 probeAttenuation,
                                             ViBoolean enabled);


/* Horizontal */
ViStatus _VI_FUNC niScope_ConfigureHorizontal (ViSession vi,        /* Not recommended */
                                               ViReal64 timePerRecord,
                                               ViInt32 minNumPts,
                                               ViReal64 refPosition);

ViStatus _VI_FUNC niScope_ConfigureAcquisitionRecord (ViSession vi, /* Not recommended */
                                                      ViReal64 timePerRecord,
                                                      ViInt32 minNumPts,
                                                      ViReal64 acquisitionStartTime);

ViStatus _VI_FUNC niScope_ConfigureHorizontalRate (ViSession vi,   /* Not recommended */
                                                   ViReal64 minSampleRate,
                                                   ViInt32 minNumPts,
                                                   ViReal64 refPosition);

ViStatus _VI_FUNC niScope_ConfigureMultiHorizontal (ViSession vi,  /* Not recommended */
                                                    ViReal64 timePerRecord,
                                                    ViInt32 minNumPts,
                                                    ViReal64 refPosition,
                                                    ViInt32 numRecords);

ViStatus _VI_FUNC niScope_ConfigureMultiHorizontalRate (ViSession vi, /* Not recommended */
                                                        ViReal64 minSampleRate,
                                                        ViInt32 minNumPts,
                                                        ViReal64 refPosition,
                                                        ViInt32 numRecords);

/* Triggering */
ViStatus _VI_FUNC niScope_ConfigureTriggerSource (ViSession vi,      /* Not recommended */
                                                  ViConstString triggerSource,
                                                  ViInt32 triggerType,
                                                  ViReal64 triggerDelay,
                                                  ViReal64 holdoff);

ViStatus _VI_FUNC niScope_ConfigureTrigger (ViSession vi,           /* Not recommended */
                                            ViInt32 triggerType,
                                            ViReal64 holdoff);

ViStatus _VI_FUNC niScope_ConfigureTriggerCoupling (ViSession vi,   /* Not recommended */
                                                    ViInt32 coupling);

ViStatus _VI_FUNC niScope_ConfigureEdgeTrigger (ViSession vi,       /* Not recommended */
                                                ViReal64 level,
                                                ViInt32 triggerCoupling,
                                                ViInt32 slope);

ViStatus _VI_FUNC niScope_ConfigureEdgeTriggerSource (ViSession vi, /* Not recommended */
                                                      ViConstString source,
                                                      ViReal64 level,
                                                      ViInt32 slope);

ViStatus _VI_FUNC niScope_ConfigureHysteresisTrigger (ViSession vi, /* Not recommended */
                                                      ViReal64 level,
                                                      ViReal64 hysteresis,
                                                      ViInt32 triggerCoupling,
                                                      ViInt32 slope);

ViStatus _VI_FUNC niScope_ConfigureWindowTrigger (ViSession vi,     /* Not recommended */
                                                  ViReal64 lowLevel,
                                                  ViReal64 highLevel,
                                                  ViInt32 triggerCoupling,
                                                  ViInt32 windowMode);

ViStatus _VI_FUNC niScope_ConfigureDigitalTrigger (ViSession vi,   /* Not recommended */
                                                   ViInt32 slope);

ViStatus _VI_FUNC niScope_SendSWTrigger (ViSession vi); /* Not recommended */

/* Fetch Functions */
/* We use native packing on Windows x64, which is on 8 byte boundaries */
#if defined(_WIN64)
#define NISCOPE_STRUCT_PACK_SIZE 8
#else
#define NISCOPE_STRUCT_PACK_SIZE 1
#endif

#pragma pack(push,NISCOPE_STRUCT_PACK_SIZE)

typedef struct
{
   ViInt32 actualSamples;
   ViReal64 absoluteInitialX;
   ViReal64 relativeInitialX;
   ViReal64 xIncrement;
   ViReal64 offset;
   ViReal64 gain;
   ViReal64 reserved1;
   ViReal64 reserved2;
} tWfmInfo;

#pragma pack(pop)

ViStatus _VI_FUNC niScope_ReadWaveform (ViSession vi, /* Not recommended */
                                        ViConstString channel,
                                        ViInt32 waveformSize,
                                        ViInt32 maxTime,
                                        ViReal64 waveform[],
                                        ViInt32* actualPoints,
                                        ViReal64* initialX,
                                        ViReal64* xIncrement);


ViStatus _VI_FUNC niScope_FetchWaveform (ViSession vi, /* Not recommended */
                                         ViConstString channel,
                                         ViInt32 waveformSize,
                                         ViReal64* waveform,
                                         ViInt32* actualPoints,
                                         ViReal64* initialX,
                                         ViReal64* xIncrement);

ViStatus _VI_FUNC niScope_FetchWaveformFromOffset (ViSession vi,  /* Not recommended */
                                                   ViConstString channelName,
                                                   ViInt32 retrievalOffset,
                                                   ViInt32 waveformSize,
                                                   ViReal64* waveformArray,
                                                   ViInt32* actualPoints,
                                                   ViReal64* initialX,
                                                   ViReal64* XIncrement);

ViStatus _VI_FUNC niScope_FetchBinary8Waveform (ViSession vi,   /* Not recommended */
                                                ViConstString channelName,
                                                ViInt32 retrievalOffset,
                                                ViInt32 waveformSize,
                                                ViInt8* waveformArray,
                                                ViInt32* actualPoints,
                                                ViReal64* initialX,
                                                ViReal64* XIncrement,
                                                ViReal64* gainFactor,
                                                ViReal64* verticalOffset);

ViStatus _VI_FUNC niScope_FetchBinary16Waveform (ViSession vi, /* Not recommended */
                                                 ViConstString channelName,
                                                 ViInt32 retrievalOffset,
                                                 ViInt32 waveformSize,
                                                 ViInt16* waveformArray,
                                                 ViInt32* actualPoints,
                                                 ViReal64* initialX,
                                                 ViReal64* XIncrement,
                                                 ViReal64* gainFactor,
                                                 ViReal64* verticalOffset);

ViStatus _VI_FUNC niScope_FetchBinary32Waveform (ViSession vi, /* Not recommended */
                                                 ViConstString channelName,
                                                 ViInt32 retrievalOffset,
                                                 ViInt32 waveformSize,
                                                 ViInt32* waveformArray,
                                                 ViInt32* actualPoints,
                                                 ViReal64* initialX,
                                                 ViReal64* XIncrement,
                                                 ViReal64* gainFactor,
                                                 ViReal64* verticalOffset);

ViStatus _VI_FUNC niScope_FetchMultiWaveform (ViSession vi,  /* Not recommended */
                                              ViConstString channelName,
                                              ViInt32 recordNumber,
                                              ViInt32 retrievalOffset,
                                              ViInt32 waveformSize,
                                              ViReal64* waveformArray,
                                              ViInt32* actualPoints,
                                              ViReal64* initialX,
                                              ViReal64* XIncrement);

ViStatus _VI_FUNC niScope_FetchMultiBinary8Waveform (ViSession vi, /* Not recommended */
                                                     ViConstString channelName,
                                                     ViInt32 recordNumber,
                                                     ViInt32 retrievalOffset,
                                                     ViInt32 waveformSize,
                                                     ViInt8* waveformArray,
                                                     ViInt32* actualPoints,
                                                     ViReal64* initialX,
                                                     ViReal64* XIncrement,
                                                     ViReal64* gainFactor,
                                                     ViReal64* verticalOffset);

ViStatus _VI_FUNC niScope_FetchMultiBinary16Waveform (ViSession vi, /* Not recommended */
                                                      ViConstString channelName,
                                                      ViInt32 recordNumber,
                                                      ViInt32 retrievalOffset,
                                                      ViInt32 waveformSize,
                                                      ViInt16* waveformArray,
                                                      ViInt32* actualPoints,
                                                      ViReal64* initialX,
                                                      ViReal64* XIncrement,
                                                      ViReal64* gainFactor,
                                                      ViReal64* verticalOffset);

ViStatus _VI_FUNC niScope_FetchMultiBinary32Waveform (ViSession vi,  /* Not recommended */
                                                      ViConstString channelName,
                                                      ViInt32 recordNumber,
                                                      ViInt32 retrievalOffset,
                                                      ViInt32 waveformSize,
                                                      ViInt32* waveformArray,
                                                      ViInt32* actualPoints,
                                                      ViReal64* initialX,
                                                      ViReal64* XIncrement,
                                                      ViReal64* gainFactor,
                                                      ViReal64* verticalOffset);

ViStatus _VI_FUNC niScope_FetchMinMaxWaveform (ViSession vi,     /* Not recommended */
                                               ViConstString channelName,
                                               ViInt32 waveformSize,
                                               ViReal64 minWaveform[],
                                               ViReal64 maxWaveform[],
                                               ViInt32* actualPoints,
                                               ViReal64* initialX,
                                               ViReal64* XIncrement);

ViStatus _VI_FUNC niScope_ReadMinMaxWaveform (ViSession vi,      /* Not recommended */
                                              ViConstString channelName,
                                              ViInt32 waveformSize,
                                              ViInt32 maxTime,
                                              ViReal64 minWaveform[],
                                              ViReal64 maxWaveform[],
                                              ViInt32* actualPoints,
                                              ViReal64* initialX,
                                              ViReal64* XIncrement);

ViStatus _VI_FUNC niScope_FetchMultiMinMaxWaveform (ViSession vi,  /* Not recommended */
                                                    ViConstString channelName,
                                                    ViInt32 recordNumber,
                                                    ViInt32 retrievalOffset,
                                                    ViInt32 waveformSize,
                                                    ViReal64 minWaveform[],
                                                    ViReal64 maxWaveform[],
                                                    ViInt32* actualPoints,
                                                    ViReal64* initialX,
                                                    ViReal64* XIncrement);

ViStatus _VI_FUNC niScope_IsInvalidWfmElement ( ViSession vi, /* Not recommended */
                                                ViReal64 elementValue,
                                                ViBoolean* isInvalid);

/* Waveform Measurement Functions */
ViStatus _VI_FUNC niScope_FetchWaveformMeasurementStats (ViSession vi, /* Not recommended */
                                                         ViConstString channel,
                                                         ViInt32 recordNumber,
                                                         ViInt32 measFunction,
                                                         ViReal64* measurement,
                                                         ViReal64* mean,
                                                         ViReal64* stdev,
                                                         ViReal64* min,
                                                         ViReal64* max,
                                                         ViInt32* numInStats);

ViStatus _VI_FUNC niScope_FetchWaveformMeasurementArray (ViSession vi, /* Not recommended */
                                                         ViConstString channel,
                                                         ViInt32 recordNumber,
                                                         ViInt32 measFunction,
                                                         ViInt32 measArraySize,
                                                         ViReal64 measArray[],
                                                         ViInt32* actualPoints,
                                                         ViReal64* initialX,
                                                         ViReal64* XIncrement);

ViStatus _VI_FUNC niScope_ConfigureRefLevels (ViSession vi, /* Not recommended */
                                              ViReal64 low,
                                              ViReal64 mid,
                                              ViReal64 high);

ViStatus _VI_FUNC niScope_ReadWaveformMeasurement (ViSession vi, /* Not recommended */
                                                   ViConstString channel,
                                                   ViInt32 measFunction,
                                                   ViInt32 maxTime,
                                                   ViReal64* measurement);

ViStatus _VI_FUNC niScope_FetchWaveformMeasurement (ViSession vi, /* Not recommended */
                                                    ViConstString channel,
                                                    ViInt32 measFunction,
                                                    ViReal64* measurement);

ViStatus _VI_FUNC niScope_FetchMultiWaveformMeasurement (ViSession vi, /* Not recommended */
                                                         ViConstString channel,
                                                         ViInt32 recordNumber,
                                                         ViInt32 measFunction,
                                                         ViReal64* measurement);

ViStatus _VI_FUNC niScope_WaitForAcquisitionToFinish(ViSession vi,
                                                     ViInt32 maxTime );


ViStatus _VI_FUNC niScope_ConfigureTriggerOutput (ViSession vi, /* Not recommended */
                                                  ViInt32 triggerEvent,
                                                  ViConstString triggerOutput);

/*- IviScopeTVTrigger Extension -*/
ViStatus _VI_FUNC niScope_ConfigureTVTriggerSource (ViSession vi, /* Not recommended */
                                                    ViConstString source,
                                                    ViInt32 TVSignalFormat,
                                                    ViInt32 TVEvent,
                                                    ViInt32 TVPolarity);

ViStatus _VI_FUNC niScope_ConfigureTVTriggerLineNumber (ViSession vi, ViInt32 tvLineNumber); /* Not recommended */

/*- IviScopeGlitchTrigger Extension -*/
ViStatus _VI_FUNC niScope_ConfigureGlitchTriggerSource (ViSession vi, /* Not recommended */
                                                        ViConstString triggerSource,
                                                        ViReal64 level,
                                                        ViReal64 glitchWidth,
                                                        ViInt32 glitchPolarity,
                                                        ViInt32 glitchCondition);

/*- IviScopeWidthTrigger Extension -*/
ViStatus _VI_FUNC niScope_ConfigureWidthTriggerSource (ViSession vi,  /* Not recommended */
                                                       ViConstString triggerSource,
                                                       ViReal64 level,
                                                       ViReal64 widthLowThreshold,
                                                       ViReal64 widthHighTreshold,
                                                       ViInt32 widthPolarity,
                                                       ViInt32 widthCondition);

/*- IviScopeRuntTrigger Extension -*/
ViStatus _VI_FUNC niScope_ConfigureRuntTriggerSource (ViSession vi, /* Not recommended */
                                                      ViConstString triggerSource,
                                                      ViReal64 runtLowThreshold,
                                                      ViReal64 runtHighTreshold,
                                                      ViInt32 runtPolarity);

/* Calibrate */
/* Old function... use niScope_CalSelfCalibrate or refer to the external
   calibration documentations for procedures. */
ViStatus _VI_FUNC niScope_Calibrate (ViSession vi, /* Not recommended */
                                     ViConstString channel,
                                     ViInt32 calibrationOperation,
                                     ViReal64 referenceVoltage);

/* Error handlers */
ViStatus _VI_FUNC niScope_error_query (ViSession vi, /* Not recommended */
                                       ViInt32* errCode,
                                       ViChar errMessage[IVI_MAX_MESSAGE_BUF_SIZE]);

ViStatus _VI_FUNC niScope_GetErrorInfo (ViSession vi, /* Not recommended */
                                        ViStatus* primaryError,
                                        ViStatus* secondaryError,
                                        ViChar errorElaboration[IVI_MAX_MESSAGE_BUF_SIZE]);

ViStatus _VI_FUNC niScope_ClearErrorInfo (ViSession vi); /* Not recommended */

ViStatus _VI_FUNC niScope_error_message (ViSession vi,  /* Not recommended */
                                         ViStatus errorCode,
                                         ViChar errorMessage[IVI_MAX_MESSAGE_BUF_SIZE]);


/* Experimental prototype , subject to change, use niScope_FetchBinary instead */
ViStatus _VI_FUNC niScope_DirectDMAFetchBinary (ViSession vi,
                                                ViConstString channelList,
                                                ViReal64 timeout,
                                                ViInt32 numSamples,
                                                ViInt32 bufferSize,
                                                void* bufferAddress,
                                                struct niScope_wfmInfo* wfmInfo,
                                                ViUInt32* offsetToFirstSample);

/* Experimental prototype , subject to change - NOT RECOMMENDED */
ViStatus _VI_FUNC niScope_ExportAttributes (ViSession vi);
ViStatus _VI_FUNC niScope_ImportAttributes (ViSession vi);

/*--- Register Access Functions --------------------------------------------*/
ViStatus _VI_FUNC niScope_ReadRegister (ViSession vi,
                                        ViInt32 size,
                                        ViInt32 offset,
                                        ViUInt32* value);

ViStatus _VI_FUNC niScope_WriteRegister (ViSession vi,
                                         ViInt32 size,
                                         ViInt32 offset,
                                         ViUInt32 value);

#pragma pack(push,8)
struct niScope_PeakArrayInfo
{
   ViInt32 recordNumber;
   ViInt32 peakCount;
   ViReal64 triggerTime;
   ViReal64 triggerDelay;
   ViReal64 xIncrement;
};
#pragma pack(pop)

ViStatus _VI_FUNC niScope_FetchPeakArrayTime32Ampl16(ViSession vi,
                                                     ViInt32 maxPeaks,
                                                     ViReal64 timeout,
                                                     struct niScope_PeakArrayInfo *info,
                                                     ViUInt32 *peakTimes,
                                                     ViUInt16 *peakAmplitudes);

/*********************************************************
  Not Recommended error strings (these strings are subject
  to change)
  *********************************************************/

#define NISCOPE_WARNMSG_HEATER_CIRCUIT_TEMPERATURE     "Onboard temperature stabilization circuit requires calibration."
#define NISCOPE_WARNMSG_INVALID_DATA                   "Data acquired during the acquisition is possibly invalid. May be caused by high frequency transients or input voltage exceeding the maximum for given range."
#define NISCOPE_WARNMSG_CHANNEL_OVERLOAD               "The 50 ohm protection on one or more channels has been disabled because of excess signal power."
#define NISCOPE_WARNMSG_AUTOSETUP_NO_SIGNAL            "Auto Setup was unable to find a signal."
#define NISCOPE_WARNMSG_PLL_UNLOCKED                   "The PLL is not locked."
#define NISCOPE_WARNMSG_PLL_UNLOCKED_AND_ADC_OVERLOAD  "The PLL is not locked and the ADC has an overload."
#define NISCOPE_WARNMSG_TIMESTAMP_ROLLOVER             "The timestamp counter has rolled over."
#define NISCOPE_WARNMSG_ADC_OVERLOAD                   "One or more channels has an ADC overload."
#define NISCOPE_ERRMSG_SOFTWARE_FAILURE                "Software failure occurred during operation."
#define NISCOPE_ERRMSG_HARDWARE_FAILURE                "Hardware failure occurred during operation."
#define NISCOPE_ERRMSG_INSUFFICIENT_MEMORY             "Insufficient on-board memory available to perform the acquisition."
#define NISCOPE_ERRMSG_INVALID_DATA                    "Data acquired during the acquisition is invalid."
#define NISCOPE_ERRMSG_GAIN_CAL_FAILURE                "Unable to perform gain calibration"
#define NISCOPE_ERRMSG_SINE_CAL_FAILURE                "Unable to acquire valid sine wave for calibration"
#define NISCOPE_ERRMSG_LIN_CAL_FAILURE                 "Unable to calculate linearity coefficients"
#define NISCOPE_ERRMSG_ADC_CAL_FAILURE                 "ADC exceeds linearity specs"
#define NISCOPE_ERRMSG_ACQ_IN_PROGRESS                 "A previous acquisition is still in progress. If you are attempting to change an attribute, note you can only change fetch attributes while an acquisition is still in progress."
#define NISCOPE_ERRMSG_DATA_NOT_AVAILABLE              "Data acquired during the acquisition is not available."
#define NISCOPE_ERRMSG_HEATER_CIRCUIT_CAL_FAILURE      "Unable to calibrate onboard temperature stablization circuit."
#define NISCOPE_ERRMSG_FLEXRES_CONFIG_CORRUPT          "The FlexRes configuration files are corrupt, please reinstall niScope software or contact National Instruments."
#define NISCOPE_ERRMSG_GAIN_OFFSET_CAL_FAILURE         "Unable to perform gain/offset calibration."
#define NISCOPE_ERRMSG_CREATE_THREAD                   "Acquisition thread could not be created."
#define NISCOPE_ERRMSG_WRONG_PASSWORD                  "Password in EEPROM does not match the given password."
#define NISCOPE_ERRMSG_INVALID_GAIN                    "Invalid gain specified. Use the gain constants defined in the calibration header file."
#define NISCOPE_ERRMSG_INVALID_CAL_SESSION             "This function requires an external calibration session. Call niScope_CalStart instead of niScope_init to get the proper session type."
#define NISCOPE_ERRMSG_BAD_MEASUREMENT                 "The specified waveform measurement is not allowed with this function."
#define NISCOPE_ERRMSG_BUFFER_NOT_ACQUIRED             "Requested buffer has not been acquired yet."
#define NISCOPE_ERRMSG_TRIGGER_HAS_NOT_OCCURRED        "The trigger has not occurred for the requested buffer, so data cannot be fetched relative to the trigger."
#define NISCOPE_ERRMSG_ILLEGAL_RELATIVE_TO             "Illegal relativeTo parameter."
#define NISCOPE_ERRMSG_DATA_OVERWRITTEN                "The requested data has been overwritten in memory so it is no longer available for fetching."
#define NISCOPE_ERRMSG_INVALID_TIMESTAMP_EVENT_TAG     "Invalid timestamp event tag."
#define NISCOPE_ERRMSG_TIMEOUT_TRANSFERRING_TIMESTAMPS "Timeout transferring timestamps."
#define NISCOPE_ERRMSG_TIMEOUT_CHECKING_STATUS         "Timeout checking status."
#define NISCOPE_ERRMSG_TIMEOUT_TRANSFERRING_DATA       "Timeout transferring data."
#define NISCOPE_ERRMSG_PLL_FAILURE                     "PLL failure."
#define NISCOPE_ERRMSG_PAR_TO_SER_CONV_FAILURE         "Parallel to serial convertor failure."
#define NISCOPE_ERRMSG_DMA_CONFIG_ERROR                "DMA config error."
#define NISCOPE_ERRMSG_ILLEGAL_USER_OFFSET             "The user offset specified is not valid."
#define NISCOPE_ERRMSG_NOT_A_SCOPE                     "The specified resource name is not assigned to an NI digitizer.  Verify the resource name in Measurement & Automation Explorer (MAX).  \
To use a DAQmx device with a DAQ::N style name (e.g. DAQ::1), rename the device in MAX to N (e.g. 1)."
#define NISCOPE_ERRMSG_TIMEOUT_CLEARING_TIO            "Timeout clearing TIO."
#define NISCOPE_ERRMSG_RIS_DID_NOT_COMPLETE            "RIS did not complete so data is not available."
#define NISCOPE_ERRMSG_INVALID_RIS_METHOD              "RIS method is invalid."
#define NISCOPE_ERRMSG_INVALID_RIS_NUM_AVERAGES        "RIS num averages attribute is invalid. It must be greater than 0."
#define NISCOPE_ERRMSG_ILLEGAL_DATATYPE                "Illegal data type parameter. See niScope.h for legal defined values."
#define NISCOPE_ERRMSG_ATTRIBUTES_DIFFER_BY_CHANNEL    "Getting a channel based attribute value failed because the queried channels have different values.  Please specify a channel when querying a channel based attribute."
#define NISCOPE_ERRMSG_TRIGGER_DELAY_INVALID_WITH_RIS  "The trigger delay parameter to the configure trigger function must be zero during RIS acquisitions."
#define NISCOPE_ERRMSG_INITIATE_NOT_CALLED             "An acquisition has not been initiated."
#define NISCOPE_ERRMSG_INVALID_FUNCTION_USE            "This function may not be used for fetching multiple waveforms."
#define NISCOPE_ERRMSG_HOLDOFF_DELAY_NONZERO           "Specifying either trigger holdoff or trigger delay is allowed, but not both."
#define NISCOPE_ERRMSG_CHANNEL_NAME_TOO_LONG           "The channel name is too long."
#define NISCOPE_ERRMSG_DIGITIZER_ALREADY_IN_USE        "The digitizer is being used by another application or process."
#define NISCOPE_ERRMSG_SIM_MODEL_NOT_SUPPORTED         "Simulation does not support the selected model and board type."
#define NISCOPE_ERRMSG_SPECIFICDLL_LOAD_FAILURE        "The specific niScopeDAQ or niScopeDMF dll could not be loaded."
#define NISCOPE_ERRMSG_SPECIFICDLL_GET_ADDRESS_FAILURE "An exported function address could not be obtained from the specific niScopeDAQ or niScopeDMF dll."
#define NISCOPE_ERRMSG_TRIGGER_TYPE_INVALID            "The configure trigger type is invalid or not supported"
#define NISCOPE_ERRMSG_INVALID_FETCH_PARAMETERS        "The fetch parameters are not valid."
#define NISCOPE_ERRMSG_EXT_CAL_NOT_COMPLETE            "Attempt to store calibration constants without completing all the necessary external calibration steps.Consult the calibration procedure. \
Verify that all necessary steps are performed before closing the external calibration session."
#define NISCOPE_ERRMSG_EXT_CAL_CONSTS_INVALID          "External calibration constants are invalid.  Perform an external calibration. Contact National Instruments if you need additional information."
#define NISCOPE_ERRMSG_INVALID_NUM_WAVEFORMS           "This function may not be used for fetching multiple waveforms."

/* Not recommended */
#define NISCOPE_ERROR_CODES_AND_MSGS \
{NISCOPE_WARN_HEATER_CIRCUIT_TEMPERATURE,          NISCOPE_WARNMSG_HEATER_CIRCUIT_TEMPERATURE},    \
{NISCOPE_WARN_INVALID_DATA,                        NISCOPE_WARNMSG_INVALID_DATA},                  \
{NISCOPE_WARN_CHANNEL_OVERLOAD,                    NISCOPE_WARNMSG_CHANNEL_OVERLOAD},              \
{NISCOPE_WARN_AUTOSETUP_NO_SIGNAL,                 NISCOPE_WARNMSG_AUTOSETUP_NO_SIGNAL},           \
{NISCOPE_WARN_PLL_UNLOCKED,                        NISCOPE_WARNMSG_PLL_UNLOCKED},                  \
{NISCOPE_WARN_PLL_UNLOCKED_AND_ADC_OVERLOAD,       NISCOPE_WARNMSG_PLL_UNLOCKED_AND_ADC_OVERLOAD}, \
{NISCOPE_WARN_TIMESTAMP_ROLLOVER,                  NISCOPE_WARNMSG_TIMESTAMP_ROLLOVER},            \
{NISCOPE_WARN_ADC_OVERLOAD,                        NISCOPE_WARNMSG_ADC_OVERLOAD},                  \
{NISCOPE_ERROR_SOFTWARE_FAILURE,                   NISCOPE_ERRMSG_SOFTWARE_FAILURE},               \
{NISCOPE_ERROR_HARDWARE_FAILURE,                   NISCOPE_ERRMSG_HARDWARE_FAILURE},               \
{NISCOPE_ERROR_INSUFFICIENT_MEMORY,                NISCOPE_ERRMSG_INSUFFICIENT_MEMORY},            \
{NISCOPE_ERROR_INVALID_DATA,                       NISCOPE_ERRMSG_INVALID_DATA},                   \
{NISCOPE_ERROR_GAIN_CAL_FAILURE,                   NISCOPE_ERRMSG_GAIN_CAL_FAILURE},               \
{NISCOPE_ERROR_SINE_CAL_FAILURE,                   NISCOPE_ERRMSG_SINE_CAL_FAILURE},               \
{NISCOPE_ERROR_LIN_CAL_FAILURE,                    NISCOPE_ERRMSG_LIN_CAL_FAILURE},                \
{NISCOPE_ERROR_ADC_CAL_FAILURE,                    NISCOPE_ERRMSG_ADC_CAL_FAILURE},                \
{NISCOPE_ERROR_ACQ_IN_PROGRESS,                    NISCOPE_ERRMSG_ACQ_IN_PROGRESS},                \
{NISCOPE_ERROR_DATA_NOT_AVAILABLE,                 NISCOPE_ERRMSG_DATA_NOT_AVAILABLE},             \
{NISCOPE_ERROR_HEATER_CIRCUIT_CAL_FAILURE,         NISCOPE_ERRMSG_HEATER_CIRCUIT_CAL_FAILURE},     \
{NISCOPE_ERROR_FLEXRES_CONFIG_CORRUPT,             NISCOPE_ERRMSG_FLEXRES_CONFIG_CORRUPT},         \
{NISCOPE_ERROR_GAIN_OFFSET_CAL_FAILURE,            NISCOPE_ERRMSG_GAIN_OFFSET_CAL_FAILURE},        \
{NISCOPE_ERROR_CREATE_THREAD,                      NISCOPE_ERRMSG_CREATE_THREAD},                  \
{NISCOPE_ERROR_WRONG_PASSWORD,                     NISCOPE_ERRMSG_WRONG_PASSWORD},                 \
{NISCOPE_ERROR_INVALID_GAIN,                       NISCOPE_ERRMSG_INVALID_GAIN},                   \
{NISCOPE_ERROR_INVALID_CAL_SESSION,                NISCOPE_ERRMSG_INVALID_CAL_SESSION},            \
{NISCOPE_ERROR_BAD_MEASUREMENT,                    NISCOPE_ERRMSG_BAD_MEASUREMENT},                \
{NISCOPE_ERROR_BUFFER_NOT_ACQUIRED,                NISCOPE_ERRMSG_BUFFER_NOT_ACQUIRED},            \
{NISCOPE_ERROR_TRIGGER_HAS_NOT_OCCURRED,           NISCOPE_ERRMSG_TRIGGER_HAS_NOT_OCCURRED},       \
{NISCOPE_ERROR_ILLEGAL_RELATIVE_TO,                NISCOPE_ERRMSG_ILLEGAL_RELATIVE_TO},            \
{NISCOPE_ERROR_DATA_OVERWRITTEN,                   NISCOPE_ERRMSG_DATA_OVERWRITTEN},               \
{NISCOPE_ERROR_INVALID_TIMESTAMP_EVENT_TAG,        NISCOPE_ERRMSG_INVALID_TIMESTAMP_EVENT_TAG},    \
{NISCOPE_ERROR_TIMEOUT_TRANSFERRING_TIMESTAMPS,    NISCOPE_ERRMSG_TIMEOUT_TRANSFERRING_TIMESTAMPS},\
{NISCOPE_ERROR_TIMEOUT_CHECKING_STATUS,            NISCOPE_ERRMSG_TIMEOUT_CHECKING_STATUS},        \
{NISCOPE_ERROR_TIMEOUT_TRANSFERRING_DATA,          NISCOPE_ERRMSG_TIMEOUT_TRANSFERRING_DATA},      \
{NISCOPE_ERROR_PLL_FAILURE,                        NISCOPE_ERRMSG_PLL_FAILURE},                    \
{NISCOPE_ERROR_PAR_TO_SER_CONV_FAILURE,            NISCOPE_ERRMSG_PAR_TO_SER_CONV_FAILURE},        \
{NISCOPE_ERROR_DMA_CONFIG_ERROR,                   NISCOPE_ERRMSG_DMA_CONFIG_ERROR},               \
{NISCOPE_ERROR_ILLEGAL_USER_OFFSET,                NISCOPE_ERRMSG_ILLEGAL_USER_OFFSET},            \
{NISCOPE_ERROR_NOT_A_SCOPE,                        NISCOPE_ERRMSG_NOT_A_SCOPE},                    \
{NISCOPE_ERROR_TIMEOUT_CLEARING_TIO,               NISCOPE_ERRMSG_TIMEOUT_CLEARING_TIO},           \
{NISCOPE_ERROR_RIS_DID_NOT_COMPLETE,               NISCOPE_ERRMSG_RIS_DID_NOT_COMPLETE},           \
{NISCOPE_ERROR_INVALID_RIS_METHOD,                 NISCOPE_ERRMSG_INVALID_RIS_METHOD},             \
{NISCOPE_ERROR_INVALID_RIS_NUM_AVERAGES,           NISCOPE_ERRMSG_INVALID_RIS_NUM_AVERAGES},       \
{NISCOPE_ERROR_ILLEGAL_DATATYPE,                   NISCOPE_ERRMSG_ILLEGAL_DATATYPE},               \
{NISCOPE_ERROR_ATTRIBUTES_DIFFER_BY_CHANNEL,       NISCOPE_ERRMSG_ATTRIBUTES_DIFFER_BY_CHANNEL},   \
{NISCOPE_ERROR_TRIGGER_DELAY_INVALID_WITH_RIS,     NISCOPE_ERRMSG_TRIGGER_DELAY_INVALID_WITH_RIS}, \
{NISCOPE_ERROR_INITIATE_NOT_CALLED,                NISCOPE_ERRMSG_INITIATE_NOT_CALLED},            \
{NISCOPE_ERROR_INVALID_FUNCTION_USE,               NISCOPE_ERRMSG_INVALID_FUNCTION_USE},           \
{NISCOPE_ERROR_HOLDOFF_DELAY_NONZERO,              NISCOPE_ERRMSG_HOLDOFF_DELAY_NONZERO},          \
{NISCOPE_ERROR_CHANNEL_NAME_TOO_LONG,              NISCOPE_ERRMSG_CHANNEL_NAME_TOO_LONG},          \
{NISCOPE_ERROR_DIGITIZER_ALREADY_IN_USE,           NISCOPE_ERRMSG_DIGITIZER_ALREADY_IN_USE},       \
{NISCOPE_ERROR_SIM_MODEL_NOT_SUPPORTED,            NISCOPE_ERRMSG_SIM_MODEL_NOT_SUPPORTED},        \
{NISCOPE_ERROR_SPECIFICDLL_LOAD_FAILURE,           NISCOPE_ERRMSG_SPECIFICDLL_LOAD_FAILURE},       \
{NISCOPE_ERROR_SPECIFICDLL_GET_ADDRESS_FAILURE,    NISCOPE_ERRMSG_SPECIFICDLL_GET_ADDRESS_FAILURE},\
{NISCOPE_ERROR_TRIGGER_TYPE_INVALID,               NISCOPE_ERRMSG_TRIGGER_TYPE_INVALID},           \
{NISCOPE_ERROR_INVALID_FETCH_PARAMETERS,           NISCOPE_ERRMSG_INVALID_FETCH_PARAMETERS},       \
{NISCOPE_ERROR_INVALID_NUM_WAVEFORMS,              NISCOPE_ERRMSG_INVALID_NUM_WAVEFORMS},          \
{NISCOPE_ERROR_EXT_CAL_NOT_COMPLETE,               NISCOPE_ERRMSG_EXT_CAL_NOT_COMPLETE},           \
{NISCOPE_ERROR_EXT_CAL_CONSTS_INVALID,             NISCOPE_ERRMSG_EXT_CAL_CONSTS_INVALID}

/*********************************************************
  Functions reserved for class driver use only.
  End-users should not call these functions.
  *********************************************************/
ViStatus _VI_FUNC  niScope_IviInit (ViRsrc resourceName,
                                    ViBoolean IDQuery,
                                    ViBoolean reset,
                                    ViSession vi);

ViStatus _VI_FUNC  niScope_IviClose (ViSession vi);


   //- Obsolete Inherent Instrument Attributes and functions
   //- These attributes and functions have been deprecated and may not
   //  be supported in future versions of this driver.
// use NISCOPE_ATTR_QUERY_INSTRUMENT_STATUS instead
#define NISCOPE_ATTR_QUERY_INSTR_STATUS       NISCOPE_ATTR_QUERY_INSTRUMENT_STATUS
// use NISCOPE_ATTR_SPECIFIC_DRIVER_PREFIX instead
#define NISCOPE_ATTR_SPECIFIC_PREFIX          NISCOPE_ATTR_SPECIFIC_DRIVER_PREFIX
// use NISCOPE_ATTR_CHANNEL_COUNT instead
#define NISCOPE_ATTR_NUM_CHANNELS             NISCOPE_ATTR_CHANNEL_COUNT
// use NISCOPE_ATTR_SPECIFIC_DRIVER_REVISION instead
#define NISCOPE_ATTR_DRIVER_REVISION          NISCOPE_ATTR_SPECIFIC_DRIVER_REVISION
// use NISCOPE_ATTR_IO_RESOURCE_DESCRIPTOR instead
#define NISCOPE_ATTR_RESOURCE_DESCRIPTOR NISCOPE_ATTR_IO_RESOURCE_DESCRIPTOR

// do not use
#define NISCOPE_ATTR_DRIVER_MAJOR_VERSION     IVISCOPE_ATTR_DRIVER_MAJOR_VERSION
#define NISCOPE_ATTR_DRIVER_MINOR_VERSION     IVISCOPE_ATTR_DRIVER_MINOR_VERSION
#define NISCOPE_ATTR_ENGINE_MAJOR_VERSION     IVISCOPE_ATTR_ENGINE_MAJOR_VERSION
#define NISCOPE_ATTR_ENGINE_MINOR_VERSION     IVISCOPE_ATTR_ENGINE_MINOR_VERSION
#define NISCOPE_ATTR_ENGINE_REVISION          IVISCOPE_ATTR_ENGINE_REVISION
#define NISCOPE_ATTR_IO_SESSION               IVISCOPE_ATTR_IO_SESSION
#define NISCOPE_ATTR_DEFER_UPDATE             IVI_ATTR_DEFER_UPDATE
#define NISCOPE_ATTR_RETURN_DEFERRED_VALUES   IVI_ATTR_RETURN_DEFERRED_VALUES
#define NISCOPE_ATTR_PRIMARY_ERROR            IVISCOPE_ATTR_PRIMARY_ERROR
#define NISCOPE_ATTR_SECONDARY_ERROR          IVISCOPE_ATTR_SECONDARY_ERROR
#define NISCOPE_ATTR_ERROR_ELABORATION        IVISCOPE_ATTR_ERROR_ELABORATION

   // Obsolete Specific Attributes.
// use NISCOPE_ATTR_MAX_INPUT_FREQUENCY instead
#define NISCOPE_ATTR_BANDWIDTH                IVISCOPE_ATTR_MAX_INPUT_FREQUENCY
#define NISCOPE_ATTR_TRIGGER_OUTPUT_EVENT     (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 10L)  /* ViInt32              */
#define NISCOPE_ATTR_TRIGGER_OUTPUT_SOURCE    (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 11L)  /* ViString             */
#define NISCOPE_ATTR_EXPORT_SAMP_CLK_OUTPUT_TERM    NISCOPE_ATTR_EXPORTED_SAMPLE_CLOCK_OUTPUT_TERMINAL  /* ViString */
#define NISCOPE_ATTR_SLAVE_TRIGGER_DELAY              (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 46L) /* ViReal64 */
#define NISCOPE_ATTR_TRIGGER_TO_STAR_DELAY            (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 47L) /* ViReal64 */
#define NISCOPE_ATTR_TRIGGER_TO_RTSI_DELAY            (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 48L) /* ViReal64 */
#define NISCOPE_ATTR_TRIGGER_TO_PFI_DELAY             (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 49L) /* ViReal64 */
#define NISCOPE_ATTR_TRIGGER_FROM_STAR_DELAY          (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 50L) /* ViReal64 */
#define NISCOPE_ATTR_TRIGGER_FROM_RTSI_DELAY          (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 51L) /* ViReal64 */
#define NISCOPE_ATTR_TRIGGER_FROM_PFI_DELAY           (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 52L) /* ViReal64 */
#define NISCOPE_ATTR_RECORD_ARM_SOURCE                (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 65L) /* ViString */
#define NISCOPE_ATTR_5102_ADJUST_PRETRIGGER_SAMPLES   (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 85L)  /* ViBoolean */

   /*- Every line called by configure trigger output can have a different event -*/
#define NISCOPE_ATTR_RTSI0_TRIGGER_OUTPUT_EVENT       (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 54L) /* ViInt32  */
#define NISCOPE_ATTR_RTSI1_TRIGGER_OUTPUT_EVENT       (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 55L) /* ViInt32  */
#define NISCOPE_ATTR_RTSI2_TRIGGER_OUTPUT_EVENT       (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 56L) /* ViInt32  */
#define NISCOPE_ATTR_RTSI3_TRIGGER_OUTPUT_EVENT       (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 57L) /* ViInt32  */
#define NISCOPE_ATTR_RTSI4_TRIGGER_OUTPUT_EVENT       (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 58L) /* ViInt32  */
#define NISCOPE_ATTR_RTSI5_TRIGGER_OUTPUT_EVENT       (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 59L) /* ViInt32  */
#define NISCOPE_ATTR_RTSI6_TRIGGER_OUTPUT_EVENT       (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 60L) /* ViInt32  */
#define NISCOPE_ATTR_PFI1_TRIGGER_OUTPUT_EVENT        (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 61L) /* ViInt32  */
#define NISCOPE_ATTR_PFI2_TRIGGER_OUTPUT_EVENT        (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 62L) /* ViInt32  */
#define NISCOPE_ATTR_STAR_TRIGGER_OUTPUT_EVENT        (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 63L) /* ViInt32  */

   /*- Attributes for the 5620 Digital Down Converter -*/
#define NISCOPE_ATTR_DDC_NCO_FREQUENCY                   (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 1000)    /* ViReal64  */
#define NISCOPE_ATTR_DDC_NCO_PHASE                       (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 1001)    /* ViReal64  */
#define NISCOPE_ATTR_DDC_ENABLE                          (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 1003)    /* ViBoolean */
#define NISCOPE_ATTR_DDC_CIC_DECIMATION                  (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 1010)    /* ViInt32   */
#define NISCOPE_ATTR_DDC_CIC_SHIFT_GAIN                  (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 1011)    /* ViInt32   */
#define NISCOPE_ATTR_DDC_DISCRIMINATOR_ENABLED           (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 1020)    /* ViBoolean */
#define NISCOPE_ATTR_DDC_DISCRIMINATOR_FIR_DECIMATION    (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 1021)    /* ViInt32   */
#define NISCOPE_ATTR_DDC_DISCRIMINATOR_FIR_SYMMETRY      (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 1022)    /* ViInt32   */
#define NISCOPE_ATTR_DDC_DISCRIMINATOR_FIR_SYMMETRY_TYPE (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 1023)    /* ViInt32   */
#define NISCOPE_ATTR_DDC_DISCRIMINATOR_FIR_NUM_TAPS      (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 1024)    /* ViInt32   */
#define NISCOPE_ATTR_DDC_DISCRIMINATOR_DELAY             (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 1025)    /* ViInt32   */
#define NISCOPE_ATTR_DDC_DISCRIMINATOR_FIR_INPUT_SOURCE  (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 1026)    /* ViInt32   */
#define NISCOPE_ATTR_DDC_DISCRIMINATOR_PHASE_MULTIPLIER  (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 1027)    /* ViInt32   */
#define NISCOPE_ATTR_DDC_PFIR_DECIMATION                 (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 1030)    /* ViInt32   */
#define NISCOPE_ATTR_DDC_PFIR_SYMMETRY                   (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 1031)    /* ViInt32   */
#define NISCOPE_ATTR_DDC_PFIR_SYMMETRY_TYPE              (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 1032)    /* ViInt32   */
#define NISCOPE_ATTR_DDC_PFIR_NUM_TAPS                   (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 1033)    /* ViInt32   */
#define NISCOPE_ATTR_DDC_PFIR_REAL_OR_COMPLEX            (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 1034)    /* ViInt32   */
#define NISCOPE_ATTR_DDC_AGC_UPPER_GAIN_LIMIT            (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 1040)    /* ViReal64  */
#define NISCOPE_ATTR_DDC_AGC_LOWER_GAIN_LIMIT            (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 1041)    /* ViReal64  */
#define NISCOPE_ATTR_DDC_AGC_LOOP_GAIN_0_EXPONENT        (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 1042)    /* ViInt32   */
#define NISCOPE_ATTR_DDC_AGC_LOOP_GAIN_0_MANTISSA        (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 1043)    /* ViInt32   */
#define NISCOPE_ATTR_DDC_AGC_LOOP_GAIN_1_EXPONENT        (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 1044)    /* ViInt32   */
#define NISCOPE_ATTR_DDC_AGC_LOOP_GAIN_1_MANTISSA        (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 1045)    /* ViInt32   */
#define NISCOPE_ATTR_DDC_AGC_THRESHOLD                   (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 1046)    /* ViInt32   */
#define NISCOPE_ATTR_DDC_AGC_AVERAGE_CONTROL             (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 1047)    /* ViInt32   */
#define NISCOPE_ATTR_DDC_HALFBAND_BYPASSED               (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 1050)    /* ViBoolean */
#define NISCOPE_ATTR_DDC_HALFBAND_1_ENABLED              (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 1051)    /* ViBoolean */
#define NISCOPE_ATTR_DDC_HALFBAND_2_ENABLED              (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 1052)    /* ViBoolean */
#define NISCOPE_ATTR_DDC_HALFBAND_3_ENABLED              (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 1053)    /* ViBoolean */
#define NISCOPE_ATTR_DDC_HALFBAND_4_ENABLED              (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 1054)    /* ViBoolean */
#define NISCOPE_ATTR_DDC_HALFBAND_5_ENABLED              (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 1055)    /* ViBoolean */
#define NISCOPE_ATTR_DDC_AOUT_PARALLEL_OUTPUT_SOURCE        (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 1070) /* ViInt32   */
#define NISCOPE_ATTR_DDC_BOUT_PARALLEL_OUTPUT_SOURCE        (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 1071) /* ViInt32   */
#define NISCOPE_ATTR_DDC_TEST_SINE_COSINE                   (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 1072) /* ViBoolean */
#define NISCOPE_ATTR_DDC_COORDINATE_CONVERTER_INPUT         (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 1073) /* ViInt32   */
#define NISCOPE_ATTR_DDC_Q_INPUT_TO_COORD_CONVERTER_INPUT   (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 1074) /* ViInt32   */
#define NISCOPE_ATTR_DDC_SYNCOUT_CLK_SELECT              (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 1080)    /* ViInt32   */
#define NISCOPE_ATTR_DDC_TIMING_NCO_PHASE_ACCUM_LOAD     (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 1120)    /* ViBoolean */
#define NISCOPE_ATTR_DDC_TIMING_NCO_CLEAR_PHASE_ACCUM    (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 1121)    /* ViBoolean */
#define NISCOPE_ATTR_DDC_TIMING_NCO_ENABLE_OFFSET_FREQ   (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 1122)    /* ViBoolean */
#define NISCOPE_ATTR_DDC_TIMING_NCO_NUM_OFFSET_FREQ_BITS (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 1123)    /* ViInt32   */
#define NISCOPE_ATTR_DDC_TIMING_NCO_CENTER_FREQUENCY     (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 1124)    /* ViInt32   */
#define NISCOPE_ATTR_DDC_TIMING_NCO_PHASE_OFFSET         (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 1125)    /* ViInt32   */
#define NISCOPE_ATTR_DDC_RESAMPLER_FILTER_MODE_SELECT    (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 1126)    /* ViInt32   */
#define NISCOPE_ATTR_DDC_RESAMPLER_BYPASS                (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 1127)    /* ViBoolean */
#define NISCOPE_ATTR_DDC_RESAMPLER_OUTPUT_PULSE_DELAY    (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 1128)    /* ViInt32   */
#define NISCOPE_ATTR_DDC_NCO_DIVIDE                      (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 1129)    /* ViInt32   */
#define NISCOPE_ATTR_DDC_REFERENCE_DIVIDE                (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 1130)    /* ViInt32   */
#define NISCOPE_ATTR_ENABLE_DITHER                       (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 1300)    /* ViBoolean */
#define NISCOPE_ATTR_DDC_COMBINED_DECIMATION             (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 1301)    /* ViInt32   */
#define NISCOPE_ATTR_SERIAL_DAC_CAL_VOLTAGE              (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 1302)    /* ViReal64  */
#define NISCOPE_ATTR_DELAY_BEFORE_INITIATE               (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 1304)    /* ViReal64  */
#define NISCOPE_ATTR_DDC_DIRECT_REGISTER_ADDRESS         (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 1305)    /* ViInt32   */
#define NISCOPE_ATTR_DDC_DIRECT_REGISTER_DATA            (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 1306)    /* ViInt32   */

// Obsolete Specific Values
// NISCOPE_ATTR_TRIGGER_OUTPUT_EVENT / ConfigureTriggerOutput values
#define NISCOPE_VAL_NO_EVENT                          0
#define NISCOPE_VAL_STOP_TRIGGER_EVENT                1
#define NISCOPE_VAL_START_TRIGGER_EVENT               2

/*- NISCOPE_ATTR_TRIGGER_TYPE Values -*/
#define NISCOPE_VAL_EDGE                         IVISCOPE_VAL_EDGE_TRIGGER
#define NISCOPE_VAL_HYSTERESIS                   (IVISCOPE_VAL_TRIGGER_TYPE_SPECIFIC_EXT_BASE + 1L)
#define NISCOPE_VAL_DIGITAL                      (IVISCOPE_VAL_TRIGGER_TYPE_SPECIFIC_EXT_BASE + 2L)
#define NISCOPE_VAL_WINDOW                       (IVISCOPE_VAL_TRIGGER_TYPE_SPECIFIC_EXT_BASE + 3L)

/*- NISCOPE_ATTR_MAX_INPUT_FREQUENCY Values -*/
#define NISCOPE_VAL_FULL_BANDWIDTH                    0.0

/* NISCOPE_ATTR_DDC_PFIR_SYMMETRY_TYPE and NISCOPE_ATTR_DDC_DISCRIMINATOR_FIR_SYMMETRY_TYPE Values */
#define NISCOPE_VAL_EVEN  0
#define NISCOPE_VAL_ODD   1

/* NISCOPE_ATTR_DDC_PFIR_SYMMETRY and NISCOPE_ATTR_DDC_DISCRIMINATOR_FIR_SYMMETRY Values */
#define NISCOPE_VAL_SYMMETRIC   0
#define NISCOPE_VAL_ASYMMETRIC  1

/* NISCOPE_ATTR_DDC_DISCRIMINATOR_FIR_INPUT_SOURCE Values */
#define NISCOPE_VAL_PHASE       0
#define NISCOPE_VAL_MAGNITUDE   1
#define NISCOPE_VAL_RESAMPLER   2

/* NISCOPE_ATTR_DDC_AOUT_PARALLEL_OUTPUT_SOURCE and NISCOPE_ATTR_DDC_BOUT_PARALLEL_OUTPUT_SOURCE Values */
#define NISCOPE_VAL_I_DATA             0  /* Valid for AOUT only           */
#define NISCOPE_VAL_MAGNITUDE_DATA     1  /* Valid for both AOUT and BOUT  */
#define NISCOPE_VAL_FREQ_DATA          2  /* Valid for AOUT only           */
#define NISCOPE_VAL_Q_DATA             3  /* Valid for BOUT only           */
#define NISCOPE_VAL_PHASE_DATA         4  /* Valid for BOUT only           */

/*- These defines are for use with older programs only.  The driver now uses an
    IEEE defined Nan (Not a Number) value to indicate an empty point in the waveform.
    Use the niScope_IsInvalidWfmElement function to determine if an element of a waveform
    array is invalid. -*/
#define NISCOPE_MAX_VALID_WFM_VOLTAGE            (1.0E+300)
#define NISCOPE_INVALID_WFM_VOLTAGE              (1.0E+301)

/*- Clocking Terminal Values -*/
#define NISCOPE_VAL_PXI_CLOCK                    "VAL_PXI_CLOCK"

/* NI-SCOPE 3.7 changed the name of the Advanced P2P attribute */
#define NISCOPE_ATTR_P2P_ADVANCED_ATTRIBUTES_ENABLED  NISCOPE_ATTR_P2P_MANUAL_CONFIGURATION_ENABLED

/* NI-Scope 3.9.1 - PCIe-5155 */
#define NISCOPE_ATTR_FETCH_DATA_JUSTIFICATION      (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 233L) /* ViInt32 */

#define NISCOPE_VAL_JUSTIFY_LEFT          1
#define NISCOPE_VAL_JUSTIFY_RIGHT         2

//Level sensitive start trigger.  Added for PCIe-5155
#define NISCOPE_ATTR_ENABLE_LEVEL_ACQ_ARM          (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 410L) /* ViBoolean */


#define NISCOPE_ATTR_SYNC_TRIG_OUT_SOURCE          (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 411L) /* ViReal64 */
#define NISCOPE_ATTR_SYNC_TRIG_OUT_PULSE_WIDTH     (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 412L) /* ViReal64 */
#define NISCOPE_ATTR_SYNC_TRIG_OUT_PERIOD          (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 413L) /* ViReal64 */

#define NISCOPE_VAL_SYNC_TRIG_NONE        0
#define NISCOPE_VAL_SYNC_TRIG_REFERENCE   1
#define NISCOPE_VAL_SYNC_TRIG_TIMER       2

#define NISCOPE_ATTR_NO_RESET_DURING_SELF_CAL      (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 415L) /* ViBoolean */

#define NISCOPE_ATTR_ENABLE_PATTERN_NOISE_OSP      (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 418L) /* ViBoolean */
#define NISCOPE_ATTR_PATTERN_NOISE_OSP_OFFSET      (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 419L) /* ViInt32 */

//Synchronization Events
#define NISCOPE_ATTR_ACQUISITION_ACTIVE_EVENT_OUTPUT_TERMINAL     (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 381L) /* ViString */
#define NISCOPE_ATTR_END_OF_WAVEFORM_EVENT_OUTPUT_TERMINAL  (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 417L) /* ViString */

//Waveform Averaging
#define NISCOPE_ATTR_WFM_AVG_ENABLED                       (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 383L) /* ViBoolean */
#define NISCOPE_ATTR_WFM_AVG_NUMBER_OF_WAVEFORMS           (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 384L) /* ViInt64 */
#define NISCOPE_ATTR_OSP_TRIGGER_DELAY_TIME                (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 416L) /* ViReal64,  seconds */
#define NISCOPE_ATTR_ACCUM_SAMPLES_TO_DISCARD              (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 421L) /* ViInt32 */

//Thresholding
#define NISCOPE_ATTR_THRESHOLD_ENABLED                     (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 385L) /* ViBoolean */
#define NISCOPE_ATTR_THRESHOLD_LEVEL                       (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 386L) /* ViReal64 */
#define NISCOPE_ATTR_THRESHOLD_FLOOR                       (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 387L) /* ViReal64 */
#define NISCOPE_ATTR_THRESHOLD_OFFSET                      (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 388L) /* ViReal64 */
#define NISCOPE_ATTR_THRESHOLD_POLARITY                    (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 389L) /* ViReal64 */
#define NISCOPE_ATTR_THRESHOLD_VALUE_TYPE                  (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 420L) /* ViInt32 */

/*- NISCOPE_ATTR_THRESHOLD_POLARITY Values -*/
#define NISCOPE_VAL_THRESHOLD_SUPPRESS_BELOW                                   0
#define NISCOPE_VAL_THRESHOLD_SUPPRESS_ABOVE                                   1

/*- NISCOPE_ATTR_THRESHOLD_VALUE_TYPE Values -*/
#define NISCOPE_VAL_THRESHOLD_VALUE_TYPE_VOLTS                                 0
#define NISCOPE_VAL_THRESHOLD_VALUE_TYPE_CODES                                 1

//Local Peak Detection
#define NISCOPE_ATTR_LOCAL_PEAK_DETECTION_ENABLED          (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 390L) /* ViBoolean */
#define NISCOPE_ATTR_LOCAL_PEAK_DETECTION_ALGORITHM        (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 391L) /* ViInt32 */
#define NISCOPE_ATTR_LOCAL_PEAK_DETECTION_FLOOR            (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 392L) /* ViReal64 */
#define NISCOPE_ATTR_LOCAL_PEAK_DETECTION_MODE             (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 393L) /* ViInt32 */

/*- NISCOPE_ATTR_LOCAL_PEAK_DETECTION_ALGORITHM Values -*/
#define NISCOPE_VAL_PEAKS                                                      0
#define NISCOPE_VAL_VALLEYS                                                    1

/*- NISCOPE_ATTR_LOCAL_PEAK_DETECTION_MODE Values -*/
#define NISCOPE_VAL_MODE_GREATER_THAN                                          1

#define NISCOPE_ATTR_PEAK_ARRAY_DETECTION_WINDOW            (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 430L) /* ViInt32 */
#define NISCOPE_ATTR_PEAK_ARRAY_INTERPOLATION_WINDOW        (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 431L) /* ViInt32 */

//Other OSP
#define NISCOPE_ATTR_INVERT_DATA_ENABLED                    (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 414L) /* ViBoolean */

#define NISCOPE_ATTR_UNSIGNED_FETCH_ENABLED                 (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 422L) /* ViBoolean */

#define NISCOPE_ATTR_ACQUISITION_STATE                      (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 442L) /* ViInt32 */

/* NISCOPE_ATTR_ACQUISITION_STATE values */
#define NISCOPE_VAL_ACQUISITION_STATE_UNKNOWN                        0
#define NISCOPE_VAL_ACQUISITION_STATE_ERROR                          1
#define NISCOPE_VAL_ACQUISITION_STATE_IDLE                           2
#define NISCOPE_VAL_ACQUISITION_STATE_WAIT_FOR_START_TRIGGER         3
#define NISCOPE_VAL_ACQUISITION_STATE_MIN_PRETRIG_SAMPLING           4
#define NISCOPE_VAL_ACQUISITION_STATE_WAIT_FOR_TRIGGER_HOLDOFF       5
#define NISCOPE_VAL_ACQUISITION_STATE_WAIT_FOR_ARM_REFERENCE_TRIGGER 6
#define NISCOPE_VAL_ACQUISITION_STATE_WAIT_FOR_REFERENCE_TRIGGER     7
#define NISCOPE_VAL_ACQUISITION_STATE_POSTTRIG_SAMPLING              8
#define NISCOPE_VAL_ACQUISITION_STATE_WAIT_FOR_ADVANCE_TRIGGER       9

/****************************************************************************
 *---------------------------- End Include File ----------------------------*
 ****************************************************************************/

#if defined(__cplusplus) || defined(__cplusplus__)
}
#endif

#endif /* __NISCOPE_HEADER_OBSOLETE */
