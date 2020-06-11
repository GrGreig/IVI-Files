/*****************************************************************************
 *  Instrument Sample Program for Pickering PXI IVI Driver
 * ---------------------------------------------------------------------------
 *  This sample program initializes the switch, queries the instrument for
 *  revision and error, exercises selftest, connects two channels,
 *  disconnects all channels, resets card and closes the IVI/VISA sessions.
 * ---------------------------------------------------------------------------
 *  Original Release: 2003-06-16
 *
 *  Instructions how to run sample program:
 *		1) Create a new project in VCC, Borland or LabWindows/CVI.
 *      2) Add this file to the project.
 *      3) Add pi40iv.h and pi40iv.lib to the project.
 *		4) Add ivi.lib to the project.
 *      5) Check that the resource name (PXI2::15::INSTR) is correct for
 *         your instrument. If necessary change flags in the option string.
 *		   If no instrument is present, the simulate flag has to be changed.
 *      6) Run the project.
 *
 * ---------------------------------------------------------------------------
 *  Copyright 2003 Pickering Interfaces Ltd. All Rights Reserved.
 *****************************************************************************/

#include <stdio.h>
#include "pi40iv.h"


main()
{
	ViSession	vi;
	ViStatus	error = VI_SUCCESS;
	static ViRsrc rsrcName = "PXI2::15::INSTR";
	//Model code "40-535-021" need to be changed to model code for your instrument
	ViString optionString = "Simulate=1,RangeCheck=1,QueryInstrStatus=1,Cache=1,DriverSetup=Model:40-535-021;";

	ViChar testMessage[256], errMessage[256], driver_rev[256], instr_rev[256];
    ViInt16 testResult;
	ViInt32 errCode;

    //Use variables suitable for your instrument
	ViChar channel1[10] = "x1", channel2[10] = "y1";         //For single matrix
	//ViChar channel1[10] = "xA1",  channel2[10] = "yA1";    //For Dual/Quad matrix cards
    //ViChar channel1[10] = "com1", channel2[10] = "ch1";    //For general purpose switch card
	//ViChar channel1[10] = "com",  channel2[10] = "ch1";    //For multiplexer cards
	//ViChar channel1[10] = "comA", channel2[10] = "chA1";   //For Dual/Quad multiplexer cards
	//ViChar channel1[10] = "com1", channel2[10] = "no1";    //For switch cards with changeover relays


	printf("Sample program for Pickering PXI IVI driver\n");
	printf("============================================\n");
	printf("2003-06-16\n\n");


	viCheckErr(pi40iv_InitWithOptions (rsrcName, VI_TRUE, VI_TRUE, optionString, &vi));
	printf("Card initialized with the following options:%s\n\n", optionString);

	viCheckErr(pi40iv_revision_query(vi, driver_rev, instr_rev));
	printf("Driver revision:\n%s\nInstrument revision:\n%s\n\n", driver_rev, instr_rev);

	viCheckErr(pi40iv_error_query(vi, &errCode, errMessage));
	printf("Error Query - Code:%d", errCode);
	printf(" Message:%s\n\n", errMessage);

    viCheckErr(pi40iv_self_test(vi, &testResult, testMessage));
    printf("Self Test - Result:%d", testResult);
	printf(" Message:%s\n\n", testMessage);


	viCheckErr(pi40iv_Connect (vi, channel1, channel2));
    printf("Connecting channel %s", channel1);
	printf(" and %s\n\n", channel2);

	viCheckErr(pi40iv_DisconnectAll(vi));
	printf("Disconnecting all channels.\n");

	viCheckErr(pi40iv_reset(vi));
	printf("Reseting instrument.\n\n");

Error:
	if (error != VI_SUCCESS)
    {
      pi40iv_error_message (vi, error, errMessage);
	  printf("ERROR!!\n");
	  printf("Error Code: 0x%08X\n", error);
	  printf("Error Message: %s\n\n", errMessage);
	}
	pi40iv_close(vi);
	printf("Closing card.\n");
}
