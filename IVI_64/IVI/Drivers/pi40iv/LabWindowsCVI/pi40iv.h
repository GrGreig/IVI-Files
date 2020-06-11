/*****************************************************************************
 *             Pickering Interfaces PXI IVI Switch Driver                    *
 * ------------------------------------------------------------------------- *
 *  IVI driver template:                                                     *
 *  Copyright 1998 National Instruments Corporation.  All Rights Reserved.   *
 *  Specific card implementations:											 *
 *	Copyright 2003 Pickering Interfaces Ltd.  All Rights Reserved.			 *
 *                                                                           *
 *****************************************************************************
 *  PXI Instrument Driver                                                    *
 *  LabWindows/CVI 5.0 Instrument Driver                                     *
 *  Original Release: 2003-02-24                                             *
 *  By: Filip Åström, Pickering Interfaces AB                                *
 *      PH. +46 (0)340-690669   Fax +46 (0)340-690668   					 *
 *		Dave Howe, Pickering Interfaces ltd.							     *
 *      PH. +44 (0)1255-428141  Fax +44 (0)1255-475058  					 *
 *																			 *
 *  Title:    pi40iv.h                                                       *
 *  Purpose:  Pickering Interfaces PXI IVI Switch Driver declarations.       *
 *                                                                           *
 *****************************************************************************/

#ifndef __PI40IV_HEADER
#define __PI40IV_HEADER

#include <ivi.h>
#include <iviswtch.h>

