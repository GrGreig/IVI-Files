/******************************************************************************
*                CONNECTING CHANNELS EXAMPLE
* Description: Shows how to connect and disconnect channels.
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
	ViInt32		num_chans = 0;
	ViInt32		capabilities = 0;
	ViString	*names = NULL;

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
		"*                     CONNECTING CHANNELS EXAMPLE                   *\n"
	);
	printf(
		"* Description: Shows how to connect and disconnect channels.        *\n"
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
	checkErr( pi40iv_InitWithOptions(rsrcName, VI_TRUE, VI_TRUE, optionString, &vi));
	printf("Initialization succeded.\n");

	//get number of channels from attribute
	pi40iv_GetAttributeViInt32(vi, NULL, IVI_ATTR_CHANNEL_COUNT, &num_chans);

	//get names of all the channels
	if (num_chans > 0) {
		names = new ViString[num_chans+1];
		for(int i=1; i<=num_chans; i++) {
			//get pointer to static string representing the name of channel (no buffer needed)
			Ivi_GetNthChannelString(vi, i, (ViConstString*)&names[i]);
			printf("channel %d: %s\n", i, names[i]);
		}
	}

	//cycle through all channels and try to connect one to another.
	for (int i=1; i<=num_chans; i++)
	{
		for (int j=1; j<=num_chans; j++)
		{
			printf("CanConnecting %s to %s\n", names[i], names[j]);
			//Can connect returns possibility of connecting two channels in capability parameter
			checkErr(pi40iv_CanConnect(vi, names[i], names[j], &capabilities));
			//PI40IV_VAL_PATH_AVAILABLE means channels can be directly connected
			if (capabilities == PI40IV_VAL_PATH_AVAILABLE)
			{
				printf("Connecting %s to %s\n", names[i], names[j]);
				//Connect function tries to create path between 2 channels of certain name (string).
				checkErr(pi40iv_Connect(vi, names[i], names[j]));
				//wait for relays to stabilize after switching
				checkErr(pi40iv_WaitForDebounce(vi, 5000));
				printf("Disconnecting %s to %s\n", names[i], names[j]);
				//Disconnect function removes previously established path.
				checkErr(pi40iv_Disconnect(vi, names[i], names[j]));
				//wait for relays to stabilize after switching
				checkErr(pi40iv_WaitForDebounce(vi, 5000));
			}
		}
	}

	//cycle through all channels and try to connect one to another using SetPath function
	for (int i=1; i<=num_chans; i++)
	{
		for (int j=1; j<=num_chans; j++)
		{
			printf("CanConnecting %s to %s\n", names[i], names[j]);
			//Can connect returns possibility of connecting two channels in capability parameter
			checkErr(pi40iv_CanConnect(vi, names[i], names[j], &capabilities));
			//PI40IV_VAL_PATH_AVAILABLE means channels can be directly connected
			if (capabilities == PI40IV_VAL_PATH_AVAILABLE)
			{
				sprintf(pathBuffer, "%s->%s", names[i], names[j]);
				printf("Setting path %s\n", pathBuffer);
				//Connect function tries to create path between 2 channels of certain name (string).
				checkErr(pi40iv_SetPath(vi, pathBuffer));
				//wait for relays to stabilize after switching
				checkErr(pi40iv_WaitForDebounce(vi, 5000));
				printf("Disconnecting %s to %s\n", names[i], names[j]);
				//Disconnect function removes previously established path.
				checkErr(pi40iv_Disconnect(vi, names[i], names[j]));
				//wait for relays to stabilize after switching
				checkErr(pi40iv_WaitForDebounce(vi, 5000));
			}
		}
	}

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
