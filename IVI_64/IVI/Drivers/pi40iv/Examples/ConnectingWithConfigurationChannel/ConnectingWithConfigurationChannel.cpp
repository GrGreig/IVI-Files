/******************************************************************************
*                CONNECTING WITH CONFIG CHANNEL
* Description: Shows how to connect matrix channels using configuration channel.
* (c) Pickering Interfaces Ltd., 2014
* Support: support@pickeringtest.com
******************************************************************************/

#include "stdafx.h"
#include "pi40iv.h"

int __cdecl main(int argc,char* argv[]) {
	ViSession	vi;
	ViStatus	error = VI_SUCCESS;
	ViChar		errMessage[256];
	ViChar		pathBuffer[256];

	//rsrcName can be either physical or logical name:
	//  for PXI targets, physical name is: PXI<bus>::<device>::INSTR
	//  for LXI targets, physical name is: TCPIP<board>::<IP address>::b<bus>d<device>::INSTR
	static ViRsrc rsrcName = "PXI2::15::INSTR";
	//Model code "40-535-021" need to be changed to model code for your instrument
	ViString optionString = "Simulate=0,RangeCheck=1,QueryInstrStatus=1,Cache=1,DriverSetup=Model:40-535-021;";

	printf(
		"\n*********************************************************************\n"
	);
	printf(
		"*                 CONNECTING WITH CONFIG CHANNEL                    *\n"
	);
	printf(
		"* Description: Shows how to connect matrix channels using configuration channel. *\n"
	);
	printf(
		"* (c) Pickering Interfaces Ltd., 2014                               *\n"
	);
	printf(
		"* Support: support@pickeringtest.com                                *\n"
	);
	printf(
		"*********************************************************************\n"
	);  

	printf("\n\nInitializing card: %s\n", rsrcName);
	printf("\tOption string: %s\n", optionString);

	//checkErr is macro used it IVI to check if IVI call succeeded. If not, result will be stored in variable error and code will jump to Error: label
	//Note that "resetDevice" parameter of Init function is ignored and card is resetted each time, this is due Pickering card construction
	//IDQuery parameter will check if size of card and size of model in configuration file matches.
	checkErr( pi40iv_InitWithOptions(rsrcName, VI_TRUE, VI_TRUE, optionString, &vi));
	printf("Initialization succeded.\n");

	ViString configurationChannel = "y2";
	ViString channel1 = "x1";
	ViString channel2 = "x2";

	printf("Trying to connect %s to %s, using configuration channel %s\n", channel1, channel2, configurationChannel);
	//Set configuration channel attribute to true
	printf("Setting configuration channel: %s\n", configurationChannel);
	checkErr(pi40iv_SetAttributeViBoolean(vi, configurationChannel, PI40IV_ATTR_IS_CONFIGURATION_CHANNEL, VI_TRUE));
	//now connect 2 channels that would not be possible to normally connect
	printf("Connecting %s and %s\n", channel1, channel2);
	checkErr(pi40iv_Connect(vi, channel1, channel2));
	printf("Success!\n");

	//path from channel1 to channel2 will include configuration channel:
	printf("Getting connected path: ");
	checkErr(pi40iv_GetPath(vi, channel1, channel2, 256, pathBuffer));
	//This will print something like: "x1->y2,y2->x2"
	printf("%s", pathBuffer);

	printf("Closing card.\n");
	// this command releases all resources used by IVI session.
	pi40iv_IviClose(vi);

Error:
	//if any error happened, show it up and error message.
	if (error != VI_SUCCESS) {
		pi40iv_error_message (vi, error, errMessage);
		printf("Error code: %x\n", error);
		printf("Error message: %s\n", errMessage);
	}

	printf("Example program finished.\n");
}