#if defined(__cplusplus) || defined(__cplusplus__)
extern "C" {
#endif



#ifdef PI40IV_EXPORTS
#define _PI40IV_API __declspec(dllexport)
#else
#define _PI40IV_API __declspec(dllimport)
#endif

	
/****************************************************************************
 *----------------- Instrument Driver Revision Information -----------------*
 ****************************************************************************/
#define PI40IV_MAJOR_VERSION                2     /* Instrument driver major version   */
#define PI40IV_MINOR_VERSION                600    /* Instrument driver minor version   */

#define PI40IV_CLASS_SPEC_MAJOR_VERSION     3     /* Class specification major version */
#define PI40IV_CLASS_SPEC_MINOR_VERSION     0     /* Class specification minor version */

#define PI40IV_SUPPORTED_INSTRUMENT_MODELS  "System40,System45,System50,System60"
#define PI40IV_DRIVER_VENDOR                "Pickering Interfaces Ltd."
#define PI40IV_DRIVER_DESCRIPTION           "Pickering PXI IVI Switch Driver"
#define PI40IV_IO_SESSION_TYPE              "VISA"



/****************************************************************************
 *---------------------------- Attribute Defines ---------------------------*
 ****************************************************************************/
    /*- IVI Inherent Instrument Attributes ---------------------------------*/

        /* User Options */
#define PI40IV_ATTR_RANGE_CHECK                   IVI_ATTR_RANGE_CHECK                    /* ViBoolean */
#define PI40IV_ATTR_QUERY_INSTRUMENT_STATUS       IVI_ATTR_QUERY_INSTR_STATUS			  /* ViBoolean */
#define PI40IV_ATTR_CACHE                         IVI_ATTR_CACHE                          /* ViBoolean */
#define PI40IV_ATTR_SIMULATE                      IVI_ATTR_SIMULATE                       /* ViBoolean */
#define PI40IV_ATTR_RECORD_COERCIONS              IVI_ATTR_RECORD_COERCIONS               /* ViBoolean */

        /* Instrument Capabilities */
#define PI40IV_ATTR_CHANNEL_COUNT				  IVI_ATTR_CHANNEL_COUNT				  /* ViInt32,  read-only  */
#define PI40IV_ATTR_GROUP_CAPABILITIES            IVI_ATTR_GROUP_CAPABILITIES             /* ViString, read-only  */

        /* Driver Information  */
#define PI40IV_ATTR_SPECIFIC_DRIVER_PREFIX        IVI_ATTR_SPECIFIC_DRIVER_PREFIX         /* ViString, read-only  */
#define PI40IV_ATTR_SUPPORTED_INSTRUMENT_MODELS   IVI_ATTR_SUPPORTED_INSTRUMENT_MODELS    /* ViString, read-only  */
#define PI40IV_ATTR_INSTRUMENT_MANUFACTURER       IVI_ATTR_INSTRUMENT_MANUFACTURER        /* ViString, read-only  */
#define PI40IV_ATTR_INSTRUMENT_MODEL              IVI_ATTR_INSTRUMENT_MODEL               /* ViString, read-only  */
#define PI40IV_ATTR_INSTRUMENT_FIRMWARE_REVISION  IVI_ATTR_INSTRUMENT_FIRMWARE_REVISION              /* ViString, read-only  */
#define PI40IV_ATTR_SPECIFIC_DRIVER_REVISION      IVI_ATTR_SPECIFIC_DRIVER_REVISION       /* ViString, read-only  */
#define PI40IV_ATTR_SPECIFIC_DRIVER_VENDOR        IVI_ATTR_SPECIFIC_DRIVER_VENDOR         /* ViString, read-only  */
#define PI40IV_ATTR_SPECIFIC_DRIVER_DESCRIPTION   IVI_ATTR_SPECIFIC_DRIVER_DESCRIPTION    /* ViString, read-only  */
#define PI40IV_ATTR_SPECIFIC_DRIVER_CLASS_SPEC_MAJOR_VERSION IVI_ATTR_SPECIFIC_DRIVER_CLASS_SPEC_MAJOR_VERSION /* ViInt32, read-only */
#define PI40IV_ATTR_SPECIFIC_DRIVER_CLASS_SPEC_MINOR_VERSION IVI_ATTR_SPECIFIC_DRIVER_CLASS_SPEC_MINOR_VERSION /* ViInt32, read-only */
#define PI40IV_ATTR_DRIVER_SETUP                  IVI_ATTR_DRIVER_SETUP
#define PI40IV_ATTR_INTERCHANGE_CHECK             IVI_ATTR_INTERCHANGE_CHECK


        /* Advanced Session Information */
#define PI40IV_ATTR_LOGICAL_NAME                  IVI_ATTR_LOGICAL_NAME                   /* ViString, read-only  */
#define PI40IV_ATTR_IO_RESOURCE_DESCRIPTOR        IVI_ATTR_RESOURCE_DESCRIPTOR         /* ViString, read-only  */


    /*- Instrument-Specific Attributes -------------------------------------*/
    /*- Configuration Attributes -------------------------------------------*/
#define PI40IV_ATTR_IS_SOURCE_CHANNEL          IVISWTCH_ATTR_IS_SOURCE_CHANNEL        /* ViBoolean, Channel-based */
#define PI40IV_ATTR_IS_CONFIGURATION_CHANNEL   IVISWTCH_ATTR_IS_CONFIGURATION_CHANNEL /* ViBoolean, Channel-based */

    /*- Status Attributes --------------------------------------------------*/
#define PI40IV_ATTR_IS_DEBOUNCED               IVISWTCH_ATTR_IS_DEBOUNCED             /* ViBoolean, Read-only */

    /*- Device Information Attributes --------------------------------------*/
#define PI40IV_ATTR_SETTLING_TIME              IVISWTCH_ATTR_SETTLING_TIME            /* ViReal64, Channel-based */
#define PI40IV_ATTR_BANDWIDTH                  IVISWTCH_ATTR_BANDWIDTH                /* ViReal64, Channel-based, Read-only */
#define PI40IV_ATTR_MAX_DC_VOLTAGE             IVISWTCH_ATTR_MAX_DC_VOLTAGE           /* ViReal64, Channel-based, Read-only */
#define PI40IV_ATTR_MAX_AC_VOLTAGE             IVISWTCH_ATTR_MAX_AC_VOLTAGE           /* ViReal64, Channel-based, Read-only */
#define PI40IV_ATTR_MAX_SWITCHING_AC_CURRENT   IVISWTCH_ATTR_MAX_SWITCHING_AC_CURRENT /* ViReal64, Channel-based, Read-only */
#define PI40IV_ATTR_MAX_SWITCHING_DC_CURRENT   IVISWTCH_ATTR_MAX_SWITCHING_DC_CURRENT /* ViReal64, Channel-based, Read-only */
#define PI40IV_ATTR_MAX_CARRY_AC_CURRENT       IVISWTCH_ATTR_MAX_CARRY_AC_CURRENT     /* ViReal64, Channel-based, Read-only */
#define PI40IV_ATTR_MAX_CARRY_DC_CURRENT       IVISWTCH_ATTR_MAX_CARRY_DC_CURRENT     /* ViReal64, Channel-based, Read-only */
#define PI40IV_ATTR_MAX_SWITCHING_AC_POWER     IVISWTCH_ATTR_MAX_SWITCHING_AC_POWER   /* ViReal64, Channel-based, Read-only */
#define PI40IV_ATTR_MAX_SWITCHING_DC_POWER     IVISWTCH_ATTR_MAX_SWITCHING_DC_POWER   /* ViReal64, Channel-based, Read-only */
#define PI40IV_ATTR_MAX_CARRY_AC_POWER         IVISWTCH_ATTR_MAX_CARRY_AC_POWER       /* ViReal64, Channel-based, Read-only */
#define PI40IV_ATTR_MAX_CARRY_DC_POWER         IVISWTCH_ATTR_MAX_CARRY_DC_POWER       /* ViReal64, Channel-based, Read-only */
#define PI40IV_ATTR_CHARACTERISTIC_IMPEDANCE   IVISWTCH_ATTR_CHARACTERISTIC_IMPEDANCE /* ViReal64, Channel-based, Read-only */
#define PI40IV_ATTR_NUM_OF_ROWS                IVISWTCH_ATTR_NUM_OF_ROWS              /* ViInt32, Read-only */
#define PI40IV_ATTR_NUM_OF_COLUMNS             IVISWTCH_ATTR_NUM_OF_COLUMNS           /* ViInt32, Read-only */
#define PI40IV_ATTR_WIRE_MODE                  IVISWTCH_ATTR_WIRE_MODE                /* ViInt32, Channel-based, Read-only */

#define PI40IV_ATTR_VXI_MANF_ID      (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 1L)    /* ViInt32 (Read Only) */
#define PI40IV_ATTR_VXI_MODEL_CODE   (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 2L)    /* ViInt32 (Read Only) */


/****************************************************************************
 *------------------------ Attribute Value Defines -------------------------*
 ****************************************************************************/
#define PI40IV_ATTR_CHANGEOVER                (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 3L)    /* ViInt32 (Read Only) */
#define PI40IV_ATTR_INSTRUMENT_CONFIG         (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 4L)    /* ViString */
#define PI40IV_ATTR_CONFIGURABLE              (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 5L)    /* ViInt32 */

	/* Defined values for PI40IV_ATTR_SCAN_MODE */
#define PI40IV_VAL_NONE                        IVISWTCH_VAL_NONE


    /* Defined values for pi40iv_CanConnect path capability parameter */
#define PI40IV_VAL_PATH_AVAILABLE              IVISWTCH_VAL_PATH_AVAILABLE
#define PI40IV_VAL_PATH_EXISTS                 IVISWTCH_VAL_PATH_EXISTS
#define PI40IV_VAL_PATH_UNSUPPORTED            IVISWTCH_VAL_PATH_UNSUPPORTED
#define PI40IV_VAL_RSRC_IN_USE                 IVISWTCH_VAL_RSRC_IN_USE
#define PI40IV_VAL_SOURCE_CONFLICT             IVISWTCH_VAL_SOURCE_CONFLICT
#define PI40IV_VAL_CHANNEL_NOT_AVAILABLE       IVISWTCH_VAL_CHANNEL_NOT_AVAILABLE


/****************************************************************************
 *---------------- Instrument Driver Function Declarations -----------------*
 ****************************************************************************/

    /*- Init and Close Functions -------------------------------------------*/
ViStatus _PI40IV_API _VI_FUNC pi40iv_init (ViRsrc resourceName, ViBoolean IDQuery,
                                  ViBoolean resetDevice, ViSession *vi);
ViStatus _PI40IV_API _VI_FUNC  pi40iv_InitWithOptions (ViRsrc resourceName, ViBoolean IDQuery,
                                             ViBoolean resetDevice, ViConstString optionString,
                                             ViSession *newVi);
ViStatus _PI40IV_API _VI_FUNC   pi40iv_close (ViSession vi);

    /*- Coercion Info Functions --------------------------------------------*/
ViStatus _PI40IV_API _VI_FUNC   pi40iv_GetNextCoercionRecord (ViSession vi,
                                                   ViInt32 bufferSize,
                                                   ViChar record[]);

    /*- Locking Functions --------------------------------------------------*/
ViStatus _PI40IV_API _VI_FUNC   pi40iv_LockSession (ViSession vi, ViBoolean *callerHasLock);
ViStatus _PI40IV_API _VI_FUNC   pi40iv_UnlockSession (ViSession vi, ViBoolean *callerHasLock);

    /*- Switch Routing Functions -----------------------------------------*/
ViStatus _PI40IV_API _VI_FUNC  pi40iv_Connect (ViSession vi,
                                    ViConstString channel1,
                                    ViConstString channel2);
ViStatus _PI40IV_API _VI_FUNC  pi40iv_Disconnect (ViSession vi,
                                       ViConstString channel1,
                                       ViConstString channel2);
ViStatus _PI40IV_API _VI_FUNC  pi40iv_DisconnectAll (ViSession vi);
ViStatus _PI40IV_API _VI_FUNC  pi40iv_GetPath (ViSession vi, ViConstString channel1,
                                    ViConstString channel2, ViInt32 bufSize,
                                    ViChar pathList[]);
ViStatus _PI40IV_API _VI_FUNC  pi40iv_SetPath (ViSession vi, ViConstString pathList);
ViStatus _PI40IV_API _VI_FUNC  pi40iv_CanConnect (ViSession vi, ViConstString channel1,
                                       ViConstString channel2,
                                       ViInt32 *pathCapabilityRef);
ViStatus _PI40IV_API _VI_FUNC  pi40iv_IsDebounced (ViSession vi, ViBoolean *isDebounced);
ViStatus _PI40IV_API _VI_FUNC  pi40iv_WaitForDebounce (ViSession vi, ViInt32 maxTime);

    /*- Error Functions ----------------------------------------------------*/
ViStatus _PI40IV_API _VI_FUNC   pi40iv_error_query (ViSession vi, ViInt32 *errorCode,
                                         ViChar errorMessage[]);
ViStatus _PI40IV_API _VI_FUNC   pi40iv_error_message (ViSession vi, ViStatus errorCode,
                                           ViChar errorMessage[256]);
ViStatus _PI40IV_API _VI_FUNC   pi40iv_GetError (ViSession vi, ViStatus *errorCode,
                                     ViInt32 bufferSize, ViChar description[]);
ViStatus _PI40IV_API _VI_FUNC   pi40iv_ClearError (ViSession vi);


    /*- Utility Functions --------------------------------------------------*/
ViStatus _PI40IV_API _VI_FUNC   pi40iv_reset (ViSession vi);
ViStatus _PI40IV_API _VI_FUNC   pi40iv_self_test (ViSession vi, ViInt16 *selfTestResult,
                                       ViChar selfTestMessage[]);
ViStatus _PI40IV_API _VI_FUNC   pi40iv_revision_query (ViSession vi,
                                            ViChar instrumentDriverRevision[],
                                            ViChar firmwareRevision[]);
ViStatus _PI40IV_API _VI_FUNC   pi40iv_InvalidateAllAttributes (ViSession vi);
ViStatus _PI40IV_API _VI_FUNC   pi40iv_ResetWithDefaults (ViSession vi);
ViStatus _PI40IV_API _VI_FUNC   pi40iv_Disable (ViSession vi);

    /*- Interchangeability Checking Functions ------------------------------*/
ViStatus _PI40IV_API _VI_FUNC   pi40iv_GetNextInterchangeWarning (ViSession vi,
                                                      ViInt32 bufferSize,
                                                      ViChar warnString[]);
ViStatus _PI40IV_API _VI_FUNC   pi40iv_ResetInterchangeCheck (ViSession vi);
ViStatus _PI40IV_API _VI_FUNC   pi40iv_ClearInterchangeWarnings (ViSession vi);

/*- Channel Info Functions ---------------------------------------------*/
ViStatus _PI40IV_API _VI_FUNC   pi40iv_GetChannelName (ViSession vi, ViInt32 index,
									ViInt32 nameBufferSize, ViChar name[]);



    /*- Set, Get, and Check Attribute Functions ----------------------------*/
ViStatus _PI40IV_API _VI_FUNC   pi40iv_GetAttributeViInt32 (ViSession vi, ViConstString channelName, ViAttr attribute, ViInt32 *value);
ViStatus _PI40IV_API _VI_FUNC   pi40iv_GetAttributeViReal64 (ViSession vi, ViConstString channelName, ViAttr attribute, ViReal64 *value);
ViStatus _PI40IV_API _VI_FUNC   pi40iv_GetAttributeViString (ViSession vi, ViConstString channelName, ViAttr attribute, ViInt32 bufSize, ViChar value[]);
ViStatus _PI40IV_API _VI_FUNC   pi40iv_GetAttributeViSession (ViSession vi, ViConstString channelName, ViAttr attribute, ViSession *value);
ViStatus _PI40IV_API _VI_FUNC   pi40iv_GetAttributeViBoolean (ViSession vi, ViConstString channelName, ViAttr attribute, ViBoolean *value);

ViStatus _PI40IV_API _VI_FUNC   pi40iv_SetAttributeViInt32 (ViSession vi, ViConstString channelName, ViAttr attribute, ViInt32 value);
ViStatus _PI40IV_API _VI_FUNC   pi40iv_SetAttributeViReal64 (ViSession vi, ViConstString channelName, ViAttr attribute, ViReal64 value);
ViStatus _PI40IV_API _VI_FUNC   pi40iv_SetAttributeViString (ViSession vi, ViConstString channelName, ViAttr attribute, ViConstString value);
ViStatus _PI40IV_API _VI_FUNC   pi40iv_SetAttributeViSession (ViSession vi, ViConstString channelName, ViAttr attribute, ViSession value);
ViStatus _PI40IV_API _VI_FUNC   pi40iv_SetAttributeViBoolean (ViSession vi, ViConstString channelName, ViAttr attribute, ViBoolean value);

ViStatus _PI40IV_API _VI_FUNC   pi40iv_CheckAttributeViInt32 (ViSession vi, ViConstString channelName, ViAttr attribute, ViInt32 value);
ViStatus _PI40IV_API _VI_FUNC   pi40iv_CheckAttributeViReal64 (ViSession vi, ViConstString channelName, ViAttr attribute, ViReal64 value);
ViStatus _PI40IV_API _VI_FUNC   pi40iv_CheckAttributeViString (ViSession vi, ViConstString channelName, ViAttr attribute, ViConstString value);
ViStatus _PI40IV_API _VI_FUNC   pi40iv_CheckAttributeViSession (ViSession vi, ViConstString channelName, ViAttr attribute, ViSession value);
ViStatus _PI40IV_API _VI_FUNC   pi40iv_CheckAttributeViBoolean (ViSession vi, ViConstString channelName, ViAttr attribute, ViBoolean value);


/*- Obsolete Inherent Instrument Attributes and functions -*/
/*- These attributes and functions have been deprecated and may not be supported in future versions of this driver.-*/

		/*- Driver Information -*/
#define PI40IV_ATTR_SPECIFIC_DRIVER_MAJOR_VERSION IVI_ATTR_SPECIFIC_DRIVER_MAJOR_VERSION  /* ViInt32,  read-only  */
#define PI40IV_ATTR_SPECIFIC_DRIVER_MINOR_VERSION IVI_ATTR_SPECIFIC_DRIVER_MINOR_VERSION  /* ViInt32,  read-only  */

		/*- Error Info -*/
#define PI40IV_ATTR_PRIMARY_ERROR                 IVI_ATTR_PRIMARY_ERROR                  /* ViInt32   */
#define PI40IV_ATTR_SECONDARY_ERROR               IVI_ATTR_SECONDARY_ERROR                /* ViInt32   */
#define PI40IV_ATTR_ERROR_ELABORATION             IVI_ATTR_ERROR_ELABORATION              /* ViString  */

        /*- Advanced Session Information -*/
#define PI40IV_ATTR_IO_SESSION_TYPE               IVI_ATTR_IO_SESSION_TYPE                /* ViString, read-only  */
#define PI40IV_ATTR_IO_SESSION                    IVI_ATTR_IO_SESSION                     /* ViSession, read-only */

        /*- Deprecated Attribute Identifiers for Renamed Attributes -*/
#define PI40IV_ATTR_NUM_CHANNELS                  PI40IV_ATTR_CHANNEL_COUNT               /* ViInt32,  read-only  */
#define PI40IV_ATTR_QUERY_INSTR_STATUS            PI40IV_ATTR_QUERY_INSTRUMENT_STATUS	  /* ViBoolean */
#define PI40IV_ATTR_RESOURCE_DESCRIPTOR           PI40IV_ATTR_IO_RESOURCE_DESCRIPTOR      /* ViString, read-only  */

        /*- Deprecated Error Information functions -*/
ViStatus _PI40IV_API _VI_FUNC   pi40iv_GetErrorInfo (ViSession vi, ViStatus *primaryError,
                                          ViStatus *secondaryError,
                                          ViChar errorElaboration[256]);
ViStatus _PI40IV_API _VI_FUNC   pi40iv_ClearErrorInfo (ViSession vi);


    /*********************************************************
        Functions reserved for class driver use only.
        End-users should not call these functions.
     *********************************************************/
ViStatus _PI40IV_API _VI_FUNC   pi40iv_IviInit (ViRsrc resourceName, ViBoolean IDQuery,
                                     ViBoolean reset, ViSession vi);
ViStatus _PI40IV_API _VI_FUNC   pi40iv_IviClose (ViSession vi);


#ifdef PILPXI_FUNC

	/*********************************************************
        New piplx non class driver functions
        Digital I/O card only at this time
     *********************************************************/

ViStatus _PI40IV_API _VI_FUNC   pi40iv_ReadCal(ViSession vi, ViUInt32 SubUnit, ViUInt32 index, ViUInt32 *data);
ViStatus _PI40IV_API _VI_FUNC   pi40iv_WriteCal(ViSession vi, ViUInt32 SubUnit, ViUInt32 index, ViUInt32 data);
ViStatus _PI40IV_API _VI_FUNC   pi40iv_SetResistance(ViSession vi, ViUInt32 SubUnit, ViReal64 resistance);
ViStatus _PI40IV_API _VI_FUNC   pi40iv_GetResistance(ViSession vi, ViUInt32 SubUnit, ViReal64 *resistance);

// Set of functions for input ports:
//	the ability to read how many ports there are
//	the ability to read how many bits there are
//	the ability to read how many ViUInts are needed to hold a port pattern
//	the ability to read bits and ports

ViStatus _PI40IV_API _VI_FUNC   pi40iv_GetNumberInputSubs(ViSession vi, ViUInt32 *InSubs);
ViStatus _PI40IV_API _VI_FUNC   pi40iv_GetInputSizeBits(ViSession vi, ViUInt32 InSub, ViUInt32 *Size);
ViStatus _PI40IV_API _VI_FUNC   pi40iv_GetInputSizeDwords(ViSession vi, ViUInt32 InSub, ViUInt32 *Size);
ViStatus _PI40IV_API _VI_FUNC   pi40iv_GetInputBit(ViSession vi, ViUInt32 InSub, ViUInt32 BitNum, ViUInt32 *State);
ViStatus _PI40IV_API _VI_FUNC   pi40iv_GetInputSub(ViSession vi, ViUInt32 InSub, ViUInt32 *Data);

// Set of functions for output ports:
//	the ability to read how many ports there are
//	the ability to read how many bits there are
//	the ability to read how many ViUInts are needed to hold a port pattern
//	the ability to read bits and ports
//	the ability to write bits and ports

ViStatus _PI40IV_API _VI_FUNC   pi40iv_GetNumberOutputSubs(ViSession vi, ViUInt32 *OutSubs);
ViStatus _PI40IV_API _VI_FUNC   pi40iv_GetOutputSizeBits(ViSession vi, ViUInt32 OutSub, ViUInt32 *Size);
ViStatus _PI40IV_API _VI_FUNC   pi40iv_GetOutputSizeDwords(ViSession vi, ViUInt32 OutSub, ViUInt32 *Size);
ViStatus _PI40IV_API _VI_FUNC   pi40iv_SetOutputBit(ViSession vi, ViUInt32 OutSub, ViUInt32 BitNum, ViUInt32 State);
ViStatus _PI40IV_API _VI_FUNC   pi40iv_SetOutputSub(ViSession vi, ViUInt32 OutSub, ViUInt32 *Data);
ViStatus _PI40IV_API _VI_FUNC   pi40iv_GetOutputBit(ViSession vi, ViUInt32 OutSub, ViUInt32 BitNum, ViUInt32 *State);
ViStatus _PI40IV_API _VI_FUNC   pi40iv_GetOutputSub(ViSession vi, ViUInt32 OutSub, ViUInt32 *Data);
ViStatus _PI40IV_API _VI_FUNC   pi40iv_SubInfo(ViSession vi, ViUInt32 Sub, ViInt16 InOut, ViUInt32 *Type, ViUInt32 *Rows, ViUInt32 *Cols);

ViStatus _PI40IV_API _VI_FUNC   pi40iv_GetMatrixSplit (ViSession vi, ViInt32 *value);

#endif //PILPXI_FUNC

/****************************************************************************
 *------------------------ Error And Completion Codes ----------------------*
 ****************************************************************************/
#define PI40IV_WARN_PATH_REMAINS                 IVISWTCH_WARN_PATH_REMAINS
#define PI40IV_WARN_IMPLICIT_CONNECTION_EXISTS   IVISWTCH_WARN_IMPLICIT_CONNECTION_EXISTS

#define PI40IV_ERROR_INVALID_SWITCH_PATH         IVISWTCH_ERROR_INVALID_SWITCH_PATH
#define PI40IV_ERROR_RSRC_IN_USE                 IVISWTCH_ERROR_RSRC_IN_USE
#define PI40IV_ERROR_EMPTY_SWITCH_PATH           IVISWTCH_ERROR_EMPTY_SWITCH_PATH
#define PI40IV_ERROR_NO_SUCH_PATH                IVISWTCH_ERROR_NO_SUCH_PATH
#define PI40IV_ERROR_IS_CONFIGURATION_CHANNEL    IVISWTCH_ERROR_IS_CONFIGURATION_CHANNEL
#define PI40IV_ERROR_NOT_A_CONFIGURATION_CHANNEL IVISWTCH_ERROR_NOT_A_CONFIGURATION_CHANNEL
#define PI40IV_ERROR_ATTEMPT_TO_CONNECT_SOURCES  IVISWTCH_ERROR_ATTEMPT_TO_CONNECT_SOURCES
#define PI40IV_ERROR_EXPLICIT_CONNECTION_EXISTS  IVISWTCH_ERROR_EXPLICIT_CONNECTION_EXISTS
#define PI40IV_ERROR_LEG_MISSING_FIRST_CHANNEL   IVISWTCH_ERROR_LEG_MISSING_FIRST_CHANNEL
#define PI40IV_ERROR_LEG_MISSING_SECOND_CHANNEL  IVISWTCH_ERROR_LEG_MISSING_SECOND_CHANNEL
#define PI40IV_ERROR_CHANNEL_DUPLICATED_IN_LEG   IVISWTCH_ERROR_CHANNEL_DUPLICATED_IN_LEG
#define PI40IV_ERROR_CHANNEL_DUPLICATED_IN_PATH  IVISWTCH_ERROR_CHANNEL_DUPLICATED_IN_PATH
#define PI40IV_ERROR_PATH_NOT_FOUND              IVISWTCH_ERROR_PATH_NOT_FOUND
#define PI40IV_ERROR_DISCONTINUOUS_PATH          IVISWTCH_ERROR_DISCONTINUOUS_PATH
#define PI40IV_ERROR_CANNOT_CONNECT_DIRECTLY     IVISWTCH_ERROR_CANNOT_CONNECT_DIRECTLY
#define PI40IV_ERROR_CHANNELS_ALREADY_CONNECTED  IVISWTCH_ERROR_CHANNELS_ALREADY_CONNECTED
#define PI40IV_ERROR_CANNOT_CONNECT_TO_ITSELF    IVISWTCH_ERROR_CANNOT_CONNECT_TO_ITSELF
#define PI40IV_ERROR_MAX_TIME_EXCEEDED           IVISWTCH_ERROR_MAX_TIME_EXCEEDED

//Core driver error
#define PI40IV_ERROR_BAD_SESSION				(IVI_SPECIFIC_ERROR_BASE + 1)		/* No Pickering card is open on the session specified */
#define PI40IV_ERROR_NO_INFO					(IVI_SPECIFIC_ERROR_BASE + 2)		/* Cannot obtain information for specified card */
#define PI40IV_ERROR_CARD_DISABLED				(IVI_SPECIFIC_ERROR_BASE + 3)		/* Specified card is disabled */
#define PI40IV_ERROR_BAD_SUB					(IVI_SPECIFIC_ERROR_BASE + 4)		/* Sub-unit value out-of-range for target card */
#define PI40IV_ERROR_BAD_CHANNEL				(IVI_SPECIFIC_ERROR_BASE + 5)		/* Channel number out-of-range for target sub-unit */
#define PI40IV_ERROR_NO_CAL_DATA				(IVI_SPECIFIC_ERROR_BASE + 6)		/* Target sub-unit has no calibration data to read/write */
#define PI40IV_ERROR_BAD_ARRAY					(IVI_SPECIFIC_ERROR_BASE + 7)		/* SafeArray type, shape or size is incorrect */
#define PI40IV_ERROR_MUX_ILLEGAL				(IVI_SPECIFIC_ERROR_BASE + 8)		/* Non-zero write data value is illegal for MUX sub-unit */
#define PI40IV_ERROR_EXCESS_CLOSURE				(IVI_SPECIFIC_ERROR_BASE + 9)		/* Execution would cause closure limit to be exceeded */
#define PI40IV_ERROR_ILLEGAL_MASK				(IVI_SPECIFIC_ERROR_BASE + 10)		/* One or more of the specified channels cannot be masked */
#define PI40IV_ERROR_OUTPUT_DISABLED			(IVI_SPECIFIC_ERROR_BASE + 11)		/* Cannot activate an output that is masked */
#define PI40IV_ERROR_FAILED_INIT				(IVI_SPECIFIC_ERROR_BASE + 12)		/* Cannot open a Pickering card at the specified location */
#define PI40IV_ERROR_READ_FAIL					(IVI_SPECIFIC_ERROR_BASE + 13)		/* Failed read from hardware */
#define PI40IV_ERROR_WRITE_FAIL					(IVI_SPECIFIC_ERROR_BASE + 14)		/* Failed write to hardware */
#define PI40IV_ERROR_VISA_OP					(IVI_SPECIFIC_ERROR_BASE + 15)		/* VISA operation failure */
#define PI40IV_ERROR_VISA_VERSION				(IVI_SPECIFIC_ERROR_BASE + 16)		/* Incompatible VISA version */
#define PI40IV_ERROR_SUB_TYPE					(IVI_SPECIFIC_ERROR_BASE + 17)		/* Unspecified error */
#define PI40IV_ERROR_BAD_ROW				    (IVI_SPECIFIC_ERROR_BASE + 18)		/* Unspecified error */
#define PI40IV_ERROR_BAD_COLUMN				    (IVI_SPECIFIC_ERROR_BASE + 19)		/* Unspecified error */
#define PI40IV_ERROR_BAD_ATTEN				    (IVI_SPECIFIC_ERROR_BASE + 20)		/* Unspecified error */
#define PI40IV_ERROR_BAD_VOLTAGE			    (IVI_SPECIFIC_ERROR_BASE + 21)		/* Unspecified error */
#define PI40IV_ERROR_BAD_CAL_INDEX			    (IVI_SPECIFIC_ERROR_BASE + 22)		/* Unspecified error */
#define PI40IV_ERROR_BAD_SEGMENT				(IVI_SPECIFIC_ERROR_BASE + 23)		/* Unspecified error */
#define PI40IV_ERROR_BAD_FUNC_CODE			    (IVI_SPECIFIC_ERROR_BASE + 24)		/* Unspecified error */
#define PI40IV_ERROR_BAD_SUBSWITCH			    (IVI_SPECIFIC_ERROR_BASE + 25)		/* Unspecified error */
#define PI40IV_ERROR_BAD_ACTION				    (IVI_SPECIFIC_ERROR_BASE + 26)		/* Unspecified error */
#define PI40IV_ERROR_STATE_CORRUPT				(IVI_SPECIFIC_ERROR_BASE + 27)		/* Unspecified error */
#define PI40IV_ERROR_BAD_ATTR_CODE			    (IVI_SPECIFIC_ERROR_BASE + 28)		/* Unspecified error */
#define PI40IV_ERROR_EEPROM_WRITE_TMO		    (IVI_SPECIFIC_ERROR_BASE + 29)		/* Unspecified error */
#define PI40IV_ERROR_ILLEGAL_OP      		    (IVI_SPECIFIC_ERROR_BASE + 30)		/* Unspecified error */
#define PI40IV_ERROR_BAD_POT          		    (IVI_SPECIFIC_ERROR_BASE + 31)		/* Unspecified error */
#define PI40IV_ERROR_CORE_DRIVER_UNKNOWN		(IVI_SPECIFIC_ERROR_BASE + 32)		/* Unspecified error */

#define PI40IV_ERROR_STAT_MARK					(IVI_SPECIFIC_ERROR_BASE + 33)
#define PI40IV_ERROR_STAT_NO_CARD				(PI40IV_ERROR_STAT_MARK)		/* No Pickering card open on the session */
#define PI40IV_ERROR_STAT_WRONG_DRIVER			(PI40IV_ERROR_STAT_MARK + 1)		/* Card requires later driver version */
#define PI40IV_ERROR_STAT_EEPROM_ERR			(PI40IV_ERROR_STAT_MARK + 2)		/* Error interpreting card EEPROM data */
#define PI40IV_ERROR_STAT_DISABLED				(PI40IV_ERROR_STAT_MARK + 3)		/* Card is disabled */
#define PI40IV_ERROR_STAT_NO_SUB				(PI40IV_ERROR_STAT_MARK + 4)		/* Card has no sub-unit with specified number */
#define PI40IV_ERROR_STAT_BUSY					(PI40IV_ERROR_STAT_MARK + 5)		/* Card has no sub-unit with specified number */
#define PI40IV_ERROR_STAT_HW_FAULT				(PI40IV_ERROR_STAT_MARK + 6)		/* Hardware fault (eg. defective serial loop) */
#define PI40IV_ERROR_STAT_PARITY_ERROR			(PI40IV_ERROR_STAT_MARK + 7)		/* Card has no sub-unit with specified number */
#define PI40IV_ERROR_STAT_PSU_INHIBITED			(PI40IV_ERROR_STAT_MARK + 8)		/* Card has no sub-unit with specified number */
#define PI40IV_ERROR_STAT_PSU_SHUTDOWN			(PI40IV_ERROR_STAT_MARK + 9)		/* Card has no sub-unit with specified number */
#define PI40IV_ERROR_STAT_PSU_CURRENT_LIMIT		(PI40IV_ERROR_STAT_MARK + 10)		/* Card has no sub-unit with specified number */
#define PI40IV_ERROR_STAT_CORRUPTED				(PI40IV_ERROR_STAT_MARK + 11)		/* Card has no sub-unit with specified number */

//IVI layer driver error
#define PI40IV_ERROR_IVI_MARK					(PI40IV_ERROR_STAT_MARK + 12)          //base +45
#define PI40IV_ERROR_INI_MODULE_NOT_FOUND		(PI40IV_ERROR_IVI_MARK)
#define PI40IV_ERROR_INI_FORMAT_VERSION			(PI40IV_ERROR_IVI_MARK + 1)
#define PI40IV_ERROR_INI_FILE_NOT_FOUND			(PI40IV_ERROR_IVI_MARK + 2)
#define PI40IV_ERROR_INI_MFG_NO					(PI40IV_ERROR_IVI_MARK + 3)
#define PI40IV_ERROR_NO_SETUP_MODEL_INFO		(PI40IV_ERROR_IVI_MARK + 4)
#define PI40IV_ERROR_READING_REGISTRY			(PI40IV_ERROR_IVI_MARK + 5)
#define PI40IV_ERROR_WRONG_CARD_VALUES		    (PI40IV_ERROR_IVI_MARK + 6)
#define PI40IV_ERROR_DRIVER_SETUP_OPTION2		(PI40IV_ERROR_IVI_MARK + 7)
#define PI40IV_ERROR_RESISTOR_VALUE_EXC			(PI40IV_ERROR_IVI_MARK + 8)				//resistance value exceeded possibility of resistor card

//Cli/serv layer driver error
#define PI40IV_ERROR_PICMLX_CLI_MARK			(PI40IV_ERROR_IVI_MARK + 9)            //base +53
#define	PI40IV_ERROR_PICMLX_CLI_INVALID_SESSION (PI40IV_ERROR_PICMLX_CLI_MARK)
#define	PI40IV_ERROR_PICMLX_CLI_HOST_UNAVAILABLE	(PI40IV_ERROR_PICMLX_CLI_MARK + 1)
#define PI40IV_ERROR_PICMLX_CLI_PING_DLL		(PI40IV_ERROR_PICMLX_CLI_MARK + 2)
#define PI40IV_ERROR_PICMLX_CLI_PING_HANDLE   (PI40IV_ERROR_PICMLX_CLI_MARK + 3)
#define PI40IV_ERROR_PICMLX_CLI_PING_TIMEOUT	(PI40IV_ERROR_PICMLX_CLI_MARK + 4)
#define	PI40IV_ERROR_PICMLX_CLI_ECHOB_SERVER	(PI40IV_ERROR_PICMLX_CLI_MARK + 5)
#define	PI40IV_ERROR_PICMLX_CLI_ECHOB_SEND		(PI40IV_ERROR_PICMLX_CLI_MARK + 6)
#define	PI40IV_ERROR_PICMLX_CLI_ECHOB_OPTION	(PI40IV_ERROR_PICMLX_CLI_MARK + 7)
#define	PI40IV_ERROR_PICMLX_CLI_ECHOB_CREATE	(PI40IV_ERROR_PICMLX_CLI_MARK + 8)
#define	PI40IV_ERROR_PICMLX_CLI_ECHOD_DATA		(PI40IV_ERROR_PICMLX_CLI_MARK + 9)
#define	PI40IV_ERROR_PICMLX_CLI_ECHOD_HOST		(PI40IV_ERROR_PICMLX_CLI_MARK + 10)
#define	PI40IV_ERROR_PICMLX_CLI_ECHOD_RECV		(PI40IV_ERROR_PICMLX_CLI_MARK + 11)
#define	PI40IV_ERROR_PICMLX_CLI_ECHOD_CREATE	(PI40IV_ERROR_PICMLX_CLI_MARK + 12)
#define PI40IV_ERROR_PICMLX_CLI_SESSION		(PI40IV_ERROR_PICMLX_CLI_MARK + 13)
#define	PI40IV_ERROR_PICMLX_CLI_CONNECT			(PI40IV_ERROR_PICMLX_CLI_MARK + 14)
#define PI40IV_ERROR_PICMLX_CLI_RECV_FAILED		(PI40IV_ERROR_PICMLX_CLI_MARK + 15)
#define PI40IV_ERROR_PICMLX_CLI_RECV_DATA		(PI40IV_ERROR_PICMLX_CLI_MARK + 16)
#define PI40IV_ERROR_PICMLX_CLI_SEND_FAILED		(PI40IV_ERROR_PICMLX_CLI_MARK + 17)
#define PI40IV_ERROR_PICMLX_CLI_FUNC_NOT_LOCAL	(PI40IV_ERROR_PICMLX_CLI_MARK + 18)
#define PI40IV_ERROR_PICMLX_CLI_NOT_CONNECTED	(PI40IV_ERROR_PICMLX_CLI_MARK + 19)

#define PI40IV_ERROR_PICMLX_SRV_MARK			(PI40IV_ERROR_PICMLX_CLI_MARK + 20)    //base +73
#define PI40IV_ERROR_PICMLX_SRV_INVALID_FID		(PI40IV_ERROR_PICMLX_SRV_MARK)
#define PI40IV_ERROR_PICMLX_SRV_RPC_DATA		(PI40IV_ERROR_PICMLX_SRV_MARK + 1)
#define PI40IV_ERROR_PICMLX_SRV_INVALID_CARDID  (PI40IV_ERROR_PICMLX_SRV_MARK + 2)
#define PI40IV_ERROR_PICMLX_SRV_INVALID_ADDRESS	(PI40IV_ERROR_PICMLX_SRV_MARK + 3)
#define PI40IV_ERROR_PICMLX_SRV_OPEN_CARD		(PI40IV_ERROR_PICMLX_SRV_MARK + 4)
#define PI40IV_ERROR_PICMLX_SRV_ACCESS_DENIED	(PI40IV_ERROR_PICMLX_SRV_MARK + 5)
#define PI40IV_ERROR_PICMLX_SRV_NOT_SUPPORTED	(PI40IV_ERROR_PICMLX_SRV_MARK + 6)
#define PI40IV_ERROR_PICMLX_SRV_DEVICE_INFO		(PI40IV_ERROR_PICMLX_SRV_MARK + 7)
#define PI40IV_ERROR_PICMLX_SRV_UNKNOWN			(PI40IV_ERROR_PICMLX_SRV_MARK + 8)
#define PI40IV_ERROR_PICMLX_SRV_DATA_LENGTH		(PI40IV_ERROR_PICMLX_SRV_MARK + 9)
#define PI40IV_ERROR_PICMLX_SRV_CARD_TYPE		(PI40IV_ERROR_PICMLX_SRV_MARK + 10)
#define PI40IV_ERROR_PICMLX_SRV_FUNC_NOT_IMPL	(PI40IV_ERROR_PICMLX_SRV_MARK + 11)
#define PI40IV_ERROR_PICMLX_SRV_CARD_USED_BYCLI	(PI40IV_ERROR_PICMLX_SRV_MARK + 12)

#define PI40IV_ERROR_PIPLX_MARK					(PI40IV_ERROR_PICMLX_SRV_MARK + 13)    //base +86
#define PI40IV_ERROR_PIPLX_INVALID_SESSION		(PI40IV_ERROR_PIPLX_MARK)
#define PI40IV_ERROR_PIPLX_FUNC_NOT_LOADED		(PI40IV_ERROR_PIPLX_MARK + 1)
#define PI40IV_ERROR_PIPLX_NOT_CONNECTED		(PI40IV_ERROR_PIPLX_MARK + 2)
#define PI40IV_ERROR_PIPLX_FUNC_NOT_LOCAL		(PI40IV_ERROR_PIPLX_MARK + 3)

#define PI40IV_ERROR_DRIVER_UNKNOWN				(PI40IV_ERROR_PIPLX_MARK + 4)

/**************************************************************************
 * Constants Declarations
 **************************************************************************/

// Card status bits for getCardStatus result
#define pi40iv_STAT_NO_CARD			0x80000000UL	/* No Pickering card open on the session */
#define pi40iv_STAT_WRONG_DRIVER	0x40000000UL	/* Card requires later driver version */
#define pi40iv_STAT_EEPROM_ERR		0x20000000UL	/* Error interpreting card EEPROM data */
#define pi40iv_STAT_DISABLED		0x10000000UL	/* Card is disabled */
#define pi40iv_STAT_NO_SUB			0x08000000UL	/* Card has no sub-unit with specified number */
#define pi40iv_STAT_BUSY			0x04000000UL	/* Busy (card or sub-unit) */
#define pi40iv_STAT_HW_FAULT		0x02000000UL	/* Hardware fault (eg. defective serial loop) */
#define	pi40iv_STAT_PARITY_ERROR	0x01000000UL	// 9050 Parity Error 
#define	pi40iv_STAT_PSU_INHIBITED	0x00800000UL	// PSU sub-unit - supply is disabled (by software) 
#define	pi40iv_STAT_PSU_SHUTDOWN	0x00400000UL	// PSU sub-unit - supply is shutdown (due to overload) 
#define	pi40iv_STAT_PSU_CURRENT_LIMIT 0x00200000UL	// PSU sub-unit - supply is operating in current-limited mode 
#define	pi40iv_STAT_CORRUPTED		0x00100000UL	// Sub-unit logical state is corrupted 
#define	pi40iv_STAT_OK				0x00000000UL

// Driver operating mode control bits for setDriverMode
#define pi40iv_MODE_DEFAULT		0x00000000UL	/* Default, no special modes set */
#define pi40iv_MODE_NO_WAIT		0x00000001UL	/* Function calls exclude output settling delay */
#define pi40iv_MODE_UNLIMITED	0x00000002UL	/* Disable maximium closure limits */
#define	pi40iv_MODE_REOPEN		0x00000004UL	// Allow re-open without clearing cards 
#define	pi40iv_MODE_IGNORE_TEST	0x00000008UL	// Enable card operation even if selftest fails 

// OUTPUT sub-unit type specifier codes (as obtained by getSubInfo)
#define pi40iv_TYPE_SW		1	/* Uncommitted switches */
#define pi40iv_TYPE_MUX		2	/* Relay multiplexer (single-channel only) */
#define pi40iv_TYPE_MUXM	3	/* Relay multiplexer (multi-channel capable) */
#define pi40iv_TYPE_MAT		4	/* Standard matrix */
#define pi40iv_TYPE_MATR	5	/* RF matrix */
#define pi40iv_TYPE_DIG		6	/* Digital outputs */
#define pi40iv_TYPE_RES		7	/* Programmable Resistor */
#define	pi40iv_TYPE_ATTEN	8	// Programmable Attenuator 
#define	pi40iv_TYPE_PSUDC	9	// Power supply - DC 

// Self-test fault codes
#define PI40IV_FAULT_UNKNOWN		1	/* Unknown fault */
#define PI40IV_FAULT_WRONG_DRIVER	2	/* Incompatible software driver version */
#define PI40IV_FAULT_EEPROM_ERROR	3	/* EEPROM data error */
#define PI40IV_FAULT_HARDWARE		4	/* Hardware defect */


/****************************************************************************
/* This is structure for my own specific variables that were added to support
/* Configurable cards like 40-616-551, also other definitions
/******************************************************************************/

//#define MAX_SUBS 20
//#define MAX_CARDS 40

//these are constants defining type of configurable card
//configurable property of ViSessionMyData should contain only these constants
#define PI40IV_CFG_CARD_MUX1			1        //Mux configurable card 40-616 type



/****************************************************************************
 *---------------------------- End Include File ----------------------------*
 ****************************************************************************/
#if defined(__cplusplus) || defined(__cplusplus__)
}
#endif
#endif /* __PI40IV_HEADER */




