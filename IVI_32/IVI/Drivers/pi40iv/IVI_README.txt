*****************************************************************************
*  Pickering PXI IVI Switch Driver - pi40iv32.dll - version 1.0
* --------------------------------------------------------------------------- 
*  Original Release: 2003-02-24                                          
*  Copyright - 2003. Pickering Interfaces Ltd. - www.pickeringtest.com
*
*****************************************************************************


IVI driver files are installed in subdirectories of
  <ProgramFiles>\IVI Foundation\IVI\  (for Windows XP/Vista/7/8)

LabVIEW driver files are installed in subdirectory
  C:\Program Files\National Instruments\LabVIEW <version>\instr.lib\pi40iv\
  
NOTE: The above paths may vary according to Operating System, LabVIEW version etc.
 

Files and folders installed under <ProgramFiles>\IVI Foundation\IVI\Drivers\
============================================================================

Folder "pi40iv"
--------------- 
PI40IV.chm                  : pi40iv IVI driver help for windows
pi40iv.ini                  : Configuration file for pi40iv IVI driver
IVI Compliance Document.txt
IVI_README.txt              : Install and card setup info 
supported_modules.txt       : List of all models supported by pi40iv IVI driver


Folder "pi40iv\.NET"
-----------------------
Pickering.Pi40iv.Interop.dll : .NET wrapper for IVI-C dll


Folder "pi40iv\Binaries"
-----------------------
pi40iv32.lib      : Library file for Microsoft C++, LabWindows/CVI
pi40iv32.dll      : the driver DLL


Folder "pi40iv\C sample"
-----------------------
pi40iv_example.c : Simple example program in C


Folder "pi40iv\LabView"
-----------------------
LabVIEW driver files are installed in a LabVIEW program subfolder,
Files here are only used for backup and are identical to those found in the [labview program]\instr.lib\pi40iv folder. 


Folder "pi40iv\LabWindowsCVI"
-----------------------
pi40iv.fp          : the LabWindows/CVI Front panel
pi40iv.h           : the C header file for the front panel
pi40iv.sub         : the SUB file for the front panel


Folder "pi40iv\Utils"
-----------------------
pickeringIVIConfigTool.exe : Utility to register or unregister pi40iv IVI driver to/from IVI configuration store


Starting the driver
===================
Please refer to file "Introduction to pi40iv.txt".      

Option string
-------------
Example of how an option string could look like: 
"Simulate=0,RangeCheck=1,QueryInstrStatus=0,Cache=1,DriverSetup=Model:40-535-021;"

All attribute values is added as 0 or 1 (0 for false and 1 for true) except for the DriverSetup attribute that is added as a string.
The DriverSetup attribute is critical for the driver and MUST be set with a card model/type number.

Some examples of how the DriverSetup attribute of the option string could look like:
Model:40-535-021;			92 x 4 Matrix module
Model:40-538-021-S; 			55 x 8 Screened matrix module
Model:40-560-021-276x8;	                276 x 8 BRIC matrix system		
Model:40-670-022-99/2;                  99 channel 2 pole high density multiplexer
Model:40-670-022-49/4;                  49 channel 4 pole high density multiplexer
Model:40-630-021-S-32/1;		32 channel 1 pole screened multiplexer
Model:40-630-021-S-D/16/1;              16 channel 1 pole dual screened multiplexer
Model:40-560-021-92x8;                  BRIC-4 in 92x8 configuration
Model:40-561-121-S-180x16;		BRIC-8 in 180x16 screened configuration


NOTE: both "Model:" at the beggining and ";" at the end must be added for the driver to recognize the correct card type.

The card model number must be added with all extra numbers and letters just like in the pickering brochures.


For example if there is a screened module add "-S" after card number. If you have a BRIC system add "-NNNxNN" 
for the matrix size. Special modules like the 40-670 need to have the channel and pole number added after the 
card model number.

If Simulate = 1 is added this means that the attribute PI40IV_ATTR_SIMULATE is set to true
an the driver will then simulate the card without doing any I/O. 

(For optionstrings in NI Switch Executive see section below)



NI Switch Executive
===================
In NI Switch Executive (integrates with NI MAX), options like Simulate and RangeCheck is controlled by checkboxes 
so only the driver setup part of the option string is needed. For example:
To add a 40-670-022 99 channels 2 pole card, just add "Model:40-670-022-99/2;" to the
"Driver Options"-field under "Specific Virtual Instrument Properties" in Measurement & Automation Explorer.
When the virtual instrument is configured it can then be added in NI Switch Executive.

NOTE: The "Driver Options"-field can be found in NI MAX\My System\IVI Instruments\Virtual Instruments\ 
      under properties for "your instrument". 



Channel names
=============
See below what channel names you get for your switch card depending on what type it is.

Basic channel name examples:
----------------------------
Matrix card (3x3):                 x1,x2,x3,y1,y2,y3
Multiplexer card (4x1):            com,ch1,ch2,ch3,ch4
General purpose card (3 relays):   com1,ch1,com2,ch2,com3,ch3
Changeover relay card (3 relays):  com1,no1,nc1,com2,no2,nc2,com3,no3 (no = normally open, nc = normally closed)

For dual, quad etc. cards:
--------------------------
Dual matrix (3x3):	xA1,xA2,xA3,yA1,yA2,yA3,xB1,xB2,xB3,yB1,yB2,yB3 (A/B indicating which matrix)
Quad mux    (4x1):	comA,chA1,chA2,chA3,chA4,comB,chB1,chB2,chB3,chB4,comC,chC1,chC2,chC3,chC4,comD,chD1,chD2,chD3,chD4 
			(A/B/C/D indicating which mux)



Known Issues
============
Pickering Interfaces System 40/45/50 switch cards are identified by Subsystem
IDs, conforming to the PCI 2.2 standard. This form of identification is not
fully supported in NI-VISA 2.6. In future NI-VISA releases the interpretations
of some VISA attributes are likely to change to accomodate Subsystem IDs.
Attributes which may be affected are:
  VI_ATTR_MANF_ID
  VI_ATTR_MODEL_CODE
  VI_ATTR_PXI_SUB_MANF_ID
  VI_ATTR_PXI_SUB_MODEL_CODE
In the meantime, if programmers wish to utilise these card properties it is
recommended that they should instead be read directly from a card's
configuration space (VI_PXI_CFG_SPACE) using the viIn16 function.



For further assistance, please contact:

Pickering Interfaces Ltd.
Stephenson Road
Clacton-on-Sea
Essex
CO15 4NL
UK

Tel. +44 (0)1255-428141
Fax. +44 (0)1255-475058
WWW: http://www.pickeringtest.com
Email (sales): sales@pickeringtest.com
Email (technical support): support@pickeringtest.com

LabVIEW and LabWindows/CVI are trademarks of National Instruments Corporation -
www.ni.com.


IVI foundation Copyright Notice:

Content from the IVI specifications reproduced with permission from the IVI Foundation. 

The IVI Foundation and its member companies make no warranty of any kind with regard to this material, 
including, but not limited to, the implied warranties of merchantability and fitness for a particular 
purpose. The IVI Foundation and its member companies shall not be liable for errors contained herein or 
for incidental or consequential damages in connection with the furnishing, performance, or use of this 
material. 
