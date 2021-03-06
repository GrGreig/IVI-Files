s��        "�   � ю  Q8   �    R�                               niScope                         NI Digitizers                                                                                            �  struct NIComplexI16[]     �  struct NIComplexNumber[]     �  struct niScope_wfmInfo[]     � ��ViInt8  � � ��ViInt16  �  � ��ViInt32  � � ��ViInt64  � � ��ViReal64     � ��ViRsrc     	� 	��ViBoolean     	� 	��ViSession     � ��ViStatus     �  ViChar[]     � ��ViChar     � ��ViString     �  ViInt8[]     	�  ViInt16[]     	�  ViInt32[]     
�  	ViReal64[]     � 	 
ViBoolean[]     � ��ViConstString     � ��ViAttr  � � ��ViUInt16  � � ��ViUInt32  �   ��ViUInt64      ��ViAddr  �    This tree contains all the user-level functions for the NI SCOPE Instrument Driver.  User-Level functions are typically the only functions that users need to call to control the scope. The hierarchy illustrates the structure of the instrument driver and the organization of functions.

Note:  NI SCOPE requires the VISA and IVI libraries, which are automatically installed using the standard installation CD.

     A    This class contains functions that configure the oscilloscope.
     +    These are the values that may be queried.     E    This class contains functions that configure the trigger subsystem.     D    This class contains the set, get, and check attribute functions.       �    This class contains functions that set an attribute to a new value.  There are typesafe functions for each attribute data type.     �    This class contains functions that obtain the current value of an attribute.  There are typesafe functions for each attribute data type.     �    This class contains functions that obtain the current value of an attribute.  There are typesafe functions for each attribute data type.     t    This class contains functions that initiate acquisitions and retrieve waveforms using the current configuration.       X    This class contains functions that control common instrument operations and utilities.     x    These functions either here for IVI compliance or for backwards compatibility.  Most of these functions are redundant.     E    This class contains functions that configure the trigger subsystem.    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_init</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_init</h1>

<h2>C Function Prototype</h2>
<p class="syntax">ViStatus <span class="Monospace">niScope_init</span> (ViRsrc resourceName, ViBoolean IDQuery, ViBoolean resetDevice, ViSession* vi);</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Performs the following initialization actions:</p>
<ul>
<li>Creates a new IVI  instrument driver session</li>
<li>Opens a session to the specific driver using the interface and address (devices) you specify in the <strong>resourceName</strong></li>
<li>Queries each instrument ID and checks that it is valid for NI-SCOPE</li>
<li>Resets the digitizer(s) to a known state, if  <strong>resetDevice</strong> is set to <span class="Monospace">VI_TRUE</span></li>
<li>Sends initialization commands to set the instrument(s) to the state necessary for the operation of the instrument driver</li>
<li>Returns an instrument handle that you use to identify the instrument(s) in all subsequent instrument driver function calls</li>
</ul>


<h2>Related topics:</h2><ul>    
<li><a href="javascript:LaunchHelp('Digitizers.chm::/Programming_Flow.html')">NI-SCOPE Programming Flow</a></li>   
<li><a href="javascript:LaunchHelp('Digitizers.chm::/Getting_Started_with_NI-SCOPE.html')">NI-SCOPE Tutorial</a></li>
</ul>


</body>
</html>        <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_init</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">resourceName</td>
            <td class="paramDataType">ViRsrc</td>
            <td>Specifies the device name assigned by Measurement &amp; Automation Explorer (MAX) to an NI-SCOPE instrument, for example, <EM>PXI1Slot3</EM>, where PXI1Slot3 is an instrument resource name.<br><br> This parameter accepts a comma-delimited list of strings in the form <EM>PXI1Slot3,PXI1Slot4</EM>, where PXI1Slot3 is one instrument resource name and PXI1Slot4 is another.
            <table class="borderless"><tr>
            <td class="Icon"><img src="note.gif"></td>
            <td colspan=2><strong>Note</strong>&nbsp;&nbsp;You can only specify multiple instruments of identical model numbers, bus types, channel counts, and onboard memory sizes. The instruments must be in the same chassis.</td></tr></table>


    <h3>resourceName Examples</h3>

        <table class="Bordered">
            <tr>
                <th class="Bordered">Example&nbsp;#</th>
                <th class="Bordered">Device Type</th>
                <th class="Bordered">Syntax</th>
                <th class="Bordered">Variable</th>
            </tr>
            <tr>
                <td class="Bordered"><div align="center">1</div></td>
                <td class="Bordered">NI-DAQmx device</td>
                <td class="Bordered"><em>myDAQmxDevice</em></td>
                <td class="Bordered">(<em>myDAQmxDevice</em> = device name)</td>
            </tr>
            <tr>
                <td class="Bordered"><div align="center">2</div></td>
                <td class="Bordered">NI-DAQmx device</td>
                <td class="Bordered">DAQ::<em>myDAQmxDevice</em></td>
                <td class="Bordered">(<em>myDAQmxDevice</em> = device name)</td>
            </tr>
            <tr>
                <td class="Bordered"><div align="center">3</div></td>
                <td class="Bordered">NI-DAQmx device</td>
                <td class="Bordered">DAQ::<em>2</em></td>
                <td class="Bordered">(<em>2</em> = device name)</td>
            </tr>
            <tr>
                <td class="Bordered"><div align="center">4</div></td>
                <td class="Bordered">IVI logical name or IVI virtual name</td>
                <td class="Bordered"><em>myLogicalName</em></td>
                <td class="Bordered">(<em>myLogicalName</em> = name)</td>
            </tr>
        </table>


<p class="Body">For NI-DAQmx devices, the syntax is just the device name specified in MAX, as shown in Example 1. Typical default names for NI-DAQmx devices in MAX are Dev1 or PXI1Slot1. You can rename an NI-DAQmx device by right-clicking on the name in MAX and entering a new name.</p>

<p class="Body">An alternate syntax for NI-DAQmx devices consists of DAQ::<em>NI-DAQmx device name</em>, as shown in Example 2. This naming convention allows for the use of an NI-DAQmx device in an application that was originally designed for a Traditional NI-DAQ device. For example, if the application expects DAQ::1, you can rename the NI-DAQmx device to 1 in MAX and pass in DAQ::1 for the resource name, as shown in Example 3.</p>

<p class="Body">You can also pass in the name of an IVI logical name or an IVI virtual name configured with the IVI Configuration utility, as shown in Example 4. A logical name identifies a particular virtual instrument. A virtual name identifies a specific device and specifies the initial settings for the session.</p>

<table class="borderless"><tr>
<td class="Icon"><img src="note.gif"></td>
<td colspan=2><strong>Note</strong>&nbsp;&nbsp;NI-DAQmx device names are not case-sensitive. However, all IVI names, such as logical names, are case-sensitive. If you use logical names, driver session names, or virtual names in your program, you must make sure that the name you use matches the name in the IVI Configuration Store file exactly, without any variations in the case of the characters.</td></tr></table>

</td>
</tr>
</table></body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_init</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless">
		<tr>
			<td class="paramName">idQuery</td>
			<td class="paramDataType">ViBoolean</td>
			<td>Specify whether  to perform an ID query.
			
			<p class="Body">When you set this parameter to <span class="Monospace">VI_TRUE</span>, 
			NI-SCOPE verifies that the device you initialize is a type that it supports.</p>

<p class="Body">When you set this parameter to <span class="Monospace">VI_FALSE</span>, the 
function initializes the device without performing an ID query.</p>

<p class="Body"><strong>Defined Values</strong></p>

<p class="Body"><span class="Monospace">VI_TRUE</span>&#8212;Perform ID query<br>
<span class="Monospace">VI_FALSE</span>&#8212;Skip ID query</p>

<p class="Body"><strong>Default Value</strong>: <span class="Monospace">VI_TRUE</span></p>
			</td>
		</tr>
		</table></body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_init</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless">
		<tr>
			<td class="paramName">resetDevice</td>
			<td class="paramDataType">ViBoolean</td>
			<td>Specify whether to reset the device during the initialization process.


			<p class="Body"><strong>Defined Values</strong></p>
			<p class="Body"><span class="Monospace">VI_TRUE</span>&#8212;Reset device<br>
			<span class="Monospace">VI_FALSE</span>&#8212;Do not reset device</p>
			<p class="Body"><strong>Default Value</strong>: <span class="Monospace">VI_TRUE</span></p>
			
			</td>
		</tr>
		</table></body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_init</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless">
		<tr>
			<td class="paramName">vi</td>
			<td class="paramDataType">ViSession*</td>
			<td>Returns a session handle that you can use to identify the device in all 
			subsequent NI-SCOPE function calls.</td>
		</tr>
	</table></body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_init</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="borderless">
<tr>
<td class="paramName">Status</td>
<td class="paramDataType">ViStatus</td>
<td>Reports the status of this operation. To obtain a text description of the status code, 
call 
<a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_GetErrorMessage.html')">niScope_GetErrorMessage</a>. 
To obtain additional information concerning the error 
condition, use <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_GetError.html')">niScope_GetError</a> 
and 
<a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_ClearError.html')">niScope_ClearError</a>.

The general meaning of the status code is as follows:<br><br>

<table class="bordered">
<tr>
<th class="bordered">Value</th>
<th class="bordered">Meaning</th>
</tr>
<tr>
<td class="bordered">0</td>
<td class="bordered">Success</td>
</tr>
<tr>
<td class="bordered">Positive Values</td>
<td class="bordered">Warnings</td>
</tr>
<tr>
<td class="bordered">Negative Values</td>
<td class="bordered">Errors</td>
</tr>
</table>
</td></tr></table>
</body>
</html>    � :   �  �    Resource Name                      � 9 �       ID Query                          %� :� �       Reset Device                      )j!  �  �    Instrument Handle                 ,!����  �    Status                          ����  o��                                            	"DAQ::1"  *  Yes NISCOPE_VAL_TRUE No NISCOPE_VAL_FALSE  * Yes NISCOPE_VAL_TRUE No NISCOPE_VAL_FALSE    	           	           FCopyright 1998 National Instruments Corporation. All Rights Reserved.   w    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_InitWithOptions</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_InitWithOptions </h1>
<H2>C Function Prototype</H2>
<p class="syntax">ViStatus niScope_InitWithOptions (ViRsrc 
resourceName, ViBoolean IDQuery, ViBoolean resetDevice, ViString optionString, 
ViSession* newVi);</p>
<h2 class="purpose">Purpose</h2>
<P class = "Body">Performs the following initialization actions:</P>
<UL>
  <LI>Creates a new IVI instrument driver session and optionally sets the initial state 
  of the following session properties: Range Check, Cache, Simulate, Record 
  Value Coercions </li>
  <LI>Opens a session to the device(s) specified using the interface and address 
  you use for the <strong>resourceName</strong>  </li>
  <LI>Queries each instrument ID and verifies that it is valid for this 
  instrument driver</li>
  <LI>Resets the digitizer(s) to a known state if  <strong>resetDevice</strong>  is set 
  to <span class="Monospace">VI_TRUE</span> </li>
  <LI>Returns an instrument handle that you use to identify the instrument(s) in 
  all subsequent instrument driver function calls </LI></UL>

<h2>Related topics:</h2>
<ul>    
<li><a href="javascript:LaunchHelp('Digitizers.chm::/Programming_Flow.html')">NI-SCOPE Programming Flow</a></li>               
</ul>


</body>
</html>        <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_init</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">resourceName</td>
            <td class="paramDataType">ViRsrc</td>
            <td>Specifies the device name assigned by Measurement &amp; Automation Explorer (MAX) to an NI-SCOPE instrument, for example, <EM>PXI1Slot3</EM>, where PXI1Slot3 is an instrument resource name.<br><br> This parameter accepts a comma-delimited list of strings in the form <EM>PXI1Slot3,PXI1Slot4</EM>, where PXI1Slot3 is one instrument resource name and PXI1Slot4 is another.
            <table class="borderless"><tr>
            <td class="Icon"><img src="note.gif"></td>
            <td colspan=2><strong>Note</strong>&nbsp;&nbsp;You can only specify multiple instruments of identical model numbers, bus types, channel counts, and onboard memory sizes. The instruments must be in the same chassis.</td></tr></table>


    <h3>resourceName Examples</h3>

        <table class="Bordered">
            <tr>
                <th class="Bordered">Example&nbsp;#</th>
                <th class="Bordered">Device Type</th>
                <th class="Bordered">Syntax</th>
                <th class="Bordered">Variable</th>
            </tr>
            <tr>
                <td class="Bordered"><div align="center">1</div></td>
                <td class="Bordered">NI-DAQmx device</td>
                <td class="Bordered"><em>myDAQmxDevice</em></td>
                <td class="Bordered">(<em>myDAQmxDevice</em> = device name)</td>
            </tr>
            <tr>
                <td class="Bordered"><div align="center">2</div></td>
                <td class="Bordered">NI-DAQmx device</td>
                <td class="Bordered">DAQ::<em>myDAQmxDevice</em></td>
                <td class="Bordered">(<em>myDAQmxDevice</em> = device name)</td>
            </tr>
            <tr>
                <td class="Bordered"><div align="center">3</div></td>
                <td class="Bordered">NI-DAQmx device</td>
                <td class="Bordered">DAQ::<em>2</em></td>
                <td class="Bordered">(<em>2</em> = device name)</td>
            </tr>
            <tr>
                <td class="Bordered"><div align="center">4</div></td>
                <td class="Bordered">IVI logical name or IVI virtual name</td>
                <td class="Bordered"><em>myLogicalName</em></td>
                <td class="Bordered">(<em>myLogicalName</em> = name)</td>
            </tr>
        </table>


<p class="Body">For NI-DAQmx devices, the syntax is just the device name specified in MAX, as shown in Example 1. Typical default names for NI-DAQmx devices in MAX are Dev1 or PXI1Slot1. You can rename an NI-DAQmx device by right-clicking on the name in MAX and entering a new name.</p>

<p class="Body">An alternate syntax for NI-DAQmx devices consists of DAQ::<em>NI-DAQmx device name</em>, as shown in Example 2. This naming convention allows for the use of an NI-DAQmx device in an application that was originally designed for a Traditional NI-DAQ device. For example, if the application expects DAQ::1, you can rename the NI-DAQmx device to 1 in MAX and pass in DAQ::1 for the resource name, as shown in Example 3.</p>

<p class="Body">You can also pass in the name of an IVI logical name or an IVI virtual name configured with the IVI Configuration utility, as shown in Example 4. A logical name identifies a particular virtual instrument. A virtual name identifies a specific device and specifies the initial settings for the session.</p>

<table class="borderless"><tr>
<td class="Icon"><img src="note.gif"></td>
<td colspan=2><strong>Note</strong>&nbsp;&nbsp;NI-DAQmx device names are not case-sensitive. However, all IVI names, such as logical names, are case-sensitive. If you use logical names, driver session names, or virtual names in your program, you must make sure that the name you use matches the name in the IVI Configuration Store file exactly, without any variations in the case of the characters.</td></tr></table>

</td>
</tr>
</table></body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_InitWithOptions</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr>
    <td class="paramName">resetDevice</td>
    <td class="paramDataType">ViBoolean</td>
    <td>Specify whether to reset the device during the initialization 
			process.			
			
			
      
<P class = "Body">Default Value: <span class="Monospace">VI_TRUE</span></p>

<P class = "Body"><STRONG>Defined Values</STRONG></P>
      <P class = "Body"><span class="Monospace">VI_TRUE</span> (1)&#8212;Reset device</P>
      <P class = "Body"><span class="Monospace">VI_FALSE</span> (0)&#8212;Do not reset device</P></td></tr>
	  
</table></body>
</html>    
�    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_InitWithOptions</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">optionString</td>
    <td class="paramDataType"></td>
    <td>Specifies initialization commands. The following table 
      lists the attributes and the name you use in the <strong>optionString</strong>  
      to identify the attribute.<br><br>
      <TABLE class = "Bordered">
        <TBODY>
        <TR>
          <TH class = "Bordered">Attribute Name</TH>
          <TH class = "Bordered">Attribute Values</TH></tr>
        <TR>
          <TD class = "Bordered">RangeCheck - NISCOPE_ATTR_RANGE_CHECK</TD>
          <TD class = "Bordered"><span class="Monospace">VI_TRUE</span>, <span class="Monospace">VI_FALSE</span></TD></TR>
        <TR>
          <TD class = "Bordered">QueryInstrStatus - 
          NISCOPE_QUERY_INSTRUMENT_STATUS</TD>
          <TD class = "Bordered"><span class="Monospace">VI_TRUE</span>, <span class="Monospace">VI_FALSE</span></TD></TR>
        <TR>
          <TD class = "Bordered">Cache - NISCOPE_ATTR_CACHE</TD>
          <TD class = "Bordered"><span class="Monospace">VI_TRUE</span>, <span class="Monospace">VI_FALSE</span></TD></TR>
        <TR>
          <TD class = "Bordered">Simulate - NISCOPE_ATTR_SIMULATE</TD>
          <TD class = "Bordered"><span class="Monospace">VI_TRUE</span>, <span class="Monospace">VI_FALSE</span></TD></TR></TBODY></TABLE>
      <P class = "Body">Default Values: 
      &#34;Simulate=0,RangeCheck=1,QueryInstrStatus=1,Cache=1&#34;</P>
      <P class = "Body">You can use the option string to simulate a device. The 
      DriverSetup flag specifies the model that is to be simulated and the type 
      of the model. One example to simulate a PXI-5105 would be as 
      follows:</P>
      <P class = "Body">Option String: <span class="Monospace">Simulate = 1, DriverSetup = Model:5105; 
      BoardType:PXI</span></P>
      <P class = "Body">Refer to the example  <span class="Monospace">niScope EX Simulated Acquisition</span> for 
      more information on simulation.</P>
       <p class="Body"> You can also use the option string to  attach an accessory such as the PXI-5900 to your digitizer session to allow the seamless use  of the accessory: 
<P class = "Body">Option String: <span class="Monospace">DriverSetup = Accessory:Dev1</span></p>
 <P class = "Body">Refer to the example  <span class="Monospace">niScope EX External Amplifier</span> for more information. </p> 
 
</td></tr>
</table></body>    :a :   �  �    Resource Name                     Ky :� �       Reset Device                      )j!  �  �    Instrument Handle                 ,!����  �    Status                          ����  o��                                           OY �  �  �    Option String                      � : �       ID Query                           	"DAQ::1"  * Yes NISCOPE_VAL_TRUE No NISCOPE_VAL_FALSE    	           	           FCopyright 1998 National Instruments Corporation. All Rights Reserved.    ""Simulate=0,RangeCheck=1,Cache=1"  *  Yes NISCOPE_VAL_TRUE No NISCOPE_VAL_FALSE   :    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_close</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_close</h1>


<h2>C Function Prototype</h2>
<p class="syntax">ViStatus niScope_close (ViSession vi);</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">When you are finished using an instrument driver session, you must call this function to perform the following actions:
</p>
<ul>

<li>Closes the instrument I/O session.
</li>
<li>Destroys the IVI  session and all of its attributes.
</li>
<li>Deallocates any memory resources used by the IVI  session.
</li>
</ul>

<h2>Related topics:</h2><ul>               

<li><a href="javascript:LaunchHelp('Digitizers.chm::/Programming_Flow.html')">NI-SCOPE Programming Flow</a></li>
</ul>


</body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_close</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">vi</td>
<td class="paramDataType">ViSession</td>
<td>The instrument handle you obtain from  <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_init.html')"><span class="Monospace">niScope_init</span></a> that identifies a particular instrument session.</td></tr></table></body>
</html>    ,#����  �    Status                            `�-   �  �    Instrument Handle                  	              �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_AutoSetup</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_AutoSetup</h1>


<h2>C Function Prototype</h2>
<p class="syntax">ViStatus niScope_AutoSetup (ViSession vi);</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Automatically configures the instrument.
 When you call this function, the digitizer senses the input signal and automatically 
configures many of the instrument settings. If a signal is detected on a channel, the driver chooses the smallest available vertical range that is larger than the signal range. For example, if the signal is  a 1.2&nbsp;V<sub>pk-pk</sub>
sine wave, and the device supports 1&nbsp;V and 2&nbsp;V vertical ranges, the driver will choose the 2&nbsp;V
 vertical range for that channel.</p>
 
 <p class ="body">
 If no signal is found on any analog input channel, a warning is returned, and all channels are enabled. A channel is considered to have a signal present if the signal is at least 10% of the smallest vertical range available for that channel.
</p>
<p class="Body">The following settings are changed:
</p>
<table class="Borderless">
<tr><td colspan="2"><strong>General</strong></td></tr>
<tr><td>Acquisition mode</td><td>Normal</td></tr>
<tr><td>Reference clock</td><td>Internal</td></tr>
<tr><td colspan="2"><strong>Vertical</strong>
</td></tr>
<tr><td>Vertical coupling</td><td>AC (when AC is supported; otherwise DC)</td></tr>
<tr><td>Vertical bandwidth&nbsp;&nbsp;&nbsp;</td><td>Full</td></tr>
<tr><td>Vertical range</td><td>Changed by auto setup</td></tr>
<tr><td>Vertical offset</td><td>0 V</td></tr>
<tr><td>Probe attenuation</td><td>Unchanged by auto setup</td></tr>
<tr><td>Input impedance</td><td>Unchanged by auto setup</td></tr>
<tr><td colspan="2"><strong>Horizontal</strong>
</td></tr>
<tr><td>Sample rate</td><td>Changed by auto setup</td></tr>
<tr><td>Min record length</td><td>Changed by auto setup</td></tr>
<tr><td>Enforce realtime</td><td>True</td></tr>
<tr><td>Number of Records</td><td>Changed to 1</td></tr>
<tr><td colspan="2"><strong>Triggering</strong>
</td></tr>
<tr><td>Trigger type</td><td>Edge if signal present, otherwise immediate</td></tr>
<tr><td>Trigger channel</td><td>Lowest numbered channel with a signal present</td></tr>
<tr><td>Trigger slope</td><td>Positive</td></tr>
<tr><td>Trigger coupling</td><td>DC</td></tr>
<tr><td>Reference position</td><td>50%</td></tr>
<tr><td>Trigger level</td><td>50% of signal on trigger channel</td></tr>
<tr><td>Trigger delay</td><td>0</td></tr>
<tr><td>Trigger holdoff</td><td>0</td></tr>
<tr><td>Trigger output</td><td>None</td></tr></table>

<h2>Related topics:</h2><ul>    <li><a href="javascript:LaunchHelp('Digitizers.chm::/Configuring_an_Acquisition_Using_Auto_Setup.html')">Configuring an Acquisition Using Auto_Setup</a></li>               </ul>



</body>
</html>    `�( 
  �  �    Instrument Handle                 ,����  �    Status                                 	          �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_ConfigureAcquisition</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_ConfigureAcquisition
</h1>


<h2>C Function Prototype</h2>
<p class="syntax">ViStatus niScope_ConfigureAcquisition(ViSession vi, ViInt32 acquisitionType);</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Configures how the oscilloscope acquires data and fills the waveform record.</p>


<h2>Related topics:</h2><ul>    <li><a href="javascript:LaunchHelp('Digitizers.chm::/Acquisition_Functions.html')">Acquisition Functions</a></li>               </ul>

</body>
</html>    g    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_ConfigureAcquisition</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">acquisitionType</td>
<td class="paramDataType">ViInt32</td>
<td>Specifies the manner in which the digitizer acquires data and fills the waveform record; NI-SCOPE 
sets  <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviNISCOPE_ATTR_ACQUISITION_TYPE.html')"><span class="Monospace">NISCOPE_ATTR_ACQUISITION_TYPE</span></A>  to this value.

<p class="Body"><strong>Defined Values</strong></p>


<table class="Bordered">
<tr>
<td class="Bordered"><span class="Monospace">NISCOPE_VAL_NORMAL (0)</span></td>
<td class="Bordered">Sets the oscilloscope to normal resolution mode. The oscilloscope can use real-time sampling or equivalent-time sampling.</td>
</tr>
<tr>
<td class="Bordered"><span class="Monospace">NISCOPE_VAL_FLEXRES (1001)</span></td>
<td class="Bordered">Sets legacy oscilloscopes to flexible resolution mode, if supported.</td>
</tr>
<tr>
<td class="Bordered"><span class="Monospace">NISCOPE_VAL_DDC (1002)</span></td>
<td class="Bordered">Sets legacy oscilloscopes to DDC mode, if supported. To use DDC mode for the PXI/PCI-5142 or PXIe-5622, set this control to <span class="monospace">NISCOPE_VAL_NORMAL</span> and set the <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviNISCOPE_ATTR_DDC_ENABLED.html')"><span class="monospace">NISCOPE_ATTR_DDC_ENABLED</span></a> attribute to <span class="monospace">VI_TRUE</span>.</td>
</tr>
</table>

</td></tr></table></body>
</html>    `�-   �  �    Instrument Handle                 ,#����  �    Status                            u e �  �    Acquisition Type                       	                      KNormal NISCOPE_VAL_NORMAL Flex Res NISCOPE_VAL_FLEXRES DDC NISCOPE_VAL_DDC   ,    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title> niScope_ConfigureHorizontalTiming</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_ConfigureHorizontalTiming</h1>


<h2>C Function Prototype</h2>
<p class="syntax">ViStatus niScope_ConfigureHorizontalTiming (ViSession vi, ViReal64 minSampleRate, ViInt32 minNumPts, ViReal64 refPosition, ViInt32 numRecords, ViBoolean enforceRealtime);</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Configures the common properties of the horizontal subsystem for a multirecord acquisition in terms of minimum sample rate.
</p>

<h2>Related topics:</h2>
<ul>    
  <li><a href="javascript:LaunchHelp('Digitizers.chm::/Configuring_Horizontal.html')">Configuring the Horizontal Settings</a></li>  
  <li><a href="javascript:LaunchMergedHelp('Digitizers.chm','nitclk.chm','niTClk_overview.html')">NI-TClk Overview</a></li>
  <li><a href="javascript:LaunchHelp('Digitizers.chm::/Horizontal_Parameters.html')">Coercions of Horizontal Parameters</a></li>
</ul>




</body>
</html>    !    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title> niScope_ConfigureHorizontalTiming</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">minSampleRate</td>
<td class="paramDataType">ViReal64</td>
<td>The sampling rate for the acquisition. Refer to <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviNISCOPE_ATTR_MIN_SAMPLE_RATE.html')"><span class="Monospace">NISCOPE_ATTR_MIN_SAMPLE_RATE</span></A> for more information.</td></tr>
</table></body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title> niScope_ConfigureHorizontalTiming</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">minNumPts</td>
<td class="paramDataType">ViInt32</td>
<td>The minimum number of points you need in the record for each channel; call <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_ActualRecordLength.html')"><span class="Monospace">niScope_ActualRecordLength</span></a> to obtain the actual record length used.

<p class = "Body">Valid Values: 
 Greater than 1; limited by available memory</p></td></tr>
</table></body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title> niScope_ConfigureHorizontalTiming</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">refPosition</td>
<td class="paramDataType">ViReal64</td>
<td>The position of the Reference Event in the waveform record specified as a percentage.</td></tr>
</table></body>
</html>    I    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title> niScope_ConfigureHorizontalTiming</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">numRecords</td>
<td class="paramDataType">ViInt32</td>
<td>The number of records to acquire</td></tr>
</table></body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title> niScope_ConfigureHorizontalTiming</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">enforceRealtime</td>
<td class="paramDataType">ViBoolean</td>
<td>Indicates whether the digitizer enforces real-time measurements or allows equivalent-time 
(RIS) measurements; not all digitizers support RIS&#8212;refer to 
<a href="javascript:LaunchHelp('Digitizers.chm::/Features_Supported_Main.html')">Features Supported by Device</a> for more 
information. <p class ="Body">Default value: <span class="Monospace">VI_TRUE</span></p>

<p class="Body"><strong>Defined Values</strong>
</p>
<p class="Body"><span class="Monospace">VI_TRUE</span>&#8212;Allow real-time acquisitions only 
</p>
<p class="Body"><span class="Monospace">VI_FALSE</span>&#8212;Allow real-time and equivalent-time acquisitions</p></td>
</tr></table></body>
</html>    �� 4 ^ �  �    Min Sample Rate                   �� 4( �  �    Min Num Pts                       `�   �  �    Instrument Handle                 �� z ^ �  �    Ref Position                      � z( �  �    Num Records                       �f � v �       Enforce Realtime                  ,y���  �    Status                             	20000000    1000        50.0    1  * On NISCOPE_VAL_TRUE Off NISCOPE_VAL_FALSE    	          �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_ConfigureChanCharacteristics</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_ConfigureChanCharacteristics
</h1>


<h2>C Function Prototype</h2>
<p class="syntax">ViStatus niScope_ConfigureChanCharacteristics (ViSession vi, ViConstString channelList, ViReal64 inputImpedance, ViReal64 maxInputFrequency);</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Configures the attributes that control the electrical characteristics of the channel&#8212;the input impedance and the bandwidth.</p>


<h2>Related topics:</h2><ul>    <li><a href="javascript:LaunchHelp('Digitizers.chm::/Configure_Chan_Characteristics.html')">Using Configure Chan Characteristics </a></li>   <li><a href="javascript:LaunchHelp('Digitizers.chm::/Impedance_and_Impedance_Matching.html')">Impedance and Impedance Matching</a></li> 
            </ul>



</body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_ConfigureChanCharacteristics</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">channelList</td>
<td class="paramDataType">ViConstString</td>
<td>The channel to configure. For more information, refer to <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviChannelStringSyntaxforC.html')">Channel String Syntax</a>.</td></tr>
</table></body>
</html>    "    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_ConfigureChanCharacteristics</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">inputImpedance</td>
<td class="paramDataType">ViReal64</td>
<td>The input impedance for the channel; NI-SCOPE sets  <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviNISCOPE_ATTR_INPUT_IMPEDANCE.html')"><span class="Monospace">NISCOPE_ATTR_INPUT_IMPEDANCE</span></A>  to this value.</td></tr>
</table></body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_ConfigureChanCharacteristics</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">maxInputFrequency</td>
<td class="paramDataType">ViReal64</td>
<td>The bandwidth for the channel; NI-SCOPE sets  <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviNISCOPE_ATTR_MAX_INPUT_FREQUENCY.html')"><span class="Monospace">NISCOPE_ATTR_MAX_INPUT_FREQUENCY</span></A> to this value.
Pass  0 for this value to use the hardware default bandwidth. Pass &#8211;1 for this value to achieve full bandwidth.</td></tr></table></body>
</html>    `�-   �  �    Instrument Handle                 �� /  �  �    Channel List                      ,#����  �    Status                            �� /? �  �    Input Impedance                   �� -� � K    Max Input Frequency                    "0"    	                      =1 Mega Ohm NISCOPE_VAL_1_MEG_OHM 50 Ohms NISCOPE_VAL_50_OHMS ?�      A�����                              /    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_ConfigureVertical</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_ConfigureVertical</h1>

<h2>C Function Prototype</h2>
<p class="syntax">ViStatus niScope_ConfigureVertical (ViSession vi, ViConstString channelList, ViReal64 range, ViReal64 offset, ViInt32 coupling, ViReal64 probeAttenuation, ViBoolean enabled);</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Configures the most commonly configured attributes of the digitizer vertical subsystem, such as the range, offset, coupling, probe attenuation, and the channel.</p>


<h2>Related topics:</h2><ul>    <li><a href="javascript:LaunchHelp('Digitizers.chm::/Configuring_Vertical.html')">Configuring the Vertical Settings</a></li>   <li><a href="javascript:LaunchHelp('Digitizers.chm::/Programming_Flow.html')">NI-SCOPE  Programming Flow</a></li>   <li><a href="javascript:LaunchHelp('Digitizers.chm::/Vertical_Parameters.html')">Coercions of Vertical Parameters</a></li>
     </ul>


</body>
</html>        <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_ConfigureVertical</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">range</td>
<td class="paramDataType">ViReal64</td>
<td>Specifies the vertical range Refer to  <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviNISCOPE_ATTR_VERTICAL_RANGE.html')"><span class="Monospace">NISCOPE_ATTR_VERTICAL_RANGE</span></A> 
for more information.</td></tr>
</table></body>
</html>    
    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_ConfigureVertical</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">offset</td>
<td class="paramDataType">ViReal64</td>
<td>Specifies the vertical offset. Refer to  <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviNISCOPE_ATTR_VERTICAL_OFFSET.html')"><span class="Monospace">NISCOPE_ATTR_VERTICAL_OFFSET</span></A> for more information.</td></tr>
</table></body>
</html>        <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_ConfigureVertical</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">coupling</td>
<td class="paramDataType">ViInt32</td>
<td>Specifies how to couple the input signal. Refer to 
 <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviNISCOPE_ATTR_VERTICAL_COUPLING.html')"><span class="Monospace">NISCOPE_ATTR_VERTICAL_COUPLING</span></A> for more information.</td></tr>
</table></body>
</html>        <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_ConfigureVertical</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">probeAttenuation</td>
<td class="paramDataType">ViReal64</td>
<td>Specifies the probe attenuation. Refer to <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviNISCOPE_ATTR_PROBE_ATTENUATION.html')"><span class="Monospace">NISCOPE_ATTR_PROBE_ATTENUATION</span></A>
for valid values.</td></tr>
</table></body>
</html>    $    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_ConfigureVertical</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">enabled</td>
<td class="paramDataType">ViBoolean</td>
<td>Specifies whether the channel is enabled for acquisition. Refer to <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviNISCOPE_ATTR_CHANNEL_ENABLED.html')"><span class="Monospace">NISCOPE_ATTR_CHANNEL_ENABLED</span></A> for more information.</td></tr></table></body>
</html>    `�-   �  �    Instrument Handle                 �� =  �  �    Channel List                      �J > � �  �    Range                             �Y ={ �  �    Offset                            ,#����  �    Status                            �k � f �  �    Coupling                          �� � � �  �    Probe Attenuation                 �� �� �  �    Enabled                                "0"    10    0    	                     8AC NISCOPE_VAL_AC DC NISCOPE_VAL_DC GND NISCOPE_VAL_GND    1.0  . True NISCOPE_VAL_TRUE False NISCOPE_VAL_FALSE       <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_ActualRecordLength</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_ActualRecordLength
</h1>


<h2>C Function Prototype</h2>
<p class="syntax">ViStatus niScope_ActualRecordLength (ViSession vi, ViInt32* recordLength);</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Returns the actual number of points the digitizer acquires for each channel. After configuring the digitizer for an acquisition, call this function to determine the size of the waveforms that the digitizer acquires. The value is equal to or greater than the minimum number of points specified in any of the Configure Horizontal functions.</p>



<h2>Related topics:</h2><ul>   
 <li><a href="javascript:LaunchHelp('Digitizers.chm::/Sample_Rate.html')">Sample Rate</a></li> 
 

  <li><a href="javascript:LaunchHelp('Digitizers.chm::/Horizontal_Parameters.html')">Coercions of Horizontal Parameters</a></li>          </ul>




</body>
</html>    U    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_ActualRecordLength</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">recordLength</td>
<td class="paramDataType">ViInt32*</td>
<td>Returns the actual number of points the digitizer acquires for each channel; NI-SCOPE returns the value held in the <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviNISCOPE_ATTR_HORZ_RECORD_LENGTH.html')"><span class="Monospace">NISCOPE_ATTR_HORZ_RECORD_LENGTH</span></A> attribute.</td></tr></table></body>
</html>    `�( 
  �  �    Instrument Handle                 ,����  �    Status                            �, ^ � �  �    Record Length                          	           	               <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title> niScope_ActualNumWfms</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_ActualNumWfms</h1>


<h2>C Function Prototype</h2>
<p class="syntax">ViStatus niScope_ActualNumWfms (ViSession vi, ViConstString channelList, ViInt32* numWfms);</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Helps you to declare appropriately sized waveforms. NI-SCOPE handles the channel list parsing for you. 
</p>
</body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title> niScope_ActualNumWfms</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">numWfms</td>
<td class="paramDataType">ViInt32*</td>
<td>Returns the number of records times the number of channels; if the <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_ConfigureAcquisition.html')"><span class="monospace">niScope_ConfigureAcquisition</span></a> <strong>acquisitionType</strong> is set to <span class="monospace">NISCOPE_VAL_DDC</span>, this value is multiplied by two.</td></tr></table></body>
</html>    �� 5 � �  �    Channel List                      `�   �  �    Instrument Handle                 ,����  �    Status                            �N { � �  �    Num Wfms                           "0"        	           	           �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title> niScope_ActualMeasWfmSize</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_ActualMeasWfmSize
</h1>

<h2>C Function Prototype</h2>
<p class="syntax">ViStatus niScope_ActualMeasWfmSize(ViSession vi, ViInt32 arrayMeasFunction, ViInt32* measWfmSize);</p>


<h2 class="purpose">Purpose</h2>


<p class="Body">Returns the total available size of an array measurement acquisition. 
</p>
</body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title> niScope_ActualMeasWfmSize</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">arrayMeasFunction</td>
<td class="paramDataType">ViInt32</td>
<td>The <a href="javascript:LaunchMergedHelp('Digitizers.chm', 'Array_Measurements_refs.html')">array measurement</a> to perform.</td></tr>
</table></body>
</html>    n    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title> niScope_ActualMeasWfmSize</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">measWfmSize</td>
<td class="paramDataType">ViInt32*</td>
<td>Returns the size (in number of samples) of the resulting analysis waveform.</td></tr>
</table></body>
</html>    `�   �  �    Instrument Handle                 ,����  �    Status                            �� ; � �     Array Meas Function               �| { � �  �    Meas Waveform Size                     	                     None NISCOPE_VAL_NO_MEASUREMENT Last Acquisition Histogram NISCOPE_VAL_LAST_ACQ_HISTOGRAM Multi-Acquisition Voltage Histogram NISCOPE_VAL_MULTI_ACQ_VOLTAGE_HISTOGRAM Multi Acquisition Time Histogram NISCOPE_VAL_MULTI_ACQ_TIME_HISTOGRAM Multi Acquisition Average NISCOPE_VAL_MULTI_ACQ_AVERAGE FFT Phase Spectrum NISCOPE_VAL_FFT_PHASE_SPECTRUM FFT Amplitude Spectrum (Volts RMS) NISCOPE_VAL_FFT_AMP_SPECTRUM_VOLTS_RMS FFT Amplitude Spectrum (dB) NISCOPE_VAL_FFT_AMP_SPECTRUM_DB Polynomial Interpolation NISCOPE_VAL_POLYNOMIAL_INTERPOLATION Array Integral NISCOPE_VAL_ARRAY_INTEGRAL Derivative NISCOPE_VAL_DERIVATIVE Inverse NISCOPE_VAL_INVERSE Multiply Channels NISCOPE_VAL_MULTIPLY_CHANNELS Add Channels NISCOPE_VAL_ADD_CHANNELS Subtract Channels NISCOPE_VAL_SUBTRACT_CHANNELS Divide Channels NISCOPE_VAL_DIVIDE_CHANNELS Array Offset NISCOPE_VAL_ARRAY_OFFSET Array Gain NISCOPE_VAL_ARRAY_GAIN Triangle Window NISCOPE_VAL_TRIANGLE_WINDOW Blackman Window NISCOPE_VAL_BLACKMAN_WINDOW Hamming Window NISCOPE_VAL_HAMMING_WINDOW Hanning Window NISCOPE_VAL_HANNING_WINDOW Flat Top Window NISCOPE_VAL_FLAT_TOP_WINDOW Butterworth IIR Filter NISCOPE_VAL_BUTTERWORTH_FILTER Chebyshev IIR Filter NISCOPE_VAL_CHEBYSHEV_FILTER Bessel IIR Filter NISCOPE_VAL_BESSEL_FILTER FIR Windowed Filter NISCOPE_VAL_WINDOWED_FIR_FILTER    	           V    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_SampleMode</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_SampleMode
</h1>


<h2>C Function Prototype</h2>
<p class="syntax">ViStatus niScope_SampleMode (ViSession vi, ViInt32* sampleMode);</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Returns the sample mode the digitizer is currently using. 
</p>

<h2>Related topics:</h2><ul>    <li><a href="javascript:LaunchHelp('Digitizers.chm::/Sampling_Methods.html')">Sampling Methods</a></li>             </ul>





</body>
</html>    '    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_SampleMode</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">sampleMode</td>
<td class="paramDataType">ViInt32*</td>
<td>Returns the sample mode the digitizer is currently using; NI-SCOPE returns the value of the <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviNISCOPE_ATTR_SAMPLE_MODE.html')"><span class="Monospace">NISCOPE_ATTR_SAMPLE_MODE</span></A> attribute.</td></tr>
</table></body>
</html>    `�( 
  �  �    Instrument Handle                 ,����  �    Status                            �k W � �  �    Sample Mode                            	           	               <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_SampleRate</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_SampleRate</h1>


<h2>C Function Prototype</h2>
<p class="syntax">ViStatus niScope_SampleRate (ViSession vi, ViReal64* actualSampleRate);</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Returns the effective sample rate, in samples per second, of the acquired waveform using the current configuration. 
Refer to <a href="javascript:LaunchHelp('Digitizers.chm::/Horizontal_Parameters.html')">Coercions of Horizontal Parameters</a> for more information about sample rate coercion.</p>



<h2>Related topics:</h2><ul>   
 <li><a href="javascript:LaunchHelp('Digitizers.chm::/Sample_Rate.html')">Sample Rate</a></li>  
<li><a href="javascript:LaunchHelp('Digitizers.chm::/Horizontal_Parameters.html')">Coercions of Horizontal Parameters</a></li>
    <li><a href="javascript:LaunchHelp('Digitizers.chm::/Sample_Clock.html')">Sample Clock</a></li>      </ul>

</body>
</html>    i    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_SampleRate</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">actualSampleRate</td>
<td class="paramDataType">ViReal64*</td>
<td>Returns the effective sample rate of the acquired waveform the digitizer acquires for each channel; the driver returns the value held in the <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviNISCOPE_ATTR_HORZ_SAMPLE_RATE.html')"><span class="Monospace">NISCOPE_ATTR_HORZ_SAMPLE_RATE</span></A> attribute.</td></tr>
</table></body>
</html>    `�( 
  �  �    Instrument Handle                 ,����  �    Status                            �s ^ � �  �    Sample Rate                            	           	          \    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title> niScope_ConfigureTriggerDigital</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_ConfigureTriggerDigital</h1>


<h2>C Function Prototype</h2>
<p class="syntax">ViStatus niScope_ConfigureTriggerDigital (ViSession vi, ViConstString triggerSource, ViInt32 slope, ViReal64 holdoff, ViReal64 delay);</p>


<h2 class="purpose">Purpose</h2>


<p class="Body">Configures the common properties of a digital trigger. 
</p>


<p class="Body">

When you initiate an acquisition, the digitizer waits for the start trigger, which is configured through the <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviNISCOPE_ATTR_ACQ_ARM_SOURCE.html')"><span class="Monospace">NISCOPE_ATTR_ACQ_ARM_SOURCE</span></a> (Start Trigger Source) attribute. The default is immediate. Upon receiving the start trigger the digitizer begins sampling pretrigger points. After the digitizer finishes sampling pretrigger points, the digitizer waits for a reference (stop) trigger that you specify with a function such as this one. Upon receiving the reference trigger the digitizer finishes the acquisition after completing posttrigger sampling. With each Configure Trigger function, you specify configuration parameters such as the trigger source and the amount of trigger delay.
</p>

<table class="Borderless-Wide">
<tr>
<td class="Icon"><img src="note.gif"></td>
<td>
<strong>Notes</strong>&nbsp;&nbsp;For multirecord acquisitions, all records after the first record are started by using the Advance Trigger Source. The default is immediate. 

<p class="Body">You can adjust the amount of pre-trigger and post-trigger 
samples using the reference position parameter on the <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_ConfigureHorizontalTiming.html')"><span class="Monospace">niScope_ConfigureHorizontalTiming</span></a> function. 
The default is half of the record length.</p>


<p class="Body">Some features are not supported by all digitizers. Refer to <a href="javascript:LaunchHelp('Digitizers.chm::/Features_Supported_Main.html')">Features 
Supported by Device</a>  for more information.</p>

<p class="Body">Digital triggering is not supported in RIS mode.</p>
</td></tr></table>



<h2>Related topics:</h2><ul>    <li><a href="javascript:LaunchHelp('Digitizers.chm::/Digital_Triggers.html')">Digital Triggers</a></li>             

<li><a href="javascript:LaunchHelp('Digitizers.chm::/RIS.html')">Equivalent-Time Sampling and Random Interleaved Sampling</a></li>   </ul>


</body>
</html>    C    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title> niScope_ConfigureTriggerDigital</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">slope</td>
<td class="paramDataType">ViInt32</td>
<td>Specifies whether you want a rising edge or a falling edge to trigger the digitizer.

Refer to <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviNISCOPE_ATTR_TRIGGER_SLOPE.html')"><span class="Monospace">NISCOPE_ATTR_TRIGGER_SLOPE</span></A> for more information.</td></tr>
</table></body>
</html>        <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title> niScope_ConfigureTriggerDigital</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">triggerSource</td>
<td class="paramDataType">ViConstString</td>
<td>Specifies the trigger source. Refer to 
<a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviNISCOPE_ATTR_TRIGGER_SOURCE.html')"><span class="Monospace">NISCOPE_ATTR_TRIGGER_SOURCE</span></A> for defined values.</td></tr>



</table></body>
</html>    l    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title> niScope_ConfigureTriggerDigital</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">holdoff </td>
<td class="paramDataType">ViReal64</td>
<td>The length of time the digitizer waits after detecting a trigger before enabling NI-SCOPE to detect 
another trigger.  Refer to  <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviNISCOPE_ATTR_TRIGGER_HOLDOFF.html')"><span class="Monospace">NISCOPE_ATTR_TRIGGER_HOLDOFF</span></A> for more information.</td></tr>
</table></body>
</html>    K    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title> niScope_ConfigureTriggerDigital</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">delay </td>
<td class="paramDataType">ViReal64</td>
<td>How long the digitizer waits after receiving the trigger to start acquiring data. Refer to
 <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviNISCOPE_ATTR_TRIGGER_DELAY_TIME.html')"><span class="Monospace">NISCOPE_ATTR_TRIGGER_DELAY_TIME</span></A> for more information.</td></tr>
</table></body>
</html>    � >j �  �    Slope                             `�!   �  �    Instrument Handle                 ,!����  �    Status                            �N B � � �    Trigger Source                    �u � � �  �    Holdoff                           � �; �  �    Delay                                         <Positive NISCOPE_VAL_POSITIVE Negative NISCOPE_VAL_NEGATIVE        	                     �RTSI 0 NISCOPE_VAL_RTSI_0 RTSI 1 NISCOPE_VAL_RTSI_1 RTSI 2 NISCOPE_VAL_RTSI_2 RTSI 3 NISCOPE_VAL_RTSI_3 RTSI 4 NISCOPE_VAL_RTSI_4 RTSI 5 NISCOPE_VAL_RTSI_5 RTSI 6 NISCOPE_VAL_RTSI_6 PFI 0 NISCOPE_VAL_PFI_0 PFI 1 NISCOPE_VAL_PFI_1 PFI 2 NISCOPE_VAL_PFI_2 PFI 3 NISCOPE_VAL_PFI_3 PFI 4 NISCOPE_VAL_PFI_4 PFI 5 NISCOPE_VAL_PFI_5 PFI 6 NISCOPE_VAL_PFI_6 PFI 7 NISCOPE_VAL_PFI_7 PXI Star Trigger NISCOPE_VAL_PXI_STAR    0.0    0.0   {    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title> niScope_ConfigureTriggerEdge</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_ConfigureTriggerEdge
</h1>

<h2>C Function Prototype</h2>
<p class="syntax">ViStatus niScope_ConfigureTriggerEdge (ViSession vi, ViConstString triggerSource, ViReal64 level, ViInt32 slope, ViInt32 triggerCoupling, ViReal64 holdoff, ViReal64 delay);</p>


<h2 class="purpose">Purpose</h2>


<p class="Body">Configures common properties for analog edge triggering. 
</p>



<p class="Body">

When you initiate an acquisition, the digitizer waits for the start trigger, which is configured through the <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviNISCOPE_ATTR_ACQ_ARM_SOURCE.html')"><span class="Monospace">NISCOPE_ATTR_ACQ_ARM_SOURCE</span></a> (Start Trigger Source) attribute. The default is immediate. Upon receiving the start trigger the digitizer begins sampling pretrigger points. After the digitizer finishes sampling pretrigger points, the digitizer waits for a reference (stop) trigger that you specify with a function  such as this one. Upon receiving the reference trigger the digitizer finishes the acquisition after completing posttrigger sampling. With each Configure Trigger function, you specify configuration parameters such as the trigger source and the amount of trigger delay.
</p>
<table class="Borderless"><tr><td class="Icon"><img src="note.gif"></td><td>
<strong>Note</strong>&nbsp;&nbsp;Some features are not supported by all digitizers. Refer to <a href="javascript:LaunchHelp('Digitizers.chm::/Features_Supported_Main.html')">Features Supported by Device</a> for more information. </td></tr></table>

<h2>Related topics:</h2><ul>    <li><a href="javascript:LaunchHelp('Digitizers.chm::/Edge_Triggers.html')">Edge Triggers</a></li>               </ul>


</body>
</html>        <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title> niScope_ConfigureTriggerEdge</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">level</td>
<td class="paramDataType">ViReal64</td>
<td>The voltage threshold for the trigger. Refer to <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviNISCOPE_ATTR_TRIGGER_LEVEL.html')"><span class="Monospace">NISCOPE_ATTR_TRIGGER_LEVEL</span></A> for more information.</td></tr>
</table></body>
</html>    8    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title> niScope_ConfigureTriggerEdge</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">triggerCoupling</td>
<td class="paramDataType">ViInt32</td>
<td>Applies coupling and filtering options to the trigger signal. Refer to <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviNISCOPE_ATTR_TRIGGER_COUPLING.html')">
<span class="Monospace">NISCOPE_ATTR_TRIGGER_COUPLING</span></A> for more information.</td></tr>
</table></body>
</html>    `�-   �  �    Instrument Handle                 ,#����  �    Status                            4; �  �    Level                             � r � �  �    Slope                            ) rc �  �    Trigger Coupling                  �N 4 � � �    Trigger Source                    �u � � �  �    Holdoff                           � �; �  �    Delay                                  	           0.0               <Positive NISCOPE_VAL_POSITIVE Negative NISCOPE_VAL_NEGATIVE              �AC NISCOPE_VAL_AC DC NISCOPE_VAL_DC HF Reject NISCOPE_VAL_HF_REJECT LF Reject NISCOPE_VAL_LF_REJECT AC and HF Reject NISCOPE_VAL_AC_PLUS_HF_REJECT            	   �Channel 0 "0" Channel 1 "1" Channel 2 "2" Channel 3 "3" Channel 4 "4" Channel 5 "5" Channel 6 "6" Channel 7 "7" External TRIG NISCOPE_VAL_EXTERNAL    0.0    0.0   �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niScope_ConfigureTriggerGlitch</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niScope_ConfigureTriggerGlitch</h1>
<p class="syntax">ViStatus niScope_ConfigureTriggerGlitch
             (ViSession Instrument_Handle,
              ViChar _VI_FAR Trigger_Source[], ViReal64 Level,
              ViReal64 Width, ViInt32 Polarity,
              ViInt32 Condition, ViInt32 Trigger_Coupling,
              ViReal64 Holdoff, ViReal64 Delay);</p>
<h2 class="purpose">Purpose</h2>
<p class="Body">Configures common properties for glitch triggering.</p>
<p class="Body">A glitch trigger occurs when a pulse that crosses a vertical threshold you specify and with a polarity you specify also has a width that is either greater than or less than a duration you specify.</p>

<h3>Trigger System Operation</h3>
<p class="Body">When you initiate an acquisition, the trigger system operates in the following manner.</p>
    <ul>
        <li>The digitizer waits for the start trigger, which is configured through the <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviNISCOPE_ATTR_ACQ_ARM_SOURCE.html')"><span class="Monospace">NISCOPE_ATTR_ACQ_ARM_SOURCE</span></a> attribute. The default is <span class="Monospace">NISCOPE_VAL_IMMEDIATE</span>.</li>
        <li>Upon receiving the start trigger, the digitizer begins sampling pretrigger points.</li>
        <li>After the digitizer finishes sampling pretrigger points, the digitizer waits for a reference (stop) trigger that you specify with a trigger function such as this one.</li>
        <li>Upon receiving the reference trigger, the digitizer finishes the acquisition after completing posttrigger sampling.</li>
    </ul>
<p class="Body">With each Configure Trigger function, you specify configuration parameters such as the trigger source and the amount of trigger delay. Additionally, you can adjust the amount of pretrigger and posttrigger samples using the <strong>refPosition</strong> input of the <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_ConfigureHorizontalTiming.html')"><span class="Monospace">niScope_ConfigureHorizontalTiming</span></a> function. The default is half the record length.</p>

<p class="Body">For multirecord acquisitions, all records after the first record are started based on the setting of the <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviNISCOPE_ATTR_ADV_TRIG_SRC.html')"><span class="Monospace">NISCOPE_ATTR_ADV_TRIG_SRC</span></a> attribute. The default value is <span class="Monospace">NISCOPE_VAL_IMMEDIATE</span>.</p>

<table class="Borderless">
    <tr>
        <td class="Icon"><img src="note.gif"></td>
        <td><strong>Note</strong>&nbsp;&nbsp;Some features are not supported by all digitizers. Refer to <a href="javascript:LaunchHelp('Digitizers.chm::/Features_Supported_Main.html')">Features Supported by Device</a> for more information.</td>
    </tr>
</table>

<h2>Related topics:</h2>
    <ul>    
        <li><a href="javascript:LaunchHelp('Digitizers.chm::/Glitch_Triggers.html')">Glitch Triggers</a></li>
    </ul>

</body>

</html>    N    <html>
<head>
<script src="launchhelp.js"></script>
<title>Glitch Condition</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<table class="borderless">
    <tr>
        <td class="paramName">Glitch Condition</td>
        <td class="paramDataType">ViInt32</td>
        <td>Specifies whether the oscilloscope triggers on pulses of duration less than or greater than the specified 

<a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviNISCOPE_ATTR_GLITCH_WIDTH.html')"><span class="Monospace">NISCOPE_ATTR_GLITCH_WIDTH</span></a>. Refer to the <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviNISCOPE_ATTR_GLITCH_CONDITION.html')"><span class="Monospace">NISCOPE_ATTR_GLITCH_CONDITION</span></a> attribute for defined values.
</td>
    </tr>
</table>
</body>

</html>    �    <html>
<head>
<script src="launchhelp.js"></script>
<title>Polarity</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<table class="borderless">
    <tr>
        <td class="paramName">Polarity</td>
        <td class="paramDataType">ViInt32</td>
        <td>
            Specifies the polarity of the pulses that trigger the oscilloscope for glitch triggering. Refer to the <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviNISCOPE_ATTR_GLITCH_POLARITY.html')"><span class="Monospace">NISCOPE_ATTR_GLITCH_POLARITY</span></a> attribute for defined values.
            </td>
    </tr>
</table>
</body>

</html>    +    <html>
<head>
<script src="launchhelp.js"></script>
<title>Width</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<table class="borderless">
    <tr>
        <td class="paramName">Width</td>
        <td class="paramDataType">ViReal64</td>
        <td>
            <p class="Body">Specifies, in seconds, the glitch duration to be used in combination with the glitch condition that triggers the oscilloscope.</p>
            <p class="Body">The oscilloscope triggers when it detects a pulse of duration either less than or greater than this value depending on the value of the 

<a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviNISCOPE_ATTR_GLITCH_CONDITION.html')"><span class="Monospace">NISCOPE_ATTR_GLITCH_CONDITION</span></a> attribute. Refer to the <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviNISCOPE_ATTR_GLITCH_WIDTH.html')"><span class="Monospace">NISCOPE_ATTR_GLITCH_WIDTH</span></a> attribute for more information.
            </td>
    </tr>
</table>
</body>

</html>    4 � �  �    Level                             `� 
  �  �    Instrument Handle                 ,����  �    Status                           ) �  �  �    Trigger Coupling                  �N 4 # � �    Trigger Source                    �u � � �  �    Holdoff                           � �� �  �    Delay                            &� }) � �    Condition                        )� 4� � �    Polarity                         ,x } } �  �    Width                              0.0        	                     �AC NISCOPE_VAL_AC DC NISCOPE_VAL_DC HF Reject NISCOPE_VAL_HF_REJECT LF Reject NISCOPE_VAL_LF_REJECT AC and HF Reject NISCOPE_VAL_AC_PLUS_HF_REJECT            	   �Channel 0 "0" Channel 1 "1" Channel 2 "2" Channel 3 "3" Channel 4 "4" Channel 5 "5" Channel 6 "6" Channel 7 "7" External TRIG NISCOPE_VAL_EXTERNAL    0.0    0.0              TLess Than NISCOPE_VAL_GLITCH_LESS_THAN Greater Than NISCOPE_VAL_GLITCH_GREATER_THAN               kPositive NISCOPE_VAL_GLITCH_POSITIVE Negative NISCOPE_VAL_GLITCH_NEGATIVE Either NISCOPE_VAL_GLITCH_EITHER    0.0   	�    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title> niScope_ConfigureTriggerHysteresis</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_ConfigureTriggerHysteresis</h1>


<h2>C Function Prototype</h2>
<p class="syntax">ViStatus niScope_ConfigureTriggerHysteresis (ViSession vi, ViConstString triggerSource, ViReal64 level, ViReal64 hysteresis, ViInt32 slope, ViInt32 triggerCoupling, ViReal64 holdoff, ViReal64 delay);</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Configures common properties for analog hysteresis triggering. This kind of trigger specifies an additional value, specified in the <strong>hysteresis</strong> parameter, that a signal must pass through before a trigger can occur. This additional value acts as a kind of buffer zone that keeps noise from triggering an acquisition. 
</p>


<p class="Body">

When you initiate an acquisition, the digitizer waits for the start trigger, which is configured through the <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviNISCOPE_ATTR_ACQ_ARM_SOURCE.html')"><span class="Monospace">NISCOPE_ATTR_ACQ_ARM_SOURCE</span> (Start Trigger Source)</a>. The default is immediate. Upon receiving the start trigger the digitizer begins sampling pretrigger points. After the digitizer finishes sampling pretrigger points, the digitizer waits for a reference (stop) trigger that you specify with a function such as this one. Upon receiving the reference trigger the digitizer finishes the acquisition after completing posttrigger sampling. With each Configure Trigger function, you specify configuration parameters such as the trigger source and the amount of trigger delay.
</p>
<table class="Borderless"><tr><td class="Icon"><img src="note.gif"></td><td>
<strong>Note</strong>&nbsp;&nbsp;Some features are not supported by all digitizers. Refer to <a href="javascript:LaunchHelp('Digitizers.chm::/Features_Supported_Main.html')">Features Supported by Device</a> for more information. </td></tr></table>

<h2>Related topics:</h2><ul>    <li><a href="javascript:LaunchHelp('Digitizers.chm::/Hysteresis_Triggers.html')">Hysteresis Triggers</a></li>               </ul>


</body>
</html>    3    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title> niScope_ConfigureTriggerHysteresis</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">hysteresis</td>
<td class="paramDataType">ViReal64</td>
<td>The size of the hysteresis window on either side of the <strong>level</strong> in volts; the digitizer triggers when the trigger signal passes through the hysteresis value you specify with this parameter, has the slope you specify with <strong>slope</strong>, and passes through the <strong>level</strong>. 

Refer to <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviNISCOPE_ATTR_TRIGGER_HYSTERESIS.html')"><span class="Monospace">NISCOPE_ATTR_TRIGGER_HYSTERESIS</span></A> for defined values.</td></tr>
</table></body>
</html>    3 � �  �    Level                             `� 
  �  �    Instrument Handle                 ,����  �    Status                           >� 3y �  �    Hysteresis                       ) ~` �  �    Trigger Coupling                  �  � �  �    Slope                             �N 3 % � �    Trigger Source                    �u � � �  �    Holdoff                           � �8 �  �    Delay                              0.0        	           .1000              �AC NISCOPE_VAL_AC DC NISCOPE_VAL_DC HF Reject NISCOPE_VAL_HF_REJECT LF Reject NISCOPE_VAL_LF_REJECT AC and HF Reject NISCOPE_VAL_AC_PLUS_HF_REJECT               <Positive NISCOPE_VAL_POSITIVE Negative NISCOPE_VAL_NEGATIVE            	   �Channel 0 "0" Channel 1 "1" Channel 2 "2" Channel 3 "3" Channel 4 "4" Channel 5 "5" Channel 6 "6" Channel 7 "7" External TRIG NISCOPE_VAL_EXTERNAL    0.0    0.0   �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title> niScope_ConfigureTriggerImmediate</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_ConfigureTriggerImmediate
</h1>

<h2>C Function Prototype</h2>
<p class="syntax">ViStatus niScope_ConfigureTriggerImmediate (ViSession vi);</p>


<h2 class="purpose">Purpose</h2>


<p class="Body">Configures common properties for immediate triggering. Immediate triggering means the digitizer triggers itself. 
</p>


<p class="Body">When you initiate an acquisition, the digitizer waits for a trigger. You specify the type of trigger that the digitizer waits for with a Configure Trigger function, such as <span class="Monospace">niScope_ConfigureTriggerImmediate</span>. 
</p>



<h2>Related topics:</h2><ul>    <li><a href="javascript:LaunchHelp('Digitizers.chm::/Immediate_Triggers.html')">Immediate Triggers</a></li>             </ul>


</body>
</html>    `�! #  �  �    Instrument Handle                 ,!i���  �    Status                                 	          �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niScope_ConfigureTriggerRunt</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niScope_ConfigureTriggerRunt</h1>
<p class="syntax">ViStatus niScope_ConfigureTriggerRunt
             (ViSession Instrument_Handle,
              ViChar _VI_FAR Trigger_Source[],
              ViReal64 Low_Threshold, ViReal64 High_Threshold,
              ViInt32 Polarity, ViInt32 Trigger_Coupling,
              ViReal64 Holdoff, ViReal64 Delay);</p>
<h2 class="purpose">Purpose</h2>
<p class="Body">Configures common properties for runt triggering.</p>
<p class="Body">A runt trigger occurs when both the leading edge and trailing edge of a pulse cross only one of two trigger thresholds you specify and with a polarity you specify, where the polarity is relative to the threshold crossed.</p>

<h3>Trigger System Operation</h3>
<p class="Body">When you initiate an acquisition, the trigger system operates in the following manner.</p>
    <ul>
        <li>The digitizer waits for the start trigger, which is configured through the <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviNISCOPE_ATTR_ACQ_ARM_SOURCE.html')"><span class="Monospace">NISCOPE_ATTR_ACQ_ARM_SOURCE</span></a> attribute. The default is <span class="Monospace">NISCOPE_VAL_IMMEDIATE</span>.</li>
        <li>Upon receiving the start trigger, the digitizer begins sampling pretrigger points.</li>
        <li>After the digitizer finishes sampling pretrigger points, the digitizer waits for a reference (stop) trigger that you specify with a trigger function such as this one.</li>
        <li>Upon receiving the reference trigger, the digitizer finishes the acquisition after completing posttrigger sampling.</li>
    </ul>
<p class="Body">With each Configure Trigger function, you specify configuration parameters such as the trigger source and the amount of trigger delay. Additionally, you can adjust the amount of pretrigger and posttrigger samples using the <strong>refPosition</strong> input of the <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_ConfigureHorizontalTiming.html')"><span class="Monospace">niScope_ConfigureHorizontalTiming</span></a> function. The default is half the record length.</p>

<p class="Body">For multirecord acquisitions, all records after the first record are started based on the setting of the <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviNISCOPE_ATTR_ADV_TRIG_SRC.html')"><span class="Monospace">NISCOPE_ATTR_ADV_TRIG_SRC</span></a> attribute. The default value is <span class="Monospace">NISCOPE_VAL_IMMEDIATE</span>.</p>

<table class="Borderless">
    <tr>
        <td class="Icon"><img src="note.gif"></td>
        <td><strong>Note</strong>&nbsp;&nbsp;Some features are not supported by all digitizers. Refer to <a href="javascript:LaunchHelp('Digitizers.chm::/Features_Supported_Main.html')">Features Supported by Device</a> for more information.</td>
    </tr>
</table>

<h2>Related topics:</h2>
    <ul>    
        <li><a href="javascript:LaunchHelp('Digitizers.chm::/Runt_Triggers.html')">Runt Triggers</a></li>
    </ul>

</body>

</html>    �    <html>
<head>
<script src="launchhelp.js"></script>
<title>Polarity</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<table class="borderless">
    <tr>
        <td class="paramName">Polarity</td>
        <td class="paramDataType">ViInt32</td>
        <td>
            Specifies the polarity of the runt pulses, relative to the runt threshold the pulses cross, that trigger the oscilloscope for runt triggering. Refer to the 

<a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviNISCOPE_ATTR_RUNT_POLARITY.html')"><span class="Monospace">NISCOPE_ATTR_RUNT_POLARITY</span></a> attribute for defined values.
            </td>
    </tr>
</table>
</body>

</html>    �    <html>
<head>
<script src="launchhelp.js"></script>
<title>Low Threshold</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<table class="borderless">
    <tr>
        <td class="paramName">Low Threshold</td>
        <td class="paramDataType">ViReal64</td>
        <td>
            Specifies, in volts, the lower of two thresholds that bound the vertical range to examine for runt pulses. Refer to the <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviNISCOPE_ATTR_RUNT_LOW_THRESHOLD.html')"><span class="Monospace">NISCOPE_ATTR_RUNT_LOW_THRESHOLD</span></a> attribute for more information.
            </td>
    </tr>
</table>
</body>

</html>    �    <html>
<head>
<script src="launchhelp.js"></script>
<title>High Threshold</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<table class="borderless">
    <tr>
        <td class="paramName">High Threshold</td>
        <td class="paramDataType">ViReal64</td>
        <td>
            Specifies, in volts, the higher of two thresholds that bound the vertical range to examine for runt pulses. Refer to the <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviNISCOPE_ATTR_RUNT_HIGH_THRESHOLD.html')"><span class="Monospace">NISCOPE_ATTR_RUNT_HIGH_THRESHOLD</span></a> attribute for more information.
            </td>
    </tr>
</table>
</body>

</html>    `� 
  �  �    Instrument Handle                 ,����  �    Status                           ) p� �  �    Trigger Coupling                  �N 4 # � �    Trigger Source                    �u � } �  �    Holdoff                           � �+ �  �    Delay                            X� | } � �    Polarity                         [k 4 � �  �    Low Threshold                    ^0 4� �  �    High Threshold                         	                     �AC NISCOPE_VAL_AC DC NISCOPE_VAL_DC HF Reject NISCOPE_VAL_HF_REJECT LF Reject NISCOPE_VAL_LF_REJECT AC and HF Reject NISCOPE_VAL_AC_PLUS_HF_REJECT            	   �Channel 0 "0" Channel 1 "1" Channel 2 "2" Channel 3 "3" Channel 4 "4" Channel 5 "5" Channel 6 "6" Channel 7 "7" External TRIG NISCOPE_VAL_EXTERNAL    0.0    0.0               ePositive NISCOPE_VAL_RUNT_POSITIVE Negative NISCOPE_VAL_RUNT_NEGATIVE Either NISCOPE_VAL_RUNT_EITHER    0.0    0.0   	8    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title> niScope_ConfigureTriggerSoftware</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_ConfigureTriggerSoftware
</h1>

<h2>C Function Prototype</h2>
<p class="syntax">ViStatus niScope_ConfigureTriggerSoftware (ViSession vi, ViReal64 holdoff, ViReal64 delay);</p>


<h2 class="purpose">Purpose</h2>


<p class="Body">Configures common properties for software triggering. 
</p>




<p class="Body">

When you initiate an acquisition, the digitizer waits for the start trigger, which is configured through the 
<a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviNISCOPE_ATTR_ACQ_ARM_SOURCE.html')"><span class="Monospace">NISCOPE_ATTR_ACQ_ARM_SOURCE</span></a> 
(Start Trigger Source) attribute. The default is immediate. Upon receiving the start trigger 
the digitizer begins sampling pretrigger points. After the digitizer finishes sampling 
pretrigger points, the digitizer waits for a reference (stop) trigger that you specify with a 
function  such as this one. Upon receiving the reference trigger the digitizer finishes the 
acquisition after completing posttrigger sampling. With each Configure Trigger function, you 
specify configuration parameters such as the trigger source and the amount of trigger delay. </P>
<p class="Body">
To trigger the acquisition, use <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_SendSoftwareTriggerEdge.html')"><span class="Monospace">niScope_SendSoftwareTriggerEdge</span></a>. 
</p>
<table class="Borderless"><tr><td class="Icon"><img src="note.gif"></td><td><strong>Note</strong>&nbsp;&nbsp;
Some features are not supported by all digitizers. Refer to <a href="javascript:LaunchHelp('Digitizers.chm::/Features_Supported_Main.html')">Features Supported by Device</a>  for more information. </td></tr></table>


<h2>Related topics:</h2><ul>    <li><a href="javascript:LaunchHelp('Digitizers.chm::/Software_Triggers.html')">Software Triggers</a></li>               </ul>


</body>
</html>    �u T � �  �    Holdoff                           � T0 �  �    Delay                             `�    �  �    Instrument Handle                 ,����  �    Status                             0.0    0.0        	          
�    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title> niScope_ConfigureTriggerVideo</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_ConfigureTriggerVideo</h1>


<h2>C Function Prototype</h2>
<p class="syntax">ViStatus niScope_ConfigureTriggerVideo (ViSession vi,                                            ViConstString triggerSource,
                                                 ViBoolean enableDCRestore,
                                                 ViInt32 signalFormat,
                                                 ViInt32 event,
                                                 ViInt32 lineNumber, 
                                                 ViInt32 polarity,
                                                 ViInt32 triggerCoupling,
                                                 ViReal64 holdoff,
                                                 ViReal64 delay);
</p>

<h2 class="purpose">Purpose</h2>


<p class="Body">Configures the common properties for video triggering, including the signal format, TV event, line number, polarity, and enable DC restore. A video trigger occurs when the digitizer finds a valid video signal sync. 
</p>




<p class="Body">

When you initiate an acquisition, the digitizer waits for the start trigger, which is configured through the <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviNISCOPE_ATTR_ACQ_ARM_SOURCE.html')"><span class="Monospace">NISCOPE_ATTR_ACQ_ARM_SOURCE</span></a> (Start Trigger Source) attribute. The default is immediate. Upon receiving the start trigger the digitizer begins sampling pretrigger points. After the digitizer finishes sampling pretrigger points, the digitizer waits for a reference (stop) trigger that you specify with a function  such as this one. Upon receiving the reference trigger the digitizer finishes the acquisition after completing posttrigger sampling. With each Configure Trigger function, you specify configuration parameters such as the trigger source and the amount of trigger delay. 
</p>
<table class="Borderless"><tr><td class="Icon"><img src="note.gif"></td><td>
<strong>Note</strong>&nbsp;&nbsp;Some features are not supported by all digitizers. Refer to <a href="javascript:LaunchHelp('Digitizers.chm::/Features_Supported_Main.html')">Features Supported by Device</a> for more information. </td></tr></table>






</body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title> niScope_ConfigureTriggerVideo</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">enableDCRestore</td>
<td class="paramDataType">ViBoolean</td>
<td>Offsets each video line so the clamping level (the portion of the video line between the 
end of the color burst and the beginning of the active image) is moved to zero volt. Refer to <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviNISCOPE_ATTR_ENABLE_DC_RESTORE.html')"><span class="Monospace">NISCOPE_ATTR_ENABLE_DC_RESTORE</span></a> for defined values.</td></tr>


</table></body>
</html>    O    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title> niScope_ConfigureTriggerVideo</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">signalFormat </td>
<td class="paramDataType">ViInt32</td>
<td>Specifies the type of video signal sync the digitizer should look for.  Refer to <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviNISCOPE_ATTR_TV_TRIGGER_SIGNAL_FORMAT.html')"><span class="Monospace">NISCOPE_ATTR_TV_TRIGGER_SIGNAL_FORMAT</span></a> for more information.</td></tr>
</table></body>
</html>    S    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title> niScope_ConfigureTriggerVideo</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">polarity</td>
<td class="paramDataType">ViInt32</td>
<td>Specifies the polarity of the video signal sync.</td></tr>
</table></body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title> niScope_ConfigureTriggerVideo</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">event </td>
<td class="paramDataType">ViInt32</td>
<td>Specifies the TV event you want to trigger on. You can trigger on a specific or on the next coming line or field of the signal.</td></tr>
</table></body>
</html>        <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title> niScope_ConfigureTriggerVideo</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">lineNumber </td>
<td class="paramDataType">ViInt32</td>
<td>Selects the line number to trigger on. The line number range covers an entire 
frame and is referenced as shown on <a href="javascript:LaunchHelp('Digitizers.chm::/gray_scale_image.html')">Vertical Blanking and 
Synchronization Signal</a>. Refer to <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviNISCOPE_ATTR_TV_TRIGGER_LINE_NUMBER.html')"><span class="Monospace">NISCOPE_ATTR_TV_TRIGGER_LINE_NUMBER</span></a> for more information.
<p class="Body">Default value: 1</p>
</td></tr>
</table></body>
</html>    `�#   �  �    Instrument Handle                 ,���  �    Status                           ) � � �  �    Trigger Coupling                  �N   7 � �    Trigger Source                    �u I 7 �  �    Holdoff                           � s 7 	�  �    Delay                            y� �� �       Enable DC Restore                }<  � � �    Signal Format                    �� I� � �    Polarity                         �� s� � �    Event                            �� �� � K    Line Number                            	                     �AC NISCOPE_VAL_AC DC NISCOPE_VAL_DC HF Reject NISCOPE_VAL_HF_REJECT LF Reject NISCOPE_VAL_LF_REJECT AC and HF Reject NISCOPE_VAL_AC_PLUS_HF_REJECT            	   �Channel 0 "0" Channel 1 "1" Channel 2 "2" Channel 3 "3" Channel 4 "4" Channel 5 "5" Channel 6 "6" Channel 7 "7" External TRIG NISCOPE_VAL_EXTERNAL    0.0    0.0              2Enable NISCOPE_VAL_TRUE Disable NISCOPE_VAL_FALSE              
M-NTSC NISCOPE_VAL_NTSC B/G-PAL NISCOPE_VAL_PAL SECAM NISCOPE_VAL_SECAM M-PAL NISCOPE_VAL_M_PAL 480i/59.94 fps NISCOPE_VAL_480I_59_94_FIELDS_PER_SECOND 480i/60 fps NISCOPE_VAL_480I_60_FIELDS_PER_SECOND 480p/59.94 Fps NISCOPE_VAL_480P_59_94_FRAMES_PER_SECOND 480p/60 Fps NISCOPE_VAL_480P_60_FRAMES_PER_SECOND 576i/50 fps NISCOPE_VAL_576I_50_FIELDS_PER_SECOND 576p/50 Fps NISCOPE_VAL_576P_50_FRAMES_PER_SECOND 720p/50 Fps NISCOPE_VAL_720P_50_FRAMES_PER_SECOND 720p/59.94 Fps NISCOPE_VAL_720P_59_94_FRAMES_PER_SECOND 720p/60 Fps NISCOPE_VAL_720P_60_FRAMES_PER_SECOND 1080i/50 fps NISCOPE_VAL_1080I_50_FIELDS_PER_SECOND 1080i/59.94 fps NISCOPE_VAL_1080I_59_94_FIELDS_PER_SECOND 1080i/60 fps NISCOPE_VAL_1080I_60_FIELDS_PER_SECOND 1080p/24 Fps NISCOPE_VAL_1080P_24_FRAMES_PER_SECOND               BPositive NISCOPE_VAL_TV_POSITIVE Negative NISCOPE_VAL_TV_NEGATIVE              �Field1 NISCOPE_VAL_TV_EVENT_FIELD1 Field2 NISCOPE_VAL_TV_EVENT_FIELD2 Any Field NISCOPE_VAL_TV_EVENT_ANY_FIELD Any Line NISCOPE_VAL_TV_EVENT_ANY_LINE Line Number NISCOPE_VAL_TV_EVENT_LINE_NUMBER      '                 �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niScope_ConfigureTriggerWidth</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niScope_ConfigureTriggerWidth</h1>
<p class="syntax">ViStatus niScope_ConfigureTriggerWidth
             (ViSession Instrument_Handle,
              ViChar _VI_FAR Trigger_Source[], ViReal64 Level,
              ViReal64 Low_Threshold, ViReal64 High_Threshold,
              ViInt32 Polarity, ViInt32 Condition,
              ViInt32 Trigger_Coupling, ViReal64 Holdoff,
              ViReal64 Delay);</p>
<h2 class="purpose">Purpose</h2>
<p class="Body">Configures common properties for width triggering.</p>
<p class="Body">A width trigger occurs when a pulse that crosses a vertical threshold you specify and with a polarity you specify also has a duration that is either within or outside a duration range you specify.</p>

<h3>Trigger System Operation</h3>
<p class="Body">When you initiate an acquisition, the trigger system operates in the following manner.</p>
    <ul>
        <li>The digitizer waits for the start trigger, which is configured through the <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviNISCOPE_ATTR_ACQ_ARM_SOURCE.html')"><span class="Monospace">NISCOPE_ATTR_ACQ_ARM_SOURCE</span></a> attribute. The default is <span class="Monospace">NISCOPE_VAL_IMMEDIATE</span>.</li>
        <li>Upon receiving the start trigger, the digitizer begins sampling pretrigger points.</li>
        <li>After the digitizer finishes sampling pretrigger points, the digitizer waits for a reference (stop) trigger that you specify with a trigger function such as this one.</li>
        <li>Upon receiving the reference trigger, the digitizer finishes the acquisition after completing posttrigger sampling.</li>
    </ul>
<p class="Body">With each Configure Trigger function, you specify configuration parameters such as the trigger source and the amount of trigger delay. Additionally, you can adjust the amount of pretrigger and posttrigger samples using the <strong>refPosition</strong> input of the <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_ConfigureHorizontalTiming.html')"><span class="Monospace">niScope_ConfigureHorizontalTiming</span></a> function. The default is half the record length.</p>

<p class="Body">For multirecord acquisitions, all records after the first record are started based on the setting of the <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviNISCOPE_ATTR_ADV_TRIG_SRC.html')"><span class="Monospace">NISCOPE_ATTR_ADV_TRIG_SRC</span></a> attribute. The default value is <span class="Monospace">NISCOPE_VAL_IMMEDIATE</span>.</p>

<table class="Borderless">
    <tr>
        <td class="Icon"><img src="note.gif"></td>
        <td><strong>Note</strong>&nbsp;&nbsp;Some features are not supported by all digitizers. Refer to <a href="javascript:LaunchHelp('Digitizers.chm::/Features_Supported_Main.html')">Features Supported by Device</a> for more information.</td>
    </tr>
</table>

<h2>Related topics:</h2>
    <ul>    
        <li><a href="javascript:LaunchHelp('Digitizers.chm::/Width_Triggers.html')">Width Triggers</a></li>
    </ul>

</body>

</html>    �    <html>
<head>
<script src="launchhelp.js"></script>
<title>Condition</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<table class="borderless">
    <tr>
        <td class="paramName">Condition</td>
        <td class="paramDataType">ViInt32</td>
        <td>Specifies whether the oscilloscope triggers on pulses of duration within or outside the range of pulse durations bounded by <strong>Low Threshold</strong> and <strong>High Threshold</strong>. Refer to the <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviNISCOPE_ATTR_WIDTH_CONDITION.html')"><span class="Monospace">NISCOPE_ATTR_WIDTH_CONDITION</span></a> attribute for defined values.</td>
    </tr>
</table>
</body>

</html>    �    <html>
<head>
<script src="launchhelp.js"></script>
<title>Polarity</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<table class="borderless">
    <tr>
        <td class="paramName">Polarity</td>
        <td class="paramDataType">ViInt32</td>
        <td>
            Specifies the polarity of the pulses that trigger the oscilloscope for width triggering. Refer to the <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviNISCOPE_ATTR_WIDTH_POLARITY.html')"><span class="Monospace">NISCOPE_ATTR_WIDTH_POLARITY</span></a> attribute for defined values.
            </td>
    </tr>
</table>
</body>

</html>    �    <html>
<head>
<script src="launchhelp.js"></script>
<title>Low Threshold</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<table class="borderless">
    <tr>
        <td class="paramName">Low Threshold</td>
        <td class="paramDataType">ViReal64</td>
        <td>
            Specifies, in seconds, the lower bound on the range of pulse durations that triggers the oscilloscope. Refer to the <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviNISCOPE_ATTR_WIDTH_LOW_THRESHOLD.html')"><span class="Monospace">NISCOPE_ATTR_WIDTH_LOW_THRESHOLD</span></a> attribute for defined values.
            </td>
    </tr>
</table>
</body>

</html>    �    <html>
<head>
<script src="launchhelp.js"></script>
<title>High Threshold</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<table class="borderless">
    <tr>
        <td class="paramName">High Threshold</td>
        <td class="paramDataType">ViReal64</td>
        <td>
            Specifies, in seconds, the upper bound on the range of pulse durations that triggers the oscilloscope. Refer to the <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviNISCOPE_ATTR_WIDTH_HIGH_THRESHOLD.html')"><span class="Monospace">NISCOPE_ATTR_WIDTH_HIGH_THRESHOLD</span></a> attribute for defined values.
            </td>
    </tr>
</table>
</body>

</html>    4 � �  �    Level                             `� 
  �  �    Instrument Handle                 ,����  �    Status                           ) �  �  �    Trigger Coupling                  �N 4 # � �    Trigger Source                    �u � � �  �    Holdoff                           � �� 	�  �    Delay                            �� }� � �    Condition                        �� 4� � �    Polarity                         �h } # �  �    Low Threshold                    �) } � �  �    High Threshold                     0.0        	                     �AC NISCOPE_VAL_AC DC NISCOPE_VAL_DC HF Reject NISCOPE_VAL_HF_REJECT LF Reject NISCOPE_VAL_LF_REJECT AC and HF Reject NISCOPE_VAL_AC_PLUS_HF_REJECT            	   �Channel 0 "0" Channel 1 "1" Channel 2 "2" Channel 3 "3" Channel 4 "4" Channel 5 "5" Channel 6 "6" Channel 7 "7" External TRIG NISCOPE_VAL_EXTERNAL    0.0    0.0               BWithin NISCOPE_VAL_WIDTH_WITHIN Outside NISCOPE_VAL_WIDTH_OUTSIDE               hPositive NISCOPE_VAL_WIDTH_POSITIVE Negative NISCOPE_VAL_WIDTH_NEGATIVE Either NISCOPE_VAL_WIDTH_EITHER    0.0    0.0   
>    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title> niScope_ConfigureTriggerWindow</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_ConfigureTriggerWindow</h1>


<h2>C Function Prototype</h2>
<p class="syntax">ViStatus niScope_ConfigureTriggerWindow (ViSession vi, ViConstString triggerSource, ViReal64 lowLevel, ViReal64 highLevel, ViInt32 windowMode, ViInt32 triggerCoupling, ViReal64 holdoff, ViReal64 delay);</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Configures common properties for analog window triggering. A window trigger occurs when a signal enters or leaves a window you specify with the <strong>high level</strong> or <strong>low level</strong> parameters. 
</p>


<p class="Body">

When you initiate an acquisition, the digitizer waits for the start trigger, which is configured through the 
<a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviNISCOPE_ATTR_ACQ_ARM_SOURCE.html')"><span class="Monospace">NISCOPE_ATTR_ACQ_ARM_SOURCE</span></a> 
(Start Trigger Source) attribute. The default is immediate. Upon receiving the start trigger 
the digitizer begins sampling pretrigger points. After the digitizer finishes sampling 
pretrigger points, the digitizer waits for a reference (stop) trigger that you specify with a 
function  such as this one. Upon receiving the reference trigger the digitizer finishes the 
acquisition after completing posttrigger sampling. With each Configure Trigger function, you 
specify configuration parameters such as the trigger source and the amount of trigger delay. </P>
<p class="Body">
To trigger the acquisition, use <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_SendSoftwareTriggerEdge.html')"><span class="Monospace">niScope_SendSoftwareTriggerEdge</span></a>. 
</p>

<table class="Borderless"><tr><td class="Icon"><img src="note.gif"></td><td><strong>Note</strong>&nbsp;&nbsp;
Some features are not supported by all digitizers. Refer to <a href="javascript:LaunchHelp('Digitizers.chm::/Features_Supported_Main.html')">Features 
Supported by Device</a>  for more information. </td></tr></table>


<h2>Related topics:</h2><ul>    <li><a href="javascript:LaunchHelp('Digitizers.chm::/Window_Triggers.html')">Window Triggers</a></li>               </ul>


</body>
</html>    t    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title> niScope_ConfigureTriggerWindow</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">lowLevel</td>
<td class="paramDataType">ViReal64</td>
<td>Passes the voltage threshold you want the digitizer to use for low  triggering.</td></tr>
</table></body>
</html>    w    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title> niScope_ConfigureTriggerWindow</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">highLevel</td> 
<td class="paramDataType">ViReal64</td>
<td>Passes the voltage threshold you want the digitizer to use for high  triggering.</td></tr>
</table></body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title> niScope_ConfigureTriggerWindow</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">windowMode </td>
<td class="paramDataType">ViInt32</td>
<td>Specifies whether you want the trigger to occur when the signal enters or leaves a window.</td></tr>
</table></body>
</html>   �� 2 � �  �    Low Level                         `� 
  �  �    Instrument Handle                 ,����  �    Status                           �6 2{ �  �    High Level                       ) �_ �  �    Trigger Coupling                 �� � � �  �    Window Mode                       �N 2 < � �    Trigger Source                    �u � ~ �  �    Holdoff                           � �7 �  �    Delay                              0.0        	           1.0              �AC NISCOPE_VAL_AC DC NISCOPE_VAL_DC HF Reject NISCOPE_VAL_HF_REJECT LF Reject NISCOPE_VAL_LF_REJECT AC and HF Reject NISCOPE_VAL_AC_PLUS_HF_REJECT               VEntering Window NISCOPE_VAL_ENTERING_WINDOW Leaving Window NISCOPE_VAL_LEAVING_WINDOW            	   �Channel 0 "0" Channel 1 "1" Channel 2 "2" Channel 3 "3" Channel 4 "4" Channel 5 "5" Channel 6 "6" Channel 7 "7" External TRIG NISCOPE_VAL_EXTERNAL    0.0    0.0   �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_SendSoftwareTriggerEdge</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_SendSoftwareTriggerEdge</h1>


<h2>C Function Prototype</h2>
<p class="syntax">ViStatus niScope_SendSoftwareTriggerEdge (ViSession vi,
                                                   ViInt32 whichTrigger);</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Sends the selected trigger to the digitizer. Call this function if you 
called <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_ConfigureTriggerSoftware.html')"><span class="Monospace">niScope_ConfigureTriggerSoftware</span></a>
 when you want the Reference trigger to occur.  You can also call this function to override a misused edge, digital,
 or hysteresis trigger. If you have configured  
<a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviNISCOPE_ATTR_ACQ_ARM_SOURCE.html')"><span class="Monospace">NISCOPE_ATTR_ACQ_ARM_SOURCE</span></a>,   <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviNISCOPE_ATTR_ARM_REF_TRIG_SRC.html')">
<span class="Monospace">NISCOPE_ATTR_ARM_REF_TRIG_SRC</span></a>, or   <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviNISCOPE_ATTR_ADV_TRIG_SRC.html')"><span class="Monospace">NISCOPE_ATTR_ADV_TRIG_SRC</span></a>, call 
 this function when you want to send the corresponding trigger to the digitizer.
</p>

<h2>Related topics:</h2><ul>    <li><a href="javascript:LaunchHelp('Digitizers.chm::/Software_Triggers.html')">Software Triggers</a></li>               </ul>


</body>
</html>    
    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_SendSoftwareTriggerEdge</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">whichTrigger</td>
<td class="paramDataType">ViInt32</td>
<td>Specifies the type of trigger to send to the digitizer.
<p class = "Body"><strong>Defined Values</strong></p>
<p class ="Body"><span class="Monospace">NISCOPE_VAL_SOFTWARE_TRIGGER_START            (0L)</span> <br>
<span class="Monospace"> NISCOPE_VAL_SOFTWARE_TRIGGER_ARM_REFERENCE    (1L)</span><br>
<span class="Monospace">NISCOPE_VAL_SOFTWARE_TRIGGER_REFERENCE        (2L)</span><br>
<span class="Monospace">NISCOPE_VAL_SOFTWARE_TRIGGER_ADVANCE          (3L)</span> <br>
</p></td></tr></table></body>
</html>    `�) 
  �  �    Instrument Handle                 ,����  �    Status                           ˈ B � � �    Which Trigger                          	                      �Start Trigger NISCOPE_VAL_SOFTWARE_TRIGGER_START Reference trigger NISCOPE_VAL_SOFTWARE_TRIGGER_REFERENCE Arm Reference Trigger NISCOPE_VAL_SOFTWARE_TRIGGER_ARM_REFERENCE Advance Trigger NISCOPE_VAL_SOFTWARE_TRIGGER_ADVANCE   2    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_AdjustSampleClockRelativeDelay</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_AdjustSampleClockRelativeDelay</h1>

<h2>C Function Prototype</h2>
<p class="syntax">ViStatus niScope_AdjustSampleClockRelativeDelay(ViSession 
vi, ViReal64 delay);</p>                                               

<h2 class="purpose">Purpose</h2>
<p class="Body">Configures the relative sample clock delay (in seconds) when using the internal clock.  Each time this function is called, the sample clock is delayed from the reference clock  by the specified amount of time.</p>

<h2>Related topics:</h2><ul>    <li><a href="javascript:LaunchHelp('Digitizers.chm::/Sample_Clock.html')">Sample Clock</a></li>    <li><a href="javascript:LaunchHelp('Digitizers.chm::/Reference_Clock.html')">Reference Clock/Phase-Lock Loop</a></li>  <li><a href="javascript:LaunchMergedHelp('Digitizers.chm','nitclk.chm','niTClk_overview.html')">NI-TClk Overview</a></li>
         </ul>


</body>
</html>    `�) 
  �  �    Instrument Handle                 ,����  �    Status                            � _ � �  �    Delay                                  	           0.0   \    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_ConfigureClock</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_ConfigureClock</h1>


<h2>C Function Prototype</h2>
<p class="syntax">ViStatus niScope_ConfigureClock (ViSession vi, ViConstString inputClockSource, ViConstString outputClockSource, ViConstString clockSyncPulseSource, ViBoolean masterEnabled);</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Configures the attributes for synchronizing the digitizer to a reference or sending the digitizer's reference clock output to be used as a synchronizing clock for other digitizers.</p>
<table class="Borderless-Wide">
<tr>
<td class="Icon"><img src="note.gif"></td>
<td>
<strong>Note</strong>&nbsp;&nbsp;Some features are not supported by all digitizers. Refer to <a href="javascript:LaunchHelp('Digitizers.chm::/Features_Supported_Main.html')">Features Supported by Device</a> for more information.</td></tr></table>



<h2>Related topics:</h2><ul>    <li><a href="javascript:LaunchHelp('Digitizers.chm::/Sample_Clock.html')">Sample Clock</a></li>  <li><a href="javascript:LaunchHelp('Digitizers.chm::/Sample_Rate.html')">Sample Rate</a></li>  
<li><a href="javascript:LaunchHelp('Digitizers.chm::/Horizontal_Parameters.html')">Coercions of Horizontal Parameters</a></li></ul>


</body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_ConfigureClock</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">inputClockSource</td>
<td class="paramDataType">ViConstString</td>
<td>Specifies the input source for the PLL reference clock (such as the 1-20&nbsp;MHz clock on SMC-based devices) to which the digitizer is phase-locked for all digitizers. Refer to <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviNISCOPE_ATTR_INPUT_CLOCK_SOURCE.html')"><span class="Monospace">NISCOPE_ATTR_INPUT_CLOCK_SOURCE</span></A> for more information.</td></tr>
</table></body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_ConfigureClock</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">clockSyncPulseSource</td>
<td class="paramDataType">ViConstString</td>
<td> Specifies the line on which the sample clock or the one-time sync pulse is sent or received. This line should be the same for all devices to be synchronized. 

 Refer to <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviNISCOPE_ATTR_CLOCK_SYNC_PULSE_SOURCE.html')"><span class="Monospace">NISCOPE_ATTR_CLOCK_SYNC_PULSE_SOURCE</span></A> for more information.</td></tr>
</table></body>
</html>    z    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_ConfigureClock</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">outputClockSource</td>
<td class="paramDataType">ViConstString</td>
<td>Specifies the output source for the reference clock to which the sample clock of another oscilloscope can be phase-locked. Refer to  <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviNISCOPE_ATTR_OUTPUT_CLOCK_SOURCE.html')"><span class="Monospace">NISCOPE_ATTR_OUTPUT_CLOCK_SOURCE</span></A> for more information</td></tr>
</table></body>
</html>        <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_ConfigureClock</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">masterEnabled</td>
<td class="paramDataType">ViBoolean</td>
<td>
Specifies whether the device is a master or a slave. The master device is typically the originator of the trigger signal and the clock sync pulse. For a standalone device, set this control to <span class="monospace">VI_FALSE</span>.
</td>
</tr>
</table></body>
</html>    `�( 
  �  �    Instrument Handle                 ,����  �    Status                           ݌ 9 > � �    Input Clock Source               �9 � > � �    Clock Sync Pulse Source          �� 9, � �    Output Clock Source              �q �A �       Master Enabled                         	                      �None NISCOPE_VAL_NO_SOURCE RTSI7/RTSI Clock NISCOPE_VAL_RTSI_CLOCK PFI 0 NISCOPE_VAL_PFI_0 PFI 1 NISCOPE_VAL_PFI_1 PFI 2 NISCOPE_VAL_PFI_2 PXI Clock NISCOPE_VAL_PXI_CLOCK External NISCOPE_VAL_EXTERNAL Clock In NISCOPE_VAL_CLK_IN            
  None NISCOPE_VAL_NO_SOURCE RTSI 0 NISCOPE_VAL_RTSI_0 RTSI 1 NISCOPE_VAL_RTSI_1 RTSI 2 NISCOPE_VAL_RTSI_2 RTSI 3 NISCOPE_VAL_RTSI_3 RTSI 4 NISCOPE_VAL_RTSI_4 RTSI 5 NISCOPE_VAL_RTSI_5 RTSI 6 NISCOPE_VAL_RTSI_6 PFI 1 NISCOPE_VAL_PFI_1 PFI 2 NISCOPE_VAL_PFI_2              _None NISCOPE_VAL_NO_SOURCE RTSI7/RTSI Clock NISCOPE_VAL_RTSI_CLOCK PFI 0 NISCOPE_VAL_PFI_0 PFI 1 NISCOPE_VAL_PFI_1 PFI 2 NISCOPE_VAL_PFI_2 RTSI 0 NISCOPE_VAL_RTSI_0 RTSI 1 NISCOPE_VAL_RTSI_1 RTSI 2 NISCOPE_VAL_RTSI_2 RTSI 3 NISCOPE_VAL_RTSI_3 RTSI 4 NISCOPE_VAL_RTSI_4 RTSI 5 NISCOPE_VAL_RTSI_5 RTSI 6 NISCOPE_VAL_RTSI_6 Clock Out NISCOPE_VAL_CLK_OUT  *  On NISCOPE_VAL_TRUE Off NISCOPE_VAL_FALSE   �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_ConfigureTriggerOutput</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_ConfigureTriggerOutput
</h1>

<h2>C Function Prototype</h2>
<p class="syntax">ViStatus niScope_ConfigureTriggerOutput (ViSession vi, ViInt32 triggerEvent, ViConstString triggerOutput);</p>


<h2 class="purpose">Purpose</h2>
<table class="Borderless-Wide">
<tr>
<td class="Icon"><img src="note.gif"></td>
<td>
<strong>Note</strong>&nbsp;&nbsp;This function is obsolete. Consider using <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_ExportSignal.html')"><span class="Monospace">niScope_ExportSignal</span></a> instead.</td></tr></table>

<p class="Body">Configures the digitizer to generate a signal pulse that other digitizers can detect when configured for digital triggering. </p>

<p class="Body">For NI-DAQmx devices, closing the session clears the route. However, if you want to clear the routes before closing the session, call this function again and route the <span class="monospace">NISCOPE_VAL_STOP_TRIGGER_EVENT</span> to <span class="monospace">NISCOPE_VAL_NONE</span>.</p>

</body>
</html>        <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_ConfigureTriggerOutput</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">triggerOutput</td>
<td class="paramDataType">ViConstString</td>
<td>Specifies the hardware signal line on which the digital pulse is generated.
<p class="Body"><strong>Valid Values</strong></p>
<p class="Body"><span class="Monospace">NISCOPE_VAL_NO_EVENT</span><br>
<span class="Monospace">NISCOPE_VAL_STOP_TRIGGER_EVENT</span> <br>

<span class="Monospace">NISCOPE_VAL_START_TRIGGER_EVENT</span> <br>

<span class="Monospace">NISCOPE_VAL_END_OF_ACQUISITION_EVENT</span> <br>

<span class="Monospace">NISCOPE_VAL_END_OF_RECORD_EVENT</span> </p>

</td></tr></table></body>
</html>    p    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_ConfigureTriggerOutput</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">triggerEvent</td>
<td class="paramDataType">ViInt32</td>
<td>Specifies the condition in which this device  generates a digital pulse.</td> </tr>
</table></body>
</html>    `�-   �  �    Instrument Handle                 ,#����  �    Status                           �D AM � �    Trigger Output                   �a @ G � �    Trigger Event                          	                     �None NISCOPE_VAL_NO_SOURCE RTSI 0 NISCOPE_VAL_RTSI_0 RTSI 1 NISCOPE_VAL_RTSI_1 RTSI 2 NISCOPE_VAL_RTSI_2 RTSI 3 NISCOPE_VAL_RTSI_3 RTSI 4 NISCOPE_VAL_RTSI_4 RTSI 5 NISCOPE_VAL_RTSI_5 RTSI 6 NISCOPE_VAL_RTSI_6 PFI 0 NISCOPE_VAL_PFI_0 PFI 1 NISCOPE_VAL_PFI_1 PFI 2 NISCOPE_VAL_PFI_2 PFI 3 NISCOPE_VAL_PFI_3 PFI 4 NISCOPE_VAL_PFI_4 PFI 5 NISCOPE_VAL_PFI_5 PFI 6 NISCOPE_VAL_PFI_6 PFI 7 NISCOPE_VAL_PFI_7 PXI Star Trigger NISCOPE_VAL_PXI_STAR               �None NISCOPE_VAL_NONE Start Trigger NISCOPE_VAL_START_TRIGGER_EVENT Stop Trigger NISCOPE_VAL_STOP_TRIGGER_EVENT End of Acquisition NISCOPE_VAL_END_OF_ACQUISITION_EVENT End of Record NISCOPE_VAL_END_OF_RECORD_EVENT   	�    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_ExportSignal</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_ExportSignal</h1>

<h2>C Function Prototype</h2>
<p class="syntax">ViStatus niScope_ExportSignal (ViSession vi,
                                        ViInt32 signal,
                                        ViConstString signalIdentifier,
                                        ViConstString outputTerminal);</p>


<h2 class="purpose">Purpose</h2>

<table class="Borderless-Wide">
<tr>
<td class="Icon"><img src="note.gif"></td>
<td>
<strong>Note</strong>&nbsp;&nbsp;This function replaces <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_ConfigureTriggerOutput.html')"><span class="Monospace">niScope_ConfigureTriggerOutput</span></a>.
</td></tr></table>
<p class="Body">Configures the digitizer to generate a signal that other devices can detect 
when configured for digital triggering or sharing clocks.  The <strong>signal</strong> parameter 
specifies what condition causes the digitizer to generate the signal.  
The <strong>outputTerminal</strong> parameter specifies where to send the signal  on the hardware 
(such as a PFI connector or RTSI line).</p>
 
 <p class ="Body">In cases where multiple instances of a particular signal exist, use the <strong>signalIdentifier</strong> input to specify 
 which instance to control.  For normal signals, only one instance exists and you should leave 
 this parameter set to the empty string. You can call this function multiple times  and set each available line 
 to a different signal.</p>
<p class ="Body"> To unprogram a specific line on device, call this function with 
the signal you no longer want to export and  
set <strong>outputTerminal</strong> to  <span class="Monospace">NISCOPE_VAL_NONE</span>.</p>


<h2>Related topics:</h2><ul>        <li><a href="javascript:LaunchHelp('Digitizers.chm::/Triggers.html')">Triggering</a></li>   <li><a href="javascript:LaunchHelp('Digitizers.chm::/5122_State_Model.html')">SMC-Based Digitizers Acquisition Engine State Diagram</a></li>  <li><a href="javascript:LaunchHelp('Digitizers.chm::/PXI_Trigger_Lines.html')">PXI Trigger Lines</a></li>  </ul>



</body>
</html>    	k    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_ExportSignal</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">outputTerminal</td>
<td class="paramDataType">ViConstString</td>
<td>Identifies the hardware signal line on which the digital pulse is 
			   generated.
<p class="Body">
<strong>Defined Values</strong></p>

<table class="Borderless">
<tr><td><span class="Monospace">NISCOPE_VAL_RTSI_0</span> </td><td><span class="Monospace">(&quot;VAL_RTSI_0&quot;)</span></td></tr>
<tr><td><span class="Monospace">NISCOPE_VAL_RTSI_1</span></td><td><span class="Monospace">(&quot;VAL_RTSI_1&quot;)</span></td></tr>
<tr><td><span class="Monospace">NISCOPE_VAL_RTSI_2</span></td><td><span class="Monospace">(&quot;VAL_RTSI_2&quot;)</span></td></tr>
<tr><td><span class="Monospace">NISCOPE_VAL_RTSI_3</span> </td><td><span class="Monospace">(&quot;VAL_RTSI_3&quot;)</span></td></tr>
<tr><td><span class="Monospace">NISCOPE_VAL_RTSI_4</span></td><td><span class="Monospace">(&quot;VAL_RTSI_4&quot;)</span></td></tr>
<tr><td><span class="Monospace">NISCOPE_VAL_RTSI_5</span>  </td><td><span class="Monospace">(&quot;VAL_RTSI_5&quot;)</span></td></tr>
<tr><td><span class="Monospace">NISCOPE_VAL_RTSI_6</span></td><td><span class="Monospace">(&quot;VAL_RTSI_6&quot;)</span></td></tr>
<tr><td><span class="Monospace">NISCOPE_VAL_RTSI_7</span></td><td><span class="Monospace">(&quot;VAL_RTSI_7&quot;)</span></td></tr>

<tr><td>NISCOPE_VAL_PXI_STAR</td><td>(&quot;VAL_PXI_STAR&quot;)</td></tr>

<tr><td><span class="Monospace">NISCOPE_VAL_PFI_0</span></td><td><span class="Monospace">(&quot;VAL_PFI_0&quot;)</span></td></tr>
<tr><td><span class="Monospace">NISCOPE_VAL_PFI_1</span></td><td><span class="Monospace">(&quot;VAL_PFI_1&quot;)</span></td></tr>
<tr><td><span class="Monospace">NISCOPE_VAL_PFI_2</span></td><td><span class="Monospace">(&quot;VAL_PFI_2&quot;)</span></td></tr>
<tr><td><span class="Monospace">NISCOPE_VAL_CLK_OUT</span></td><td><span class="Monospace">(&quot;VAL_CLK_OUT&quot;)</span></td></tr>
 

</table>

 </td></tr></table></body>
</html>    	y    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_ExportSignal</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">signal</td>
<td class="paramDataType">ViInt32</td>
<td>Signal (clock, trigger, or event) to export.
 <p class="Body">
<strong>Defined Values</strong></p>




<table class="Borderless">


<tr><td>NISCOPE_VAL_REF_TRIGGER</td><td>(1)</td><td>Generate a pulse when detecting the Stop/Reference trigger.

</td></tr>

<tr><td><span class="Monospace">NISCOPE_VAL_START_TRIGGER</span> </td><td>(2)</td><td>Generate a pulse when detecting a Start trigger.</td></tr>
<tr><td><span class="Monospace">NISCOPE_VAL_END_OF_ACQUISITION_EVENT</span></td><td>(3)</td><td>Generate a pulse when the acquisition finishes.</td></tr>
<tr><td>N<span class="Monospace">ISCOPE_VAL_END_OF_RECORD_EVENT</span>  </td><td>(4)</td><td>Generate a pulse at the end of the record.</td></tr>
<tr><td><span class="Monospace">NISCOPE_VAL_ADVANCE_TRIGGER</span>   </td><td>(5)</td><td>Generate a pulse when detecting an Advance trigger.</td></tr>
<tr><td><span class="Monospace">NISCOPE_VAL_READY_FOR_ADVANCE_EVENT</span>  </td><td>(6)</td><td>Asserts when the digitizer is ready to advance to the next record.</td></tr>
<tr><td><span class="Monospace">NISCOPE_VAL_READY_FOR_START_EVENT</span>   </td><td>(7)</td><td>Asserts when the digitizer is initiated and ready to accept a Start trigger and begin sampling.</td></tr>
<tr><td><span class="Monospace">NISCOPE_VAL_READY_FOR_REF_EVENT</span> </td><td>(10)</td><td>Asserts when the digitizer is ready to accept a Reference trigger.</td></tr>
<tr><td><span class="Monospace">NISCOPE_VAL_REF_CLOCK</span> </td><td>(100)</td><td> Export the Reference clock for the digitizer to the specified terminal.</td></tr>
<tr><td><span class="Monospace">NISCOPE_VAL_SAMPLE_CLOCK</span>   </td><td>(101)</td><td>Export the Sample clock for the digitizer to the specified terminal.</td></tr>
<tr><td><span class="Monospace">NISCOPE_VAL_5V_OUT</span>  </td><td>(13)</td><td>Exports a 5 V power supply.</td></tr>
</table>
</td>
</tr>
</table></body>
</html>    M    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_ExportSignal</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">signalIdentifier</td>
<td class="paramDataType">ViConstString</td>
<td>Describes the signal being exported.
</td></tr>
</table></body>
</html>    `�-   �  �    Instrument Handle                 ,#����  �    Status                           
i AM � �    Output Terminal                  � @ > � �    Signal                           ] x > �  �    Signal Identifier                      	                     �None NISCOPE_VAL_NO_SOURCE RTSI 0 NISCOPE_VAL_RTSI_0 RTSI 1 NISCOPE_VAL_RTSI_1 RTSI 2 NISCOPE_VAL_RTSI_2 RTSI 3 NISCOPE_VAL_RTSI_3 RTSI 4 NISCOPE_VAL_RTSI_4 RTSI 5 NISCOPE_VAL_RTSI_5 RTSI 6 NISCOPE_VAL_RTSI_6 RTSI Clock (RTSI 7) NISCOPE_VAL_RTSI_7 PFI 0 NISCOPE_VAL_PFI_0 PFI 1 NISCOPE_VAL_PFI_1 PFI 2 NISCOPE_VAL_PFI_2 PFI 3 NISCOPE_VAL_PFI_3 PFI 4 NISCOPE_VAL_PFI_4 PFI 5 NISCOPE_VAL_PFI_5 PFI 6 NISCOPE_VAL_PFI_6 PFI 7 NISCOPE_VAL_PFI_7 PXI Star Trigger NISCOPE_VAL_PXI_STAR              Start Trigger NISCOPE_VAL_START_TRIGGER Stop Trigger NISCOPE_VAL_REF_TRIGGER Advance Trigger NISCOPE_VAL_ADVANCE_TRIGGER Ready for Advance Event NISCOPE_VAL_READY_FOR_ADVANCE_EVENT Ready for Start Event NISCOPE_VAL_READY_FOR_START_EVENT Ready for Reference Event NISCOPE_VAL_READY_FOR_REF_EVENT End of Acquisition Event NISCOPE_VAL_END_OF_ACQUISITION_EVENT End of Record Event NISCOPE_VAL_END_OF_RECORD_EVENT Reference Clock NISCOPE_VAL_REF_CLOCK Sample Clock NISCOPE_VAL_SAMPLE_CLOCK 5 Volt Power NISCOPE_VAL_5V_OUT    ""   1    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_ConfigureEqualizationFilterCoefficients</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_ConfigureEqualizationFilterCoefficients
</h1>


<h2>C Function Prototype</h2>
<p class="syntax">ViStatus _VI_FUNC niScope_ConfigureEqualizationFilterCoefficients (ViSession vi,
                                                                   ViConstString channel,
                                                                   ViInt32 numberOfCoefficients,
                                                                   ViReal64*  coefficients);
</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Configures the custom coefficients for the equalization FIR filter on the device. 
This filter is designed to compensate the input signal for artifacts introduced to the signal outside
 of the digitizer. Because this filter is a generic FIR filter, any coefficients are valid. 
 Coefficient values should be between +1 and &#8211;1.</p>

</body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_ConfigureEqualizationFilterCoefficients</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">numberOfCoefficients</td>
<td class="paramDataType">ViInt32</td>
<td>The number of coefficients being passed in the <strong>coefficients</strong> array.  
</td></tr>
</table></body>
</html>    =    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_ConfigureEqualizationFilterCoefficients</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">coefficients </td>
<td class="paramDataType">ViReal64*</td>
<td>The custom coefficients for the equalization FIR filter on the device. These 
coefficients should be  between +1 and &#8211;1. 

You can obtain the number of coefficients from the <a href= 
"cviNISCOPE_ATTR_EQUALIZATION_NUM_COEFFICIENTS.html"><span class="Monospace">NISCOPE_ATTR_EQUALIZATION_NUM_COEFFICIENTS</span></a> attribute. The <a href= 
"cviNISCOPE_ATTR_EQUALIZATION_FILTER_ENABLED.html"><span class="Monospace">NISCOPE_ATTR_EQUALIZATION_FILTER_ENABLED</span></a> attribute must be set to TRUE to enable the filter.



</td></tr>
</table></body>
</html>    `�) 
  �  �    Instrument Handle                 ,����  �    Status                            �� /   �  �    Channel List                     * 0 � �  �    Number Of Coefficients           ,� � ^ �  �    Coefficients                           	           "0"    0           <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_GetEqualizationFilterCoefficients</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_GetEqualizationFilterCoefficients
</h1>


<h2>C Function Prototype</h2>
<p class="syntax">ViStatus _VI_FUNC niScope_GetEqualizationFilterCoefficients (ViSession vi,
                                                                   ViConstString channel,
                                                                   ViInt32 numberOfCoefficients,
                                                                   ViReal64*  coefficients);
</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Retrieves the custom coefficients for the equalization FIR filter on the device. This filter is designed to compensate the input signal for artifacts introduced to the signal outside of the digitizer. Because this filter is a generic FIR filter, any coefficients are valid. Coefficient values should be between +1 and &#8211;1.</p>

</body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_GetEqualizationFilterCoefficients</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">channel</td>
<td class="paramDataType">ViConstString</td>
<td>The channel to configure. For more information, refer to <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviChannelStringSyntaxforC.html')">Channel String Syntax</a>.</td></tr>
</table></body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_GetEqualizationFilterCoefficients</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">numberOfCoefficients</td>
<td class="paramDataType">ViInt32</td>
<td>The number of coefficients being passed in the <strong>coefficients</strong> array.  
</td></tr>
</table></body>
</html>    w    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_GetEqualizationFilterCoefficients</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">coefficients </td>
<td class="paramDataType">ViReal64*</td>
<td>The custom coefficients for the equalization FIR filter on the device. These 
coefficients should be  between +1 and &#8211;1. 

You can obtain the number of coefficients from the <a href= 
"cviNISCOPE_ATTR_EQUALIZATION_NUM_COEFFICIENTS.html"><span class="Monospace">NISCOPE_ATTR_EQUALIZATION_NUM_COEFFICIENTS</span></a> attribute. 



</td></tr>
</table></body>
</html>    `�) 
  �  �    Instrument Handle                 ,����  �    Status                           77 /  �  �    channel                          :/ 0 � �  �    Number Of Coefficients           <� � ^ �  �    Coefficients                           	           "0"    0    	           �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_GetFrequencyResponse</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_GetFrequencyResponse</h1>



<p class="syntax">ViStatus _VI_FUNC niScope_GetFrequencyResponse (ViSession vi,
                                                ViConstString channelName,
                                                ViInt32 bufferSize,
                                                ViReal64 frequencies[],
                                                ViReal64 amplitudes[],
                                                ViReal64 phases[],
                                                ViInt32* numberOfFrequencies);</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Gets the frequency response of the digitizer for the current configurations of the channel attributes. Not  all digitizers support this function.
 </p> 

</body>
</html>        <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_GetFrequencyResponse</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">vi</td>
<td class="paramDataType">ViSession</td>
<td>The instrument handle you obtain from  <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_init.html')"><span class="Monospace">niScope_init</span></a> that identifies a particular instrument session.</td></tr></table></body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_GetFrequencyResponse</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">channel</td>
<td class="paramDataType">ViConstString</td>
<td>The channel to configure. For more information, refer to <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviChannelStringSyntaxforC.html')">Channel String Syntax</a>.</td></tr>
</table></body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_ConfigureEqualizationFilterCoefficients</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">bufferSize</td>
<td class="paramDataType">ViInt32</td>  
<td>The array size for the frequencies, amplitudes, and phases arrays that you pass in to the other parameters. 
<p class ="body">
To determine the sizes of the buffers to allocate for the frequencies, amplitudes, and phases arrays, pass a value of 0 to the <strong>bufferSize</strong> parameter and a value of NULL to the <strong>frequencies</strong> parameter. In this case, the value returned by the <strong>numberOfFrequencies</strong> parameter is the size of the arrays  necessary to hold the frequencies, amplitudes, and phases. Allocate three arrays of this size, then call this function again (with correct <strong>bufferSize</strong> parameter)  to retrieve the actual values.</p></td></tr>
</table></body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_ConfigureEqualizationFilterCoefficients</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">frequencies</td>
<td class="paramDataType">ViReal64</td><td>  
The array of frequencies that corresponds with the amplitude and phase response of the device.
</td></tr>
</table></body>
</html>    x    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_GetFrequencyResponse</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">amplitudes</td>
<td class="paramDataType">ViReal64</td><td> The array of amplitudes that correspond with the magnitude response of the device. 

</td></tr>
</table></body>
</html>    m    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_GetFrequencyResponse</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">phases</td>
<td class="paramDataType">ViReal64</td> <td> The array of phases that correspond with the phase response of the device. 
</td></tr>
</table></body>
</html>     q    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_GetFrequencyResponse</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">numberOfFrequencies</td>
<td class="paramDataType">ViInt32</td> <td>  

Returns the number of frequencies in the returned spectrum.

</td></tr>
</table></body>
</html>




   F( %   �  �    vi                               I1 % � �  �    channel                          L W  �  �    bufferSize                       Q	 W � �  �    frequencies                      S� �  �  �    amplitudes                       V) � � �  �    phases                           X� �  �  �    numberOfFrequencies               , � ����  �    Status                                 "0"        	            	            	            	            	              <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_SetAttributeViInt32</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_SetAttributeViInt32
</h1>

<h2>C Function Prototype</h2>
<p class="syntax">ViStatus niScope_SetAttributeViInt32 (ViSession vi, ViConstString channelList, ViAttr attributeID, ViInt32 value);</p>


<h2 class="purpose">Purpose</h2>


<p class="Body">Sets the value of a ViInt32 attribute. This is a low-level function that you can use to set the values of instrument-specific attributes and inherent IVI  attributes. If the attribute represents an instrument state, this function performs instrument I/O in the following cases: 
</p>
<ul>

<li>State caching is disabled for the entire session or for the particular attribute. 
</li>
<li>State caching is enabled and the currently cached value is invalid or is different than the value you specify. 
</li>
</ul>

<table class="Borderless"><tr><td class="Icon"><img src="note.gif"></td><td><strong>Note</strong>&nbsp;&nbsp;NI-SCOPE contains high-level functions that set most of the instrument attributes. Use the high-level functions as much as possible because they handle order dependencies and multithread locking for you. In addition, high-level functions perform status checking only after setting all of the attributes. In contrast, when you set multiple attributes using the Set Attribute functions, the functions check the instrument status after each call. Also, when state caching is enabled, the high-level functions that configure multiple attributes perform instrument I/O only for the attributes whose value you change. Thus, you can safely call the high-level functions without the penalty of redundant instrument I/O. </td></tr></table>



</body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_SetAttributeViInt32</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">value</td>
<td class="paramDataType">ViInt32</td>
<td>The value that you want to set the attribute. Some  values might not be valid depending on the current settings of the instrument session.</td></tr>
</table></body>
</html>    9    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_SetAttributeViInt32</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">attributeID</td>
<td class="paramDataType">ViAttr</td>
<td>The ID of an attribute.</td></tr>
</table></body>
</html>    `�-   �  �    Instrument Handle                 ,#����  �    Status                           e$ � � �  �    Value                           ���� � ���                                          g� = � � �    Attribute ID                      �� =  �  �    Channel List                           	               .Press <ENTER> for a list of 
value constants.                0    ""       <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_SetAttributeViInt64</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_SetAttributeViInt64
</h1>

<h2>C Function Prototype</h2>
<p class="syntax">ViStatus niScope_SetAttributeViInt64 (ViSession vi, ViConstString channelList, ViAttr attributeID, ViInt64 value);</p>


<h2 class="purpose">Purpose</h2>


<p class="Body">Sets the value of a ViInt64 attribute. This is a low-level function that you can use to set the values of instrument-specific attributes and inherent IVI  attributes. If the attribute represents an instrument state, this function performs instrument I/O in the following cases: 
</p>
<ul>

<li>State caching is disabled for the entire session or for the particular attribute. 
</li>
<li>State caching is enabled and the currently cached value is invalid or is different than the value you specify. 
</li>
</ul>

<table class="Borderless"><tr><td class="Icon"><img src="note.gif"></td><td><strong>Note</strong>&nbsp;&nbsp;NI-SCOPE contains high-level functions that set most of the instrument attributes. Use the high-level functions as much as possible because they handle order dependencies and multithread locking for you. In addition, high-level functions perform status checking only after setting all of the attributes. In contrast, when you set multiple attributes using the Set Attribute functions, the functions check the instrument status after each call. Also, when state caching is enabled, the high-level functions that configure multiple attributes perform instrument I/O only for the attributes whose value you change. Thus, you can safely call the high-level functions without the penalty of redundant instrument I/O. </td></tr></table>



</body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_SetAttributeViInt64</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">value</td>
<td class="paramDataType">ViInt32</td>
<td>The value that you want to set the attribute. Some  values might not be valid depending on the current settings of the instrument session.</td></tr>
</table></body>
</html>    9    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_SetAttributeViInt64</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">attributeID</td>
<td class="paramDataType">ViAttr</td>
<td>The ID of an attribute.</td></tr>
</table></body>
</html>    `�-   �  �    Instrument Handle                 ,#����  �    Status                           s� � � �  �    Value                           ���� � ���                                          vx = � � �    Attribute ID                      �� =  �  �    Channel List                           	               .Press <ENTER> for a list of 
value constants.                0    ""   !    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_SetAttributeViReal64</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_SetAttributeViReal64
</h1>


<h2>C Function Prototype</h2>
<p class="syntax">ViStatus niScope_SetAttributeViReal64 (ViSession vi, ViConstString channelList, ViAttr attributeID, ViReal64 value);</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Sets the value of a  ViReal64 attribute. This is a low-level function that you can use to set the values of instrument-specific attributes and inherent IVI  attributes. If the attribute represents an instrument state, this function performs instrument I/O in the following cases: 
</p>
<ul>

<li>State caching is disabled for the entire session or for the particular attribute. 
</li>
<li>State caching is enabled and the currently cached value is invalid or is different than the value you specify. 
</li>
</ul>

<table class="Borderless"><tr><td class="Icon"><img src="note.gif"></td><td><strong>Note</strong>&nbsp;&nbsp;NI-SCOPE contains high-level functions that set most of the instrument attributes. Use the high-level driver functions as much as possible because they handle order dependencies and multithread locking for you. In addition, the high-level functions perform status checking only after setting all of the attributes. In contrast, when you set multiple attributes using the Set Attribute functions, the functions check the instrument status after each call. Also, when state caching is enabled, the high-level functions that configure multiple attributes perform instrument I/O only for the attributes whose value you change. Thus, you can safely call the high-level functions without the penalty of redundant instrument I/O. </td></tr></table>



</body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_SetAttributeViReal64</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">value</td>
<td class="paramDataType">ViReal64</td>
<td>The value that you want to set the attribute to. Some values might not be valid depending on the current settings of the instrument session.</td></tr>
</table></body>
</html>    :    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_SetAttributeViReal64</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">attributeID</td>
<td class="paramDataType">ViAttr</td>
<td>The ID of an attribute.</td></tr>
</table></body>
</html>    `�-   �  �    Instrument Handle                 ,#����  �    Status                           �} � � �  �    Value                           ���� � ���                                          �0 = � � �    Attribute ID                      �� =  �  �    Channel List                           	               .Press <ENTER> for a list of 
value constants.                0    ""   O    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_SetAttributeViString</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_SetAttributeViString
</h1>

<h2>C Function Prototype</h2>
<p class="syntax">ViStatus niScope_SetAttributeViString (ViSession vi, ViConstString channelList, ViAttr attributeID, ViConstString value);</p>


<h2 class="purpose">Purpose</h2>


<p class="Body">Sets the value of a ViString attribute.
</p>
<p class="Body">This is a low-level function that you can use to set the values of 
instrument-specific attributes and inherent IVI  attributes. 
If the attribute represents an instrument state, this function performs instrument I/O in 
the following cases:
</p>
<ul>

<li>State caching is disabled for the entire session or for the particular attribute.
</li>
<li>State caching is enabled and the currently cached value is invalid or is different than the value you specify. 
</li>
</ul>

<table class="Borderless"><tr><td class="Icon"><img src="note.gif"></td><td><strong>Note
</strong>&nbsp;&nbsp;NI-SCOPE contains high-level functions that set most of the instrument 
attributes. Use the high-level driver functions as much as possible because they handle 
order dependencies and multithread locking for you. In addition, the high-level functions 
perform status checking only after setting all of the attributes. In contrast, when you set 
multiple attributes using the SetAttribute functions, the functions check the instrument 
status after each call. Also, when state caching is enabled, the high-level functions that 
configure multiple attributes perform instrument I/O only for the attributes whose value you 
change. Thus, you can safely call the high-level functions without the penalty of redundant 
instrument I/O. </td></tr></table>

</body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_SetAttributeViString</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">value</td>
<td class="paramDataType">ViConstString</td>
<td>The value that you want to set the attribute to. Some  values might not be valid 
depending on the current settings of the instrument session.</td></tr></table></body>
</html>    ;    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_SetAttributeViString</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">attributeID</td>
<td class="paramDataType">ViAttr</td>
<td>The ID of an attribute. </td></tr>
</table></body>
</html>    `�-   �  �    Instrument Handle                 ,#����  �    Status                           �d � � �  �    Value                           ���� � ���                                          � = � � �    Attribute ID                      �� =  �  �    Channel List                           	               .Press <ENTER> for a list of 
value constants.                0    ""   #    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_SetAttributeViBoolean</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_SetAttributeViBoolean
</h1>

<h2>C Function Prototype</h2>
<p class="syntax">ViStatus niScope_SetAttributeViBoolean (ViSession vi, ViConstString channelList, ViAttr attributeID, ViBoolean value);</p>


<h2 class="purpose">Purpose</h2>


<p class="Body">Sets the value of a ViBoolean attribute. This is a low-level function that you can use to set the values of instrument-specific attributes and inherent IVI  attributes. If the attribute represents an instrument state, this function performs instrument I/O in the following cases:
</p>
<ul>

<li>State caching is disabled for the entire session or for the particular attribute. 
</li>
<li>State caching is enabled and the currently cached value is invalid or is different than the value you specify. 
</li>
</ul>

<table class="Borderless"><tr><td class="Icon"><img src="note.gif"></td><td><strong>Note</strong>&nbsp;&nbsp;NI-SCOPE contains high-level functions that set most of the instrument attributes. Use the high-level driver functions as much as possible because they handle order dependencies and multithread locking for you. In addition, the high-level functions perform status checking only after setting all of the attributes. In contrast, when you set multiple attributes using the SetAttribute functions, the functions check the instrument status after each call. Also, when state caching is enabled, the high-level functions that configure multiple attributes perform instrument I/O only for the attributes whose value you change. Thus, you can safely call the high-level functions without the penalty of redundant instrument I/O. </td></tr></table>


</body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_SetAttributeViBoolean</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">value</td>
<td class="paramDataType">ViBoolean</td>
<td>The value that you want to set the attribute to. Some values might not be valid depending on the current settings of the instrument session.</td></tr>
</table></body>
</html>    ;    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_SetAttributeViBoolean</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">attributeID</td>
<td class="paramDataType">ViAttr</td>
<td>The ID of an attribute.</td></tr>
</table></body>
</html>    `�-   �  �    Instrument Handle                 ,#����  �    Status                           �& � � �  �    Value                           ���� � ���                                          �� = � � �    Attribute ID                      �� =  �  �    Channel List                           	               .Press <ENTER> for a list of 
value constants.                0    ""   $    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title> niScope_SetAttributeViSession</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_SetAttributeViSession</h1>


<h2>C Function Prototype</h2>
<p class="syntax">ViStatus niScope_SetAttributeViSession (ViSession vi, ViConstString channelList, ViAttr attributeID, ViSession value);</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Sets the value of a  ViSession  attribute. This is a low-level function that you can use to set the values of instrument-specific attributes and inherent IVI  attributes. If the attribute represents an instrument state, this function performs instrument I/O in the following cases: 
</p>
<ul>

<li>State caching is disabled for the entire session or for the particular attribute. 
</li>
<li>State caching is enabled and the currently cached value is invalid or is different than the value you specify. 
</li>
</ul>

<table class="Borderless"><tr><td class="Icon"><img src="note.gif"></td><td><strong>Note</strong>&nbsp;&nbsp;NI-SCOPE contains high-level functions that set most of the instrument attributes. Use the high-level driver functions as much as possible because they handle order dependencies and multithread locking for you. In addition, the high-level functions perform status checking only after setting all of the attributes. In contrast, when you set multiple attributes using the Set Attribute functions, the functions check the instrument status after each call. Also, when state caching is enabled, the high-level functions that configure multiple attributes perform instrument I/O only for the attributes whose value you change. Thus, you can safely call the high-level functions without the penalty of redundant instrument I/O. </td></tr></table>


</body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title> niScope_SetAttributeViSession</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">value</td>
<td class="paramDataType">ViSession</td>
<td>The value that you want to set the attribute to. Some values might not be valid 
depending on the current settings of the instrument session.</td></tr>
</table></body>
</html>    <    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title> niScope_SetAttributeViSession</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">attributeID</td>
<td class="paramDataType">ViAttr</td>
<td>The ID of an attribute.</td></tr>
</table></body>
</html>    `�-   �  �    Instrument Handle                 ,#����  �    Status                           �� � � �  �    Value                             �� =  �  �    Channel List                     �� = � � �    Attribute ID                    ���� � ���                                                	               ""                0    .Press <ENTER> for a list of 
value constants.   �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_GetAttributeViInt32</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_GetAttributeViInt32</h1>


<h2>C Function Prototype</h2>
<p class="syntax">ViStatus niScope_GetAttributeViInt32 (ViSession vi, ViConstString channelList, ViAttr attributeID, ViInt32* value);</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Queries the value of a ViInt32 attribute. You can use this function to
 get the values of instrument-specific attributes and inherent IVI  attributes. If the attribute represents an 
 instrument state, this function performs instrument I/O in the following cases: 
</p>
<ul>

<li>State caching is disabled for the entire session or for the particular attribute.
</li>
<li>State caching is enabled and the currently cached value is invalid. 
</li>
</ul>

</body>
</html>    I    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_GetAttributeViInt32</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">value</td>
<td class="paramDataType">ViInt32*</td>
<td>Returns the current value of the attribute.</td></tr>
</table></body>
</html>    9    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_GetAttributeViInt32</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">attributeID</td>
<td class="paramDataType">ViAttr</td>
<td>The ID of an attribute.</td></tr>
</table></body>
</html>    `�-   �  �    Instrument Handle                 ,#����  �    Status                           � � � �  �    Value                             �� =  �  �    Channel List                     �] = � � �    Attribute ID                           	           	            ""                0   �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_GetAttributeViInt64</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_GetAttributeViInt64</h1>


<h2>C Function Prototype</h2>
<p class="syntax">ViStatus niScope_GetAttributeViInt64(ViSession vi, ViConstString channelList, ViAttr attributeID, ViInt32* value);</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Queries the value of a ViInt64 attribute. You can use this function to
 get the values of instrument-specific attributes and inherent IVI  attributes. If the attribute represents an 
 instrument state, this function performs instrument I/O in the following cases: 
</p>
<ul>

<li>State caching is disabled for the entire session or for the particular attribute.
</li>
<li>State caching is enabled and the currently cached value is invalid. 
</li>
</ul>

</body>
</html>    I    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_GetAttributeViInt64</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">value</td>
<td class="paramDataType">ViInt64*</td>
<td>Returns the current value of the attribute.</td></tr>
</table></body>
</html>    9    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_GetAttributeViInt64</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">attributeID</td>
<td class="paramDataType">ViAttr</td>
<td>The ID of an attribute.</td></tr>
</table></body>
</html>    `�-   �  �    Instrument Handle                 ,#����  �    Status                           �j � � �  �    Value                             �� =  �  �    Channel List                     ƻ = � � �    Attribute ID                           	           	            ""                0   �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_GetAttributeViReal64</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_GetAttributeViReal64
</h1>

<h2>C Function Prototype</h2>
<p class="syntax">ViStatus niScope_GetAttributeViReal64 (ViSession vi, ViConstString channelList, ViAttr attributeID, ViReal64* value);</p>


<h2 class="purpose">Purpose</h2>


<p class="Body">Queries the value of a  ViReal64 attribute. You can use this function to get
 the values of instrument-specific attributes and inherent IVI  attributes. If the attribute represents an instrument state, 
 this function performs instrument I/O in the following cases: 
</p>
<ul>

<li>State caching is disabled for the entire session or for the particular attribute. 
</li>
<li>State caching is enabled and the currently cached value is invalid. 
</li>
</ul>

</body>
</html>    u    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_GetAttributeViReal64</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">value</td>
<td class="paramDataType">ViReal64*</td>
<td>Returns the current value of the attribute; pass the address of a  ViReal64 variable.</td></tr>
</table></body>
</html>    :    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_GetAttributeViReal64</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">attributeID</td>
<td class="paramDataType">ViAttr</td>
<td>The ID of an attribute.</td></tr>
</table></body>
</html>    `�-   �  �    Instrument Handle                 ,#����  �    Status                           �� � � �  �    Value                             �� =  �  �    Channel List                     �Q = � � �    Attribute ID                           	           	           ""                0       <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_GetAttributeViString</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_GetAttributeViString</h1>


<h2>C Function Prototype</h2>
<p class="syntax">ViStatus niScope_GetAttributeViString (ViSession vi, ViConstString channelList, ViAttr attributeID, ViInt32 bufSize, ViChar value[]);</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Queries the value of a ViString attribute. You can use this function to get the 
values of instrument-specific attributes and inherent IVI  attributes. If the attribute represents an instrument state, this 
function performs instrument I/O in the following cases: 
</p>
<ul>

<li>State caching is disabled for the entire session or for the particular attribute. 
</li>
<li>State caching is enabled and the currently cached value is invalid. 
</li>
</ul>

<p class="Body">You must provide a ViChar array to serve as a buffer for the value. You pass the 
number of bytes in the buffer as the <strong>bufSize</strong>. If the current value of the attribute, 
including the terminating NUL byte, is larger than the size you indicate in the <strong>bufSize</strong>, 
the function copies  (<strong>bufSize</strong> &#8211; 1) bytes into the buffer, places an ASCII NUL byte at the end of 
the buffer, and returns the <strong>bufSize</strong> you must pass to get the entire value. For example, if the value 
is 123456 and the <strong>bufSize</strong> is 4, the 
function places 123 into the buffer and returns 7. If you want to 
call this function just to get the required buffer size, you can pass 0 for the 
<strong>bufSize</strong> and <span class="Monospace">VI_NULL</span> for the <strong>value</strong>. 
 
</p>
</body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_init</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="borderless">
<tr>
<td class="paramName">Status</td>
<td class="paramDataType">ViStatus</td>
<td>Reports the status of this operation. To obtain a text description of the status code, 
call 
<a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_GetErrorMessage.html')">niScope_GetErrorMessage</a>. 
To obtain additional information concerning the error 
condition, use <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_GetError.html')">niScope_GetError</a> 
and 
<a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_ClearError.html')">niScope_ClearError</a>.

The general meaning of the status code is as follows:<br><br>

<table class="bordered">
<tr>
<th class="bordered">Value</th>
<th class="bordered">Meaning</th>
</tr>
<tr>
<td class="bordered">0</td>
<td class="bordered">Success</td>
</tr>
<tr>
<td class="bordered">Positive Values</td>
<td class="bordered">Warnings</td>
</tr>
<tr>
<td class="bordered">Negative Values</td>
<td class="bordered">Errors</td>
</tr>
</table>
</td></tr></table>
</body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_GetAttributeViString</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">value[]</td>
<td class="paramDataType">ViChar</td>
<td>The buffer in which the function returns the current value of the attribute; the buffer must be of 
type ViChar and have at least as many bytes as indicated in the <strong>bufSize</strong>.</td></tr> 
</table></body>
</html>    p    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_GetAttributeViString</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">bufSize</td>
<td class="paramDataType">ViInt32</td>
<td>The number of bytes in the ViChar array you specify for  <strong>value</strong>.</td></tr>
</table></body>
</html>    :    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_GetAttributeViString</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">attributeID</td>
<td class="paramDataType">ViAttr</td>
<td>The ID of an attribute.</td></tr>
</table></body>
</html>    `�-   �  �    Instrument Handle                ������  �    Status or Required Size          � � L � �    Value                             �� =  �  �    Channel List                     � =� �  �    Buf Size                         � = � � �    Attribute ID                           	           	            ""    512                0   �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_GetAttributeViBoolean</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_GetAttributeViBoolean
</h1>

<h2>C Function Prototype</h2>
<p class="syntax">
ViStatus niScope_GetAttributeViBoolean (ViSession vi, ViConstString channelList, ViAttr attributeID, ViBoolean* value);</p>

<h2 class="purpose">Purpose</h2>
<p class="Body">Queries the value of a ViBoolean attribute. You can use this function to get the values of instrument-specific attributes and inherent IVI  attributes. If the attribute represents an instrument state, this function performs instrument I/O in the following cases:
</p>
<ul>

<li>State caching is disabled for the entire session or for the particular attribute. 
</li>
<li>State caching is enabled and the currently cached value is invalid. 
</li>
</ul>

</body>
</html>    x    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_GetAttributeViBoolean</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">value</td>
<td class="paramDataType">ViBoolean*</td>
<td>Returns the current value of the attribute; pass the address of a ViBoolean variable. </td></tr>
</table></body>
</html>    ;    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_GetAttributeViBoolean</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">attributeID</td>
<td class="paramDataType">ViAttr</td>
<td>The ID of an attribute.</td></tr>
</table></body>
</html>    `�-   �  �    Instrument Handle                 ,#����  �    Status                           �a � � �  �    Value                             �� =  �  �    Channel List                     �� = � � �    Attribute ID                           	           	            ""                0   �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title> niScope_GetAttributeViSession</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_GetAttributeViSession</h1>


<h2>C Function Prototype</h2>
<p class="syntax">ViStatus niScope_GetAttributeViSession (ViSession vi, ViConstString channelList, ViAttr attributeID, ViSession* value);</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Queries the value of a  ViSession  attribute. You can use this function to get the values of instrument-specific attributes and inherent IVI  attributes. If the attribute represents an instrument state, this function performs instrument I/O in the following cases: 
</p>
<ul>

<li>State caching is disabled for the entire session or for the particular attribute. 
</li>
<li>State caching is enabled and the currently cached value is invalid. 
</li>
</ul>

</body>
</html>    z    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title> niScope_GetAttributeViSession</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">value</td>
<td class="paramDataType">ViSession*</td>
<td>Returns the current value of the attribute; pass the address of a  ViSession  variable.</td></tr>
</table></body>
</html>    <    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title> niScope_GetAttributeViSession</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">attributeID</td>
<td class="paramDataType">ViAttr</td>
<td>The ID of an attribute.</td></tr>
</table></body>
</html>    `�-   �  �    Instrument Handle                 ,#����  �    Status                           �� � � �  �    Value                             �� =  �  �    Channel List                     �| = � � �    Attribute ID                           	           	            ""                0   
    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CheckAttributeViInt32</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_CheckAttributeViInt32
</h1>


<h2>C Function Prototype</h2>
<p class="syntax">ViStatus niScope_CheckAttributeViInt32 (ViSession vi, ViConstString channelList, ViAttr attributeID, ViInt32 value);</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Verifies the validity of a value you specify for a ViInt32 attribute.
</p>
</body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CheckAttributeViInt32</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">value</td>
<td class="paramDataType">ViInt32</td>
<td>The value that you want to verify for the attribute. Some  values might not be valid depending on the current settings of the instrument session.</td></tr></table></body>
</html>    <    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CheckAttributeViInt32</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">attributeID</td>
<td class="paramDataType">ViAttr</td>
<td>The ID of an attribute.</td> </tr>
</table></body>
</html>    `�-   �  �    Instrument Handle                 ,#����  �    Status                            � � �  �    Value                             �� =  �  �    Channel List                    ���� � ���                                          � = � � �    Attribute ID                           	               ""    .Press <ENTER> for a list of 
value constants.                0   
    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CheckAttributeViInt64</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_CheckAttributeViInt64
</h1>


<h2>C Function Prototype</h2>
<p class="syntax">ViStatus niScope_CheckAttributeViInt64 (ViSession vi, ViConstString channelList, ViAttr attributeID, ViInt32 value);</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Verifies the validity of a value you specify for a ViInt64 attribute.
</p>
</body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CheckAttributeViInt64</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">value</td>
<td class="paramDataType">ViInt64</td>
<td>The value that you want to verify for the attribute. Some  values might not be valid depending on the current settings of the instrument session.</td></tr></table></body>
</html>    <    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CheckAttributeViInt64</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">attributeID</td>
<td class="paramDataType">ViAttr</td>
<td>The ID of an attribute.</td> </tr>
</table></body>
</html>    `�-   �  �    Instrument Handle                 ,#����  �    Status                           � � � �  �    Value                             �� =  �  �    Channel List                    ���� � ���                                          l = � � �    Attribute ID                           	               ""    .Press <ENTER> for a list of 
value constants.                0       <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CheckAttributeViReal64</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_CheckAttributeViReal64</h1>


<h2>C Function Prototype</h2>
<p class="syntax">ViStatus niScope_CheckAttributeViReal64 (ViSession vi, ViConstString channelList, ViAttr attributeID, ViReal64 value);</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Verifies the validity of a value you specify for a ViReal64 attribute.
</p>
</body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CheckAttributeViReal64</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">value</td>
<td class="paramDataType">ViReal64</td>
<td>The value that you want to verify  for the attribute. Some  values might not be valid depending on the current settings of the instrument session.</td></tr></table></body>
</html>    <    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CheckAttributeViReal64</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">attributeID</td>
<td class="paramDataType">ViAttr</td>
<td>The ID of an attribute.</td></tr>
</table></body>
</html>    `�-   �  �    Instrument Handle                 ,#����  �    Status                           ` � � �  �    Value                             �� =  �  �    Channel List                    ���� � ���                                           = � � �    Attribute ID                           	               ""    .Press <ENTER> for a list of 
value constants.                0       <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CheckAttributeViString</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_CheckAttributeViString
</h1>

<h2>C Function Prototype</h2>
<p class="syntax">ViStatus niScope_CheckAttributeViString (ViSession vi, ViConstString channelList, ViAttr attributeID, ViConstString value);</p>


<h2 class="purpose">Purpose</h2>


<p class="Body">Verifies the validity of a value you specify for a ViString attribute.
</p>
</body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CheckAttributeViString</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">value</td>
<td class="paramDataType">ViConstString</td>
<td>The value that you want to verify for the attribute. Some  values might not be valid depending on the current settings of the instrument session.</td></tr></table></body>
</html>    <    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CheckAttributeViString</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">attributeID</td>
<td class="paramDataType">ViAttr</td>
<td>The ID of an attribute.</td></tr>
</table></body>
</html>    `�-   �  �    Instrument Handle                 ,#����  �    Status                           ! � � �  �    Value                             �� =  �  �    Channel List                    ���� � ���                                          #� = � � �    Attribute ID                           	               ""    .Press <ENTER> for a list of 
value constants.                0       <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CheckAttributeViBoolean</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_CheckAttributeViBoolean
</h1>


<h2>C Function Prototype</h2>
<p class="syntax">ViStatus niScope_CheckAttributeViBoolean (ViSession vi, ViConstString channelList, ViAttr attributeID, ViBoolean value);</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Verifies the validity of a value you specify for a ViBoolean attribute.
</p>
</body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CheckAttributeViBoolean</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">value</td>
<td class="paramDataType">ViBoolean</td>
<td>The value that you want to verify  for the attribute. Some values might not be valid depending on the current settings of the instrument session.</td></tr></table></body>
</html>    =    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CheckAttributeViBoolean</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">attributeID</td>
<td class="paramDataType">ViAttr</td>
<td>The ID of an attribute </td></tr>
</table></body>
</html>    `�-   �  �    Instrument Handle                 ,#����  �    Status                           *� � � �  �    Value                             �� >  �  �    Channel List                    ���� � ���                                          -� = � � �    Attribute ID                           	               ""    .Press <ENTER> for a list of 
value constants.                0       <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title> niScope_CheckAttributeViSession</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_CheckAttributeViSession</h1>


<h2>C Function Prototype</h2>
<p class="syntax">ViStatus niScope_CheckAttributeViSession (ViSession vi, ViConstString channelList, ViAttr attributeID, ViSession value);</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Verifies the validity of a value you specify for a  ViSession  attribute.</p>

</body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title> niScope_CheckAttributeViSession</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">value</td>
<td class="paramDataType">ViSession</td>
<td>The value that you want to verify for the attribute. Some  values might not be valid depending on the current settings of the instrument session.</td></tr>
</table></body>
</html>    >    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title> niScope_CheckAttributeViSession</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">attributeID</td>
<td class="paramDataType">ViAttr</td>
<td>The ID of an attribute.</td></tr>
</table></body>
</html>    `�-   �  �    Instrument Handle                 ,#����  �    Status                           4� � � �  �    Value                             �� =  �  �    Channel List                    ���� � ���                                          7B = � � �    Attribute ID                           	               ""    .Press <ENTER> for a list of 
value constants.                0   .    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niScope_ImportAttributeConfigurationFile</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niScope_ImportAttributeConfigurationFile</h1>
<p class="syntax">ViStatus niScope_ImportAttributeConfigurationFile (ViSession vi, ViConstString filePath);</p>

<h2 class="purpose">Purpose</h2>
<p class="Body">Imports an attribute configuration to the session from the specified file.</p>

<p class="Body">You can export and import session attribute configurations only between NI&#8209;SCOPE devices with identical bus types, model numbers, channel counts, and onboard memory sizes and between NI-SCOPE sessions with the same number of initialized channels..</p>

<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&nbsp;&nbsp;You cannot call this function while the session is in a running state, such as while acquiring a signal.</td>
</tr>
</table>

<p class="Body"><strong>Device Mapping Behavior</strong></p>
<p class="Body">When exporting and importing configurations between NI&#8209;SCOPE sessions that were both initialized with multiple instruments, the configurations of the exporting instruments are mapped to the importing instruments in the order you specify in the <strong>resourceName</strong> input to the <a href="javascript:LaunchMergedHelp('Digitizers.chm', 'scopeFunc.chm', 'cviniScope_InitWithOptions.html')"><span class="Monospace">niScope_InitWithOptions</span></a> or <a href="javascript:LaunchMergedHelp('Digitizers.chm', 'scopeFunc.chm', 'cviniScope_init.html')"><span class="Monospace">niScope_init</span></a> functions.</p>

<p class="Body">For example, if your entry for <strong>resourceName</strong> is <span class="Monospace">PXI1Slot1,PXI1Slot2</span> for the exporting session and <span class="Monospace">PXI2Slot2,PXI2Slot3</span> for the importing session:</p>
<ul>
<li>The configuration exported from PXI1Slot1 is imported into PXI2Slot2.</li>
<li>The configuration exported from PXI1Slot2 is imported into PXI2Slot3.</li>
</ul>
<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&nbsp;&nbsp;NI-SCOPE will return an error if the total number of channels initialized for the exporting session is not equal to the total number of channels initialized for the importing session.</td>
</tr>
</table>

<p class="Body"><strong>Related Topics:</strong></p>
<p class="Body"><a href="javascript:LaunchHelp('Digitizers.chm::/Attributes_and_Attribute_Functions.html')">Attributes and Attribute Functions</a></p>
<p class="Body"><a href="javascript:LaunchHelp('Digitizers.chm::/setting_before_reading_attributes.html')">Setting Attributes Before Reading Attributes</a></p>


</body>
</html>    *    <html>
<head>
<script src="launchhelp.js"></script>
<title>filePath</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<table class="borderless"><tr>
<td class="paramName">filePath</td>
<td class="paramDataType">ViConstString</td>
<td>The absolute path to the file that contains the attribute configuration to import. If you specify an empty or relative path, this function returns an error.<br><br><strong>Default File Extension: </strong><span class="Monospace">.niscopeconfig</span></td>
</tr></table>
</body>

</html>    ,#����  �    Status                            `�-   �  �    Instrument Handle                FY 2  �  �    File Path                          	                  
�    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niScope_ExportAttributeConfigurationFile</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niScope_ExportAttributeConfigurationFile</h1>
<p class="syntax">ViStatus niScope_ExportAttributeConfigurationFile
             (ViSession vi,
              ViConstString filePath);</p>

<h2 class="purpose">Purpose</h2>
<p class="Body">Exports the attribute configuration of the session to the specified file.</p>

<p class="Body">You can export and import session attribute configurations only between NI&#8209;SCOPE devices with identical bus types, model numbers, channel counts, and onboard memory sizes and between NI-SCOPE sessions with the same number of initialized channels.</p>

<p class="Body">This function verifies that the attributes you have configured for the session are valid. If the configuration is invalid, NI-SCOPE returns an error.</p>

<p class="Body"><strong>Device Mapping Behavior</strong></p>
<p class="Body">When exporting and importing configurations between NI&#8209;SCOPE sessions that were both initialized with multiple instruments, the configurations of the exporting instruments are mapped to the importing instruments in the order you specify in the <strong>resourceName</strong> input to the <a href="javascript:LaunchMergedHelp('Digitizers.chm', 'scopeFunc.chm', 'cviniScope_InitWithOptions.html')"><span class="Monospace">niScope_InitWithOptions</span></a> or <a href="javascript:LaunchMergedHelp('Digitizers.chm', 'scopeFunc.chm', 'cviniScope_init.html')"><span class="Monospace">niScope_init</span></a> functions.</p>

<p class="Body">For example, if your entry for <strong>resourceName</strong> is <span class="Monospace">PXI1Slot1,PXI1Slot2</span> for the exporting session and <span class="Monospace">PXI2Slot2,PXI2Slot3</span> for the importing session:</p>
<ul>
<li>The configuration exported from PXI1Slot1 is imported into PXI2Slot2.</li>
<li>The configuration exported from PXI1Slot2 is imported into PXI2Slot3.</li>
</ul>
<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&nbsp;&nbsp;NI-SCOPE will return an error if the total number of channels initialized for the exporting session is not equal to the total number of channels initialized for the importing session.</td>
</tr>
</table>

<p class="Body"><strong>Related Topics:</strong></p>
<p class="Body"><a href="javascript:LaunchHelp('Digitizers.chm::/Attributes_and_Attribute_Functions.html')">Attributes and Attribute Functions</a></p>
<p class="Body"><a href="javascript:LaunchHelp('Digitizers.chm::/setting_before_reading_attributes.html')">Setting Attributes Before Reading Attributes</a></p>

</body>

</html>    J    <html>
<head>
<script src="launchhelp.js"></script>
<title>filePath</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<table class="borderless"><tr>
<td class="paramName">filePath</td>
<td class="paramDataType">ViConstString</td>
<td>The absolute path to a placeholder file you must create to contain the attribute configuration you want to export. If you specify an empty or relative path, this function returns an error.<br><br><strong>Default file extension:</strong> <span class="Monospace">.niscopeconfig</span></td>
</tr></table>
</body>

</html>    ,#����  �    Status                            `�-   �  �    Instrument Handle                T? 2  �  �    File Path                          	                  \    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niScope_ImportAttributeConfigurationBuffer</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niScope_ImportAttributeConfigurationBuffer</h1>
<p class="syntax">ViStatus niScope_ImportAttributeConfigurationBuffer
             (ViSession vi,
              ViInt32 size, ViAddr configuration);</p>

<h2 class="purpose">Purpose</h2>
<p class="Body">Imports an attribute configuration to the session from the specified buffer.</p>

<p class="Body">You can export and import session attribute configurations only between NI&#8209;SCOPE devices with identical bus types, model numbers, channel counts, and onboard memory sizes and between NI-SCOPE sessions with the same number of initialized channels.</p>

<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&nbsp;&nbsp;You cannot call this function while the session is in a running state, such as while acquiring a signal.</td>
</tr>
</table>

<p class="Body"><strong>Device Mapping Behavior</strong></p>
<p class="Body">When exporting and importing configurations between NI&#8209;SCOPE sessions that were both initialized with multiple instruments, the configurations of the exporting instruments are mapped to the importing instruments in the order you specify in the <strong>resourceName</strong> input to the <a href="javascript:LaunchMergedHelp('Digitizers.chm', 'scopeFunc.chm', 'cviniScope_InitWithOptions.html')"><span class="Monospace">niScope_InitWithOptions</span></a> or <a href="javascript:LaunchMergedHelp('Digitizers.chm', 'scopeFunc.chm', 'cviniScope_init.html')"><span class="Monospace">niScope_init</span></a> functions.</p>

<p class="Body">For example, if your entry for <strong>resourceName</strong> is <span class="Monospace">PXI1Slot1,PXI1Slot2</span> for the exporting session and <span class="Monospace">PXI2Slot2,PXI2Slot3</span> for the importing session:</p>
<ul>
<li>The configuration exported from PXI1Slot1 is imported into PXI2Slot2.</li>
<li>The configuration exported from PXI1Slot2 is imported into PXI2Slot3.</li>
</ul>
<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&nbsp;&nbsp;NI-SCOPE will return an error if the total number of channels initialized for the exporting session is not equal to the total number of channels initialized for the importing session.</td>
</tr>
</table>

<p class="Body"><strong>Related Topics:</strong></p>
<p class="Body"><a href="javascript:LaunchHelp('Digitizers.chm::/Attributes_and_Attribute_Functions.html')">Attributes and Attribute Functions</a></p>
<p class="Body"><a href="javascript:LaunchHelp('Digitizers.chm::/setting_before_reading_attributes.html')">Setting Attributes Before Reading Attributes</a></p>

</body>

</html>    �    <html>
<head>
<script src="launchhelp.js"></script>
<title>size</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<table class="borderless"><tr>
<td class="paramName">size</td>
<td class="paramDataType">ViInt32</td>
<td>Specifies the size, in bytes, of the byte array to import. If you enter <span class="Monospace">0</span>, this function returns the needed size.</td>
</tr></table>
</body>

</html>    �    <html>
<head>
<script src="launchhelp.js"></script>
<title>configuration</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<table class="borderless"><tr>
<td class="paramName">configuration</td>
<td class="paramDataType">ViAddr</td>
<td>Specifies the byte array that contains the attribute configuration to import.</td>
</tr></table>
</body>

</html>    ,#����  �    Status                            `�-   �  �    Instrument Handle                b� 2  �  �    Size In Bytes                    db 2 �   �    Configuration                      	               0           <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niScope_ExportAttributeConfigurationBuffer</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niScope_ExportAttributeConfigurationBuffer</h1>
<p class="syntax">ViStatus niScope_ExportAttributeConfigurationBuffer
             (ViSession vi,
              ViInt32 size, ViAddr configuration);</p>

<h2 class="purpose">Purpose</h2>
<p class="Body">Exports the attribute configuration of the session to a buffer.</p>

<p class="Body">You can export and import session attribute configurations only between NI&#8209;SCOPE devices with identical bus types, model numbers, channel counts, and onboard memory sizes and between NI-SCOPE sessions with the same number of initialized channels.</p>

<p class="Body">This function verifies that the attributes you have configured for the session are valid. If the configuration is invalid, NI-SCOPE returns an error.</p>

<p class="Body"><strong>Device Mapping Behavior</strong></p>
<p class="Body">When exporting and importing configurations between NI&#8209;SCOPE sessions that were both initialized with multiple instruments, the configurations of the exporting instruments are mapped to the importing instruments in the order you specify in the <strong>resourceName</strong> input to the <a href="javascript:LaunchMergedHelp('Digitizers.chm', 'scopeFunc.chm', 'cviniScope_InitWithOptions.html')"><span class="Monospace">niScope_InitWithOptions</span></a> or <a href="javascript:LaunchMergedHelp('Digitizers.chm', 'scopeFunc.chm', 'cviniScope_init.html')"><span class="Monospace">niScope_init</span></a> functions.</p>

<p class="Body">For example, if your entry for <strong>resourceName</strong> is <span class="Monospace">PXI1Slot1,PXI1Slot2</span> for the exporting session and <span class="Monospace">PXI2Slot2,PXI2Slot3</span> for the importing session:</p>
<ul>
<li>The configuration exported from PXI1Slot1 is imported into PXI2Slot2.</li>
<li>The configuration exported from PXI1Slot2 is imported into PXI2Slot3.</li>
</ul>
<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&nbsp;&nbsp;NI-SCOPE will return an error if the total number of channels initialized for the exporting session is not equal to the total number of channels initialized for the importing session.</td>
</tr>
</table>

<p class="Body"><strong>Related Topics:</strong></p>
<p class="Body"><a href="javascript:LaunchHelp('Digitizers.chm::/Attributes_and_Attribute_Functions.html')">Attributes and Attribute Functions</a></p>
<p class="Body"><a href="javascript:LaunchHelp('Digitizers.chm::/setting_before_reading_attributes.html')">Setting Attributes Before Reading Attributes</a></p>

</body>

</html>    �    <html>
<head>
<script src="launchhelp.js"></script>
<title>size</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<table class="borderless"><tr>
<td class="paramName">size</td>
<td class="paramDataType">ViInt32</td>
<td>Specifies the size, in bytes, of the byte array to export. If you enter <span class="Monospace">0</span>, this function returns the needed size.</td>
</tr></table>
</body>

</html>    u    <html>
<head>
<script src="launchhelp.js"></script>
<title>configuration</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<table class="borderless"><tr>
<td class="paramName">configuration</td>
<td class="paramDataType">ViAddr</td>
<td>Specifies the byte array that contains the exported configuration.</td>
</tr></table>
</body>

</html>    ,#����  �    Status                            `�-   �  �    Instrument Handle                q� 2  �  �    Size In Bytes                    s� 2 �   �    Configuration                      	               0       �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_Abort</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_Abort</h1>

<h2>C Function Prototype</h2>
<p class="syntax">ViStatus niScope_Abort (ViSession vi);</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Aborts an acquisition and returns the digitizer to the Idle state. Call this function  if the digitizer times out waiting for a trigger. 
</p>


<h2>Related topics:</h2><ul>    <li><a href="javascript:LaunchHelp('Digitizers.chm::/Programming_Flow.html')">NI-SCOPE  Programming Flow</a></li>       <li><a href="javascript:LaunchHelp('Digitizers.chm::/Acquisition_Functions.html')">Acquisition Functions</a></li>      </ul>





</body>
</html>    `�-   �  �    Instrument Handle                 ,#����  �    Status                                 	          �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_AcquisitionStatus</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_AcquisitionStatus
</h1>


<h2>C Function Prototype</h2>
<p class="syntax">ViStatus niScope_AcquisitionStatus (ViSession vi, ViInt32* status);</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Returns status information about the acquisition to the <strong>status</strong> output parameter.
</p>
</body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_AcquisitionStatus</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">status</td>
<td class="paramDataType">ViInt32*</td>
<td>Returns whether the acquisition is complete, in progress, or unknown. 

<p class="Body"><strong>Defined Values</strong></p>
<p class="Body"><span class="Monospace">NISCOPE_VAL_ACQ_COMPLETE</span>
</p>
<P CLASS="BODY"><span class="Monospace">NISCOPE_VAL_ACQ_IN_PROGRESS</span>
</P>
<P CLASS="BODY"><span class="Monospace">NISCOPE_VAL_ACQ_STATUS_UNKNOWN</span></p></td></tr></table></body>
</html>    `�-   �  �    Instrument Handle                 ,#����  �    Status                           }s = � �  �    Acquisition Status                     	           	           5    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_Commit</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_Commit</h1>


<h2>C Function Prototype</h2>
<p class="syntax">ViStatus niScope_Commit (ViSession vi); </p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Commits to hardware all the parameter settings associated with the task.
Use this function if you want a parameter change to be immediately reflected in 
the hardware.</p>

<h2>Related topics:</h2><ul>    <li><a href="javascript:LaunchHelp('Digitizers.chm::/5122_State_Model.html')">SMC-Based Digitizers Acquisition Engine State Diagram</a></li>  <li><a href="javascript:LaunchHelp('Digitizers.chm::/Programming_Flow.html')">NI-SCOPE  Programming Flow</a></li>           </ul>



</body>
</html>    `�-   �  �    Instrument Handle                 ,#����  �    Status                                 	          �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_Fetch</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_Fetch</h1>


<h2>C Function Prototype</h2>
<p class="syntax">ViStatus niScope_Fetch (ViSession vi, ViConstString channelList, ViReal64 timeout, ViInt32 numSamples, ViReal64*  wfm, struct niScope_wfmInfo* wfmInfo);</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Returns the waveform from a previously initiated acquisition that the digitizer acquires for the specified channel.   This function returns scaled voltage waveforms.
</p>
<p class="Body">This function may return multiple waveforms depending on the number of channels, the acquisition type, and the number of records you specify. </p>


<table class="Borderless"><tr><td class="Icon"><img src="note.gif"></td><td><strong>Notes</strong>&nbsp;&nbsp;You can use <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_Read.html')">niScope_Read</a> instead of this function. niScope_Read starts an acquisition on all enabled channels, 
waits for the acquisition to complete, and returns the waveform for the specified channel.
<p class="Body">
Some functionality, such as time stamping, is not supported in all digitizers. Refer to <a href="javascript:LaunchHelp('Digitizers.chm::/Features_Supported_Main.html')">Features Supported by Device</a>  for more information.</p> </td></tr></table>




<h2>Related topics:</h2><ul>    <li><a href="javascript:LaunchHelp('Digitizers.chm::/Fetching_Data.html')">Fetching Data</a></li>   <li><a href="javascript:LaunchHelp('Digitizers.chm::/Continuously_Acquiring_Data.html')">Acquiring Data Continuously</a></li>          </ul>


</body>
</html>    +    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_Fetch</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">wfm </td>
<td class="paramDataType">ViReal64*</td>
<td>Returns an array whose length is the <strong>numSamples</strong> times number of waveforms. Call <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_ActualNumWfms.html')"><span class="Monospace">niScope_ActualNumWfms</span></a> to determine the number of waveforms. 

<p class="Body">NI-SCOPE returns this data sequentially, so all record 0 waveforms are first. For example, with a channel list of 0,1, you would have the following index values: 
</p>
<p class="Indent1">index 0 = record 0, channel 0
</p>
<p class="Indent1">index <em>x</em> = record 0, channel 1
</p>
<p class="Indent1">index 2<em>x</em> = record 1, channel 0
</p>
<p class="Indent1">index 3<em>x</em> = record 1, channel 1
</p>
<p class="Body">Where <em>x</em> = the record length</p></td></tr>
</table></body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_Fetch</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">timeout</td>
<td class="paramDataType">ViReal64</td>
<td>The time to wait in seconds for data to be acquired; using 0 for this parameter tells NI-SCOPE to fetch whatever is currently available.  Using -1 for this parameter implies infinite timeout.</td></tr>
</table></body>
</html>    L    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_Fetch</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">numSamples</td>
<td class="paramDataType">ViInt32</td>
<td>The  maximum number of samples to fetch for each waveform. If the acquisition finishes
 with fewer points than requested, some devices return partial data if the acquisition finished, 
 was aborted, or a timeout of 0 was used. If it fails to complete within the timeout period, the function returns an 
error.</td></tr>
</table></body>
</html>        <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_Fetch</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">wfmInfo</td>
<td class="paramDataType">struct niScope_ wfmInfo*</td>
<td>Returns an array of structures with the following timing and scaling information about each waveform:

<ul>
<li><strong>relativeInitialX</strong>&#8212;the time (in seconds) from the trigger to the first sample in the fetched 
waveform</li>
<li><strong>absoluteInitialX</strong>&#8212;timestamp (in seconds) of the first fetched sample. This timestamp is comparable between records and acquisitions; devices that do not support this parameter use 0 for this output.</li>
<li><strong>xIncrement</strong>&#8212;the time between points in the acquired waveform in seconds</li>
<li><strong>actualSamples</strong>&#8212;the actual number of samples fetched and placed in the waveform array</li>
<li><strong>gain</strong>&#8212;the gain factor of the given channel; useful for scaling binary data with the following formula:</li>
</ul>

<p class="Indent2">voltage = binary data &#215; gain factor + offset</p>
<ul>

<li><strong>offset</strong>&#8212;the offset factor of the given channel; useful for scaling binary data with the following 
 formula:
</li>
</ul>

<p class="Indent2">voltage = binary data &#215; gain factor + offset
</p>
<p class="Body">Call <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_ActualNumWfms.html')"><span class="Monospace">niScope_ActualNumWfms</span></a> to determine the size of this array.</p></td></tr></table></body>
</html>    �� -  �  �    Channel List                      `�   �  �    Instrument Handle                 ,y���  �    Status                           �X  b �  �    Wfm                              �� - � �  �    Timeout                          �d ,n �  �    Num Samples                      �� � �  �    Wfm Info                           "0"        	           	            5.0    0    	           y    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_FetchComplex</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_FetchComplex</h1>


<h2>C Function Prototype</h2>
<p class="syntax">   niScope_FetchComplex (
ViSession vi,
ViConstString channelList,
ViReal64 timeout,
ViInt32 numSamples,
NIComplexNumber* wfm,
struct niScope_wfmInfo* wfmInfo);</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">
Retrieves data that the digitizer has acquired from a previously initiated acquisition and returns a one-dimensional array of complex, scaled waveforms.

</body>
</html>    G    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_FetchComplex</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">wfm</td>
<td class="paramDataType">NIComplexNumber*</td>
<td>Returns an array whose length is the <strong>numSamples</strong> times number of waveforms. Call   <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_ActualNumWfms.html')"><span class="Monospace">niScope_ActualNumWfms</span></a> to determine the number of waveforms. </td></tr>
</table></body>
</html>    `� 0  �  �    Instrument Handle                 �� 2 . �  �    Channel List                     �� 3 � �  �    Timeout                          �d 3� �  �    Num Samples                      �n � w �  �    Wfm                              �� �8 �  �    Wfm Info                          ,}���  �    Status                             0    "0"    5.0    0    	            	            	          m    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_FetchComplexBinary16</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_FetchComplexBinary16</h1>


<h2>C Function Prototype</h2>
<p class="syntax">  niScope_FetchComplexBinary16 (
ViSession vi,
ViConstString channelList,
ViReal64 timeout,
ViInt32 numSamples,
NIComplexI16* wfm,
Struct niScope_wfmInfo* wfmInfo);</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">
Retrieves data from single channels and records. Returns a one-dimensional array of complex binary 16-bit waveforms.



</body>
</html>    L    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_FetchComplexBinary16</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">wfm</td>
<td class="paramDataType">NIComplexI16*</td>
<td>Returns an array whose length is the <strong>numSamples</strong> times number of waveforms. Call   <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_ActualNumWfms.html')"><span class="Monospace">niScope_ActualNumWfms</span></a> to determine the number of waveforms. </td></tr>
</table></body>
</html>    `�    �  �    Instrument Handle                 �� -   �  �    Channel List                     �� - � �  �    Timeout                          �d -~ �  �    Num Samples                      �� � k �  �    Wfm                              �� �3 �  �    Wfm Info                          ,e���  �    Status                             0    "0"    5.0    0    	            	            	          �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title> niScope_FetchBinary8</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_FetchBinary8</h1>



<h2>C Function Prototype</h2>
<p class="syntax">ViStatus niScope_FetchBinary8 (ViSession vi, ViConstString channelList, ViReal64 timeout,	ViInt32 numSamples, ViInt8* wfm, struct niScope_wfmInfo* wfmInfo);</p>


<h2 class="purpose">Purpose</h2>


<p class="Body">Retrieves data from a previously initiated acquisition and returns binary 8-bit waveforms. This function may return multiple waveforms depending on the number of channels, the acquisition type, and the number of records you specify. 
</p>


<p class="Body">Refer to <a href="javascript:LaunchHelp('Digitizers.chm::/Using_Fetch_Functions.html')">Using Fetch Functions</a> for more information on using this function. 
</p>
<table class="Borderless"><tr><td class="Icon"><img src="note.gif"></td><td><strong>Note</strong>&nbsp;&nbsp;Some functionality, such as time stamping, is not supported in all digitizers. Refer to <a href="javascript:LaunchHelp('Digitizers.chm::/Features_Supported_Main.html')">
Features Supported by Device</a>  for more information. </td></tr></table>


</body>
</html>    8    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title> niScope_FetchBinary8</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">wfm </td>
<td class="paramDataType">ViInt8*</td>
<td>Returns an array whose length is the <strong>numSamples</strong> times number of waveforms. Call  <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_ActualNumWfms.html')"><span class="Monospace">niScope_ActualNumWfms</span></a> to determine the number of waveforms.

<p class="Body">NI-SCOPE returns this data sequentially, so all record 0 waveforms are first. For example, with a channel list of 0,1, you would have the following index values: 
</p>
<p class="Indent1">index 0 = record 0, channel 0
</p>
<p class="Indent1">index <em>x</em> = record 0, channel 1
</p>
<p class="Indent1">index 2<em>x</em> = record 1, channel 0
</p>
<p class="Indent1">index 3<em>x</em> = record 1, channel 1
</p>
<p class="Indent1">Where <em>x</em> = the record length</p></td></tr>


</table></body>
</html>    �� -  �  �    Channel List                      `�   �  �    Instrument Handle                 ,����  �    Status                           ��  b �  �    Wfm                              �� - � �  �    Timeout                          �d ,n �  �    Num Samples                      �� � �  �    Wfm Info                           "0"        	           	            5.0    0    	           �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title> niScope_FetchBinary16</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_FetchBinary16</h1>



<h2>C Function Prototype</h2>
<p class="syntax">ViStatus niScope_FetchBinary16 (ViSession vi, ViConstString channelList, ViReal64 timeout, ViInt32 numSamples, ViInt16* wfm, struct niScope_wfmInfo* wfmInfo);</p>


<h2 class="purpose">Purpose</h2>


<p class="Body">Retrieves data from a previously initiated acquisition and returns binary 16-bit waveforms. 
This function may return multiple waveforms depending on the number of channels, the acquisition type, 
and the number of records you specify. 
</p>




<p class="Body">Refer to <a href="javascript:LaunchHelp('Digitizers.chm::/Using_Fetch_Functions.html')">Using Fetch Functions</a> for more information on using this function. 
</p>
<table class="Borderless"><tr><td class="Icon"><img src="note.gif"></td><td><strong>Note</strong>&nbsp;&nbsp;Some functionality, such as time stamping, is not supported in all digitizers. Refer to <a href="javascript:LaunchHelp('Digitizers.chm::/Features_Supported_Main.html')">Features Supported by Device</a>  for more information. </td></tr></table>


</body>
</html>    3    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title> niScope_FetchBinary16</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">wfm </td>
<td class="paramDataType">ViInt16*</td>
<td>Returns an array whose length is the <strong>numSamples</strong> times number of waveforms. Call  <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_ActualNumWfms.html')"><span class="Monospace">niScope_ActualNumWfms</span></a> to determine the number of waveforms.
<p class="Body">NI-SCOPE returns this data sequentially, so all record 0 waveforms are first. For example, with a channel list of 0,1, you would have the following index values: 
</p>
<p class="Indent1">index 0 = record 0, channel 0
</p>
<p class="Indent1">index <em>x</em> = record 0, channel 1
</p>
<p class="Indent1">index 2<em>x</em> = record 1, channel 0
</p>
<p class="Indent1">index 3<em>x</em> = record 1, channel 1
</p>
<p class="Body">Where <em>x</em> = the record length</p></td></tr>

</table></body>
</html>    �� -  �  �    Channel List                      `�   �  �    Instrument Handle                 ,����  �    Status                           ��  b �  �    Wfm                              �� - � �  �    Timeout                          �d ,n �  �    Num Samples                      �� � �  �    Wfm Info                           "0"        	           	            5.0    0    	           �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title> niScope_FetchBinary32</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_FetchBinary32
</h1>



<h2>C Function Prototype</h2>
<p class="syntax">ViStatus niScope_FetchBinary32 (ViSession vi, ViConstString channelList, ViReal64 timeout, ViInt32 numSamples, ViInt32* wfm, struct niScope_wfmInfo* wfmInfo);</p>


<h2 class="purpose">Purpose</h2>


<p class="Body">Retrieves data from a previously initiated acquisition and returns binary 32-bit waveforms. This function may return multiple waveforms depending on the number of channels, the acquisition type, and the number of records you specify. 
</p>




<p class="Body">Refer to <a href="javascript:LaunchHelp('Digitizers.chm::/Using_Fetch_Functions.html')">Using Fetch Functions</a> for more information on using this function. 
</p>
<table class="Borderless"><tr><td class="Icon"><img src="note.gif"></td><td><strong>Note</strong>&nbsp;&nbsp;Some functionality, such as time stamping, is not supported in all digitizers. Refer to <a href="javascript:LaunchHelp('Digitizers.chm::/Features_Supported_Main.html')">
Features Supported by Device</a>  for more information. </td></tr></table>


</body>
</html>    5    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title> niScope_FetchBinary32</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">wfm </td>
<td class="paramDataType">ViInt32*</td>
<td>Returns an array whose length is the <strong>numSamples</strong> times number of waveforms. Call  <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_ActualNumWfms.html')"><span class="Monospace">niScope_ActualNumWfms</span></a> to determine the number of waveforms.

<p class="Body">NI-SCOPE returns this data sequentially, so all record 0 waveforms are first. For example, with a channel list of 0,1, you would have the following index values: 
</p>
<p class="Indent1">index 0 = record 0, channel 0
</p>
<p class="Indent1">index <em>x</em> = record 0, channel 1
</p>
<p class="Indent1">index 2<em>x</em> = record 1, channel 0
</p>
<p class="Indent1">index 3<em>x</em> = record 1, channel 1
</p>
<p class="Body">Where <em>x</em> = the record length</p></td></tr>

</table></body>
</html>    �� -  �  �    Channel List                      `�   �  �    Instrument Handle                 ,����  �    Status                           ӭ  b �  �    Wfm                              �� - � �  �    Timeout                          �d ,n �  �    Num Samples                      �� � �  �    Wfm Info                           "0"        	           	            5.0    0    	           W    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_GetNormalizationCoefficients</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_GetNormalizationCoefficients</h1>



<p class="syntax">ViStatus _VI_FUNC niScope_GetNormalizationCoefficients   (ViSession vi,
                                                         ViConstString channelList,
                                                         ViInt32 bufferSize,
                                                         struct niScope_coefficientInfo coefficientInfo[],
                                                         ViInt32* numberOfCoefficientSets);


                                               </p>

<h2 class="purpose">Purpose</h2>

<p class="Body">  Returns coefficients that can be used to convert binary data to normalized and calibrated data.
 </p> 


<p class="Body"> 
Refer to 
<a href="javascript:LaunchHelp('Digitizers.chm::/scaling_and_norm_binary_data.html')">
Scaling and Normalization of Binary Data</a> for more information about how to use this function.</p>

</body>
</html>        <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_GetFrequencyResponse</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">vi</td>
<td class="paramDataType">ViSession</td>
<td>The instrument handle you obtain from  <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_init.html')"><span class="Monospace">niScope_init</span></a> that identifies a particular instrument session.</td></tr></table></body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_GetNormalizationCoefficients</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">channel
List</td>
<td class="paramDataType">ViConstString</td>
<td>The channel to configure. For more information, refer to <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviChannelStringSyntaxforC.html')">Channel String Syntax</a>.</td></tr>
</table></body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_GetNormalizationCoefficients</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">bufferSize</td>
<td class="paramDataType">ViInt32</td>  
<td>The array size for the  <strong>coefficentInfo</strong> parameter. 
<p class ="body"> To determine the size of the buffer to allocate for <strong>coefficientInfo</strong>, pass a value of 0 to the <strong>buffersize</strong> parameter and a value of NULL to the <strong>coefficientInfo</strong> parameter. In this case, the return value of the  <strong>numberOfCoefficientSets</strong> parameter is the size of the array necessary to hold the coefficient structures. Allocate an array of niScope_coefficientInfo structures of this size, then call this function again (with the correct <strong>bufferSize</strong> parameter) to retrieve the actual values.</td></tr>
</table></body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_GetNormalizationCoefficients</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">coefficientInfo</td>
<td class="paramDataType"> struct niScope_coefficientInfo</td> <td>  
An array of structures containing gain and offset coefficients for a given channel. 

</td></tr>
</table></body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_GetNormalizationCoefficients</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">numberOfCoefficientSets</td>
<td class="paramDataType">ViInt32*</td> <td>  
Returns the  number of coefficient sets returned in the <strong>coefficientInfo</strong> array. 

</td></tr>
</table></body>
</html>




   �� %   �  �    vi                               �  % � �  �    channelList                      �� W  �  �    arraySize                        � W �    �    coefficientInfo                  �U �  �  �    numberOfCoefficientSets           , � ����  �    Status                                 "0"            	            	          �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_GetScalingCoefficients</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_GetScalingCoefficients</h1>



<p class="syntax">ViStatus _VI_FUNC niScope_GetScalingCoefficients (ViSession vi, 
                                                   ViConstString channelList,
                                                   ViInt32 bufferSize,
                                                   struct niScope_coefficientInfo coefficientInfo[],
                                                   ViInt32* numberOfCoefficientSets);</p>

<h2 class="purpose">Purpose</h2>

<p class="Body"> Returns coefficients that can be used to scale binary data to volts.</p>


<p class="Body"> 
Refer to 
<a href="javascript:LaunchHelp('Digitizers.chm::/scaling_and_norm_binary_data.html')">
Scaling and Normalization of Binary Data</a> for more information about how to use this function.</p>

</body>
</html>        <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_GetFrequencyResponse</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">vi</td>
<td class="paramDataType">ViSession</td>
<td>The instrument handle you obtain from  <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_init.html')"><span class="Monospace">niScope_init</span></a> that identifies a particular instrument session.</td></tr></table></body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_GetScalingCoefficients</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">channelList</td>
<td class="paramDataType">ViConstString</td>
<td>The channel to configure. For more information, refer to <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviChannelStringSyntaxforC.html')">Channel String Syntax</a>.</td></tr>
</table></body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_GetNormalizationCoefficients</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">bufferSize</td>
<td class="paramDataType">ViInt32</td>  
<td>The array size for the  <strong>coefficentInfo</strong> parameter. 
<p class ="body"> To determine the size of the buffer to allocate for <strong>coefficientInfo</strong>, pass a value of 0 to the <strong>buffersize</strong> parameter and a value of NULL to the <strong>coefficientInfo</strong> parameter. In this case, the return value of the  <strong>numberOfCoefficientSets</strong> parameter is the size of the array necessary to hold the coefficient structures. Allocate an array of niScope_coefficientInfo structures of this size, then call this function again (with the correct <strong>bufferSize</strong> parameter) to retrieve the actual values.</td></tr>
</table></body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_GetNormalizationCoefficients</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">coefficientInfo</td>
<td class="paramDataType"> struct niScope_coefficientInfo</td> <td>  
An array of structures containing gain and offset coefficients for a given channel. 

</td></tr>
</table></body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_GetFrequencyResponse</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">numberOfCoefficientSets</td>
<td class="paramDataType">ViInt32</td> <td>  
Returns the  number of coefficient sets returned in the <strong>coefficientInfo</strong> array. 

</td></tr>
</table></body>
</html>




   �K %   �  �    vi                               �T % � �  �    channelList                      �E W  �  �    arraySize                         W �    �    coefficientInfo                  � �  �  �    numberOfCoefficientSets           , � ����  �    Status                                 "0"            	            	          :    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_InitiateAcquisition</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_InitiateAcquisition</h1>


<h2>C Function Prototype</h2>
<p class="syntax">ViStatus niScope_InitiateAcquisition (ViSession vi);</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Initiates a waveform acquisition. 
</p>
<p class="Body">After calling this function, the digitizer leaves the Idle state and waits for a trigger. 
The digitizer acquires a waveform for each channel you enable with  <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_ConfigureVertical.html')"><span class="Monospace">niScope_ConfigureVertical</span></a>.
</p>



<h2>Related topics:</h2><ul>    <li><a href="javascript:LaunchHelp('Digitizers.chm::/5122_State_Model.html')">SMC-Based Digitizers Acquisition Engine State Diagram</a></li>    <li><a href="javascript:LaunchHelp('Digitizers.chm::/Programming_Flow.html')">NI-SCOPE  Programming Flow</a></li>           </ul>


</body>
</html>    `�-   �  �    Instrument Handle                 ,#����  �    Status                                 	          	�    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title> niScope_Read</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_Read</h1>


<h2>C Function Prototype</h2>
<p class="syntax">ViStatus niScope_Read (ViSession vi, ViConstString channelList, ViReal64 timeout, ViInt32 numSamples, ViReal64* wfm, struct niScope_wfmInfo* wfmInfo);</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Initiates an acquisition, waits for it to complete, and retrieves the data. The process  is similar to calling <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_InitiateAcquisition.html')"><span class="Monospace">niScope_InitiateAcquisition</span></a>, 
<a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_AcquisitionStatus.html')"><span class="Monospace">niScope_AcquisitionStatus</span></a>, and 
<a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_Fetch.html')"><span class="Monospace">niScope_Fetch</span></a>. The only difference is that with <span class="Monospace">niScope_Read</span>, you enable all channels specified with <strong>channelList</strong> before the acquisition; in the other method, you enable the channels with <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_ConfigureVertical.html')"><span class="Monospace">niScope_ConfigureVertical</span></a>.
</p>
<p class="Body">This function may return multiple waveforms depending on the number of channels, the acquisition type, and the number of records you specify. 
</p>
<table class="Borderless"><tr><td class="Icon"><img src="note.gif"></td><td><strong>Note</strong>&nbsp;&nbsp;Some functionality is not supported in all digitizers. Refer to <a href="javascript:LaunchHelp('Digitizers.chm::/Features_Supported_Main.html')">
Features Supported by Device</a>  for more information. </td></tr></table>


<h2>Related topics:</h2><ul>    <li><a href="javascript:LaunchHelp('Digitizers.chm::/Acquisition_Functions.html')">Acquisition Functions</a></li>   <li><a href="javascript:LaunchHelp('Digitizers.chm::/Programming_Flow.html')">NI-SCOPE  Programming Flow</a></li>            </ul>



</body>
</html>        <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title> niScope_Read</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">wfm</td>
<td class="paramDataType">ViReal64*</td>
<td>Returns an array whose length is the <strong>numSamples</strong> times number of waveforms. Call   <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_ActualNumWfms.html')"><span class="Monospace">niScope_ActualNumWfms</span></a> to determine the number of waveforms. 

<p class="Body">NI-SCOPE returns this data sequentially, so all record 0 waveforms are first. For example, with a channel list of 0,1, you would have the following index values: 
</p>
<p class="Indent1">index 0 = record 0, channel 0
</p>
<p class="Indent1">index <em>x</em> = record 0, channel 1
</p>
<p class="Indent1">index 2<em>x</em> = record 1, channel 0
</p>
<p class="Indent1">index 3<em>x</em> = record 1, channel 1
</p>
Where <em>x</em> = the record length</td></tr>

</table></body>
</html>    �� -  �  �    Channel List                      `�   �  �    Instrument Handle                 ,����  �    Status                           *  b �  �    Wfm                              �� - � �  �    Timeout                          �d ,n �  �    Num Samples                      �� � �  �    Wfm Info                           "0"        	           	            5.0    0    	           t    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_AddWaveformProcessing</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_AddWaveformProcessing</h1>


<h2>C Function Prototype</h2>
<p class="syntax">ViStatus niScope_AddWaveformProcessing (ViSession vi, ViConstString channelList, ViInt32 measFunction);</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Adds one measurement to the list of processing steps that are completed before the measurement. The processing is added on a per channel basis, and the processing measurements are completed in the same order they are registered. All measurement library parameters&#8212;the attributes starting with <span class="Monospace">NISCOPE_ATTR_MEAS</span>&#8212;are cached at the time of registering the processing, and this set of parameters is used during the processing step. The processing measurements are streamed, so the result of the first processing step is used as the input for the next step. The processing is done before any other measurements. 
</p>


<h2>Related topics:</h2><ul>    <li><a href="javascript:LaunchHelp('Digitizers.chm::/Array_Measurements_refs.html')">Array Measurements in NI-SCOPE</a></li>   <li><a href="javascript:LaunchHelp('Digitizers.chm::/Scalar_Measurements_refs.html')">Scalar Measurements in NI-SCOPE</a></li>           </ul>


</body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_AddWaveformProcessing</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">measFunction</td>
<td class="paramDataType">ViInt32</td>
<td>The <a href="javascript:LaunchMergedHelp('Digitizers.chm','Array_Measurements_refs.html')">array measurement</a> to add.</td></tr></table></body>
</html>    `�(   �  `    Instrument Handle                 ,����  `    Status                            �� $  �  `    Channel List                     $v p  �     Meas Function                          	            "0"              None NISCOPE_VAL_NO_MEASUREMENT Last Acquisition Histogram NISCOPE_VAL_LAST_ACQ_HISTOGRAM Multi-Acquisition Voltage Histogram NISCOPE_VAL_MULTI_ACQ_VOLTAGE_HISTOGRAM Multi Acquisition Time Histogram NISCOPE_VAL_MULTI_ACQ_TIME_HISTOGRAM Multi Acquisition Average NISCOPE_VAL_MULTI_ACQ_AVERAGE FFT Phase Spectrum NISCOPE_VAL_FFT_PHASE_SPECTRUM FFT Amplitude Spectrum (Volts RMS) NISCOPE_VAL_FFT_AMP_SPECTRUM_VOLTS_RMS FFT Amplitude Spectrum (dB) NISCOPE_VAL_FFT_AMP_SPECTRUM_DB Polynomial Interpolation NISCOPE_VAL_POLYNOMIAL_INTERPOLATION Array Integral NISCOPE_VAL_ARRAY_INTEGRAL Derivative NISCOPE_VAL_DERIVATIVE Inverse NISCOPE_VAL_INVERSE Multiply Channels NISCOPE_VAL_MULTIPLY_CHANNELS Add Channels NISCOPE_VAL_ADD_CHANNELS Subtract Channels NISCOPE_VAL_SUBTRACT_CHANNELS Divide Channels NISCOPE_VAL_DIVIDE_CHANNELS Array Offset NISCOPE_VAL_ARRAY_OFFSET Array Gain NISCOPE_VAL_ARRAY_GAIN Triangle Window NISCOPE_VAL_TRIANGLE_WINDOW Blackman Window NISCOPE_VAL_BLACKMAN_WINDOW Hamming Window NISCOPE_VAL_HAMMING_WINDOW Hanning Window NISCOPE_VAL_HANNING_WINDOW Flat Top Window NISCOPE_VAL_FLAT_TOP_WINDOW Butterworth IIR Filter NISCOPE_VAL_BUTTERWORTH_FILTER Chebyshev IIR Filter NISCOPE_VAL_CHEBYSHEV_FILTER Bessel IIR Filter NISCOPE_VAL_BESSEL_FILTER FIR Windowed Filter NISCOPE_VAL_WINDOWED_FIR_FILTER   �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_ClearWaveformMeasurementStats</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_ClearWaveformMeasurementStats
</h1>


<h2>C Function Prototype</h2>
<p class="syntax">ViStatus niScope_ClearWaveformMeasurementStats (ViSession vi, ViConstString channelList, ViInt32 clearableMeasurementFunction);</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Clears the waveform stats on the channel and measurement you specify. If you want 
to clear all of the measurements, use <span class="Monospace">NISCOPE_VAL_ALL_MEASUREMENTS</span> in the 
<strong>clearableMeasurementFunction</strong> parameter.
</p>
<p class="Body">Every time a measurement is called, the statistics information is updated, including the min, max, mean, standard deviation, and number of updates. This information is fetched with <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_FetchMeasurementStats.html')"><span class="Monospace">niScope_FetchMeasurementStats</span></a>. The multi-acquisition array measurements are also cleared with this function.
</p>

</body>
</html>    6    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_ClearWaveformMeasurementStats</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">clearableMeasurementFunction</td>
<td class="paramDataType">ViInt32</td>
<td>The <a href="javascript:LaunchMergedHelp('Digitizers.chm','Scalar_Measurements_refs.html')">scalar measurement</a> or <a href="javascript:LaunchMergedHelp('Digitizers.chm','Array_Measurements_refs.html')">array measurement</a> to clear the stats for.</td></tr></table></body>
</html>    �� #  �  `    Channel List                      `�,   �  `    Instrument Handle                 ,����  `    Status                           2� ^  �     Clearable Measurement Function     "0"        	                    D  �All Measurements NISCOPE_VAL_ALL_MEASUREMENTS None NISCOPE_VAL_NO_MEASUREMENT Multi Acquisition Voltage Histogram NISCOPE_VAL_MULTI_ACQ_VOLTAGE_HISTOGRAM Multi Acquisition Time Histogram NISCOPE_VAL_MULTI_ACQ_TIME_HISTOGRAM Multi Acquisition Average NISCOPE_VAL_MULTI_ACQ_AVERAGE Frequency NISCOPE_VAL_FREQUENCY Average Frequency NISCOPE_VAL_AVERAGE_FREQUENCY FFT Frequency NISCOPE_VAL_FFT_FREQUENCY Period NISCOPE_VAL_PERIOD Average Period NISCOPE_VAL_AVERAGE_PERIOD Rise Time NISCOPE_VAL_RISE_TIME Fall Time NISCOPE_VAL_FALL_TIME Voltage RMS NISCOPE_VAL_VOLTAGE_RMS Voltage Cycle RMS NISCOPE_VAL_VOLTAGE_CYCLE_RMS AC Estimate NISCOPE_VAL_AC_ESTIMATE FFT Amplitude NISCOPE_VAL_FFT_AMPLITUDE Voltage Average NISCOPE_VAL_VOLTAGE_AVERAGE Voltage Cycle Average NISCOPE_VAL_VOLTAGE_CYCLE_AVERAGE DC Estimate NISCOPE_VAL_DC_ESTIMATE Voltage Max NISCOPE_VAL_VOLTAGE_MAX Voltage Min NISCOPE_VAL_VOLTAGE_MIN Voltage Peak-to-Peak NISCOPE_VAL_VOLTAGE_PEAK_TO_PEAK Voltage High NISCOPE_VAL_VOLTAGE_HIGH Voltage Low NISCOPE_VAL_VOLTAGE_LOW Voltage Amplitude NISCOPE_VAL_AMPLITUDE Voltage Base NISCOPE_VAL_VOLTAGE_BASE Voltage Top NISCOPE_VAL_VOLTAGE_TOP Voltage Base to Top NISCOPE_VAL_VOLTAGE_BASE_TO_TOP Width Negative NISCOPE_VAL_WIDTH_NEG Width Positive NISCOPE_VAL_WIDTH_POS Duty Cycle Negative NISCOPE_VAL_DUTY_CYCLE_NEG Duty Cycle Positive NISCOPE_VAL_DUTY_CYCLE_POS Overshoot NISCOPE_VAL_OVERSHOOT Preshoot NISCOPE_VAL_PRESHOOT Low Reference Voltage NISCOPE_VAL_LOW_REF_VOLTS Mid Reference Voltage NISCOPE_VAL_MID_REF_VOLTS High Reference Voltage NISCOPE_VAL_HIGH_REF_VOLTS Area NISCOPE_VAL_AREA Cycle Area NISCOPE_VAL_CYCLE_AREA Integral NISCOPE_VAL_INTEGRAL Rising Slew Rate NISCOPE_VAL_RISE_SLEW_RATE Falling Slew Rate NISCOPE_VAL_FALL_SLEW_RATE Time Delay NISCOPE_VAL_TIME_DELAY Phase Delay NISCOPE_VAL_PHASE_DELAY Voltage Histogram Mean NISCOPE_VAL_VOLTAGE_HISTOGRAM_MEAN Voltage Histogram Stdev NISCOPE_VAL_VOLTAGE_HISTOGRAM_STDEV Voltage Histogram Median NISCOPE_VAL_VOLTAGE_HISTOGRAM_MEDIAN Voltage Histogram Mode NISCOPE_VAL_VOLTAGE_HISTOGRAM_MODE Voltage Histogram Hits NISCOPE_VAL_VOLTAGE_HISTOGRAM_HITS Voltage Histogram New Hits NISCOPE_VAL_VOLTAGE_HISTOGRAM_NEW_HITS Voltage Histogram Max NISCOPE_VAL_VOLTAGE_HISTOGRAM_MAX Voltage Histogram Min NISCOPE_VAL_VOLTAGE_HISTOGRAM_MIN Voltage Histogram Peak-to-Peak NISCOPE_VAL_VOLTAGE_HISTOGRAM_PEAK_TO_PEAK Voltage Histogram Mean + Stdev NISCOPE_VAL_VOLTAGE_HISTOGRAM_MEAN_PLUS_STDEV Voltage Histogram Mean + 2 Stdev NISCOPE_VAL_VOLTAGE_HISTOGRAM_MEAN_PLUS_2_STDEV Voltage Histogram Mean + 3 Stdev NISCOPE_VAL_VOLTAGE_HISTOGRAM_MEAN_PLUS_3_STDEV Time Histogram Mean NISCOPE_VAL_TIME_HISTOGRAM_MEAN Time Histogram Stdev NISCOPE_VAL_TIME_HISTOGRAM_STDEV Time Histogram Median NISCOPE_VAL_TIME_HISTOGRAM_MEDIAN Time Histogram Mode NISCOPE_VAL_TIME_HISTOGRAM_MODE Time Histogram Hits NISCOPE_VAL_TIME_HISTOGRAM_HITS Time Histogram New Hits NISCOPE_VAL_TIME_HISTOGRAM_NEW_HITS Time Histogram Max NISCOPE_VAL_TIME_HISTOGRAM_MAX Time Histogram Min NISCOPE_VAL_TIME_HISTOGRAM_MIN Time Histogram Peak-to-Peak NISCOPE_VAL_TIME_HISTOGRAM_PEAK_TO_PEAK Time Histogram Mean + Stdev NISCOPE_VAL_TIME_HISTOGRAM_MEAN_PLUS_STDEV Time Histogram Mean + 2 Stdev NISCOPE_VAL_TIME_HISTOGRAM_MEAN_PLUS_2_STDEV Time Histogram Mean + 3 Stdev NISCOPE_VAL_TIME_HISTOGRAM_MEAN_PLUS_3_STDEV   �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_ClearWaveformProcessing</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_ClearWaveformProcessing</h1>


<h2>C Function Prototype</h2>
<p class="syntax">ViStatus niScope_ClearWaveformProcessing (ViSession vi, ViConstString channelList);</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Clears the list of processing steps assigned to the given channel. The processing is added using the <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_AddWaveformProcessing.html')"><span class="Monospace">niScope_AddWaveformProcessing</span></a> function, where the processing steps are completed in the same order in which they are registered. The processing measurements are streamed, so the result of the first processing step is used as the input for the next step. The processing is also done before any other measurements. 
</p>

</body>
</html>    ��   �  `    Channel List                      `�,   �  `    Instrument Handle                 ,����  `    Status                             "0"        	           �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title> niScope_FetchArrayMeasurement</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
<script src="web.js" type="text/javascript"></script>
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_FetchArrayMeasurement</h1>



<h2>C Function Prototype</h2>
<p class="syntax">ViStatus niScope_FetchArrayMeasurement (ViSession vi, ViConstString channelList, ViReal64 timeout, ViInt32 arrayMeasFunction, ViInt32 measWfmSize, ViReal64*  measWfm, struct niScope_wfmInfo* wfmInfo);</p> 


<h2 class="purpose">Purpose</h2>


<p class="Body">Obtains a waveform from the digitizer and returns the specified measurement array. This function may return multiple waveforms depending on the number of channels, the acquisition type, and the number of records you specify.
</p>




<table class="Borderless"><tr><td class="Icon"><img src="note.gif"></td><td><strong>Note</strong>&nbsp;&nbsp;Some functionality, such as time stamping, is not supported in all digitizers.  Refer to <a href="javascript:LaunchHelp('Digitizers.chm::/Features_Supported_Main.html')">Features Supported by Device</a>  for more information. </td></tr></table>



</body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title> niScope_FetchArrayMeasurement</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
<script src="web.js" type="text/javascript"></script>
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">measWfmSize</td>
<td class="paramDataType">ViInt32</td>
<td>The maximum number of samples returned in the measurement waveform array for each waveform 
measurement. Use <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_ActualMeasWfmSize.html')"><span class="Monospace">niScope_ActualMeasWfmSize</span></a> to determine the number of available samples.
	

<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&nbsp;&nbsp;Use the attribute <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviNISCOPE_ATTR_FETCH_MEAS_NUM_SAMPLES.html')">NISCOPE_ATTR_FETCH_MEAS_NUM_SAMPLES</a> to set the 
number of samples to fetch   when performing a measurement. For more information about when to use this attribute, 
refer to the  <a href="javascript:WWW(WWW_KB_MEAS)">NI KnowledgeBase</a>.</td></tr></table>

</td></tr>
</table></body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title> niScope_FetchArrayMeasurement</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
<script src="web.js" type="text/javascript"></script>
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">arrayMeasFunction</td>
<td class="paramDataType">ViInt32</td>
<td>The <a href="javascript:LaunchMergedHelp('Digitizers.chm','Array_Measurements_refs.html')">array measurement</a> to perform.</td></tr>
</table></body>
</html>    H    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title> niScope_FetchArrayMeasurement</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
<script src="web.js" type="text/javascript"></script>
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">measWfm</td>
<td class="paramDataType">ViReal64*</td>
<td>Returns an array whose length is the number of waveforms times <strong>measWfmSize</strong>; 
call <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_ActualNumWfms.html')"><span class="Monospace">niScope_ActualNumWfms</span></a> to determine the number of 
waveforms; call <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_ActualMeasWfmSize.html')"><span class="Monospace">niScope_ActualMeasWfmSize</span></a> 
to determine the size of each waveform.

<p class="Body">NI-SCOPE returns this data sequentially, so all record 0 waveforms are first. For example, with channel list of 0, 1, you would have the following index values:</p>
<p class="Indent1">index 0 = record 0, channel 0</p>
<p class="Indent1">index <em>x</em> = record 0, channel 1</p>
<p class="Indent1">index 2<em>x</em> = record 1, channel 0</p>
<p class="Indent1">index 3<em>x</em> = record 1, channel 1</p>
<p class="Body">Where <em>x</em> = the record length</p></td></tr>

</table></body>
</html>    �� / o �  �    Channel List                      `�   �  �    Instrument Handle                 ,����  �    Status                           OP �H �  �    Meas Wfm Size                    U }  �     Array Meas Function              �� / �  �    Timeout                          W� � n �  �    Meas Wfm                         �� � �  �    Wfm Info                           "0"        	           0              None NISCOPE_VAL_NO_MEASUREMENT Last Acquisition Histogram NISCOPE_VAL_LAST_ACQ_HISTOGRAM Multi-Acquisition Voltage Histogram NISCOPE_VAL_MULTI_ACQ_VOLTAGE_HISTOGRAM Multi Acquisition Time Histogram NISCOPE_VAL_MULTI_ACQ_TIME_HISTOGRAM Multi Acquisition Average NISCOPE_VAL_MULTI_ACQ_AVERAGE FFT Phase Spectrum NISCOPE_VAL_FFT_PHASE_SPECTRUM FFT Amplitude Spectrum (Volts RMS) NISCOPE_VAL_FFT_AMP_SPECTRUM_VOLTS_RMS FFT Amplitude Spectrum (dB) NISCOPE_VAL_FFT_AMP_SPECTRUM_DB Polynomial Interpolation NISCOPE_VAL_POLYNOMIAL_INTERPOLATION Array Integral NISCOPE_VAL_ARRAY_INTEGRAL Derivative NISCOPE_VAL_DERIVATIVE Inverse NISCOPE_VAL_INVERSE Multiply Channels NISCOPE_VAL_MULTIPLY_CHANNELS Add Channels NISCOPE_VAL_ADD_CHANNELS Subtract Channels NISCOPE_VAL_SUBTRACT_CHANNELS Divide Channels NISCOPE_VAL_DIVIDE_CHANNELS Array Offset NISCOPE_VAL_ARRAY_OFFSET Array Gain NISCOPE_VAL_ARRAY_GAIN Triangle Window NISCOPE_VAL_TRIANGLE_WINDOW Blackman Window NISCOPE_VAL_BLACKMAN_WINDOW Hamming Window NISCOPE_VAL_HAMMING_WINDOW Hanning Window NISCOPE_VAL_HANNING_WINDOW Flat Top Window NISCOPE_VAL_FLAT_TOP_WINDOW Butterworth IIR Filter NISCOPE_VAL_BUTTERWORTH_FILTER Chebyshev IIR Filter NISCOPE_VAL_CHEBYSHEV_FILTER Bessel IIR Filter NISCOPE_VAL_BESSEL_FILTER FIR Windowed Filter NISCOPE_VAL_WINDOWED_FIR_FILTER    5.0    	            	           n    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title> niScope_FetchMeasurement</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_FetchMeasurement</h1>


<h2>C Function Prototype</h2>
<p class="syntax">ViStatus niScope_FetchMeasurement (ViSession vi, ViConstString channelList, ViReal64 timeout, ViInt32 scalarMeasFunction, ViReal64* result);</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Fetches a waveform from the digitizer and performs the specified waveform measurement. 

Refer to  <a href="javascript:LaunchHelp('Digitizers.chm::/Using_Fetch_Functions.html')">Using Fetch Functions</a>  for more information. </p>

<p class="Body">Many of the measurements use the low, mid, and high reference levels. You configure the low, mid, and high references  by using <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviNISCOPE_ATTR_MEAS_CHAN_LOW_REF_LEVEL.html')"><span class="Monospace">NISCOPE_ATTR_MEAS_CHAN_LOW_REF_LEVEL</span></A>, <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviNISCOPE_ATTR_MEAS_CHAN_MID_REF_LEVEL.html')"><span class="Monospace">NISCOPE_ATTR_MEAS_CHAN_MID_REF_LEVEL</span></A>, and <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviNISCOPE_ATTR_MEAS_CHAN_HIGH_REF_LEVEL.html')"><span class="Monospace">NISCOPE_ATTR_MEAS_CHAN_HIGH_REF_LEVEL</span></A> to set each channel differently. </p>





<h2>Related topics:</h2><ul>    <li><a href="javascript:LaunchHelp('Digitizers.chm::/Making_Waveform_Measurements.html')">Making Waveform Measurements</a></li>               </ul>


</body>
</html>        <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title> niScope_FetchMeasurement</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">result</td>
<td class="paramDataType">ViReal64*</td>
<td>Contains an array of all measurements acquired; call <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_ActualNumWfms.html')"><span class="Monospace">niScope_ActualNumWfms</span></a> to determine the array length.</td></tr>
</table></body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title> niScope_FetchMeasurement</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">scalarMeasFunction</td>
<td class="paramDataType">ViInt32</td>
<td>The  <a href="javascript:LaunchMergedHelp('Digitizers.chm','Scalar_Measurements_refs.html')">scalar measurement</a> to be performed.</td></tr>
</table></body>
</html>    �� > > �  �    Channel List                      `�   �  �    Instrument Handle                 ,����  �    Status                           l� � � �  �    Result                           o� � { �     Scalar Meas Function             �� > �  �    Timeout                            "0"        	           	                   @  �None NISCOPE_VAL_NO_MEASUREMENT Frequency NISCOPE_VAL_FREQUENCY Average Frequency NISCOPE_VAL_AVERAGE_FREQUENCY FFT Frequency NISCOPE_VAL_FFT_FREQUENCY Period NISCOPE_VAL_PERIOD Average Period NISCOPE_VAL_AVERAGE_PERIOD Rise Time NISCOPE_VAL_RISE_TIME Fall Time NISCOPE_VAL_FALL_TIME Voltage RMS NISCOPE_VAL_VOLTAGE_RMS Voltage Cycle RMS NISCOPE_VAL_VOLTAGE_CYCLE_RMS AC Estimate NISCOPE_VAL_AC_ESTIMATE FFT Amplitude NISCOPE_VAL_FFT_AMPLITUDE Voltage Average NISCOPE_VAL_VOLTAGE_AVERAGE Voltage Cycle Average NISCOPE_VAL_VOLTAGE_CYCLE_AVERAGE DC Estimate NISCOPE_VAL_DC_ESTIMATE Voltage Max NISCOPE_VAL_VOLTAGE_MAX Voltage Min NISCOPE_VAL_VOLTAGE_MIN Voltage Peak-to-Peak NISCOPE_VAL_VOLTAGE_PEAK_TO_PEAK Voltage High NISCOPE_VAL_VOLTAGE_HIGH Voltage Low NISCOPE_VAL_VOLTAGE_LOW Voltage Amplitude NISCOPE_VAL_AMPLITUDE Voltage Base NISCOPE_VAL_VOLTAGE_BASE Voltage Top NISCOPE_VAL_VOLTAGE_TOP Voltage Base to Top NISCOPE_VAL_VOLTAGE_BASE_TO_TOP Width Negative NISCOPE_VAL_WIDTH_NEG Width Positive NISCOPE_VAL_WIDTH_POS Duty Cycle Negative NISCOPE_VAL_DUTY_CYCLE_NEG Duty Cycle Positive NISCOPE_VAL_DUTY_CYCLE_POS Overshoot NISCOPE_VAL_OVERSHOOT Preshoot NISCOPE_VAL_PRESHOOT Low Reference Voltage NISCOPE_VAL_LOW_REF_VOLTS Mid Reference Voltage NISCOPE_VAL_MID_REF_VOLTS High Reference Voltage NISCOPE_VAL_HIGH_REF_VOLTS Area NISCOPE_VAL_AREA Cycle Area NISCOPE_VAL_CYCLE_AREA Integral NISCOPE_VAL_INTEGRAL Rising Slew Rate NISCOPE_VAL_RISE_SLEW_RATE Falling Slew Rate NISCOPE_VAL_FALL_SLEW_RATE Time Delay NISCOPE_VAL_TIME_DELAY Phase Delay NISCOPE_VAL_PHASE_DELAY Voltage Histogram Mean NISCOPE_VAL_VOLTAGE_HISTOGRAM_MEAN Voltage Histogram Stdev NISCOPE_VAL_VOLTAGE_HISTOGRAM_STDEV Voltage Histogram Median NISCOPE_VAL_VOLTAGE_HISTOGRAM_MEDIAN Voltage Histogram Mode NISCOPE_VAL_VOLTAGE_HISTOGRAM_MODE Voltage Histogram Hits NISCOPE_VAL_VOLTAGE_HISTOGRAM_HITS Voltage Histogram New Hits NISCOPE_VAL_VOLTAGE_HISTOGRAM_NEW_HITS Voltage Histogram Max NISCOPE_VAL_VOLTAGE_HISTOGRAM_MAX Voltage Histogram Min NISCOPE_VAL_VOLTAGE_HISTOGRAM_MIN Voltage Histogram Peak-to-Peak NISCOPE_VAL_VOLTAGE_HISTOGRAM_PEAK_TO_PEAK Voltage Histogram Mean + Stdev NISCOPE_VAL_VOLTAGE_HISTOGRAM_MEAN_PLUS_STDEV Voltage Histogram Mean + 2 Stdev NISCOPE_VAL_VOLTAGE_HISTOGRAM_MEAN_PLUS_2_STDEV Voltage Histogram Mean + 3 Stdev NISCOPE_VAL_VOLTAGE_HISTOGRAM_MEAN_PLUS_3_STDEV Time Histogram Mean NISCOPE_VAL_TIME_HISTOGRAM_MEAN Time Histogram Stdev NISCOPE_VAL_TIME_HISTOGRAM_STDEV Time Histogram Median NISCOPE_VAL_TIME_HISTOGRAM_MEDIAN Time Histogram Mode NISCOPE_VAL_TIME_HISTOGRAM_MODE Time Histogram Hits NISCOPE_VAL_TIME_HISTOGRAM_HITS Time Histogram New Hits NISCOPE_VAL_TIME_HISTOGRAM_NEW_HITS Time Histogram Max NISCOPE_VAL_TIME_HISTOGRAM_MAX Time Histogram Min NISCOPE_VAL_TIME_HISTOGRAM_MIN Time Histogram Peak-to-Peak NISCOPE_VAL_TIME_HISTOGRAM_PEAK_TO_PEAK Time Histogram Mean + Stdev NISCOPE_VAL_TIME_HISTOGRAM_MEAN_PLUS_STDEV Time Histogram Mean + 2 Stdev NISCOPE_VAL_TIME_HISTOGRAM_MEAN_PLUS_2_STDEV Time Histogram Mean + 3 Stdev NISCOPE_VAL_TIME_HISTOGRAM_MEAN_PLUS_3_STDEV    5.0   
�    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title> niScope_FetchMeasurementStats</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_FetchMeasurementStats</h1>


<h2>C Function Prototype</h2>
<p class="syntax">ViStatus niScope_FetchMeasurementStats (ViSession vi, ViConstString channelList, ViReal64 timeout, ViInt32 scalarMeasFunction, ViReal64* result, ViReal64* mean, ViReal64* stdev, ViReal64* min, ViReal64* max, ViInt32*numInStats);</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Obtains a waveform measurement and returns the measurement value. This function may return multiple statistical results depending on the number of channels, the acquisition type, and the number of records you specify.
</p>


<p class="Body">You specify a particular measurement type, such as rise time, frequency, or voltage peak-to-peak. The waveform on which the digitizer calculates the waveform measurement is from an acquisition that you previously initiated. The statistics for the specified measurement function are returned, where the statistics are updated once every acquisition when the specified measurement is fetched by any of the Fetch Measurement functions. If a Fetch Measurement function has not been called, this function fetches the data on which to perform the measurement. The statistics are cleared by calling <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_ClearWaveformMeasurementStats.html')"><span class="Monospace">niScope_ClearWaveformMeasurementStats</span></a>. Refer to  <a href="javascript:LaunchHelp('Digitizers.chm::/Using_Fetch_Functions.html')">Using Fetch Functions</a> for more information on incorporating fetch functions in your application.
</p>
<p class="Body">Many of the measurements use the low, mid, and high reference levels. You configure the low, mid, and high references with <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviNISCOPE_ATTR_MEAS_CHAN_LOW_REF_LEVEL.html')"><span class="Monospace">NISCOPE_ATTR_MEAS_CHAN_LOW_REF_LEVEL</span></A>, <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviNISCOPE_ATTR_MEAS_CHAN_MID_REF_LEVEL.html')"><span class="Monospace">NISCOPE_ATTR_MEAS_CHAN_MID_REF_LEVEL</span></A>, and <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviNISCOPE_ATTR_MEAS_CHAN_HIGH_REF_LEVEL.html')"><span class="Monospace">NISCOPE_ATTR_MEAS_CHAN_HIGH_REF_LEVEL</span></A> to set each channel differently. </p>

</body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title> niScope_FetchMeasurementStats</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">scalarMeasFunction</td>
<td class="paramDataType">ViInt32</td>
<td>The  <a href="javascript:LaunchMergedHelp('Digitizers.chm', 'Scalar_Measurements_refs.html')">scalar measurement</a> to be performed on each fetched waveform.</td></tr> 

</table></body>
</html>    F    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title> niScope_FetchMeasurementStats</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">result</td>
<td class="paramDataType">ViReal64*</td>
<td>Returns the resulting measurement</td></tr>

</table></body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title> niScope_FetchMeasurementStats</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">mean</td>
<td class="paramDataType">ViReal64*</td>
<td>Returns the mean scalar value, which is obtained by averaging each <span class="Monospace">niScope_FetchMeasurementStats</span> call.</td></tr>

</table></body>
</html>        <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title> niScope_FetchMeasurementStats</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">stdev</td>
<td class="paramDataType">ViReal64*</td>
<td>Returns the standard deviation of the most recent <strong>numInStats</strong> measurements.</td></tr>

</table></body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title> niScope_FetchMeasurementStats</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">min</td>
<td class="paramDataType">ViReal64*</td>
<td>Returns the smallest scalar value acquired (the minimum of the <strong>numInStats</strong> measurements).</td></tr>

</table></body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title> niScope_FetchMeasurementStats</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">max</td>
<td class="paramDataType">ViReal64*</td>
<td>Returns the largest scalar value acquired (the maximum of the <strong>numInStats</strong> measurements).</td></tr>

</table></body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title> niScope_FetchMeasurementStats</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">numInStats</td>
<td class="paramDataType">ViInt32*</td>
<td>Returns the number of times <span class="Monospace">niScope_FetchMeasurementStats</span> has been called.</td></tr>
</table></body>
</html>    �� - d �  �    Channel List                      `�F   �  �    Instrument Handle                 ,F����  �    Status                           � o � �     Scalar Meas Function             �� �  �  �    Result                           �) � � �  �    Mean                             �� �l �  �    Stdev                            �`  �  �    Min                              �� � �  �    Max                              ��l 	�  �    Num In Stats                     �� -* �  �    Timeout                            "0"        	                  @  �None NISCOPE_VAL_NO_MEASUREMENT Frequency NISCOPE_VAL_FREQUENCY Average Frequency NISCOPE_VAL_AVERAGE_FREQUENCY FFT Frequency NISCOPE_VAL_FFT_FREQUENCY Period NISCOPE_VAL_PERIOD Average Period NISCOPE_VAL_AVERAGE_PERIOD Rise Time NISCOPE_VAL_RISE_TIME Fall Time NISCOPE_VAL_FALL_TIME Voltage RMS NISCOPE_VAL_VOLTAGE_RMS Voltage Cycle RMS NISCOPE_VAL_VOLTAGE_CYCLE_RMS AC Estimate NISCOPE_VAL_AC_ESTIMATE FFT Amplitude NISCOPE_VAL_FFT_AMPLITUDE Voltage Average NISCOPE_VAL_VOLTAGE_AVERAGE Voltage Cycle Average NISCOPE_VAL_VOLTAGE_CYCLE_AVERAGE DC Estimate NISCOPE_VAL_DC_ESTIMATE Voltage Max NISCOPE_VAL_VOLTAGE_MAX Voltage Min NISCOPE_VAL_VOLTAGE_MIN Voltage Peak-to-Peak NISCOPE_VAL_VOLTAGE_PEAK_TO_PEAK Voltage High NISCOPE_VAL_VOLTAGE_HIGH Voltage Low NISCOPE_VAL_VOLTAGE_LOW Voltage Amplitude NISCOPE_VAL_AMPLITUDE Voltage Base NISCOPE_VAL_VOLTAGE_BASE Voltage Top NISCOPE_VAL_VOLTAGE_TOP Voltage Base to Top NISCOPE_VAL_VOLTAGE_BASE_TO_TOP Width Negative NISCOPE_VAL_WIDTH_NEG Width Positive NISCOPE_VAL_WIDTH_POS Duty Cycle Negative NISCOPE_VAL_DUTY_CYCLE_NEG Duty Cycle Positive NISCOPE_VAL_DUTY_CYCLE_POS Overshoot NISCOPE_VAL_OVERSHOOT Preshoot NISCOPE_VAL_PRESHOOT Low Reference Voltage NISCOPE_VAL_LOW_REF_VOLTS Mid Reference Voltage NISCOPE_VAL_MID_REF_VOLTS High Reference Voltage NISCOPE_VAL_HIGH_REF_VOLTS Area NISCOPE_VAL_AREA Cycle Area NISCOPE_VAL_CYCLE_AREA Integral NISCOPE_VAL_INTEGRAL Rising Slew Rate NISCOPE_VAL_RISE_SLEW_RATE Falling Slew Rate NISCOPE_VAL_FALL_SLEW_RATE Time Delay NISCOPE_VAL_TIME_DELAY Phase Delay NISCOPE_VAL_PHASE_DELAY Voltage Histogram Mean NISCOPE_VAL_VOLTAGE_HISTOGRAM_MEAN Voltage Histogram Stdev NISCOPE_VAL_VOLTAGE_HISTOGRAM_STDEV Voltage Histogram Median NISCOPE_VAL_VOLTAGE_HISTOGRAM_MEDIAN Voltage Histogram Mode NISCOPE_VAL_VOLTAGE_HISTOGRAM_MODE Voltage Histogram Hits NISCOPE_VAL_VOLTAGE_HISTOGRAM_HITS Voltage Histogram New Hits NISCOPE_VAL_VOLTAGE_HISTOGRAM_NEW_HITS Voltage Histogram Max NISCOPE_VAL_VOLTAGE_HISTOGRAM_MAX Voltage Histogram Min NISCOPE_VAL_VOLTAGE_HISTOGRAM_MIN Voltage Histogram Peak-to-Peak NISCOPE_VAL_VOLTAGE_HISTOGRAM_PEAK_TO_PEAK Voltage Histogram Mean + Stdev NISCOPE_VAL_VOLTAGE_HISTOGRAM_MEAN_PLUS_STDEV Voltage Histogram Mean + 2 Stdev NISCOPE_VAL_VOLTAGE_HISTOGRAM_MEAN_PLUS_2_STDEV Voltage Histogram Mean + 3 Stdev NISCOPE_VAL_VOLTAGE_HISTOGRAM_MEAN_PLUS_3_STDEV Time Histogram Mean NISCOPE_VAL_TIME_HISTOGRAM_MEAN Time Histogram Stdev NISCOPE_VAL_TIME_HISTOGRAM_STDEV Time Histogram Median NISCOPE_VAL_TIME_HISTOGRAM_MEDIAN Time Histogram Mode NISCOPE_VAL_TIME_HISTOGRAM_MODE Time Histogram Hits NISCOPE_VAL_TIME_HISTOGRAM_HITS Time Histogram New Hits NISCOPE_VAL_TIME_HISTOGRAM_NEW_HITS Time Histogram Max NISCOPE_VAL_TIME_HISTOGRAM_MAX Time Histogram Min NISCOPE_VAL_TIME_HISTOGRAM_MIN Time Histogram Peak-to-Peak NISCOPE_VAL_TIME_HISTOGRAM_PEAK_TO_PEAK Time Histogram Mean + Stdev NISCOPE_VAL_TIME_HISTOGRAM_MEAN_PLUS_STDEV Time Histogram Mean + 2 Stdev NISCOPE_VAL_TIME_HISTOGRAM_MEAN_PLUS_2_STDEV Time Histogram Mean + 3 Stdev NISCOPE_VAL_TIME_HISTOGRAM_MEAN_PLUS_3_STDEV    	            	            	            	            	            	            5.0   	    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title> niScope_ReadMeasurement</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_ReadMeasurement</h1>


<h2>C Function Prototype</h2>
<p class="syntax">ViStatus_VI_FUNC niScope_ReadMeasurement (ViSession vi,
                                           ViConstString channelList,
                                           ViReal64 timeout,
                                           ViInt32 scalarMeasFunction,
                                           ViReal64*  result);
										  </p>


<h2 class="purpose">Purpose</h2>

<p class="Body">Initiates an acquisition, waits for it to complete, and performs the specified waveform measurement for a single channel and record or for multiple channels and records.</p>


<p class="Body">Refer to  <a href="javascript:LaunchHelp('Digitizers.chm::/Using_Fetch_Functions.html')">Using Fetch Functions</a>  for more information. </p>

<p class="Body">Many of the measurements use the low, mid, and high reference levels. You configure the low, mid, and high references  by using 
<a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviNISCOPE_ATTR_MEAS_CHAN_LOW_REF_LEVEL.html')"><span class="Monospace">NISCOPE_ATTR_MEAS_CHAN_LOW_REF_LEVEL</span></A>, 
<a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviNISCOPE_ATTR_MEAS_CHAN_MID_REF_LEVEL.html')"><span class="Monospace">NISCOPE_ATTR_MEAS_CHAN_MID_REF_LEVEL</span></A>, 
and <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviNISCOPE_ATTR_MEAS_CHAN_HIGH_REF_LEVEL.html')"><span class="Monospace">NISCOPE_ATTR_MEAS_CHAN_HIGH_REF_LEVEL</span></A> to set each channel differently.</p>

<h2>Related topics:</h2><ul>
  <li><a href="javascript:LaunchHelp('Digitizers.chm::/Making_Waveform_Measurements.html')">Making Waveform Measurements</a></li>   
  <li><a href="javascript:LaunchHelp('Digitizers.chm::/Acquisition_Functions.html')">Acquisition Functions</a></li>           </ul>


</body>
</html>        <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title> niScope_ReadMeasurement</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">result</td>
<td class="paramDataType">ViReal64*</td>
<td>Contains an array of all measurements acquired. Call  <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_ActualNumWfms.html')"><span class="Monospace">niScope_ActualNumWfms</span></a>  to determine the array length.</td></tr>
</table></body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title> niScope_ReadMeasurement</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">scalarMeasFunction</td>
<td class="paramDataType">ViInt32</td>
<td>The <a href="javascript:LaunchMergedHelp('Digitizers.chm', 'Scalar_Measurements_refs.html')">scalar measurement</a> to be performed</td> </tr>

</table></body>
</html>    �� > > �  �    Channel List                      `�   �  �    Instrument Handle                 ,����  �    Status                           �� � � �  �    Result                           � � } �     Scalar Meas Function             �� > �  �    Timeout                            "0"        	           	                   @  �None NISCOPE_VAL_NO_MEASUREMENT Frequency NISCOPE_VAL_FREQUENCY Average Frequency NISCOPE_VAL_AVERAGE_FREQUENCY FFT Frequency NISCOPE_VAL_FFT_FREQUENCY Period NISCOPE_VAL_PERIOD Average Period NISCOPE_VAL_AVERAGE_PERIOD Rise Time NISCOPE_VAL_RISE_TIME Fall Time NISCOPE_VAL_FALL_TIME Voltage RMS NISCOPE_VAL_VOLTAGE_RMS Voltage Cycle RMS NISCOPE_VAL_VOLTAGE_CYCLE_RMS AC Estimate NISCOPE_VAL_AC_ESTIMATE FFT Amplitude NISCOPE_VAL_FFT_AMPLITUDE Voltage Average NISCOPE_VAL_VOLTAGE_AVERAGE Voltage Cycle Average NISCOPE_VAL_VOLTAGE_CYCLE_AVERAGE DC Estimate NISCOPE_VAL_DC_ESTIMATE Voltage Max NISCOPE_VAL_VOLTAGE_MAX Voltage Min NISCOPE_VAL_VOLTAGE_MIN Voltage Peak-to-Peak NISCOPE_VAL_VOLTAGE_PEAK_TO_PEAK Voltage High NISCOPE_VAL_VOLTAGE_HIGH Voltage Low NISCOPE_VAL_VOLTAGE_LOW Voltage Amplitude NISCOPE_VAL_AMPLITUDE Voltage Base NISCOPE_VAL_VOLTAGE_BASE Voltage Top NISCOPE_VAL_VOLTAGE_TOP Voltage Base to Top NISCOPE_VAL_VOLTAGE_BASE_TO_TOP Width Negative NISCOPE_VAL_WIDTH_NEG Width Positive NISCOPE_VAL_WIDTH_POS Duty Cycle Negative NISCOPE_VAL_DUTY_CYCLE_NEG Duty Cycle Positive NISCOPE_VAL_DUTY_CYCLE_POS Overshoot NISCOPE_VAL_OVERSHOOT Preshoot NISCOPE_VAL_PRESHOOT Low Reference Voltage NISCOPE_VAL_LOW_REF_VOLTS Mid Reference Voltage NISCOPE_VAL_MID_REF_VOLTS High Reference Voltage NISCOPE_VAL_HIGH_REF_VOLTS Area NISCOPE_VAL_AREA Cycle Area NISCOPE_VAL_CYCLE_AREA Integral NISCOPE_VAL_INTEGRAL Rising Slew Rate NISCOPE_VAL_RISE_SLEW_RATE Falling Slew Rate NISCOPE_VAL_FALL_SLEW_RATE Time Delay NISCOPE_VAL_TIME_DELAY Phase Delay NISCOPE_VAL_PHASE_DELAY Voltage Histogram Mean NISCOPE_VAL_VOLTAGE_HISTOGRAM_MEAN Voltage Histogram Stdev NISCOPE_VAL_VOLTAGE_HISTOGRAM_STDEV Voltage Histogram Median NISCOPE_VAL_VOLTAGE_HISTOGRAM_MEDIAN Voltage Histogram Mode NISCOPE_VAL_VOLTAGE_HISTOGRAM_MODE Voltage Histogram Hits NISCOPE_VAL_VOLTAGE_HISTOGRAM_HITS Voltage Histogram New Hits NISCOPE_VAL_VOLTAGE_HISTOGRAM_NEW_HITS Voltage Histogram Max NISCOPE_VAL_VOLTAGE_HISTOGRAM_MAX Voltage Histogram Min NISCOPE_VAL_VOLTAGE_HISTOGRAM_MIN Voltage Histogram Peak-to-Peak NISCOPE_VAL_VOLTAGE_HISTOGRAM_PEAK_TO_PEAK Voltage Histogram Mean + Stdev NISCOPE_VAL_VOLTAGE_HISTOGRAM_MEAN_PLUS_STDEV Voltage Histogram Mean + 2 Stdev NISCOPE_VAL_VOLTAGE_HISTOGRAM_MEAN_PLUS_2_STDEV Voltage Histogram Mean + 3 Stdev NISCOPE_VAL_VOLTAGE_HISTOGRAM_MEAN_PLUS_3_STDEV Time Histogram Mean NISCOPE_VAL_TIME_HISTOGRAM_MEAN Time Histogram Stdev NISCOPE_VAL_TIME_HISTOGRAM_STDEV Time Histogram Median NISCOPE_VAL_TIME_HISTOGRAM_MEDIAN Time Histogram Mode NISCOPE_VAL_TIME_HISTOGRAM_MODE Time Histogram Hits NISCOPE_VAL_TIME_HISTOGRAM_HITS Time Histogram New Hits NISCOPE_VAL_TIME_HISTOGRAM_NEW_HITS Time Histogram Max NISCOPE_VAL_TIME_HISTOGRAM_MAX Time Histogram Min NISCOPE_VAL_TIME_HISTOGRAM_MIN Time Histogram Peak-to-Peak NISCOPE_VAL_TIME_HISTOGRAM_PEAK_TO_PEAK Time Histogram Mean + Stdev NISCOPE_VAL_TIME_HISTOGRAM_MEAN_PLUS_STDEV Time Histogram Mean + 2 Stdev NISCOPE_VAL_TIME_HISTOGRAM_MEAN_PLUS_2_STDEV Time Histogram Mean + 3 Stdev NISCOPE_VAL_TIME_HISTOGRAM_MEAN_PLUS_3_STDEV    5.0   g    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CalSelfCalibrate</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_CalSelfCalibrate</h1>


<h2>C Function Prototype</h2>
<p class="syntax">ViStatus niScope_CalSelfCalibrate (ViSession sessionHandle, ViConstString channelList, ViInt32 option);</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Self-calibrates most NI digitizers, including all SMC-based devices. To verify that your digitizer supports self-calibration, refer to  <a href="javascript:LaunchHelp('Digitizers.chm::/Features_Supported_Main.html')">Features Supported by Device</a>.</p>

<p class="Body">For SMC-based digitizers, if the self-calibration is performed successfully in a regular session, the 
calibration constants are 
immediately stored in the self-calibration area of the EEPROM. If the self-calibration is performed in an external 
calibration session, the 
calibration constants take effect immediately for the duration of the session. However, they are not stored in 
the EEPROM until <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_CalEnd.html')"><span class="Monospace">niScope_CalEnd</span></a> is called with <strong>action</strong> set to 
<span class="Monospace">NISCOPE_VAL_ACTION_STORE</span> and no errors occur.</p>



</body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CalSelfCalibrate</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">option</td>
<td class="paramDataType">ViInt32</td>
<td> The  calibration option. Use <span class="Monospace">VI_NULL</span> for a normal self-calibration operation or  <span class="Monospace">NISCOPE_VAL_CAL_RESTORE_EXTERNAL_CALIBRATION</span> to restore the previous calibration.</td></tr></table></body>
</html>    `�) 	  �  �    Instrument Handle                 ,����  �    Status                            �� R _ �  �    Channel List                     Π R> � �    Option                                 	           "0"               ~Self Calibrate All Channels NISCOPE_VAL_SELF_CALIBRATION Restore External Calibration NISCOPE_VAL_RESTORE_FACTORY_CALIBRATION   �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_ResetDevice</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_ResetDevice</h1>


<h2>C Function Prototype</h2>
<p class="syntax">ViStatus niScope_ResetDevice (ViSession vi);</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Performs a hard reset of the device. Acquisition stops, all routes are released, RTSI and PFI lines are
tristated, hardware is configured to its default state,  and all session attributes are reset to their default state.</p>

<h2>Related topics:</h2>
<ul>
<li><a href="javascript:LaunchHelp('Digitizers.chm::/Thermal_Shutdown.html')">Thermal Shutdown</a></li>
</ul>

</body>
</html>    ,#����  �    Status                            `�-   �  �    Instrument Handle                  	              �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_Disable</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_Disable</h1>


<h2>C Function Prototype</h2>
<p class="syntax">ViStatus niScope_Disable (ViSession vi);</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Aborts any current operation, opens data channel relays, and releases RTSI and PFI lines.
</p>
</body>
</html>    ,#����  �    Status                            `�-   �  �    Instrument Handle                  	              �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_ProbeCompensationSignalStart</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_ProbeCompensationSignalStart</h1>
<h2>C Function Prototype</h2>
<p class="syntax">ViStatus niScope_ProbeCompensationSignalStart (ViSession vi);</p>


<h2 class="purpose">Purpose</h2>


<p class="Body">Generates a 1&nbsp;kHz square wave signal for probe compensation.</p>
<p class="Body">Most oscilloscopes output the probe compensation signal on PFI&nbsp;1.</p>
<p class="Body">The following oscilloscopes output the probe compensation signal in unique locations.</p>
<table class="Bordered">
<tr>
<th class="Bordered">Device</th>
<th class="Bordered">Output Location</th>
<th class="Bordered">Notes</th>
</tr>
<tr>
<td class="Bordered">PXIe&#8209;5110<br/>PXIe&#8209;5111<br/>PXIe&#8209;5113</td>
<td class="Bordered">Probe compensation terminal</td>
<td class="Bordered">The signal at this terminal is enabled by default.</td>
</tr>
<tr>
<td class="Bordered">PXIe&#8209;5163<br/>PXIe&#8209;5164</td>
<td class="Bordered">SMB&nbsp;PFI&nbsp;0</td>
<td class="Bordered">Though the PFI&nbsp;0 line is also available from the AUX&nbsp;0 MHDMR connector of these oscilloscopes, the probe compesation signal is available only from SMB&nbsp;PFI&nbsp;0.</td>
</tr>
</table>

<table class="Borderless">
<tr>
<td class="Borderless"><img src="note.gif"></td>
<td class="Borderless"><strong>Note</strong>&nbsp;&nbsp;Some features are not supported by all digitizers. Refer to <a href="javascript:LaunchHelp('Digitizers.chm::/Features_Supported_Main.html')">Features Supported by Device</a> for more information.</td>
</tr>
</table>

</body>
</html>    `�( 
  �  �    Instrument Handle                 ,����  �    Status                                 	          7    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_ProbeCompensationSignalStop</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_ProbeCompensationSignalStop</h1>
<h2>C Function Prototype</h2>
<p class="syntax">ViStatus niScope_ProbeCompensationSignalStop (ViSession vi);</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Disables the 1&nbsp;kHz square wave signal for probe compensation.</p>

<table class="Borderless">
<tr>
<td class="Borderless"><img src="note.gif"></td>
<td class="Borderless"><strong>Note</strong>&nbsp;&nbsp;Some features are not supported by all digitizers. Refer to <a href="javascript:LaunchHelp('Digitizers.chm::/Features_Supported_Main.html')">Features Supported by Device</a> for more information.</td>
</tr>
</table>

</body>
</html>    `�( 
  �  �    Instrument Handle                 ,����  �    Status                                 	          %    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_IsDeviceReady</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_IsDeviceReady</h1>

<h2>C Function Prototype</h2>
<p class="syntax">

ViStatus  niScope_IsDeviceReady  
(ViRsrc resourceName,
 ViConstString channelList,
ViBoolean* deviceReady);</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">  Call this function to determine whether the 
device is ready for use or the device is still undergoing initialization.
 
  </p>




</body>
</html>    
    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_init</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">resourceName</td>
			<td class="paramDataType">ViRsrc</td>
			<td><strong>resourceName</strong> specifies the resource name of the device to initialize.

	<h3>resourceName Examples</h3>

		<table class="Bordered">
			<tr>
				<th class="Bordered">Example&nbsp;#</th>
				<th class="Bordered">Device Type</th>
				<th class="Bordered">Syntax</th>
				<th class="Bordered">Variable</th>
			</tr>

			<tr>
				<td class="Bordered"><div align="center">1</div></td>
				<td class="Bordered">NI-DAQmx device</td>
				<td class="Bordered"><em>myDAQmxDevice</em></td>
				<td class="Bordered">(<em>myDAQmxDevice</em> = device name)</td>
			</tr>
			<tr>
				<td class="Bordered"><div align="center">2</div></td>
				<td class="Bordered">NI-DAQmx device</td>
				<td class="Bordered">DAQ::<em>myDAQmxDevice</em></td>
				<td class="Bordered">(<em>myDAQmxDevice</em> = device name)</td>
			</tr>
			<tr>
				<td class="Bordered"><div align="center">3</div></td>
				<td class="Bordered">NI-DAQmx device</td>
				<td class="Bordered">DAQ::<em>2</em></td>
				<td class="Bordered">(<em>2</em> = device name)</td>
			</tr>
			<tr>
<td class="Bordered"><div align="center">4</div></td>
<td class="Bordered">IVI logical name or IVI virtual name</td>
<td class="Bordered"><em>myLogicalName</em></td>
<td class="Bordered">(<em>myLogicalName</em> = name)</td>
			</tr>
		</table>



<p class="Body">For NI-DAQmx devices, the syntax is just the device name specified in MAX, as shown in Example 1. Typical default names for NI-DAQmx devices in MAX are Dev1 or PXI1Slot1. You can rename an NI-DAQmx device by right-clicking on the name in MAX and entering a new name.</p>

<p class="Body">An alternate syntax for NI-DAQmx devices consists of DAQ::<em>NI-DAQmx device name</em>, as shown in Example 2. This naming convention allows for the use of an NI-DAQmx device in an application that was originally designed for a Traditional NI-DAQ device. For example, if the application expects DAQ::1, you can rename the NI-DAQmx device to 1 in MAX and pass in DAQ::1 for the resource name, as shown in Example 3.</p>

<p class="Body">If you use the DAQ::<em>n</em> syntax and an NI-DAQmx device name already exists with that same name, the NI-DAQmx device is matched first.</p> 

<p class="Body">You can also pass in the name of an IVI logical name or an IVI virtual name configured with the IVI Configuration utility, as shown in Example 4. A logical name identifies a particular virtual instrument. A virtual name identifies a specific device and specifies the initial settings for the session.</p>

<table class="borderless"><tr>
<td class="Icon"><img src="note.gif"></td>
<td colspan=2><strong>Note</strong>&nbsp;&nbsp;NI-DAQmx device names are not case-sensitive. However, all IVI names, such as logical names, are case-sensitive. If you use logical names, driver session names, or virtual names in your program, you must make sure that the name you use matches the name in the IVI Configuration Store file exactly, without any variations in the case of the characters.</td></tr></table>

			</td>
		</tr>
		</table></body>
</html>    ~    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_ConfigureVertical</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">channelList</td>
<td class="paramDataType">ViConstString</td>
<td>Use only "" or a null pointer. If you specify a channel, NI-SCOPE will return an error.</td></tr>
</table></body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_GetAttributeViBoolean</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">deviceReady</td>
<td class="paramDataType">ViBoolean*</td>
<td>Returns True if the device is ready to use, or False if the device is still initializing. </td></tr>
</table></body>
</html>   �� 1 %  �  �    Resource Name                    �� 1D �  �    Channel List                     �a | % �  �    Device Ready                      , � %���  �    Status                             "PXI1Slot2"    ""    	            	          �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_reset</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_reset</h1>


<h2>C Function Prototype</h2>
<p class="syntax">ViStatus niScope_reset (ViSession vi);</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Stops the acquisition, releases routes, and all session attributes are reset to their default states. </p>

</body>
</html>    ,#����  �    Status                            `�-   �  �    Instrument Handle                  	                  <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_ResetWithDefaults</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_ResetWithDefaults</h1>


<h2>C Function Prototype</h2>
<p class="syntax">ViStatus niScope_Reset_With_Defaults (ViSession vi);</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Performs a software reset of the device, returning it to the default state and applying any initial default settings from the IVI  Configuration Store.
</p>
</body>
</html>    ,����  �    Status                            `�-   �  �    Instrument Handle                  	              o    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_revision_query</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_revision_query</h1>


<h2>C Function Prototype</h2>
<p class="syntax">ViStatus niScope_revision_query  (ViSession vi, 
                                          ViChar driverRev[IVI_MAX_MESSAGE_BUF_SIZE], 
                                          ViChar instrRev[IVI_MAX_MESSAGE_BUF_SIZE]);</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Returns the revision numbers of the instrument driver and instrument firmware. </p>

</body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_revision_query</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">driverRev</td>
<td class="paramDataType">ViChar[]</td>
<td>Returns the instrument driver software revision numbers in the form of a string; you must pass a ViChar array at least <span class="Monospace">IVI_MAX_MESSAGE_BUF_SIZE</span> bytes in length.</td></tr>
</table></body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_revision_query</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">instrRev</td>
<td class="paramDataType">ViChar[]</td>
<td>Returns the instrument firmware revision numbers in the form of a string; you must pass a ViChar array at least <span class="Monospace">IVI_MAX_MESSAGE_BUF_SIZE</span> bytes in length.</td></tr>
</table></body>
</html>   	4 = 3 �  �    Driver Revision                   =6 �  �    Firmware Revision                 ,#����  �    Status                            `�-   �  �    Instrument Handle                  	            	            	              �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_self_test</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_self_test</h1>


<h2>C Function Prototype</h2>
<p class="syntax">ViStatus niScope_self_test (ViSession vi, ViInt16* selfTestResult, ViChar selfTestMessage[IVI_MAX_MESSAGE_BUF_SIZE]);</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Runs the instrument self-test routine and returns the test result(s). </p>

</body>
</html>        <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_self_test</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">selfTestResult</td>
<td class="paramDataType">ViInt16*</td>
<td>This control contains the value returned from the instrument self-test.

<p class="Body"><strong>Self-Test Code Description</strong></p>

<p class="Body">0&#8212;Self-test passed </p>

<p class="Body">1&#8212;Self-test failed</p></td></tr>
</table></body>
</html>        <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_self_test</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">selfTestMessage</td>
<td class="paramDataType">ViChar[]</td>
<td>Returns the self-test response string from the instrument. Refer to  the device-specific help topics for an explanation of the string contents; 
you must pass a ViChar array at least <span class="Monospace">IVI_MAX_MESSAGE_BUF_SIZE</span> bytes in length.</td></tr></table></body>
</html>   � =  �  �    Self Test Result                 � = � � ,    Self Test Message                 ,#����  �    Status                            `�-   �  �    Instrument Handle                  	           	            	              �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_GetStreamEndpointHandle</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_GetStreamEndpointHandle</h1>



<p class="syntax">ViStatus niScope_GetStreamEndpointHandle (ViSession vi, 
                                                   ViConstString Stream_Name,
                                                   ViUInt32 *Writer_Handle);</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Returns a writer endpoint that can be used with NI-P2P to configure a peer-to-peer stream with a digitizer endpoint. </p>

<h2>Related topics:</h2>
<ul>
    <li><a href="javascript:LaunchHelp('Digitizers.chm::/5160_P2P.html')">Peer-to-Peer Streaming</a></li>
</ul>
</body>
</html>        <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_GetStreamEndpointHandle</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">vi</td>
<td class="paramDataType">ViSession</td>
<td>The instrument handle you obtain from  <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_init.html')"><span class="Monospace">niScope_init</span></a> that identifies a particular instrument session.</td></tr></table></body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_GetStreamEndpointHandle</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">Stream_Name</td>
<td class="paramDataType">ViConstString</td>
<td>The stream endpoint FIFO to configure. Refer to the device-specific documentation for peer-to-peer streaming in the <em>High-Speed Digitizers Help</em> for more information. </td></tr>
</table></body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_GetStreamEndpointHandle</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">Writer_Handle</td>
<td class="paramDataType">ViUInt32</td> <td>  
Returns a reference to a peer-to-peer writer FIFO that can be used to create a peer-to-peer streaming session.

</td></tr>
</table></body>
</html>




    %   �  �    vi                               !& % � �  �    Stream Name                      $	 a  �  �    Writer Handle                     , a ����  �    Status                                     	            	          �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CableSenseSignalStart</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_CableSenseSignalStart</h1>
<h2>C Function Prototype</h2>
<p class="syntax">ViStatus niScope_CableSenseSignalStart
             (ViSession Instrument_Handle);</p>


<h2 class="purpose">Purpose</h2>

<p class="Body">Generates the CableSense signal on all channels of an oscilloscope for which the signal is enabled, as configured by the <span class="Monospace"><a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviNISCOPE_ATTR_CABLE_SENSE_MODE.html')">NISCOPE_ATTR_CABLE_SENSE_MODE</a></span> attribute.</p>

<table class="Borderless">
<tr>
<td class="Borderless"><img src="note.gif"></td>
<td class="Borderless"><strong>Note</strong>&nbsp;&nbsp;The input impedance of the channel(s) to convey the CableSense signal must be set to 50&nbsp;&#937;.</td>
</tr>
</table>

<p class="Body">You can call this function only during an acquisition. If you call this function while your oscilloscope is not acquiring, NI&#8209;SCOPE generates an error.</p>

<h3>Supported Devices</h3>
<ul>
<li><a href="javascript:LaunchMergedHelp('Digitizers.chm','pxie-5110.chm','overview.html')">PXIe-5110</a></li>
<li><a href="javascript:LaunchMergedHelp('Digitizers.chm','pxie-5111.chm','overview.html')">PXIe-5111</a></li>
<li><a href="javascript:LaunchMergedHelp('Digitizers.chm','pxie-5113.chm','overview.html')">PXIe-5113</a></li>
<li><a href="javascript:LaunchHelp('Digitizers.chm::/5162.html')">PXIe-5160</a></li>
<li><a href="javascript:LaunchHelp('Digitizers.chm::/5162.html')">PXIe-5162</a></li>
</ul>

</body>
</html>    `�( 
  �  �    Instrument Handle                 ,����  �    Status                                 	          	    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CableSenseSignalStop</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_CableSenseSignalStop</h1>
<h2>C Function Prototype</h2>
<p class="syntax">ViStatus niScope_CableSenseSignalStop
             (ViSession Instrument_Handle);</p>


<h2 class="purpose">Purpose</h2>

<p class="Body">Disables the CableSense signal on all channels of an oscilloscope for which the signal is enabled.</p>

<h3>Supported Devices</h3>
<ul>
<li><a href="javascript:LaunchMergedHelp('Digitizers.chm','pxie-5110.chm','overview.html')">PXIe-5110</a></li>
<li><a href="javascript:LaunchMergedHelp('Digitizers.chm','pxie-5111.chm','overview.html')">PXIe-5111</a></li>
<li><a href="javascript:LaunchMergedHelp('Digitizers.chm','pxie-5113.chm','overview.html')">PXIe-5113</a></li>
<li><a href="javascript:LaunchHelp('Digitizers.chm::/5162.html')">PXIe-5160</a></li>
<li><a href="javascript:LaunchHelp('Digitizers.chm::/5162.html')">PXIe-5162</a></li>
</ul>

</body>
</html>    `�( 
  �  �    Instrument Handle                 ,����  �    Status                                 	              <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>

<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<link rel="stylesheet" type="text/css" href="styles.css">
<title>niScope_ClearError</title>
</head>
<body><h1 class="function">niScope_ClearError</h1>

<h2>C Function Prototype</h2>
<p class="syntax">ViStatus&nbsp;niScope_ClearError&nbsp;(ViSession&nbsp;vi);</p>
<h2 class="purpose">Purpose</h2>

<table class="Borderless-Wide">
<tr>
<td class="Icon"><img src="note.gif"></td>
<td>
<strong>Note</strong>&nbsp;&nbsp;
This function is included for compliance with the IviScope Class Specification.</td></tr></table><p class = "Body">Clears the error information for the current execution thread and the IVI session you specify. If you pass <span class="Monospace">VI_NULL</span> for the Instrument Handle parameter, this function clears the error information only for the current execution thread.</p>
</body>
</html>    ,#����  �    Status                            `�-   �  �    Instrument Handle                  	              �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_errorHandler</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_errorHandler
</h1>

<h2>C Function Prototype</h2>
<p class="syntax">ViStatus niScope_errorHandler (ViSession vi,
                                        ViInt32 errorCode,
                                        ViChar errorSource[MAX_FUNCTION_NAME_SIZE],
                                        ViChar errorDescription[MAX_ERROR_DESCRIPTION]);</p>


<h2 class="purpose">Purpose</h2>


<p class="Body">Takes the error code returned by NI-SCOPE functions and returns the interpretation as a user-readable string. 
</p>
<table class="Borderless"><tr><td class="Icon"><img src="note.gif"></td><td><strong>Note</strong>&nbsp;&nbsp;You can pass <span class="Monospace">VI_NULL</span> as the instrument handle, which is useful to interpret errors after <span class="Monospace">niScope_init</span> has failed.</td></tr></table>



</body>
</html>    g    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_errorHandler</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">errorCode</td>
<td class="paramDataType">ViStatus</td>
<td>The error code that is returned from any of the instrument driver functions.</td></tr>
</table></body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_errorHandler</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">errorDescription[]</td>
<td class="paramDataType">ViChar</td>
<td>Returns the interpreted error code as a user readable message string; you must pass a ViChar array at least <span class="Monospace">MAX_ERROR_DESCRIPTION</span> bytes in length.</td></tr></table></body>
</html>        <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_errorHandler</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">errorSource[]</td>
<td class="paramDataType">ViChar</td>
<td> Specifies the function in which the error occurred.  You can pass in a string no longer 
than <span class="Monospace">MAX_FUNCTION_NAME_SIZE</span>.  If you pass in a valid string, this source is included in the 
<strong>errorDescription</strong> string.  For example:
<p class="Indent1">
    &quot;Error &lt;<strong>errorCode</strong>&gt; at &lt;<strong>errorSource</strong>&gt;&quot;</p>
	<p class="Body">
If you pass in NULL or an empty string, this parameter is ignored.</p></td> </tr>
</table></body>
</html>   >� <  �  h    Error Code                       AB � � � �    Error Description                 ,����  �    Status                            `�-   �  �    Instrument Handle                D < � � �    Error Source                       0    	            	           VI_NULL       �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_GetErrorMessage</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_GetErrorMessage</h1>


<h2>C Function Prototype</h2>
<p class="syntax">ViStatus niScope_GetErrorMessage (ViSession vi, 
                                           ViStatus errorCode,
                                           ViInt32 bufferSize,
                                           ViChar errorMessage[]);</p>

<h2 class="purpose">Purpose</h2>


<p class ="body">
Returns the error code from an NI-SCOPE function  as a user-readable string. Use VI_NULL as the default instrument handle. </p>
<p class ="body">
You must call this function twice.  For the first call,  set <strong>bufferSize</strong> to 0 to prevent the function from populating the error message. Instead, the function returns the size of the error string.  Use the returned size to create a buffer, then call the function again,  passing in the new buffer and setting  <strong>bufferSize</strong> equal to the size that was returned in the first function call.
<p class="Body"> 
</p>


</body>
</html>    h    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_error_message</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">errorCode</td>
<td class="paramDataType">ViStatus</td>
<td>The error code that is returned from any of the instrument driver functions.</td></tr>
</table></body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_error_message</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">errorMessage[]</td>
<td class="paramDataType">ViChar</td>
<td>Returns a char buffer that will be populated with the error message.  It should be at least as large  as the  buffer size.
 






</td></tr>
</table></body>
</html>    {    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_error_message</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">bufferSize</td>
<td class="paramDataType"> </td>
<td>The number of characters you specify for the <strong>errorMessage</strong> parameter. </td></tr>
</table></body>
</html>














   N� %  �  h    Error Code                        ,#����  �    Status                            `�-   �  �    Instrument Handle                QS > � � �    Error Message                    S� ]  �  d    Buffer_Size                        0    	           VI_NULL    	            0   	t    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_LockSession</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_LockSession
</h1>


<h2>C Function Prototype</h2>
<p class="syntax">
ViStatus niScope_LockSession (ViSession vi, ViBoolean* callerHasLock);</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Obtains a multithread lock on the instrument session. Before doing so, it waits until all other execution threads have released their locks on the instrument session. Other threads might have obtained a lock on this session in the following ways:
</p>
<ul>

<li>Your application called niScope_LockSession
</li>
<li>A call to the instrument driver locked the session
</li>
<li>A call to the IVI  engine locked the session
</li>
</ul>

<p class="Body">After your call to <span class="Monospace">niScope_LockSession</span> returns successfully, no other threads can access the instrument session until you call <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_UnlockSession.html')"><span class="Monospace">niScope_UnlockSession</span></a>. Use niScope_LockSession and niScope_UnlockSession around a sequence of calls to instrument driver functions if you require that the instrument retain its settings through the end of the sequence.
</p>
<p class="Body">You can safely make nested calls to <span class="Monospace">niScope_LockSession</span> within the same thread. To completely unlock the session, you must balance each call to <span class="Monospace">niScope_LockSession</span> with a call to <span class="Monospace">niScope_UnlockSession</span>. If, however, you use the <strong>callerHasLock</strong> in all calls to <span class="Monospace">niScope_LockSession</span> and <span class="Monospace">niScope_UnlockSession</span> within a function, the IVI  Library locks the session only once within the function regardless of the number of calls you make to <span class="Monospace">niScope_LockSession</span>. This allows you to call <span class="Monospace">niScope_UnlockSession</span> just once at the end of the function.
</p>

</body>
</html>    P    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_LockSession</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">callerHasLock</td>
<td class="paramDataType">ViBoolean*</td>
<td>This parameter serves as a convenience. If you do not want to use this parameter, pass <span class="Monospace">VI_NULL</span>.

<p class="Body">Use this parameter in complex functions to keep track of whether you have obtained a lock and therefore need to unlock the session. Pass the address of a local ViBoolean variable. In the declaration of the local variable, initialize it to <span class="Monospace">VI_FALSE</span>. Pass the 
address of the same local variable to any other calls you make to <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_LockSession.html')"><span class="Monospace">niScope_LockSession</span></a> or <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_UnlockSession.html')">niScope_UnlockSession</a> in the same function.</p></td></tr></table></body>
</html>    ,#����  �    Status                            `�-   �  �    Instrument Handle                a2 $  �  `    Caller Has Lock                    	               	           f    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_UnlockSession</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_UnlockSession</h1>


<h2>C Function Prototype</h2>
<p class="syntax">ViStatus niScope_UnlockSession (ViSession vi, ViBoolean* callerHasLock);</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Releases a lock that you acquired on an instrument session using <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_LockSession.html')"><span class="Monospace">niScope LockSession</span></a>. 
</p>
</body>
</html>    g    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_UnlockSession</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">callerHasLock</td>
<td class="paramDataType">ViBoolean*</td>
<td>This parameter serves as a convenience; if you do not want to use this parameter, pass 
<span class="Monospace">VI_NULL</span>.

<p class="Body">Use this parameter in complex functions to keep track of whether you have obtained a lock 
and therefore need to unlock the session; pass the address of a local ViBoolean
 variable; in the declaration of the local variable, initialize it to <span class="Monospace">VI_FALSE</span>; pass the address of 
the same local variable to any other calls you make to niScope_LockSession 
or niScope_UnlockSession in the same function.</p></td></tr>
</table></body>
</html>    ,#����  �    Status                            `�-   �  �    Instrument Handle                j� $  �  `    Caller Has Lock                    	               	           �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_ConfigureAcquisitionRecord</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_ConfigureAcquisitionRecord</h1>

<h2>C Function Prototype</h2>
<p class="syntax">ViStatus&nbsp;niScope_ConfigureAcquisitionRecord&nbsp;(ViSession&nbsp;vi, ViReal64&nbsp;timeperRecord, ViInt32&nbsp;minNumPoints, ViReal64&nbsp;acquisitionStartTime);</p>
<h2 class="purpose">Purpose</h2>
<p class="Body">This function is included for compliance with the IviScope Class Specification.</p><p class = "Body">Configures the most commonly configured attributes of the instrument acquisition subsystem.</p>
</body>
</html>    "    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<link rel="stylesheet" type="text/css" href="styles.css">
<title>niScope_ConfigureAcquisitionRecord</title>
</head>
<body>
<table class="Borderless"><tr><td class="paramName">timeperRecord</td>
<td class="paramDataType">ViReal64</td>
<td>Specifies the time per record.<p class = "Body">Units: Seconds.</p></td>
</tr></table></body>
</html>    ^    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<link rel="stylesheet" type="text/css" href="styles.css">
<title>niScope_ConfigureAcquisitionRecord</title>
</head>
<body>
<table class="Borderless"><tr><td class="paramName">minNumPoints</td>
<td class="paramDataType">ViInt32</td>
<td>Pass the minimum number of points you require in the record for each channel.  Call <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_ActualRecordLength.html')"><span class="Monospace">niScope_ActualRecordLength</span></a> to obtain the actual record length used.


<p class = "Body">
Valid Values: 
1&nbsp;&#8211;&nbsp;available onboard memory</p></td>
</tr></table></body>
</html>    G    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<link rel="stylesheet" type="text/css" href="styles.css">
<title>niScope_ConfigureAcquisitionRecord</title>
</head>
<body>
<table class="Borderless"><tr><td class="paramName">acquisitionStartTime</td>
<td class="paramDataType">ViReal64</td>
<td>Specifies the position of the first point in the waveform record relative to the trigger event.</td>
</tr>
</table></body>
</html>   s� 4  �  �    Time per Record                  u� 4 � �  �    Min Num Points                    `�   �  �    Instrument Handle                y, 4} �  �    Acquisition Start Time            ,y���  �    Status                             0.00005    1000        0.0    	          �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_ConfigureChannel</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_ConfigureChannel</h1>

<h2>C Function Prototype</h2>
<p class="syntax">ViStatus&nbsp;niScope_ConfigureChannel&nbsp;(ViSession&nbsp;vi, ViConstString&nbsp;channel, ViReal64&nbsp;range, ViReal64&nbsp;offset, ViInt32&nbsp;coupling, ViReal64&nbsp;probeAttenuation, ViBoolean&nbsp;enabled);</p>
<h2 class="purpose">Purpose</h2>
<p class="Body">This function is included for compliance with the IviScope Class Specification.</p><p class = "Body">Configures the most commonly configured attributes of the instrument's channel subsystem.</p>
</body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<link rel="stylesheet" type="text/css" href="styles.css">
<title>niScope_ConfigureChannel</title>
</head>
<body>
<table class="Borderless"><tr><td class="paramName">channel</td>
<td class="paramDataType">ViConstString</td>
<td>The channel  to   configure. For more information, refer to <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviChannelStringSyntaxforC.html')">Channel String Syntax</a>.
<p class = "Body">Default Value: &#34;0&#34;</p></td>
</tr></table></body>
</html>        <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<link rel="stylesheet" type="text/css" href="styles.css">
<title>niScope_ConfigureChannel</title>
</head>
<body>
<table class="Borderless"><tr><td class="paramName">range</td>
<td class="paramDataType">ViReal64</td>
<td>Specifies the voltage range for the specified channel(s).</td>
</tr></table></body>
</html>    ,    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<link rel="stylesheet" type="text/css" href="styles.css">
<title>niScope_ConfigureChannel</title>
</head>
<body>
<table class="Borderless"><tr><td class="paramName">offset</td>
<td class="paramDataType">ViReal64</td>
<td>Selects the DC offset added to the specified channel(s).<p class = "Body">Default Value: 0</p></td>
</tr></table></body>
</html>        <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<link rel="stylesheet" type="text/css" href="styles.css">
<title>niScope_ConfigureChannel</title>
</head>
<body>
<table class="Borderless"><tr><td class="paramName">probeAttenuation</td>
<td class="paramDataType">ViReal64</td>
<td>Specifies the probe attenuation for the specified channel(s).<p class = "Body">Default Value: 1.00</p><p class = "Body">Valid Range:   1.00 &#8211; 100</p><p class = "Body">

If you have a probe with <em>y</em>X attenuation, set this parameter to <em>y</em>. For 
example, enter a value of 10 for a 10X probe.</p></td>
</tr></table></body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<link rel="stylesheet" type="text/css" href="styles.css">
<title>niScope_ConfigureChannel</title>
</head>
<body>
<table class="Borderless"><tr><td class="paramName">enabled</td>
<td class="paramDataType">ViBoolean</td>
<td>Specify whether to enable the digitizer to acquire data for the channel when you
 call <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_InitiateAcquisition.html')"><span class="Monospace">niScope_InitiateAcquisition</span></a> 
 or <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_ReadWaveform.html')"><span class="Monospace">niScope_ReadWaveform</span></a>.
 <p class = "Body">Default Value:<br><span class="Monospace">NISCOPE_VAL_TRUE (1)</span></p>
 <h3>Defined Values</h3>
 <p class ="Body">N<span class="Monospace">ISCOPE_VAL_TRUE  (1)</span>&#8212;Acquire data on this channel<br><span class="Monospace">NISCOPE_VAL_FALSE (0)</span>&#8212;Do not acquire 
 data on this channel</p></td>
</tr>
</table></body>
</html>    I    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<link rel="stylesheet" type="text/css" href="styles.css">
<title>niScope_ConfigureChannel</title>
</head>
<body>
<table class="Borderless"><tr><td class="paramName">coupling</td>
<td class="paramDataType">ViInt32</td>
<td>Specify how you want the digitizer to couple the input signal for the channel.  <h3>Defined Values </h3>


<p class="BODY">
<span class="Monospace">NISCOPE_VAL_AC (0)</span></p> 
<p class="BODY">
<span class="Monospace">NISCOPE_VAL_DC (1)</span></p> 
<p class="BODY">
<span class="Monospace">NISCOPE_VAL_GND (2)</span></p>


<p class="BODY">
 A certain amount of delay is required for the coupling capacitor to charge after changing vertical coupling from DC to AC.  
 This delay is typically:</p> 
  <p class="BODY">Low Impedance Source&#8212;150&nbsp;ms<br>   10X Probe&#8212;1.5 s<br>   100X Probe&#8212;15&nbsp;s</p></td></tr>
</table></body>
</html>    ,%����  �    Status                           �� "  � `    Channel                          �U # � � K    Range                            �c "d � K    Offset                           �� b � � K    Probe Attenuation                 `�.   �  �    Instrument Handle                �� bw �  �    Enabled                          �� c I �  �    Coupling                           	           "0" ?�      �      ��      @$                ?�      �      ��                        ?�      �      ��      ?�                     . True NISCOPE_VAL_TRUE False NISCOPE_VAL_FALSE              8AC NISCOPE_VAL_AC DC NISCOPE_VAL_DC GND NISCOPE_VAL_GND   {    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_ConfigureEdgeTriggerSource</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_ConfigureEdgeTriggerSource</h1>

<h2>C Function Prototype</h2>
<p class="syntax">ViStatus&nbsp;niScope_ConfigureEdgeTriggerSource&nbsp;(ViSession&nbsp;vi, ViConstString&nbsp;source, ViReal64&nbsp;level, ViInt32&nbsp;slope);</p>
<h2 class="purpose">Purpose</h2>

<table class="Borderless-Wide">
<tr>
<td class="Icon"><img src="note.gif"></td>
<td>
<strong>Note</strong>&nbsp;&nbsp;

This function is included for compliance with the IviScope Class Specification.</td></tr></table>
<p class = "Body">Sets the edge triggering attributes. An edge trigger occurs when the trigger signal specified with the source parameter passes through the voltage threshold specified with the 
level parameter and has the slope specified with the slope parameter.</p><p class = "Body">This function affects instrument behavior only if the triggerType is <span class="Monospace">NISCOPE_VAL_EDGE</span>.  Set the trigger type and trigger coupling before calling this function.</p><p class = "Body">If the trigger source is one of the analog input channels, you must configure the vertical range, vertical offset, vertical coupling, probe attenuation, and the maximum input frequency before calling this function.</p>
</body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<link rel="stylesheet" type="text/css" href="styles.css">
<title>niScope_ConfigureEdgeTriggerSource</title>
</head>
<body>
<table class="Borderless"><tr><td class="paramName">level</td>
<td class="paramDataType">ViReal64</td>
<td>The voltage threshold for the trigger. Refer to <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviNISCOPE_ATTR_TRIGGER_LEVEL.html')"><span class="Monospace">NISCOPE_ATTR_TRIGGER_LEVEL</span></A> for more information.</td></tr>
</table></body>
</html>    `�-   �  �    Instrument Handle                 ,#����  �    Status                            4 � �  �    Level                             � 4� �  �    Slope                            � 4  � �    Source                                 	           0.0               <Positive NISCOPE_VAL_POSITIVE Negative NISCOPE_VAL_NEGATIVE               ?Channel 0 "0" Channel 1 "1" External TRIG NISCOPE_VAL_EXTERNAL   $    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_ConfigureTrigger</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_ConfigureTrigger</h1>

<h2>C Function Prototype</h2>
<p class="syntax">ViStatus&nbsp;niScope_ConfigureTrigger&nbsp;(ViSession&nbsp;vi, ViInt32&nbsp;triggerType, ViReal64&nbsp;holdoff);</p>
<h2 class="purpose">Purpose</h2><table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&nbsp;&nbsp;
This function is included for compliance with the IviScope Class Specification.</td>
</tr>
</table>



<p class = "Body">Configures the common attributes of the trigger subsystem.</p><p class = "Body">When you use <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_ReadWaveform.html')"><span class="Monospace">niScope_ReadWaveform</span></a>, the instrument waits for a trigger. You specify the type of trigger for which the instrument waits with the Trigger Type parameter.</p><p class = "Body">If the instrument requires multiple waveform acquisitions to build a complete waveform, it waits for the length of time you specify with the <strong>holdoff</strong> parameter to elapse since the previous trigger. The instrument then waits for the next trigger.</p>



<h2>Related topics:</h2><ul>  <li><a href="javascript:LaunchHelp('Digitizers.chm::/Configuring_Triggers.html')">Configuring Triggers</a></li>    <li><a href="javascript:LaunchHelp('Digitizers.chm::/Trigger_Coercions.html')">Coercions of Trigger Parameters</a></li>
  <li><a href="javascript:LaunchHelp('Digitizers.chm::/Triggers.html')">Triggering</a></li>    <li><a href="javascript:LaunchHelp('Digitizers.chm::/Programming_Flow.html')">NI-SCOPE  Programming Flow</a></li>           </ul>

</body>
</html>        <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<link rel="stylesheet" type="text/css" href="styles.css">
<title>niScope_ConfigureTrigger</title>
</head>
<body>
<table class="Borderless"><tr><td class="paramName">triggerType </td>
<td class="paramDataType">ViInt32</td>
<td>Specifies the type of trigger for which the digitizer will wait.</td></tr>
</table></body>
</html>    `�-   �  �    Instrument Handle                 ,#����  �    Status                            �u 4� �  �    Holdoff                          �� 2  � �    Trigger Type                           	           0.0               XImmediate NISCOPE_VAL_IMMEDIATE_TRIGGER Edge NISCOPE_VAL_EDGE TV NISCOPE_VAL_TV_TRIGGER   �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_ConfigureTriggerCoupling</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_ConfigureTriggerCoupling</h1>

<h2>C Function Prototype</h2>
<p class="syntax">ViStatus&nbsp;niScope_ConfigureTriggerCoupling&nbsp;(ViSession&nbsp;vi, ViInt32&nbsp;coupling);</p>
<h2 class="purpose">Purpose</h2>
<table class="Borderless-Wide">
<tr>
<td class="Icon"><img src="note.gif"></td>
<td>
<strong>Note</strong>&nbsp;&nbsp;This function is included for compliance with the IviScope Class Specification.</td></tr></table><p class = "Body">Sets the trigger coupling attribute.</p>
</body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<link rel="stylesheet" type="text/css" href="styles.css">
<title>niScope_ConfigureTriggerCoupling</title>
</head>
<body>
<table class="Borderless"><tr><td class="paramName">coupling</td>
<td class="paramDataType">ViInt32</td>
<td>Specify how you want the instrument to couple the trigger signal. 
<h3>Defined Values</h3>
<p class="Body"><span class="Monospace">

  NISCOPE_VAL_AC (0)</span> </p>
  <p class="Body">
 <span class="Monospace"> NISCOPE_VAL_DC (1)</span> </p>
   <p class="Body"><span class="Monospace">NISCOPE_VAL_HF_REJECT (2)</span> </p>
   <p class="Body"><span class="Monospace">NISCOPE_VAL_LF_REJECT (3) </span> </p>
   <p class="Body"><span class="Monospace">NISCOPE_VAL_AC_PLUS_HF_REJECT (1001)</span> </p></td>
</tr></table></body>
</html>    `�-   �  �    Instrument Handle                 ,#����  �    Status                           �� 8( �  �    Coupling                               	                     �AC NISCOPE_VAL_AC DC NISCOPE_VAL_DC HF Reject NISCOPE_VAL_HF_REJECT LF Reject NISCOPE_VAL_LF_REJECT AC and HF Reject NISCOPE_VAL_AC_PLUS_HF_REJECT   �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_ConfigureTVTriggerLineNumber</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_ConfigureTVTriggerLineNumber</h1>

<h2>C Function Prototype</h2>
<p class="syntax">ViStatus&nbsp;niScope_ConfigureTVTriggerLineNumber&nbsp;(ViSession&nbsp;vi, ViInt32&nbsp;lineNumber);</p>
<h2 class="purpose">Purpose</h2>
<p class="Body">This function is included for compliance with the IviScope Class Specification.</p><p class = "Body">Configures the TV line upon which the instrument triggers. The line number is absolute and not relative to the field of the TV signal.</p><p class = "Body">This function affects instrument behavior only if the trigger type is set to <span class="Monospace">NISCOPE_VAL_TV_TRIGGER</span>  and the TV trigger event is set to  <span class="Monospace">NISCOPE_VAL_TV_EVENT_LINE_NUMBER</span>. Call  <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_ConfigureTVTriggerSource.html')"><span class="Monospace">niScope_ConfigureTVTriggerSource</span></a>  to set the TV trigger event before calling this function.</p>
</body>
</html>    r    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<link rel="stylesheet" type="text/css" href="styles.css">
<title>niScope_ConfigureTVTriggerLineNumber</title>
</head>
<body>
<table class="Borderless"><tr><td class="paramName">lineNumber</td>
<td class="paramDataType">ViInt32</td>
<td>Specify the line number of the signal you want to trigger off of. The valid ranges of the attribute depend on the signal format configured. 
<p class = "Body">Default Value: 1</p>

<table class="Bordered"><tr><th class ="Bordered">Signal Format</th><th  class ="Bordered">Line Numbers</th></tr>
<tr><td class="Bordered">M-NTSC, 480i, 480p</td><td class="Bordered"> 1 to 525</td></tr>
<tr> <td class="Bordered">BG/PAL, SECAM, 576i, 576p </td><td class="Bordered">1 to 625</td> </tr>
<tr><td class="Bordered">720p</td><td class="Bordered"> 1 to 750</td></tr>
<tr><td class="Bordered">1080i,1080p </td> <td class="Bordered">1 to 1,125</td> </tr>
</table>

</td></tr></table></body>
</html>    `�   �  �    Instrument Handle                 ,����  �    Status                           �� . � � K    Line Number                            	             '                 .    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_ConfigureTVTriggerSource</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_ConfigureTVTriggerSource</h1>

<h2>C Function Prototype</h2>
<p class="syntax">ViStatus&nbsp;niScope_ConfigureTVTriggerSource&nbsp;(ViSession&nbsp;vi, ViConstString&nbsp;source, ViInt32&nbsp;signalFormat, ViInt32&nbsp;event, ViInt32&nbsp;polarity);</p>
<h2 class="purpose">Purpose</h2>



<table class="Borderless-Wide">
<tr>
<td class="Icon"><img src="note.gif"></td>
<td>
<strong>Note</strong>&nbsp;&nbsp;This function is included for compliance with the IviScope Class Specification.</td></tr></table>
<p class = "Body">Configures the instrument for TV triggering. It configures the TV signal format, the event,  and the signal polarity.</p><p class = "Body">This function affects instrument behavior 
only if the trigger type is <span class="Monospace">NISCOPE_VAL_TV_TRIGGER</span>. Set the trigger type 
and trigger coupling before calling this function.</p>
</body>
</html>    !    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<link rel="stylesheet" type="text/css" href="styles.css">
<title>niScope_ConfigureTVTriggerSource</title>
</head>
<body>
<table class="Borderless"><tr><td class="paramName">source</td>
<td class="paramDataType">ViConstString</td>
<td>Pass the source you want the digitizer to monitor for a trigger.  <h3>Defined Values </h3> <p class = "Body"><span class="Monospace">&#34;0&#34;</span>&#8212;Channel 0<br><span class="Monospace">&#34;1&#34;</span>&#8212;Channel 1<br>
<span class="Monospace">NISCOPE_VAL_EXTERNAL</span>&#8212;Analog External Trigger Input</p></td>
</tr></table></body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<link rel="stylesheet" type="text/css" href="styles.css">
<title>niScope_ConfigureTVTriggerSource</title>
</head>
<body>
<table class="Borderless"><tr><td class="paramName">signalFormat</td>
<td class="paramDataType">ViInt32</td>
<td>Specifies the Video/TV signal format. <h3>  Defined Values</h3><p class = "Body">
<span class="Monospace">NISCOPE_VAL_NTSC  (1)</span><br> <span class="Monospace">NISCOPE_VAL_PAL 
(2)</span> <br> <span class="Monospace">NISCOPE_VAL_SECAM (3)</span></p></td></tr>
</table></body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<link rel="stylesheet" type="text/css" href="styles.css">
<title>niScope_ConfigureTVTriggerSource</title>
</head>
<body>
<table class="Borderless"><tr><td class="paramName">polarity</td>
<td class="paramDataType">ViInt32</td>
<td>Specifies the polarity of the video signal to trigger off of.<br>  <h3>  Defined Values</h3><p class = "Body">
<span class="Monospace">NISCOPE_VAL_TV_POSITIVE  (1)</span><br><span class="Monospace">NISCOPE_VAL_TV_NEGATIVE  (2)</span></p></td>
</tr></table></body>
</html>    8    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<link rel="stylesheet" type="text/css" href="styles.css">
<title>niScope_ConfigureTVTriggerSource</title>
</head>
<body>
<table class="Borderless"><tr><td class="paramName">event</td>
<td class="paramDataType">ViInt32</td>
<td>Video/TV event to trigger off of.<h3>  Defined Values</h3><p class = "Body">
NISCOPE_VAL_TV_EVENT_FIELD1 (1)&#8212;trigger on field 1 of the signal<br>  
NISCOPE_VAL_TV_EVENT_FIELD2 (2)&#8212;trigger on field 2 of the signal<br>  
NISCOPE_VAL_TV_EVENT_ANY_FIELD (3)&#8212;trigger on the first field acquired<br>  <span class="Monospace">NISCOPE_VAL_TV_EVENT_ANY_LINE (4)</span>&#8212;trigger on the first line acquired<br>  <span class="Monospace">NISCOPE_VAL_TV_EVENT_LINE_NUMBER (5)</span>&#8212;trigger on a specific line of a video signal.  Valid values vary depending on the signal format configured.</p></td>
</tr></table></body>
</html>    `�#   �  �    Instrument Handle                 ,���  �    Status                           �'   7 � �    Source                           �P  D � �    Signal Format                    �1 WD � �    Polarity                         �� W 7 � �    Event                                  	                      ?Channel 0 "0" Channel 1 "1" External TRIG NISCOPE_VAL_EXTERNAL               BNTSC NISCOPE_VAL_NTSC PAL NISCOPE_VAL_PAL SECAM NISCOPE_VAL_SECAM               BPositive NISCOPE_VAL_TV_POSITIVE Negative NISCOPE_VAL_TV_NEGATIVE              �Field1 NISCOPE_VAL_TV_EVENT_FIELD1 Field2 NISCOPE_VAL_TV_EVENT_FIELD2 Any Field NISCOPE_VAL_TV_EVENT_ANY_FIELD Any Line NISCOPE_VAL_TV_EVENT_ANY_LINE Line Number NISCOPE_VAL_TV_EVENT_LINE_NUMBER   1    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_SendSWTrigger</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_SendSWTrigger</h1>

<h2>C Function Prototype</h2>
<p class="syntax">ViStatus&nbsp;niScope_SendSWTrigger&nbsp;(ViSession&nbsp;vi);</p>
<h2 class="purpose">Purpose</h2>

<table class="Borderless-Wide">
<tr>
<td class="Icon"><img src="note.gif"></td>
<td>
<strong>Note</strong>&nbsp;&nbsp;

This function is included for compliance with the IviScope Class Specification. Consider using <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_SendSoftwareTriggerEdge.html')">
<span class="Monospace">niScope_SendSoftwareTriggerEdge</span></a> instead.</td></tr></table>


<p class = "Body">Sends a 
command to trigger the digitizer.  Call this function after you call <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_ConfigureTriggerSoftware.html')"><span class="Monospace">niScope_ConfigureTriggerSoftware</span></a>.</p>
</body>
</html>    `�) 
  �  �    Instrument Handle                 ,����  �    Status                                 	          �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_ClearInterchangeWarnings</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_ClearInterchangeWarnings</h1>

<h2>C Function Prototype</h2>
<p class="syntax">ViStatus&nbsp;niScope_ClearInterchangeWarnings&nbsp;(ViSession&nbsp;vi);</p>
<h2 class="purpose">Purpose</h2>


<table class="Borderless-Wide">
<tr>
<td class="Icon"><img src="note.gif"></td>
<td>
<strong>Note</strong>&nbsp;&nbsp;

This function is included for compliance with the IviScope Class Specification.</td></tr></table>





<p class = "Body">Clears the list of current interchange warnings.</p>
</body>
</html>    ,#����  �    Status                            `�-   �  �    Instrument Handle                  	              �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_GetNextInterchangeWarning</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_GetNextInterchangeWarning</h1>

<h2>C Function Prototype</h2>
<p class="syntax">ViStatus&nbsp;niScope_GetNextInterchangeWarning&nbsp;(ViSession&nbsp;vi, ViInt32&nbsp;bufferSize, ViChar[]&nbsp;interchangeWarning);</p>
<h2 class="purpose">Purpose</h2>

<table class="Borderless-Wide">
<tr>
<td class="Icon"><img src="note.gif"></td>
<td>
<strong>Note</strong>&nbsp;&nbsp;
This function is included for compliance with the IviScope Class Specification.</td></tr></table><p class = "Body">Returns the interchangeability warnings associated with the IVI session. It retrieves and clears the oldest instance in which the class driver recorded an interchangeability warning. Interchangeability warnings indicate that using your 
application with a different instrument might cause different behavior. </p>

<p class="Body">
Use this function to retrieve interchangeability warnings. The driver performs interchangeability checking 
when <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviNISCOPE_ATTR_INTERCHANGE_CHECK.html')"><span class="Monospace">NISCOPE_ATTR_INTERCHANGE_CHECK</span></a> is set to 

<span class="Monospace">VI_TRUE</span>. The function returns an empty string in the <strong>interchangeWarning</strong> parameter if no 
interchangeability warnings remain for the session.</p><p class="Body">In general, the instrument driver generates interchangeability warnings when an attribute that affects the behavior of the instrument is in a state that you did not specify.</p>
</body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<link rel="stylesheet" type="text/css" href="styles.css">
<title>niScope_GetNextInterchangeWarning</title>
</head>
<body>
<table class="Borderless"><tr><td class="paramName">interchangeWarning</td>
<td class="paramDataType">ViChar[]</td>
<td>Returns the next interchange warning for the IVI session. If there are no interchange warnings, the 
function returns an empty string. The buffer must contain at least as many elements as the value you 
specify with the <strong>bufferSize</strong> parameter.</td>
</tr>
</table></body>
</html>    ?    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<link rel="stylesheet" type="text/css" href="styles.css">
<title>niScope_GetNextInterchangeWarning</title>
</head>
<body>
<table class="Borderless"><tr><td class="paramName">bufferSize</td>
<td class="paramDataType">ViInt32</td>
<td>Passes the number of bytes in the ViChar array you specify for the <strong>Description</strong> parameter. 
<p class="Body">If the error description, including the terminating NULL byte, contains more bytes than you indicate in this parameter, the function copies <strong>bufferSize</strong>;&nbsp;&#8211;&nbsp;1 bytes into the buffer, places an ASCII NULL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value. For example, if the value is &#34;123456&#34; and the Buffer Size is 4, the function places &#34;123&#34; into the buffer and returns 7.</p> <p class="Body">If you pass a negative number, the function copies the value to the buffer regardless of 
the number of bytes in the value.</p><p class="Body">If you pass 0, you can pass 
<span class="Monospace">VI_NULL</span> for the Description buffer parameter.</p></td>
</tr>
</table></body>
</html>    ,#����  �    Status                            `�-   �  �    Instrument Handle                �� <� �  �    Interchange Warning              �� <  �  `    Buffer Size                        	           VI_NULL    	            0   +    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_ResetInterchangeCheck</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_ResetInterchangeCheck</h1>

<h2>C Function Prototype</h2>
<p class="syntax">ViStatus&nbsp;niScope_ResetInterchangeCheck&nbsp;(ViSession&nbsp;vi);</p>
<h2 class="purpose">Purpose</h2>

<table class="Borderless-Wide">
<tr>
<td class="Icon"><img src="note.gif"></td>
<td>
<strong>Note</strong>&nbsp;&nbsp;

This function is included for compliance with the IviScope Class Specification.</td></tr></table>

<p class = "Body">When developing a complex test system that consists of multiple test modules, it is generally a good idea to design the test modules so that they can run in any order. To do so requires ensuring that each test module completely configures the state of each instrument it uses.</p>
 <p class = "Body">If a particular test module does not completely configure the state of an instrument, the state of the instrument depends on the configuration from a previously executed test module. <br>If you execute the test modules in a different order, the behavior of the instrument and therefore the entire test module is likely to change.</p> <p class = "Body">This change in behavior is generally instrument-specific and represents an interchangeability problem. You can use this function to test for such cases. After you call this function, the interchangeability checking algorithms in the specific driver ignore all previous configuration operations. <br>By calling this function at the beginning of a test module, you can determine whether the test module has dependencies on the operation of previously executed test modules. </p><p class = "Body">This function does not clear the interchangeability warnings from the list of previously recorded interchangeability warnings. If you want to guarantee that <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_GetNextInterchangeWarning.html')"><span class="Monospace">niScope_GetNextInterchangeWarning</span></a> only returns those interchangeability warnings that are generated after calling this function, you must clear the list of interchangeability warnings.</p> <p class = "Body">You can clear the interchangeability warnings list by repeatedly calling <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_GetNextInterchangeWarning.html')"><span class="Monospace">niScope_GetNextInterchangeWarning</span></a> until no more interchangeability warnings are returned. If you are not interested in the content of those warnings, you can call <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_ClearInterchangeWarnings.html')"><span class="Monospace">niScope_ClearInterchangeWarnings</span></a>.</p>
</body>
</html>    ,#����  �    Status                            `�-   �  �    Instrument Handle                  	              
�    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_FetchWaveform</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_FetchWaveform</h1>

<h2>C Function Prototype</h2>
<p class="syntax">ViStatus&nbsp;niScope_FetchWaveform&nbsp;(ViSession&nbsp;vi, ViConstString&nbsp;channel, ViInt32&nbsp;waveformSize, ViReal64[]&nbsp;waveform, ViInt32*&nbsp;actualPoints, ViReal64*&nbsp;initialX, ViReal64*&nbsp;xIncrement);</p>
<h2 class="purpose">Purpose</h2>


<table class="Borderless-Wide">
<tr>
<td class="Icon"><img src="note.gif"></td>
<td>
<strong>Note</strong>&nbsp;&nbsp;This function is included for compliance with the IviScope Class Specification.</td></tr></table>




<p class = "Body">Returns the waveform from a previously initiated acquisition that the digitizer  acquires for the channel you specify. </p> <p class = "Body"><a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_InitiateAcquisition.html')"><span class="Monospace">niScope_InitiateAcquisition</span></a> starts an acquisition on the channels that you enable with <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_ConfigureVertical.html')"><span class="Monospace">niScope_ConfigureVertical</span></a>.  The digitizer acquires waveforms for the enabled channels concurrently.  You use <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_AcquisitionStatus.html')"><span class="Monospace">niScope_AcquisitionStatus</span></a> to determine when the acquisition is complete.  You must call this function separately for each enabled channel to obtain the waveforms.</p> <p class = "Body">You can call <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_ReadWaveform.html')"><span class="Monospace">niScope_ReadWaveform</span></a> instead of <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_InitiateAcquisition.html')"><span class="Monospace">niScope_InitiateAcquisition</span></a>.  <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_ReadWaveform.html')"><span class="Monospace">niScope_ReadWaveform</span></a> starts an acquisition on all enabled channels, waits for the acquisition to complete, and returns the waveform for the channel you specify.  Call this function to obtain the waveforms for each of the remaining channels.</p>
</body>
</html>        <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head><script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<link rel="stylesheet" type="text/css" href="styles.css">
<title>niScope_FetchWaveform</title>
</head>
<body>
<table class="Borderless"><tr><td class="paramName">waveformSize</td>
<td class="paramDataType">ViInt32</td>
<td>The number of elements to insert into the <strong>waveform</strong> array.</td>
</tr>
</table></body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head><script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<link rel="stylesheet" type="text/css" href="styles.css">
<title>niScope_FetchWaveform</title>
</head>
<body>
<table class="Borderless"><tr><td class="paramName">waveform</td>
<td class="paramDataType">ViReal64[]</td>
<td>Returns the waveform that the digitizer acquires. <p class = "Body">Units: volts</p><p class = "Body">Notes:<br>If the digitizer cannot sample a point in the waveform, this function returns an error.</p></td>
</tr>
</table></body>
</html>    3    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head><script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<link rel="stylesheet" type="text/css" href="styles.css">
<title>niScope_FetchWaveform</title>
</head>
<body>
<table class="Borderless"><tr><td class="paramName">actualPoints</td>
<td class="paramDataType">ViInt32*</td>
<td>Indicates the actual number of points the function placed in the <strong>waveform</strong> array.</td>
</tr>
</table></body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head><script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<link rel="stylesheet" type="text/css" href="styles.css">
<title>niScope_FetchWaveform</title>
</head>
<body>
<table class="Borderless"><tr><td class="paramName">initialX</td>
<td class="paramDataType">ViReal64*</td>
<td>Indicates the time of the first point in the <strong>waveform</strong> array relative to the Reference Position.  <p class = "Body">Units: seconds</p>  <p class = "Body">For example, if the digitizer acquires the
 first point in the <strong>waveform</strong> array 1 second before the trigger, this parameter returns the value &#8211;1.0.  If the acquisition of the first point occurs at the same time as the trigger, this parameter returns the value 0.0.</p></td>
</tr>
</table></body>
</html>    H    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head><script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<link rel="stylesheet" type="text/css" href="styles.css">
<title>niScope_FetchWaveform</title>
</head>
<body>
<table class="Borderless"><tr><td class="paramName">xIncrement</td>
<td class="paramDataType">ViReal64*</td>
<td>Indicates the length of time between points in the <strong>waveform</strong> array.  <p class = "Body">Units: seconds</p></td>
</tr></table></body>
</html>    `�-   �  �    Instrument Handle                 ,#����  �    Status                           �� (  �  �    Channel                          y ( � �  �    Waveform Size                    
� �� �  �    Waveform                         ? n  �  �    Actual Points                    z n � �  �    Initial X                         n �  �    X Increment                            	           "0"    1000    	            	            	           	          �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_IsInvalidWfmElement</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_IsInvalidWfmElement</h1>

<h2>C Function Prototype</h2>
<p class="syntax">ViStatus&nbsp;niScope_IsInvalidWfmElement&nbsp;(ViSession&nbsp;vi, ViReal64&nbsp;elementValue, ViBoolean*&nbsp;isInvalid);</p>
<h2 class="purpose">Purpose</h2>

<table class="Borderless-Wide">
<tr>
<td class="Icon"><img src="note.gif"></td>
<td>
<strong>Note</strong>&nbsp;&nbsp;

This function is included for compliance with the IviScope Class Specification.</td></tr></table><p class = "Body">Determines whether a value you pass from the waveform array is invalid. After the read and fetch waveform functions execute, each element in the waveform array contains either a voltage or a value indicating that the instrument could not sample a voltage.</p>
</body>
</html>    9    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head><script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<link rel="stylesheet" type="text/css" href="styles.css">
<title>niScope_IsInvalidWfmElement</title>
</head>
<body>
<table class="Borderless"><tr><td class="paramName">elementValue</td>
<td class="paramDataType">ViReal64</td>
<td>Pass one of the values from the waveform array returned by the read and fetch waveform functions.</td>
</tr>
</table></body>
</html>    `    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head><script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<link rel="stylesheet" type="text/css" href="styles.css">
<title>niScope_IsInvalidWfmElement</title>
</head>
<body>
<table class="Borderless"><tr><td class="paramName">isInvalid</td>
<td class="paramDataType">ViBoolean*</td>
<td>Returns whether the element value is a valid voltage or a value indicating that the digitizer could not sample a voltage.<p class = "Body">Return values:</p><p class = "Body">
<span class="Monospace">VI_TRUE</span>&#8212;The element value indicates that the instrument could
 not sample the voltage.<br>   <span class="Monospace">VI_FALSE</span>&#8212;The element value is a valid voltage.</p></td>
</tr></table></body>
</html>    `�   �  �    Instrument Handle                 ,����  �    Status                            - [ �  �    Element Value                    L -1 �  �    Is Invalid                             	           0.0    	           �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_ReadWaveform</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_ReadWaveform</h1>

<h2>C Function Prototype</h2>
<p class="syntax">ViStatus&nbsp;niScope_ReadWaveform&nbsp;(ViSession&nbsp;vi, ViConstString&nbsp;channel, ViInt32&nbsp;waveformSize, ViInt32&nbsp;maxtime, ViReal64[]&nbsp;waveform, ViInt32*&nbsp;actualPoints, ViReal64*&nbsp;initialX, ViReal64*&nbsp;xIncrement);</p>
<h2 class="purpose">Purpose</h2>

<table class="Borderless-Wide">
<tr>
<td class="Icon"><img src="note.gif"></td>
<td>
<strong>Note</strong>&nbsp;&nbsp;

This function is included for compliance with the IviScope Class Specification.</td></tr></table><p class = "Body">Initiates an acquisition on the channels that you enable with  <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_ConfigureVertical.html')"><span class="Monospace">niScope_ConfigureVertical</span></a>. This  function then waits for the acquisition to complete and returns the waveform for the channel you specify. Call  <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_FetchWaveform.html')"><span class="Monospace">niScope_FetchWaveform</span></a> to obtain the waveforms for each of the remaining enabled channels without initiating another acquisition.</p> <p class = "Body">Use <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_ActualRecordLength.html')"><span class="Monospace">niScope_ActualRecordLength</span></a> to determine the required size for the <strong>waveform</strong> array.</p>
</body>
</html>        <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head><script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<link rel="stylesheet" type="text/css" href="styles.css">
<title>niScope_ReadWaveform</title>
</head>
<body>
<table class="Borderless"><tr><td class="paramName">waveformSize</td>
<td class="paramDataType">ViInt32</td>
<td>The number of elements to insert into the <strong>waveform</strong> array.</td>
</tr>
</table></body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head><script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<link rel="stylesheet" type="text/css" href="styles.css">
<title>niScope_ReadWaveform</title>
</head>
<body>
<table class="Borderless"><tr><td class="paramName">maxtime</td>
<td class="paramDataType">ViInt32</td>
<td>Pass the maximum length of time in which to allow the read waveform operation to complete.   
 <p class = "Body">If the operation does not complete within this time interval, the function returns the
  <span class="Monospace-Bold">NISCOPE_ERROR_MAX_TIME_EXCEEDED</span> error code.  When this occurs, you can call <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_Abort.html')"><span class="Monospace">niScope_Abort</span></a> to cancel the read waveform operation and return the digitizer to the idle state.</p><p class = "Body">Units: milliseconds</p>
<p class = "Body">Other Defined Values<br><span class="Monospace">NISCOPE_VAL_MAX_TIME_NONE</span>    <br><span class="Monospace">NISCOPE_VAL_MAX_TIME_INFINITE</span></p></td>
</tr>
</table></body>
</html>        <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head><script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<link rel="stylesheet" type="text/css" href="styles.css">
<title>niScope_ReadWaveform</title>
</head>
<body>
<table class="Borderless"><tr><td class="paramName">waveform</td>
<td class="paramDataType">ViReal64[]</td>
<td>Returns the waveform that the digitizer acquires.<br>Units: volts</td>
</tr>
</table></body>
</html>    2    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head><script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<link rel="stylesheet" type="text/css" href="styles.css">
<title>niScope_ReadWaveform</title>
</head>
<body>
<table class="Borderless"><tr><td class="paramName">actualPoints</td>
<td class="paramDataType">ViInt32*</td>
<td>Indicates the actual number of points the function placed in the <strong>waveform</strong> array.</td>
</tr>
</table></body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head><script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<link rel="stylesheet" type="text/css" href="styles.css">
<title>niScope_ReadWaveform</title>
</head>
<body>
<table class="Borderless"><tr><td class="paramName">initialX</td>
<td class="paramDataType">ViReal64*</td>
<td>Indicates the time of the first point in the <strong>waveform</strong> array relative to the Reference Position.  <p class = "Body">Units: seconds</p>  <p class = "Body">For example, if the digitizer acquires the first point in the <strong>waveform</strong> array 1 second before the trigger, this 
parameter returns the value &#8211;1.0.  If the acquisition of the first point occurs at the same time as
 the trigger, this parameter returns the value 0.0.</p></td>
</tr>
</table></body>
</html>    G    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head><script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<link rel="stylesheet" type="text/css" href="styles.css">
<title>niScope_ReadWaveform</title>
</head>
<body>
<table class="Borderless"><tr><td class="paramName">xIncrement</td>
<td class="paramDataType">ViReal64*</td>
<td>Indicates the length of time between points in the <strong>waveform</strong> array.  <p class = "Body">Units: seconds</p></td>
</tr></table></body>
</html>   �� - ! �  �    Channel                          *5 - � �  �    Waveform Size                    ,W -~ �  �    MaxTime                           `�-   �  �    Instrument Handle                 ,#����  �    Status                           1! �� �  �    Waveform                         39 l ! �  �    Actual Points                    5s l � �  �    Initial  X                       9 l~ �  �    X Increment                        "0"    1000    10000        	           	            	            	           	          	l    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_FetchWaveformMeasurement</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_FetchWaveformMeasurement</h1>

<h2>C Function Prototype</h2>
<p class="syntax">ViStatus&nbsp;niScope_FetchWaveformMeasurement&nbsp;(ViSession&nbsp;vi, ViConstString&nbsp;channel, ViInt32&nbsp;measFunction, ViReal64*&nbsp;measurement);</p>
<h2 class="purpose">Purpose</h2>


<table class="Borderless-Wide">
<tr>
<td class="Icon"><img src="note.gif"></td>
<td>
<strong>Notes</strong>&nbsp;&nbsp;This function is included for compliance with the IviScope Class Specification.

<p class ="Body">

 You can use <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_ReadWaveformMeasurement.html')"><span class="Monospace">niScope_ReadWaveformMeasurement</span></a> 
instead of this function. <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_ReadWaveformMeasurement.html')"><span class="Monospace">niScope_ReadWaveformMeasurement</span></a> starts an acquisition on all 
enabled channels, waits for the acquisition to complete, obtains a waveform measurement on the specified 
channel, and returns the waveform for the specified channel. Call this function separately to obtain any 
other waveform measurements on a specific channel.</p></td></tr></table>




<p class = "Body">Configure the appropriate reference 
levels before calling this function. You can configure the low, mid, and high references by  setting the 
following attributes:</p> <p class = "Body"><a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviNISCOPE_ATTR_MEAS_HIGH_REF.html')"><span class="Monospace">NISCOPE_ATTR_MEAS_HIGH_REF</span></a> <br><a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviNISCOPE_ATTR_MEAS_LOW_REF.html')"><span class="Monospace">NISCOPE_ATTR_MEAS_LOW_REF</span></a> <br><a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviNISCOPE_ATTR_MEAS_MID_REF.html')"><span class="Monospace">NISCOPE_ATTR_MEAS_MID_REF</span></a></p>
</body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head><script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<link rel="stylesheet" type="text/css" href="styles.css">
<title>niScope_FetchWaveformMeasurement</title>
</head>
<body>
<table class="Borderless"><tr><td class="paramName">measurement</td>
<td class="paramDataType">ViReal64*</td>
<td>The measured value.</td>
</tr></table></body>
</html>        <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head><script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<link rel="stylesheet" type="text/css" href="styles.css">
<title>niScope_FetchWaveformMeasurement</title>
</head>
<body>
<table class="Borderless"><tr><td class="paramName">measFunction</td>
<td class="paramDataType">ViInt32</td>
<td>Characteristic of the acquired waveform to be measured.</td>
</tr>
</table></body>
</html>    `�.   �  `    Instrument Handle                 ,����  `    Status                           ��   �  `    Channel                          G !� �  `    Measurement                      I c  �     Meas Function                          	            "0"    	                   @  �None NISCOPE_VAL_NO_MEASUREMENT Frequency NISCOPE_VAL_FREQUENCY Average Frequency NISCOPE_VAL_AVERAGE_FREQUENCY FFT Frequency NISCOPE_VAL_FFT_FREQUENCY Period NISCOPE_VAL_PERIOD Average Period NISCOPE_VAL_AVERAGE_PERIOD Rise Time NISCOPE_VAL_RISE_TIME Fall Time NISCOPE_VAL_FALL_TIME Voltage RMS NISCOPE_VAL_VOLTAGE_RMS Voltage Cycle RMS NISCOPE_VAL_VOLTAGE_CYCLE_RMS AC Estimate NISCOPE_VAL_AC_ESTIMATE FFT Amplitude NISCOPE_VAL_FFT_AMPLITUDE Voltage Average NISCOPE_VAL_VOLTAGE_AVERAGE Voltage Cycle Average NISCOPE_VAL_VOLTAGE_CYCLE_AVERAGE DC Estimate NISCOPE_VAL_DC_ESTIMATE Voltage Max NISCOPE_VAL_VOLTAGE_MAX Voltage Min NISCOPE_VAL_VOLTAGE_MIN Voltage Peak-to-Peak NISCOPE_VAL_VOLTAGE_PEAK_TO_PEAK Voltage High NISCOPE_VAL_VOLTAGE_HIGH Voltage Low NISCOPE_VAL_VOLTAGE_LOW Voltage Amplitude NISCOPE_VAL_AMPLITUDE Voltage Base NISCOPE_VAL_VOLTAGE_BASE Voltage Top NISCOPE_VAL_VOLTAGE_TOP Voltage Base to Top NISCOPE_VAL_VOLTAGE_BASE_TO_TOP Width Negative NISCOPE_VAL_WIDTH_NEG Width Positive NISCOPE_VAL_WIDTH_POS Duty Cycle Negative NISCOPE_VAL_DUTY_CYCLE_NEG Duty Cycle Positive NISCOPE_VAL_DUTY_CYCLE_POS Overshoot NISCOPE_VAL_OVERSHOOT Preshoot NISCOPE_VAL_PRESHOOT Low Reference Voltage NISCOPE_VAL_LOW_REF_VOLTS Mid Reference Voltage NISCOPE_VAL_MID_REF_VOLTS High Reference Voltage NISCOPE_VAL_HIGH_REF_VOLTS Area NISCOPE_VAL_AREA Cycle Area NISCOPE_VAL_CYCLE_AREA Integral NISCOPE_VAL_INTEGRAL Rising Slew Rate NISCOPE_VAL_RISE_SLEW_RATE Falling Slew Rate NISCOPE_VAL_FALL_SLEW_RATE Time Delay NISCOPE_VAL_TIME_DELAY Phase Delay NISCOPE_VAL_PHASE_DELAY Voltage Histogram Mean NISCOPE_VAL_VOLTAGE_HISTOGRAM_MEAN Voltage Histogram Stdev NISCOPE_VAL_VOLTAGE_HISTOGRAM_STDEV Voltage Histogram Median NISCOPE_VAL_VOLTAGE_HISTOGRAM_MEDIAN Voltage Histogram Mode NISCOPE_VAL_VOLTAGE_HISTOGRAM_MODE Voltage Histogram Hits NISCOPE_VAL_VOLTAGE_HISTOGRAM_HITS Voltage Histogram New Hits NISCOPE_VAL_VOLTAGE_HISTOGRAM_NEW_HITS Voltage Histogram Max NISCOPE_VAL_VOLTAGE_HISTOGRAM_MAX Voltage Histogram Min NISCOPE_VAL_VOLTAGE_HISTOGRAM_MIN Voltage Histogram Peak-to-Peak NISCOPE_VAL_VOLTAGE_HISTOGRAM_PEAK_TO_PEAK Voltage Histogram Mean + Stdev NISCOPE_VAL_VOLTAGE_HISTOGRAM_MEAN_PLUS_STDEV Voltage Histogram Mean + 2 Stdev NISCOPE_VAL_VOLTAGE_HISTOGRAM_MEAN_PLUS_2_STDEV Voltage Histogram Mean + 3 Stdev NISCOPE_VAL_VOLTAGE_HISTOGRAM_MEAN_PLUS_3_STDEV Time Histogram Mean NISCOPE_VAL_TIME_HISTOGRAM_MEAN Time Histogram Stdev NISCOPE_VAL_TIME_HISTOGRAM_STDEV Time Histogram Median NISCOPE_VAL_TIME_HISTOGRAM_MEDIAN Time Histogram Mode NISCOPE_VAL_TIME_HISTOGRAM_MODE Time Histogram Hits NISCOPE_VAL_TIME_HISTOGRAM_HITS Time Histogram New Hits NISCOPE_VAL_TIME_HISTOGRAM_NEW_HITS Time Histogram Max NISCOPE_VAL_TIME_HISTOGRAM_MAX Time Histogram Min NISCOPE_VAL_TIME_HISTOGRAM_MIN Time Histogram Peak-to-Peak NISCOPE_VAL_TIME_HISTOGRAM_PEAK_TO_PEAK Time Histogram Mean + Stdev NISCOPE_VAL_TIME_HISTOGRAM_MEAN_PLUS_STDEV Time Histogram Mean + 2 Stdev NISCOPE_VAL_TIME_HISTOGRAM_MEAN_PLUS_2_STDEV Time Histogram Mean + 3 Stdev NISCOPE_VAL_TIME_HISTOGRAM_MEAN_PLUS_3_STDEV   �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_ConfigureRefLevels</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_ConfigureRefLevels</h1>

<h2>C Function Prototype</h2>
<p class="syntax">ViStatus&nbsp;niScope_ConfigureRefLevels&nbsp;(ViSession&nbsp;vi, ViReal64&nbsp;low, ViReal64&nbsp;mid, ViReal64&nbsp;high);</p>
<h2 class="purpose">Purpose</h2>
<p class="Body">This function is included for compliance with the IviScope Class Specification.</p><p class = "Body">Configures the reference levels for all channels of the digitizer. The levels may be set on a per channel basis by setting  <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviNISCOPE_ATTR_MEAS_CHAN_HIGH_REF_LEVEL.html')"><span class="Monospace">NISCOPE_ATTR_MEAS_CHAN_HIGH_REF_LEVEL</span></a>, 
<a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviNISCOPE_ATTR_MEAS_CHAN_LOW_REF_LEVEL.html')"><span class="Monospace">NISCOPE_ATTR_MEAS_CHAN_LOW_REF_LEVEL</span>
</a>, and <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviNISCOPE_ATTR_MEAS_CHAN_MID_REF_LEVEL.html')"><span class="Monospace">NISCOPE_ATTR_MEAS_CHAN_MID_REF_LEVEL</span>.</a> </p>
<p class = "Body">This function configures the reference levels for waveform measurements. 
Call this function before calling <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_FetchMeasurement.html')"><span class="Monospace">niScope_FetchMeasurement</span></a> to take a rise time, fall time, width negative, width positive, duty cycle negative, or duty cycle positive measurement.</p>
</body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head><script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<link rel="stylesheet" type="text/css" href="styles.css">
<title>niScope_ConfigureRefLevels</title>
</head>
<body>
<table class="Borderless"><tr><td class="paramName">low</td>
<td class="paramDataType">ViReal64</td>
<td>Pass the low reference you want the digitizer to use for waveform measurements.<p class = "Body">Units: Either a percentage or voltage based 
on <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviNISCOPE_ATTR_MEAS_REF_LEVEL_UNITS.html')"><span class="Monospace">NISCOPE_ATTR_MEAS_REF_LEVEL_UNITS</span></a>. A percentage is calculated with the
 voltage low and voltage high measurements representing 0% and 100%, respectively.</p><p class = "Body">Default Value:  10.0</p></td>
</tr></table></body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head><script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<link rel="stylesheet" type="text/css" href="styles.css">
<title>niScope_ConfigureRefLevels</title>
</head>
<body>
<table class="Borderless"><tr><td class="paramName">mid</td>
<td class="paramDataType">ViReal64</td>
<td>Pass the mid reference you want the digitizer to use for waveform measurements.<p class = "Body">Units: Either a percentage or 
voltage based on <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviNISCOPE_ATTR_MEAS_REF_LEVEL_UNITS.html')"><span class="Monospace">NISCOPE_ATTR_MEAS_REF_LEVEL_UNITS</span></a>. A percentage is 
calculated with the voltage low and voltage high measurements representing 0% and 100%, respectively.</p><p class = "Body">Default 
Value:  50.0</p></td>
</tr></table></body>
</html>    P    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<link rel="stylesheet" type="text/css" href="styles.css">
<title>niScope_ConfigureRefLevels</title>
</head>
<body>
<table class="Borderless"><tr><td class="paramName">high</td>
<td class="paramDataType">ViReal64</td>
<td>Pass the high reference you want the digitizer to use for waveform measurements.<p class = "Body">Units: Either a percentage or 
voltage based on <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviNISCOPE_ATTR_MEAS_REF_LEVEL_UNITS.html')"><span class="Monospace">NISCOPE_ATTR_MEAS_REF_LEVEL_UNITS</span></a>. A percentage is 
calculated with the voltage low and voltage high measurements representing 0% and 100%, respectively.</p>
<p class = "Body">Default Value:  90.0</p></td>
</tr>
</table></body>
</html>    `�+   �  `    Instrument Handle                _� %  �  `    Low                              c� W  �  `    Mid                              gx �  �  `    High                              ,����  `    Status                             0    10.0    50.0    90.0    	           8    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_ReadWaveformMeasurement</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_ReadWaveformMeasurement</h1>

<h2>C Function Prototype</h2>
<p class="syntax">ViStatus&nbsp;niScope_ReadWaveformMeasurement&nbsp;(ViSession&nbsp;vi, ViConstString&nbsp;channel, ViInt32&nbsp;measFunction, ViInt32&nbsp;maxTime, ViReal64*&nbsp;measurement);</p>
<h2 class="purpose">Purpose</h2>

<table class="Borderless-Wide">
<tr>
<td class="Icon"><img src="note.gif"></td>
<td>
<strong>Note</strong>&nbsp;&nbsp;

This function is included for compliance with the IviScope Class Specification.</td></tr></table>
<p class = "Body">Initiates a new waveform acquisition and returns a specified waveform measurement from a specific channel.</p> <p class = "Body">This function initiates an acquisition on the channels that you enable with the <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_ConfigureVertical.html')"><span class="Monospace">niScope_ConfigureVertical</span></a> function. It then waits for the acquisition to complete, obtains a waveform measurement on the channel you specify, and returns the measurement value. You specify a particular measurement type, such as rise time, frequency, or voltage peak-to-peak. </p><p class = "Body">You can call the <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_FetchWaveformMeasurement.html')"><span class="Monospace">niScope_FetchWaveformMeasurement</span></a> function separately to obtain any other waveform measurement on a specific channel without initiating another acquisition. </p><p class = "Body">You must configure the appropriate reference levels before calling this function. Configure the low, mid, and high references by calling <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_ConfigureRefLevels.html')"><span class="Monospace">niScope_ConfigureRefLevels</span></a> or by setting the following attributes:</p> <p class = "Body"><a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviNISCOPE_ATTR_MEAS_HIGH_REF.html')"><span class="Monospace">NISCOPE_ATTR_MEAS_HIGH_REF</span></a> <br><a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviNISCOPE_ATTR_MEAS_LOW_REF.html')"><span class="Monospace">NISCOPE_ATTR_MEAS_LOW_REF</span></a> <br><a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviNISCOPE_ATTR_MEAS_MID_REF.html')"><span class="Monospace">NISCOPE_ATTR_MEAS_MID_REF</span></a></p>
</body>
</html>        <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head><script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<link rel="stylesheet" type="text/css" href="styles.css">
<title>niScope_ReadWaveformMeasurement</title>
</head>
<body>
<table class="Borderless"><tr><td class="paramName">maxTime</td>
<td class="paramDataType">ViInt32</td>
<td>Pass the maximum length of time in which to allow the read waveform operation to complete.    <p class = "Body">If the operation does not complete within this time interval, the function
 returns the <span class="Monospace-Bold">NISCOPE_ERROR_MAX_TIME_EXCEEDED</span> error code.  When this occurs, you can call <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_Abort.html')">niScope_Abort</a> to cancel the 
 read waveform operation and return the digitizer to the idle state.</p><p class = "Body">Units: milliseconds</p></td>
</tr>
</table></body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head><script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<link rel="stylesheet" type="text/css" href="styles.css">
<title>niScope_ReadWaveformMeasurement</title>
</head>
<body>
<table class="Borderless"><tr><td class="paramName">measurement</td>
<td class="paramDataType">ViReal64*</td>
<td>The measured value.</td>
</tr></table></body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head><script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<link rel="stylesheet" type="text/css" href="styles.css">
<title>niScope_ReadWaveformMeasurement</title>
</head>
<body>
<table class="Borderless"><tr><td class="paramName">measFunction</td>
<td class="paramDataType">ViInt32</td>
<td>The scalar measurement to perform.</td>
</tr>
</table></body>
</html>    `�.   �  `    Instrument Handle                 ,����  `    Status                           ��   �  `    Channel                          wB �  �  `    Max Time                         {L !� �  `    Measurement                      }A `  �     Meas Function                          	            "0"    5000    	                   @  �None NISCOPE_VAL_NO_MEASUREMENT Frequency NISCOPE_VAL_FREQUENCY Average Frequency NISCOPE_VAL_AVERAGE_FREQUENCY FFT Frequency NISCOPE_VAL_FFT_FREQUENCY Period NISCOPE_VAL_PERIOD Average Period NISCOPE_VAL_AVERAGE_PERIOD Rise Time NISCOPE_VAL_RISE_TIME Fall Time NISCOPE_VAL_FALL_TIME Voltage RMS NISCOPE_VAL_VOLTAGE_RMS Voltage Cycle RMS NISCOPE_VAL_VOLTAGE_CYCLE_RMS AC Estimate NISCOPE_VAL_AC_ESTIMATE FFT Amplitude NISCOPE_VAL_FFT_AMPLITUDE Voltage Average NISCOPE_VAL_VOLTAGE_AVERAGE Voltage Cycle Average NISCOPE_VAL_VOLTAGE_CYCLE_AVERAGE DC Estimate NISCOPE_VAL_DC_ESTIMATE Voltage Max NISCOPE_VAL_VOLTAGE_MAX Voltage Min NISCOPE_VAL_VOLTAGE_MIN Voltage Peak-to-Peak NISCOPE_VAL_VOLTAGE_PEAK_TO_PEAK Voltage High NISCOPE_VAL_VOLTAGE_HIGH Voltage Low NISCOPE_VAL_VOLTAGE_LOW Voltage Amplitude NISCOPE_VAL_AMPLITUDE Voltage Base NISCOPE_VAL_VOLTAGE_BASE Voltage Top NISCOPE_VAL_VOLTAGE_TOP Voltage Base to Top NISCOPE_VAL_VOLTAGE_BASE_TO_TOP Width Negative NISCOPE_VAL_WIDTH_NEG Width Positive NISCOPE_VAL_WIDTH_POS Duty Cycle Negative NISCOPE_VAL_DUTY_CYCLE_NEG Duty Cycle Positive NISCOPE_VAL_DUTY_CYCLE_POS Overshoot NISCOPE_VAL_OVERSHOOT Preshoot NISCOPE_VAL_PRESHOOT Low Reference Voltage NISCOPE_VAL_LOW_REF_VOLTS Mid Reference Voltage NISCOPE_VAL_MID_REF_VOLTS High Reference Voltage NISCOPE_VAL_HIGH_REF_VOLTS Area NISCOPE_VAL_AREA Cycle Area NISCOPE_VAL_CYCLE_AREA Integral NISCOPE_VAL_INTEGRAL Rising Slew Rate NISCOPE_VAL_RISE_SLEW_RATE Falling Slew Rate NISCOPE_VAL_FALL_SLEW_RATE Time Delay NISCOPE_VAL_TIME_DELAY Phase Delay NISCOPE_VAL_PHASE_DELAY Voltage Histogram Mean NISCOPE_VAL_VOLTAGE_HISTOGRAM_MEAN Voltage Histogram Stdev NISCOPE_VAL_VOLTAGE_HISTOGRAM_STDEV Voltage Histogram Median NISCOPE_VAL_VOLTAGE_HISTOGRAM_MEDIAN Voltage Histogram Mode NISCOPE_VAL_VOLTAGE_HISTOGRAM_MODE Voltage Histogram Hits NISCOPE_VAL_VOLTAGE_HISTOGRAM_HITS Voltage Histogram New Hits NISCOPE_VAL_VOLTAGE_HISTOGRAM_NEW_HITS Voltage Histogram Max NISCOPE_VAL_VOLTAGE_HISTOGRAM_MAX Voltage Histogram Min NISCOPE_VAL_VOLTAGE_HISTOGRAM_MIN Voltage Histogram Peak-to-Peak NISCOPE_VAL_VOLTAGE_HISTOGRAM_PEAK_TO_PEAK Voltage Histogram Mean + Stdev NISCOPE_VAL_VOLTAGE_HISTOGRAM_MEAN_PLUS_STDEV Voltage Histogram Mean + 2 Stdev NISCOPE_VAL_VOLTAGE_HISTOGRAM_MEAN_PLUS_2_STDEV Voltage Histogram Mean + 3 Stdev NISCOPE_VAL_VOLTAGE_HISTOGRAM_MEAN_PLUS_3_STDEV Time Histogram Mean NISCOPE_VAL_TIME_HISTOGRAM_MEAN Time Histogram Stdev NISCOPE_VAL_TIME_HISTOGRAM_STDEV Time Histogram Median NISCOPE_VAL_TIME_HISTOGRAM_MEDIAN Time Histogram Mode NISCOPE_VAL_TIME_HISTOGRAM_MODE Time Histogram Hits NISCOPE_VAL_TIME_HISTOGRAM_HITS Time Histogram New Hits NISCOPE_VAL_TIME_HISTOGRAM_NEW_HITS Time Histogram Max NISCOPE_VAL_TIME_HISTOGRAM_MAX Time Histogram Min NISCOPE_VAL_TIME_HISTOGRAM_MIN Time Histogram Peak-to-Peak NISCOPE_VAL_TIME_HISTOGRAM_PEAK_TO_PEAK Time Histogram Mean + Stdev NISCOPE_VAL_TIME_HISTOGRAM_MEAN_PLUS_STDEV Time Histogram Mean + 2 Stdev NISCOPE_VAL_TIME_HISTOGRAM_MEAN_PLUS_2_STDEV Time Histogram Mean + 3 Stdev NISCOPE_VAL_TIME_HISTOGRAM_MEAN_PLUS_3_STDEV   A    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_GetNextCoercionRecord</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_GetNextCoercionRecord</h1>

<h2>C Function Prototype</h2>
<p class="syntax">ViStatus&nbsp;niScope_GetNextCoercionRecord&nbsp;(ViSession&nbsp;vi, ViInt32&nbsp;bufferSize, ViChar[]&nbsp;record);</p>
<h2 class="purpose">Purpose</h2>

<table class="Borderless-Wide">
<tr>
<td class="Icon"><img src="note.gif"></td>
<td>
<strong>Note</strong>&nbsp;&nbsp;

This function is included for compliance with the IviScope Class Specification.</td></tr></table><p class = "Body">Returns the coercion information associated with the IVI session. This function retrieves and clears the oldest instance in which the instrument driver coerced a value you specified to another value.</p> <p class = "Body">If you set <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviNISCOPE_ATTR_RECORD_COERCIONS.html')"><span class="Monospace">NISCOPE_ATTR_RECORD_COERCIONS</span></a> to 
<span class="Monospace"><span class="Monospace">VI_TRUE</span></span>, NI-SCOPE keeps a list of all coercions it makes on  ViInt32  or  ViReal64
 values that you pass to instrument driver functions. Use this function to retrieve information from that 
 list.</p>
</body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head><script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<link rel="stylesheet" type="text/css" href="styles.css">
<title>niScope_GetNextCoercionRecord</title>
</head>
<body>
<table class="Borderless"><tr><td class="paramName">record</td>
<td class="paramDataType">ViChar[]</td>
<td>Returns the next coercion record for the IVI session.  If there are no coercions records, the function 
returns an empty string. The buffer must contain at least as many elements as the value you specify with 
the <strong>bufferSize</strong> parameter.</td>
</tr></table></body>
</html>    R    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head><script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<link rel="stylesheet" type="text/css" href="styles.css">
<title>niScope_GetNextCoercionRecord</title>
</head>
<body>
<table class="Borderless"><tr><td class="paramName">bufferSize</td>
<td class="paramDataType">ViInt32</td>
<td>Passes the number of bytes in the ViChar array you specify for the Description parameter.

<p class="Body">If the error description, including the terminating  NULL byte, contains more bytes than you indicate in this parameter, the function copies <strong>bufferSize</strong>&nbsp;&#8211;&nbsp;1 bytes into the buffer, places an
 ASCII  NULL byte at the end of the buffer, and returns the buffer size 
 you must pass to get the entire value. For example, if the value is &#34;123456&#34; and the <strong>bufferSize</strong> is 4, the 
 function places &#34;123&#34; into the buffer and returns 7. </p>
 <p class="Body">
 If you pass a negative number, the function copies the value to the buffer regardless of the number of 
 bytes in the value. </p>
 
 <p class="Body">
 If you pass 0, you can pass <span class="Monospace">VI_NULL</span> for the Description buffer parameter.</p></td>
</tr>
</table></body>
</html>    ,#����  �    Status                            `�-   �  �    Instrument Handle                � <� �  �    Record                           �� <  �  `    Buffer Size                        	           VI_NULL    	            0   P    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_error_query</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_error_query</h1>

<h2>C Function Prototype</h2>
<p class="syntax">ViStatus&nbsp;niScope_error_query&nbsp;(ViSession&nbsp;vi, ViInt32*&nbsp;errCode, ViChar[]&nbsp;errMessage);</p>
<h2 class="purpose">Purpose</h2>


<table class="Borderless-Wide">
<tr>
<td class="Icon"><img src="note.gif"></td>
<td>
<strong>Note</strong>&nbsp;&nbsp;

This function is included for compliance with the IviScope Class Specification.
</td></tr></table>
<p class = "Body">Reads an error code and message from the error queue. National Instruments digitizers do not contain an error queue. Errors are reported as they occur. Therefore, this function does not detect errors.</p>
</body>
</html>    o    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head><script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<link rel="stylesheet" type="text/css" href="styles.css">
<title>niScope_error_query</title>
</head>
<body>
<table class="Borderless"><tr><td class="paramName">errCode</td>
<td class="paramDataType">ViInt32*</td>
<td>Returns the error code for the session or execution thread. If you pass 0 for the Buffer Size, you can pass <span class="Monospace">VI_NULL</span> for this parameter.</td>
</tr></table></body>
</html>    D    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head><script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<link rel="stylesheet" type="text/css" href="styles.css">
<title>niScope_error_query</title>
</head>
<body>
<table class="Borderless"><tr><td class="paramName">errMessage</td>
<td class="paramDataType">ViChar[]</td>
<td>Formats the error code into a user-readable message string. The array must contain at least  256 elements (ViChar[256]).</td>
</tr></table></body>
</html>   �� <  �  h    Err Code                          ,#����  �    Status                            `�-   �  �    Instrument Handle                � < � � �    Err Message                        	            	           VI_NULL    	           �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_error_query</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_error_message</h1>

<h2>C Function Prototype</h2>
<p class="syntax">ViStatus niScope_error_message (ViSession Instrument_Handle,
                                ViStatus Error_Code,
                                ViChar _VI_FAR
                                    Error_Message[]);</p>
<h2 class="purpose">Purpose</h2>


<table class="Borderless-Wide">
<tr>
<td class="Icon"><img src="note.gif"></td>
<td>
<strong>Note</strong>&nbsp;&nbsp;

This function is included for compliance with the IviScope Class Specification.
</td></tr></table>
<p class="Body">Takes the error code returned by NI-SCOPE functions and returns the interpretation as a user-readable string. You can pass <span class="Monospace">VI_NULL</span> as the instrument handle, which is useful to interpret errors after <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_init.html')"><span class="Monospace">niScope_init</span></a> has failed.</p>

<table class="Borderless-Wide">
<tr>
<td class="Icon"><img src="note.gif"></td>
<td>
<strong>Note</strong>&nbsp;&nbsp;This function is obsolete. Consider using <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_GetErrorMessage.html')">niScope_GetErrorMessage</a> instead.
</td></tr></table>

</body>
</html>    o    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head><script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<link rel="stylesheet" type="text/css" href="styles.css">
<title>niScope_error_query</title>
</head>
<body>
<table class="Borderless"><tr><td class="paramName">errCode</td>
<td class="paramDataType">ViInt32*</td>
<td>Returns the error code for the session or execution thread. If you pass 0 for the Buffer Size, you can pass <span class="Monospace">VI_NULL</span> for this parameter.</td>
</tr></table></body>
</html>    D    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head><script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<link rel="stylesheet" type="text/css" href="styles.css">
<title>niScope_error_query</title>
</head>
<body>
<table class="Borderless"><tr><td class="paramName">errMessage</td>
<td class="paramDataType">ViChar[]</td>
<td>Formats the error code into a user-readable message string. The array must contain at least  256 elements (ViChar[256]).</td>
</tr></table></body>
</html>   �� <  �  h    Error Code                        ,#����  �    Status                            `�-   �  �    Instrument Handle                �k < � � �    Error Message                          	           VI_NULL    	           d    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_GetError</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_GetError</h1>

<h2>C Function Prototype</h2>
<p class="syntax">ViStatus&nbsp;niScope_GetError&nbsp;(ViSession&nbsp;vi, ViStatus*&nbsp;errorCode, ViInt32&nbsp;bufferSize, ViChar[]&nbsp;description);</p>
<h2 class="purpose">Purpose</h2><table class="Borderless-Wide">
<tr>
<td class="Icon"><img src="note.gif"></td>
<td>
<strong>Note</strong>&nbsp;&nbsp;
This function is included for compliance with the IviScope Class Specification.

</td></tr></table>


<p class="Body">

Reads an error code and message from the error queue. National Instruments digitizers do not contain an error queue. Errors are reported as they occur. Therefore, this function does not detect errors.</p>
</body>
</html>    3    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head><script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<link rel="stylesheet" type="text/css" href="styles.css">
<title>niScope_GetError</title>
</head>
<body>
<table class="Borderless"><tr><td class="paramName">bufferSize</td>
<td class="paramDataType">ViInt32</td>
<td>Passes the number of bytes in the ViChar array you specify for the Description parameter. 

<p class="Body">If the error description, including the terminating  NULL byte, 
contains more bytes than you indicate in this parameter, the function copies 
<strong>bufferSize</strong>&nbsp;&#8211;&nbsp;1 bytes into the buffer, places an ASCII  NULL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value. For example, if the value is &#34;123456&#34; and the Buffer Size is 4, the function places &#34;123&#34; into 
the buffer and returns 7. </p>
<p class="Body">If you pass a negative number, the function copies the value to the buffer regardless of the number
 of bytes in the value.</p>
 
 <p class="Body">If you pass 0, you can pass <span class="Monospace">VI_NULL</span> for the <strong>description</strong> parameter.</p></td></tr>
</table></body>
</html>    k    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head><script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<link rel="stylesheet" type="text/css" href="styles.css">
<title>niScope_GetError</title>
</head>
<body>
<table class="Borderless"><tr><td class="paramName">description</td>
<td class="paramDataType">ViChar[]</td>
<td>Returns the error description for the IVI session or execution thread. 

<p class="Body">If there is no description, the function returns an empty string. The buffer must contain at least as many elements as the value you specify with the Buffer Size parameter.</p>

<p class="Body">If you pass 0 for the <strong>bufferSize</strong>, you can pass <span class="Monospace">VI_NULL</span> for 
this parameter.</p></td>

</tr></table></body>
</html>        <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head><script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<link rel="stylesheet" type="text/css" href="styles.css">
<title>niScope_GetError</title>
</head>
<body>
<table class="Borderless"><tr><td class="paramName">errorCode</td>
<td class="paramDataType">ViStatus*</td>
<td>Pass the Error Code that is returned from any of the instrument driver functions.</td>
</tr>
</table></body>
</html>   � <  �  h    Error Code                        ,#����  �    Status                            `�-   �  �    Instrument Handle                �Y <� �  �    Description                      �� < � �  `    Buffer Size                        	            	           VI_NULL    	            0   *    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_GetChannelName</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_GetChannelName</h1>
 
<h2>C Function Prototype</h2>
<p class="syntax">ViStatus&nbsp;niScope_GetChannelName&nbsp;(ViSession&nbsp;vi, ViInt32&nbsp;index, ViInt32&nbsp;bufferSize, ViChar[]&nbsp;channelString);</p>
<h2 class="purpose">Purpose</h2>

<table class="Borderless-Wide">
<tr>
<td class="Icon"><img src="note.gif"></td>
<td>
<strong>Note</strong>&nbsp;&nbsp;

This function is included for compliance with the IviScope Class Specification.</td></tr></table>
<p class = "Body">Returns the channel string that is in the channel table at an index you specify. Not applicable to National Instruments digitizers.</p>
</body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head><script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<link rel="stylesheet" type="text/css" href="styles.css">
<title>niScope_GetChannelName</title>
</head>
<body>
<table class="Borderless"><tr><td class="paramName">index</td>
<td class="paramDataType">ViInt32</td>
<td>A 1-based index into the channel table.</td>
</tr>
</table></body>
</html>    W    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head><script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<link rel="stylesheet" type="text/css" href="styles.css">
<title>niScope_GetChannelName</title>
</head>
<body>
<table class="Borderless"><tr><td class="paramName">channelString</td>
<td class="paramDataType">ViChar[]</td>
<td>Returns the channel string that is in the channel table at the index you specify. Do not modify the
 contents of the channel string.</td>
</tr></table></body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head><script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<link rel="stylesheet" type="text/css" href="styles.css">
<title>niScope_GetChannelName</title>
</head>
<body>
<table class="Borderless"><tr><td class="paramName">bufferSize</td>
<td class="paramDataType">ViInt32</td>
<td>Passes the number of bytes in the ViChar array you specify for the <strong>description</strong> parameter.

<p class="Body">If the error description, including the terminating  NULL byte, contains more bytes than you indicate 
in this parameter, the function copies BufferSize - 1 bytes into the buffer, places an ASCII  NULL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value. For example, if the value is &#34;123456&#34; and the Buffer Size is 4, the function places &#34;123&#34; 
into the buffer and returns 7.</p>
<p class="Body">If you pass a negative number, the function copies the value to the buffer regardless of the number of 
bytes in the value.</p></td></tr>
</table></body>
</html>   �_ <  �  h    Index                             ,#����  �    Status                            `�-   �  �    Instrument Handle                �Y <� �  �    Channel String                   ˸ < � �  `    Buffer Size                            	           VI_NULL    	            0 ����         	  1�             K.        init                                                                                                                                    ����         3�  Z]             K.        InitWithOptions                                                                                                                         ����         \�  c�             K.        close                                                                                                                                   ����         dr  q             K.        AutoSetup                                                                                                                               ����         q|  |�             K.        ConfigureAcquisition                                                                                                                    ����         }�  �&             K.        ConfigureHorizontalTiming                                                                                                               ����         ��  �|             G.        ConfigureChanCharacteristics                                                                                                            ����         �  ��             K.        ConfigureVertical                                                                                                                       ����         �"  ĉ             K.        ActualRecordLength                                                                                                                      ����         �D  ��             K.        ActualNumWfms                                                                                                                           ����         ��  ��             K.        ActualMeasWfmSize                                                                                                                       ����         �  �             K.        SampleMode                                                                                                                              ����         �U  ��             K.        SampleRate                                                                                                                              ����         � <             K.        ConfigureTriggerDigital                                                                                                                 ����        � i             K.        ConfigureTriggerEdge                                                                                                                    ����        � 0�         
    K.        ConfigureTriggerGlitch                                                                                                                  ����        5
 C          	    K.        ConfigureTriggerHysteresis                                                                                                              ����        F� KW             K.        ConfigureTriggerImmediate                                                                                                               ����        K� `�         	    K.        ConfigureTriggerRunt                                                                                                                    ����        d� m�             K.        ConfigureTriggerSoftware                                                                                                                ����        n� ��             K.        ConfigureTriggerVideo                                                                                                                   ����        �� ��             K.        ConfigureTriggerWidth                                                                                                                   ����        �t �>         	    K.        ConfigureTriggerWindow                                                                                                                  ����        �� Ϛ             K.        SendSoftwareTriggerEdge                                                                                                                 ����        �8 �r             K.        AdjustSampleClockRelativeDelay                                                                                                          ����        �( �             K.        ConfigureClock                                                                                                                          ����        �r ��             K.        ConfigureTriggerOutput                                                                                                                  ����         h �             K.        ExportSignal                                                                                                                            ����        $� 0�             K.        ConfigureEqualizationFilterCoefficients                                                                                                 ����        2 @G             K.        GetEqualizationFilterCoefficients                                                                                                       ����        Ax [             K.        GetFrequencyResponse                                                                                                                    ����        ]
 j             K.        SetAttributeViInt32                                                                                                                     ����        k� x�             K.        SetAttributeViInt64                                                                                                                     ����        zT �r             K.        SetAttributeViReal64                                                                                                                    ����        � �`             K.        SetAttributeViString                                                                                                                    ����        �� �             K.        SetAttributeViBoolean                                                                                                                   ����        �� ��             K.        SetAttributeViSession                                                                                                                   ����        �| ��             K.        GetAttributeViInt32                                                                                                                     ����        �� ��             K.        GetAttributeViInt64                                                                                                                     ����        �9 ӓ             K.        GetAttributeViReal64                                                                                                                    ����        �� �S             K.        GetAttributeViString                                                                                                                    ����        �� �$             K.        GetAttributeViBoolean                                                                                                                   ����        �a ��             K.        GetAttributeViSession                                                                                                                   ����         � 		             K.        CheckAttributeViInt32                                                                                                                   ����        
� �             K.        CheckAttributeViInt64                                                                                                                   ����        K ]             K.        CheckAttributeViReal64                                                                                                                  ����        � &             K.        CheckAttributeViString                                                                                                                  ����        '� /�             K.        CheckAttributeViBoolean                                                                                                                 ����        1h 9�             K.        CheckAttributeViSession                                                                                                                 ����        ;# H�             K.        ImportAttributeConfigurationFile                                                niScope                                                 ����        I> V�             K.        ExportAttributeConfigurationFile                                                niScope                                                 ����        WD e�             K.        ImportAttributeConfigurationBuffer                                              niScope                                                 ����        f� u             K.        ExportAttributeConfigurationBuffer                                              niScope                                                 ����        v z             K.        Abort                                                                                                                                   ����        z~ �             K.        AcquisitionStatus                                                                                                                       ����        �� ��             K.        Commit                                                                                                                                  ����        �y �?             K*        Fetch                                                                                                                                   ����        �� ��             K.        FetchComplex                                                                                                                            ����        �l �5             K.        FetchComplexBinary16                                                                                                                    ����        �� �             K.        FetchBinary8                                                                                                                            ����        �� �              K.        FetchBinary16                                                                                                                           ����        ͮ ��             K.        FetchBinary32                                                                                                                           ����        ژ ��              ��        GetNormalizationCoefficients                                                                                                            ����        �h C              ��        GetScalingCoefficients                                                                                                                  ����        � �             K.        InitiateAcquisition                                                                                                                     ����        h L             K.        Read                                                                                                                                    ����        � '             K.        AddWaveformProcessing                                                                                                                   ����        -0 6             K.        ClearWaveformMeasurementStats                                                                                                           ����        D
 H�             K.        ClearWaveformProcessing                                                                                                                 ����        I� ^F             K.        FetchArrayMeasurement                                                                                                                   ����        eT r�             K.        FetchMeasurement                                                                                                                        ����        � �             |.        FetchMeasurementStats                                                                                                                   ����        �� ��             K.        ReadMeasurement                                                                                                                         ����        �1 Ѣ             K.        CalSelfCalibrate                                                                                                                        ����        � ��             K.        ResetDevice                                                                                                                             ����        �o �+             K.        Disable                                                                                                                                 ����        ڥ �i             K.        ProbeCompensationSignalStart                                                                                                            ����        �� �"             K.        ProbeCompensationSignalStop                                                                                                             ����        � ��             K.        IsDeviceReady                                                                                                                           ����        �� �             K.        reset                                                                                                                                   ����        ) C             K.        ResetWithDefaults                                                                                                                       ����        � �             K.        revision_query                                                                                                                          ����        �              K.        self_test                                                                                                                               ����         &�              ��        GetStreamEndpointHandle                                                                                                                 ����        '� /B             K.        CableSenseSignalStart                                                                                                                   ����        /� 4�             K.        CableSenseSignalStop                                                                                                                    ����        5G 9U             K.        ClearError                                                                                                                              ����        9� H&             K.        errorHandler                                                                                                                            ����        I[ V�             K.        GetErrorMessage                                                                                                                         ����        W� f�             K.        LockSession                                                                                                                             ����        gE o"             K.        UnlockSession                                                                                                                           ����        o� {{             K.        ConfigureAcquisitionRecord                                                                                                              ����        |� ��             K.        ConfigureChannel                                                                                                                        ����        �� ��             K.        ConfigureEdgeTriggerSource                                                                                                              ����        �� ��             K.        ConfigureTrigger                                                                                                                        ����        �0 ��             K.        ConfigureTriggerCoupling                                                                                                                ����        � �+             K.        ConfigureTVTriggerLineNumber                                                                                                            ����        �� �>             K.        ConfigureTVTriggerSource                                                                                                                ����        �N ۇ             K.        SendSWTrigger                                                                                                                           ����        � ߿             K.        ClearInterchangeWarnings                                                                                                                ����        �9 �.             K.        GetNextInterchangeWarning                                                                                                               ����        �* �]             K.        ResetInterchangeCheck                                                                                                                   ����        �� m             K.        FetchWaveform                                                                                                                           ����        d !�             K.        IsInvalidWfmElement                                                                                                                     ����        "� ;f         	    K.        ReadWaveform                                                                                                                            ����        =� K              K.        FetchWaveformMeasurement                                                                                                                ����        XX j�             K.        ConfigureRefLevels                                                                                                                      ����        l F             K.        ReadWaveformMeasurement                                                                                                                 ����        �� �6             K.        GetNextCoercionRecord                                                                                                                   ����        �2 �M             K.        error_query                                                                                                                             ����        �P ��             K.        error_message                                                                                                                           ����        �� ��             K.        GetError                                                                                                                                ����        �- �Y             K.        GetChannelName                                                                                                                                                                                                                     �Initialize                                                                           �Initialize With Options                                                              �Close                                                                               �Configuration Functions                                                              �Auto Setup                                                                           �Configure Acquisition                                                             ����Horizontal                                                                           �Configure Horizontal Timing                                                       ����Vertical                                                                             �Configure Chan Characteristics                                                       �Configure Vertical                                                                  �Actual Values                                                                        �Actual Record Length                                                                 �Actual Number of Waveforms                                                           �Actual Meas Waveform Size                                                            �Sample Mode                                                                          �Sample Rate                                                                         "Trigger                                                                              �Configure Trigger Digital                                                            �Configure Trigger Edge                                                               �Configure Trigger Glitch                                                             �Configure Trigger Hysteresis                                                         �Configure Trigger Immediate                                                          �Configure Trigger Runt                                                               �Configure Trigger Software                                                           �Configure Trigger Video                                                              �Configure Trigger Width                                                              �Configure Trigger Window                                                             �Send Software Trigger Edge                                                        ����Synchronization                                                                      �Adjust Samp Clk Relative Delay                                                       �Configure Clock                                                                      �Configure Trigger Output                                                             �Export Signal                                                                     ����Onboard Signal Processing                                                            �Configure Equalization Coefficients                                                  �Get Equalization Coefficients                                                        �Get Frequency Response                                                              oSet/Get/Check Attribute                                                             �Set Attribute                                                                        �Set Attribute ViInt32                                                                �Set Attribute ViInt64                                                                �Set Attribute ViReal64                                                               �Set Attribute ViString                                                               �Set Attribute ViBoolean                                                              �Set Attribute ViSession                                                             DGet Attribute                                                                        �Get Attribute ViInt32                                                                �Get Attribute ViInt64                                                                �Get Attribute ViReal64                                                               �Get Attribute ViString                                                               �Get Attribute ViBoolean                                                              �Get Attribute ViSession                                                             �Check Attribute                                                                      �Check Attribute ViInt32                                                              �Check Attribute ViInt64                                                              �Check Attribute ViReal64                                                             �Check Attribute ViString                                                             �Check Attribute ViBoolean                                                            �Check Attribute ViSession                                                         ����Import/Export Attribute Configuration                                                �Import Attribute Configuration File                                                  �Export Attribute Configuration File                                                  �Import Attribute Configuration Buffer                                                �Export Attribute Configuration Buffer                                               hAcquisition Functions                                                                �Abort                                                                                �Acquisition Status                                                                   �Commit                                                                               �Fetch                                                                                �Fetch Complex                                                                        �Fetch Complex Binary 16                                                              �Fetch Binary 8                                                                       �Fetch Binary 16                                                                      �Fetch Binary 32                                                                      �Get Normalization Coefficients                                                       �Get Scaling Coefficients                                                             �Initiate Acquisition                                                                 �Read                                                                              ����Measurement Functions                                                                �Add Waveform Processing                                                              �Clear Waveform Measurement Stat                                                      �Clear Waveform Processing                                                            �Fetch Array Measurement                                                              �Fetch Measurement                                                                    �Fetch Measurement Stats                                                              �Read Measurement                                                                  ����Calibration                                                                          �Self Calibrate                                                                      �Utility Functions                                                                    �Reset Device                                                                         �Disable                                                                              �Probe Compensation Signal Start                                                      �Probe Compensation Signal Stop                                                       �Is Device Ready                                                                      �Reset                                                                                �Reset With Defaults                                                                  �Revision Query                                                                       �Self Test                                                                            �Get Stream Endpoint Handle                                                           �CableSense Signal Start                                                              �CableSense Signal Stop                                                            ����Error Handling                                                                       �Clear Error                                                                          �Error Handler                                                                        �Get Error Message                                                                 ����Locking                                                                              �Lock Session                                                                         �Unlock Session                                                                      DIVI Compliance & Obsolete                                                         ����Horizontal                                                                           �Configure Acquisition Record                                                      ����Vertical                                                                             �Configure Channel                                                                   �Trigger                                                                              �Configure Edge Trigger Source                                                        �Configure Trigger                                                                    �Configure Trigger Coupling                                                           �Configure TV Trigger Line Num                                                        �Configure TV Trigger Source                                                          �Send Software Trigger                                                             ����Interchangeability Info                                                              �Clear Interchange Warning                                                            �Get Next Interchange Warning                                                         �Reset Interchange Check                                                           ����Acquisition Functions                                                                �Fetch Waveform                                                                       �Is Invalid Wfm Element                                                               �Read Waveform                                                                     ����Measurement Functions                                                                �Fetch Waveform Measurement                                                           �Configure Reference Levels                                                           �Read Waveform Measurement                                                         ����Coercion Info                                                                        �Get Next Coercion Record                                                             �Error Query                                                                          �Error Message                                                                        �Get Error                                                                            �Get Channel Name                                                                      
niTClk.fp    	nihws.fp 