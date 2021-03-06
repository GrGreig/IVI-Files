s��        ��   � U  w�   �    	J                               niFgen                          National Instruments Function Generator     _VI_FUNC                                                     �  NIComplexI16[]     �  NIComplexNumber[]  � � ��ViInt16  � � ��ViInt64  �  � ��ViInt32  � � ��ViReal64     � ��ViRsrc     	� 	��ViBoolean     	� 	��ViSession     � ��ViStatus     �  ViChar[]     � ��ViChar     � ��ViString     	�  ViInt16[]     	�  ViInt32[]     
�  	ViReal64[]     � 	 
ViBoolean[]     � ��ViConstString     � ��ViAttr     � ��ViAddr  �    NI-FGEN provides programming support for all National Instruments signal sources modules. NI-FGEN contains all the functions that IVI and VXIplug&play require. In addition, NI-FGEN contains high-level functions that configure the signal generator and produce an output signal in a single operation. NI-FGEN also contains low-level functions that configure and initiate signal generation in separate operations.   

Note: NI-FGEN requires the VISA and IVI libraries.  

    �    This class contains functions and subclasses that configure the signal generator. The class contains high-level functions that configure standard waveform generation, arbitrary waveform generation, arbitrary sequence generation, triggering, amplitude modulation, and frequency modulation. The class also contains the low-level functions that set, get, and check individual attribute values.
    �    This class contains functions that configure the signal generator to produce standard waveform output. These periodic signals are characterized by their waveform, amplitude, DC offset, frequency, and start phase. Some waveforms may require additional parameters to characterize their output.

For example, a square wave requires a duty cycle parameter in addition to those parameters listed above.
    �    This class contains functions that can create and configure the signal generator to generate a frequency list. A frequency list consists of a list of frequencies and durations.  The signal generator generates each frequency for nth given amount of time and then moves on to the next frequency. When the end of the list is reached, the signal generator starts over at the beginning of the list.       �    This class contains functions that configure the signal generator to produce arbitrary waveforms, create arbitrary waveforms, and clear arbitrary waveforms.     �    This class contains functions that configure the signal generator to produce arbitrary sequences, create arbitrary sequences, and clear arbitrary sequences.     �    Functions for incrementally writing a waveform.  The waveform can be allocated using the 'niFgen_AllocateWaveform' method, and can be incrementally written by either 'niFgen_WriteWaveform' or 'niFgen_WriteBinary16Waveform'.     m    This class of functions allow you to configure clocking attributes that control how fast data is generated.     V    This class contains functions that configure the triggering source and cycle count.
     �    The function in this class configures the routing of signals in the 5404 signal generator to RTSI lines and front panel connectors.     u    This class contains functions that configure named waveforms and  scripts that govern the generation of waveforms.
     f    This class contains functions that configure filters used with the onboard signal processing block.
     G    This class contains functions that configure Peer-to-Peer streaming.
     T    This class contains sub-classes for the set, get, and check attribute functions.       �    This class contains functions that set an attribute to a new value.  There are typesafe functions for each attribute data type.     �    This class contains functions that obtain the current value of an attribute.  There are typesafe functions for each attribute data type.     �    This class contains functions that obtain the current value of an attribute.  There are typesafe functions for each attribute data type.     O    This class contains a function that resets an attribute to its default value.     c    This class contains functions that transfer attribute configurations between instrument sessions.     j    This class contains functions and classes that initiate instrument operations and report their status.

    _    This class contains functions and sub-classes that control common instrument operations.  These functions include many of functions that VXIplug&play require, such as reset, self-test, revision query, error query, and error message.  This class also contains functions that access IVI error infomation, lock the session, and perform instrument I/O.
     ?    This class contains functions that retrieve coercion records.     R    This class contains functions that retrieve and clear the IVI error information.     a    This class contains functions that lock and unlock IVI NI-FGEN sessions for multithread safefy.     J    This class contains functions that retrieve interchangeability warnings.     G    This class of functions is used to calibrate your NI source module.

     j    This class of functions is used to perform the analog output portion of an external calibration session.     }    This class of functions is used to perform the oscillator frequency calibration portion of an external calibration session.     l    This class of functions is used to perform the calibration ADC portion of an external calibration session.     q    This class of functions is used to perform the Flatness Calibration portion of an external calibration session.        These functions are utility functions that are used in conjunction with self or external calibration.  You can use these functions to get information about previous calibrations, store information, or password protect the external calibration data on your board.     =    This class contains functions that are obsolete in NI-FGEN.        <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_init</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_init</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_init&nbsp;(ViRsrc&nbsp;resourceName, ViBoolean&nbsp;idQuery, ViBoolean&nbsp;resetDevice, ViSession* vi);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Performs the following initialization actions:</p>

<ul><li>Creates a new IVI instrument driver session.</li>

<li>Opens a session to the specified device using the interface and address that you specify for the <strong>resourceName</strong> parameter.</li>

<li>If the <strong>IDQuery</strong> parameter is set to <span class="monospace">VI_TRUE</span>, this function queries the device ID and checks that the ID is valid for NI-FGEN.</li>

<li>If the <strong>resetDevice</strong> parameter is set to <span class="monospace">VI_TRUE</span>, this function resets the device to a known state.</li>

<li>Sends initialization commands to set the device to the state necessary for the operation of NI-FGEN.</li>

<li>Returns a session handle that you can use to identify the device in all subsequent NI-FGEN function calls.</li></ul>

</body>
</html>    D    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niFgen_init</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">resourceName</td>
<td class="paramDataType">ViRsrc</td>
<td>Specifies the resource name of the device to initialize.
<br><br>
        <table class="Bordered">
                       <tr>
                    <th class="Bordered">Example #</th>
                    <th class="Bordered">Device Type</th>
                    <th class="Bordered">Syntax</th>
                    <th class="Bordered">Variable</th>
                </tr>
                <tr>
                    <td class="Bordered">1</td>
                    <td class="Bordered">NI-DAQmx device</td>
                    <td class="bordered">
                        <format type="italic">myDAQmxDevice</format>
                    </td>
                    <td class="bordered">(<format type="italic">myDAQmxDevice</format> = device name)</td>
                </tr>
                <tr>
                    <td class="Bordered">2</td>
                    <td class="Bordered">NI-DAQmx device</td>
                    <td class="bordered">DAQ::<format type="italic">myDAQmxDevice</format>
                    </td>
                    <td class="bordered">(<format type="italic">myDAQmxDevice</format> = device name)</td>
                </tr>
                <tr>
                    <td class="bordered">3</td>
                    <td class="Bordered">NI-DAQmx device</td>
                    <td class="bordered">DAQ::<format type="italic">2</format>
                    </td>
                    <td class="bordered">(<format type="italic">2</format> = device name)</td>
                </tr>
                <tr>
                    <td class="bordered">4</td>
                    <td class="Bordered">IVI logical name or IVI virtual name</td>
                    <td class="bordered">
                        <format type="italic">myLogicalName</format>
                    </td>
                    <td class="bordered">(<format type="italic">myLogicalName</format> = name)</td>
                </tr>
        </table>
<p class="Body">For NI-DAQmx devices, the syntax is just the device name specified in MAX, as shown in Example 1. Typical default names for NI-DAQmx devices in MAX are <format type="monospace">Dev1</format> or <format type="monospace">PXI1Slot1</format>. You can rename an NI-DAQmx device by right-clicking on the name in MAX and entering a new name.</p>

<p class="Body">An alternate syntax for NI-DAQmx devices consists of DAQ::<em>NI-DAQmx device name</em>, as shown in Example 2. This naming convention allows for the use of an NI-DAQmx device in an application that was originally designed for a Traditional NI-DAQ device. For example, if the application expects <span class="Monospace">DAQ::1</span>, you can rename the NI-DAQmx device to <span class="Monospace">1</span> in MAX and pass in <span class="Monospace">DAQ::1</span> for the resource name, as shown in Example 3. </p>

<p class="Body">If you use the DAQ::<em>n</em> syntax and an NI-DAQmx device name already exists with that same name, the NI-DAQmx device is matched first.</p> 

<p class="Body">You can also pass in the name of an IVI logical name or an IVI virtual name configured with the IVI Configuration utility, as shown in Example 4. A logical name identifies a particular virtual instrument. A virtual name identifies a specific device and specifies the initial settings for the session. 

<table class=borderless><tr>
<td class="Icon"><img src="caution.gif"></td>
<td colspan=2><span id="Dark-Red"><strong>Caution</strong>&nbsp;&nbsp;Traditional NI-DAQ and NI-DAQmx device names are not case-sensitive. However, all IVI names, such as logical names, are case-sensitive. If you use logical names, driver session names, or virtual names in your program, you must ensure that the name you use matches the name in the IVI Configuration Store file exactly, without any variations in the case of the characters.</span></td></tr></table>

</td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>idQuery</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">idQuery</td>
<td class="paramDataType">ViBoolean</td>
<td>Specifies whether you want NI-FGEN to perform an ID query.
            
            <p class="Body">When you set this parameter to <span class="monospace">VI_TRUE</span>, NI-FGEN verifies that the device that you initialize is supported.</p>

<p class="Body">Circumstances can arise where sending an ID query to the device is undesirable. When you set this parameter to <span class="monospace">VI_FALSE</span>, the function initializes the device without performing an ID query.</p>

<p class="Body"><strong><strong>Defined Values</strong></strong></p>

<table class="bordered">
<tr><td class="bordered"><span class="monospace">VI_TRUE</span></td><td class="bordered">Perform ID query</td></tr>
<tr><td class="bordered"><span class="monospace">VI_FALSE</span></td><td class="bordered">Skip ID query</td></tr>
</table>

<p class="Body"><strong>Default Value</strong>: <span class="monospace">VI_TRUE</span></p></td>
 </tr></table></body>
</html>    R    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niFgen_init</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">resetDevice</td>
<td class="paramDataType">ViBoolean</td>
<td>Specifies whether you want to reset the device during the initialization procedure. <span class="Monospace">VI_TRUE</span> specifies that the device is reset and performs the same function as the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_Reset.html')"><span class="Monospace">niFgen_reset</span></a> function.

<p class="Body"><strong><strong>Defined Values</strong></strong></p>

<table class="bordered"> <tr><td class="bordered"><span class="monospace">VI_TRUE</span></td><td class="bordered">Reset device</td></tr>
<tr><td class="bordered"><span class="monospace">VI_FALSE</span></td><td class="bordered">Do not reset device</td></tr></table>

<p class="Body"><strong>Default Value</strong>: <span class="monospace">VI_TRUE</span></p></td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niFgen_init</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">vi</td>
<td class="paramDataType">ViSession*</td>
<td>Returns a session handle that you can use to identify the device in all subsequent NI-FGEN function calls.</td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Status</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">status</td>
<td class="paramDataType">ViStatus</td>
<td>Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You can examine the status code from each call to an NI-FGEN function to determine if an error occurred.

To obtain a text description of the status code, call  the  <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cviniFgen_error_message.html')"><span class="monospace">niFgen_error_message</span></a> function. To obtain additional information about the error condition, call the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cviniFgen_GetError.html')"><span class="monospace">niFgen_GetError</span></a> function. To clear the error information from NI-FGEN, call the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cviniFgen_ClearError.html')"><span class="monospace"> niFgen_ClearError</span></a> function. <br><br>
 

The general meaning of the status code is as follows:<br> <br>


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
</td>
</tr>
</table>

</body>
</html>



    u >   �  �    Resource Name                     ,� : �       ID Query                          1� =� �       Reset Device                      5�  �  �    vi                                7�����  �    Status                          ����  z��                                            	"DAQ::1"   Yes VI_TRUE No VI_FALSE   Yes VI_TRUE No VI_FALSE    	           	           KCopyright 2001-2010 National Instruments Corporation. All Rights Reserved.   �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_InitWithOptions</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_InitWithOptions</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_InitWithOptions&nbsp;(ViRsrc&nbsp;resourceName, ViBoolean&nbsp;idQuery, ViBoolean&nbsp;resetDevice, ViString&nbsp;optionString, ViSession&nbsp;*vi);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Performs the following initialization actions:</p>

<ul><li>Creates a new IVI instrument session and optionally sets the initial state of the following session attributes: <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'NIFGEN_ATTR_RANGE_CHECK.html')"><span class="monospace">NIFGEN_ATTR_RANGE_CHECK</span></a>, <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'NIFGEN_ATTR_QUERY_INSTRUMENT_STATUS.html')"><span class="monospace">NIFGEN_ATTR_QUERY_INSTRUMENT_STATUS</span></a>, <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'NIFGEN_ATTR_CACHE.html')"><span class="monospace">NIFGEN_ATTR_CACHE</span></a>, <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'NIFGEN_ATTR_SIMULATE.html')"><span class="monospace">NIFGEN_ATTR_SIMULATE</span></a>, and <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'NIFGEN_ATTR_RECORD_COERCIONS.html')"><span class="monospace">NIFGEN_ATTR_RECORD_COERCIONS</span></a>.</li>
<li>Opens a session to the specified device using the interface and address that you specify for <strong>resourceName</strong>.</li>
<li>If <strong>IDQuery</strong> is set to <span class="monospace">VI_TRUE</span>, this function queries the device ID and checks that it is valid for NI-FGEN.</li>
<li>If <strong>resetDevice</strong> is set to <span class="monospace">VI_TRUE</span>, this function resets the device to a known state.</li>
<li>Sends initialization commands to set the instrument to the state necessary for NI-FGEN operation.</li>
<li>Returns a session handle that you can use to identify the device in all subsequent NI-FGEN function calls.</li></ul>

</body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>idQuery</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">idQuery</td>
<td class="paramDataType">ViBoolean</td>
<td>Specifies whether you want NI-FGEN to perform an ID query.
            
            <p class="Body">When you set this parameter to <span class="monospace">VI_TRUE</span>, NI-FGEN verifies that the device that you initialize is a type that it supports.</p>

<p class="Body">Circumstances can arise where sending an ID query to the device is undesirable. When you set this parameter to <span class="monospace">VI_FALSE</span>, the function initializes the device without performing an ID query.</p>

<p class="Body"><strong><strong>Defined Values</strong></strong></p>

<table class="bordered">
<tr><td class="bordered"><span class="monospace">VI_TRUE</span></td><td class="bordered">Perform ID query</td></tr>
<tr><td class="bordered"><span class="monospace">VI_FALSE</span></td><td class="bordered">Skip ID query</td></tr>
</table>

<p class="Body"><strong>Default Value</strong>: <span class="monospace">VI_TRUE</span></p></td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niFgen_InitWithOptions</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">optionString</td>
<td class="paramDataType">ViString</td>
<td>
           Sets the initial value of certain session attributes.

<p class="Body">The syntax for <strong>optionString</strong> is</p>

            <p class="Indent1">&lt;<em>attributeName</em>&gt;&nbsp;=&nbsp;&lt;<em>value</em>&gt;</p>
            
            <p class="Body">where</p>
            
            <p class="Indent1"><em>attributeName</em> is the name of the attribute and <em>value</em> is the value to which the attribute is set</p>

            <p class="Body">To set multiple attributes, separate them with a comma.</p>

<p class="Body">If you pass NULL or an empty string for this parameter, the session uses the default values for these attributes. You can override the default values by assigning a value explicitly in a string that you pass for this parameter.</p>

<p class="Body">You do not have to specify all of the attributes and may leave any of them out. However, if you do not specify one of the attributes, its default value is used.</p>

<p class="Body">If simulation is enabled (Simulate=1), you may specify the device that you want to simulate. To specify a device, enter the following syntax in <strong>optionString</strong>.</p>

<p class="Body"><span class="Monospace">DriverSetup=Model:&lt;<em>driver model number</em>&gt;;Channels:&lt;<em>channel names</em>&gt;;BoardType:&lt;<em>module type</em>&gt;;MemorySize:&lt;<em>size of onboard memory in bytes</em>&gt;</span></p>

            
<p class="Body"><strong>Syntax Examples</strong></p>

<table class="Bordered">
    <tr><th class="Bordered">Device</th>
    <th class="Bordered">optionString Syntax</th></tr>
    <tr><td class="Bordered">NI PXI-5404</td>
    <td class="Bordered"><span class="Monospace">DriverSetup=Model:5404;BoardType:PXI</span></td></tr>
    <tr><td class="Bordered">NI PCI-5411</td>
    <td class="Bordered"><span class="Monospace">DriverSetup=Model:5411;BoardType:PCI;MemorySize:8000000</span></td></tr>
<tr><td class="Bordered">NI PXIe-5450</td>
    <td class="Bordered"><span class="Monospace">DriverSetup=Model:5450;Channels:0-1;BoardType:PXIe;MemorySize:8000000</span></td></tr>
</table>

<p class="Body"><strong>Attributes and <strong>Defined Values</strong></strong></p>
      
<table class="Bordered">
    <tr><th class="Bordered">Attribute Name</th>
    <th class="Bordered">Attribute</th>
    <th class="Bordered">Values</th></tr>
    
    <tr><td class="Bordered">RangeCheck</td>
    <td class="Bordered"><span class="monospace">NIFGEN_ATTR_RANGE_CHECK</span></td>
    <td class="Bordered"><span class="monospace">VI_TRUE</span>, <span class="monospace">VI_FALSE</span></td></tr>
    
    <tr><td class="Bordered">QueryInstrStatus</td>
    <td class="Bordered"><span class="monospace">NIFGEN_ATTR_QUERY_INSTRUMENT_STATUS</span></td>
    <td class="Bordered"><span class="monospace">VI_TRUE</span>, <span class="monospace">VI_FALSE</span></td></tr>
    
    <tr><td class="Bordered">Cache</td>
    <td class="Bordered"><span class="monospace">NIFGEN_ATTR_CACHE</span></td>
    <td class="Bordered"><span class="monospace">VI_TRUE</span>, <span class="monospace">VI_FALSE</span></td></tr>
    
    <tr><td class="Bordered">Simulate</td>
    <td class="Bordered"><span class="monospace">NIFGEN_ATTR_SIMULATE</span></td>
    <td class="Bordered"><span class="monospace">VI_TRUE</span>, <span class="monospace">VI_FALSE</span></td></tr>
</table>

<p class="Body"><strong>Default Values</strong>: &quot;Simulate=0,RangeCheck=1,QueryInstrStatus=1,Cache=1&quot;</p></td>
 </tr></table></body>
</html>

    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niFgen_init</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">vi</td>
<td class="paramDataType">ViSession</td>
<td>Returns a session handle that you can use to identify the device in all subsequent NI-FGEN function calls.</td>
 </tr></table></body>
</html>    u =   �  �    Resource Name                     H� : �       ID Query                          1� =� �       Reset Device                      7�����  �    Status                            M� �  � �    Option String                     \�  �  �    vi                              ����  ���                                            	"DAQ::1"   Yes VI_ON No VI_OFF   Yes VI_ON No VI_OFF    	           ""Simulate=0,RangeCheck=1,Cache=1"    	           FCopyright 1998 National Instruments Corporation. All Rights Reserved.   �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_InitializeWithChannels</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_InitializeWithChannels</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_InitializeWithChannels&nbsp;(ViRsrc&nbsp;resourceName, ViConstString&nbsp;channelName, ViBoolean&nbsp;resetDevice, ViConstString&nbsp;optionString, ViSession&nbsp;*vi);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Creates and returns a new NI-FGEN session to the specified channel of a waveform generator that is used in all subsequent NI-FGEN function calls. 
</p>

</body>
</html>    T    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Reset Device</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">resetDevice</td>
<td class="paramDataType">ViBoolean</td>
<td>Specifies whether you want to reset the device during the initialization procedure. <span class="Monospace">VI_TRUE</span> specifies that the device is reset and performs the same function as the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_Reset.html')"><span class="Monospace">niFgen_reset</span></a> function.

<p class="Body"><strong><strong>Defined Values</strong></strong></p>

<table class="bordered"> <tr><td class="bordered"><span class="monospace">VI_TRUE</span></td><td class="bordered">Reset device</td></tr>
<tr><td class="bordered"><span class="monospace">VI_FALSE</span></td><td class="bordered">Do not reset device</td></tr></table>

<p class="Body"><strong>Default Value</strong>: <span class="monospace">VI_FALSE</span></p></td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niFgen_InitWithOptions</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">optionString</td>
<td class="paramDataType">ViConstString</td>
<td>
           Sets the initial value of certain session attributes.

<p class="Body">The syntax for <strong>optionString</strong> is</p>

            <p class="Indent1">&lt;<em>attributeName</em>&gt;&nbsp;=&nbsp;&lt;<em>value</em>&gt;</p>
            
            <p class="Body">where</p>
            
            <p class="Indent1"><em>attributeName</em> is the name of the attribute and <em>value</em> is the value to which the attribute is set</p>

            <p class="Body">To set multiple attributes, separate them with a comma.</p>

<p class="Body">If you pass NULL or an empty string for this parameter, the session uses the default values for these attributes. You can override the default values by assigning a value explicitly in a string that you pass for this parameter.</p>

<p class="Body">You do not have to specify all of the attributes and may leave any of them out. However, if you do not specify one of the attributes, its default value is used.</p>

<p class="Body">If simulation is enabled (Simulate=1), you may specify the device that you want to simulate. To specify a device, enter the following syntax in <strong>optionString</strong>.</p>

<p class="Body"><span class="Monospace">DriverSetup=Model:&lt;<em>driver model number</em>&gt;;Channels:&lt;<em>channel names</em>&gt;;BoardType:&lt;<em>module type</em>&gt;;MemorySize:&lt;<em>size of onboard memory in bytes</em>&gt;</span></p>

            
<p class="Body"><strong>Syntax Examples</strong></p>

<table class="Bordered">
    <tr><th class="Bordered">Device</th>
    <th class="Bordered">optionString Syntax</th></tr>
    <tr><td class="Bordered">NI PXI-5404</td>
    <td class="Bordered"><span class="Monospace">DriverSetup=Model:5404;BoardType:PXI</span></td></tr>
    <tr><td class="Bordered">NI PCI-5411</td>
    <td class="Bordered"><span class="Monospace">DriverSetup=Model:5411;BoardType:PCI;MemorySize:8000000</span></td></tr>
<tr><td class="Bordered">NI PXIe-5450</td>
    <td class="Bordered"><span class="Monospace">DriverSetup=Model:5450;Channels:0-1;BoardType:PXIe;MemorySize:8000000</span></td></tr>
</table>

<p class="Body"><strong>Attributes and <strong>Defined Values</strong></strong></p>
      
<table class="Bordered">
    <tr><th class="Bordered">Attribute Name</th>
    <th class="Bordered">Attribute</th>
    <th class="Bordered">Values</th></tr>
    
    <tr><td class="Bordered">RangeCheck</td>
    <td class="Bordered"><span class="monospace">NIFGEN_ATTR_RANGE_CHECK</span></td>
    <td class="Bordered"><span class="monospace">VI_TRUE</span>, <span class="monospace">VI_FALSE</span></td></tr>
    
    <tr><td class="Bordered">QueryInstrStatus</td>
    <td class="Bordered"><span class="monospace">NIFGEN_ATTR_QUERY_INSTRUMENT_STATUS</span></td>
    <td class="Bordered"><span class="monospace">VI_TRUE</span>, <span class="monospace">VI_FALSE</span></td></tr>
    
    <tr><td class="Bordered">Cache</td>
    <td class="Bordered"><span class="monospace">NIFGEN_ATTR_CACHE</span></td>
    <td class="Bordered"><span class="monospace">VI_TRUE</span>, <span class="monospace">VI_FALSE</span></td></tr>
    
    <tr><td class="Bordered">Simulate</td>
    <td class="Bordered"><span class="monospace">NIFGEN_ATTR_SIMULATE</span></td>
    <td class="Bordered"><span class="monospace">VI_TRUE</span>, <span class="monospace">VI_FALSE</span></td></tr>
</table>

<p class="Body"><strong>Default Values</strong>: &quot;Simulate=0,RangeCheck=1,QueryInstrStatus=1,Cache=1&quot;</p></td>
 </tr></table></body>
</html>

    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niFgen_init</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">vi</td>
<td class="paramDataType">ViSession</td>
<td>Returns a session handle that you can use to identify the device in all subsequent NI-FGEN function calls.</td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>channelName</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">channelName</td>
<td class="paramDataType">ViConstString</td>
<td>Specifies the channel that this VI uses.  

<p class="Body"><strong>Default Value</strong>: &quot;0&quot;</p>
</td>
 </tr></table></body>
</html>    u =   �  �    Resource Name                     cU zQ �       Reset Device                      7�����  �    Status                            g� �  � �    Option String                     v�  �  �    vi                              ����  ���                                           x_ �  �  �    Channel Name                       "PXI1Slot2"    Yes VI_ON No VI_OFF    	           ""Simulate=0,RangeCheck=1,Cache=1"    	           FCopyright 1998 National Instruments Corporation. All Rights Reserved.    "0"   �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_Commit</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_Commit</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_Commit&nbsp;(ViSession vi);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Causes a transition to the Committed state. This function verifies attribute values, reserves the device, and commits the attribute values to the device. If the attribute values are all valid, NI-FGEN sets the device hardware configuration to match the session configuration. This function does not support the NI 5401/5404/5411/5431 signal generators. </p>

<p class="Body">In the Committed state, you can load waveforms, scripts, and sequences into memory. If any attributes are changed, NI-FGEN implicitly transitions back to the Idle state, where you can program all session properties before applying them to the device. This function has no effect if the device is already in the Committed or Generating state and returns a successful status value.</p>

<p class="Body">Calling this VI before the niFgen Initiate Generation VI is optional but has the following benefits:</p>

<ul>
<li>Routes are committed, so signals are exported or imported.</li>
<li>Any Reference Clock and external clock circuits are phase-locked.</li>
<li>A subsequent <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cviniFgen_InitiateGeneration.html')"><span class="Monospace">niFgen_InitiateGeneration</span></a> function can run faster because the device is already configured.</li>
</ul>

</body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>vi</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">vi</td>
<td class="paramDataType">ViSession</td>
<td>Identifies your instrument session. <strong>vi</strong> is obtained from the 
   <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cviniFgen_init.html')"><span class="monospace">niFgen_init</span></a>, <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_InitWithOptions.html')"><span class="monospace">niFgen_InitWithOptions</span></a>, or <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_InitializeWithChannels.html')"><span class="monospace">niFgen_InitializeWithChannels</span></a> functions and identifies a particular instrument session.</td>
 </tr></table></body>
</html>
    ��   �  �    vi                                7�����  �    Status                                 	          O    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_reset</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_reset</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_reset&nbsp;(ViSession&nbsp;vi);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="body">
Resets the instrument to a known state. This function aborts the generation, clears all 
routes, and resets session attributes to the default values. This function does not, 
however, commit the session properties or configure the device hardware to its default 
state.
</p>
<!-- Link to Additional VI/Function Information -->

<table class="Borderless-Wide">
<tr>
<td class="Icon"><img src="note.gif"></td>
<td>
<strong>Note</strong>&nbsp;&nbsp;For the NI 5401/5404/5411/5431, this function exhibits the 
same behavior as the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_ResetDevice.html')"><span class="Monospace">niFgen_ResetDevice</span></a> function.</td></tr></table>


</body>
</html>    7�#����  �    Status                            ��)   �  �    vi                                 	              �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_close</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_close</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_close&nbsp;(ViSession&nbsp;vi);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Performs the following operations:</p>

<ul><li>Closes the instrument I/O session.</li>

<li>Destroys the NI-FGEN session and all of its attributes.</li>

<li>Deallocates any memory resources NI-FGEN uses.</li></ul>

<table class="Borderless-Wide">
<tr>
<td class="Icon"><img src="note.gif"></td>
<td>
<strong>Note</strong>&nbsp;&nbsp;After calling <span class="monospace">niFgen_close</span>, you cannot use NI-FGEN again until you call the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_init.html')"><span class="monospace">niFgen_init</span></a> or <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_InitWithOptions.html')"><span class="monospace">niFgen_InitWithOptions</span></a> functions.</td></tr></table>

<p class="Body">Not all signal routes established by calling the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_ExportSignal.html')"><span class="monospace">niFgen_ExportSignal</span></a> and <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_RouteSignalOut.html')"><span class="monospace">niFgen_RouteSignalOut</span></a> functions are released when the NI-FGEN session is closed. The following table shows what happens to a signal route on your device when you call the <span class="monospace">niFgen_close</span> function.</p>

<table class="Bordered"><tr><th class="Bordered">Routes To</th>
<th class="Bordered">NI 5401/5411/5431</th><th class="Bordered">Other Devices</th></tr>

<tr><td class="Bordered">Front Panel</td>
<td class="Bordered">Remain connected</td><td class="Bordered">Remain connected</td></tr>

<tr><td class="Bordered">RTSI/PXI Backplane</td>
<td class="Bordered">Remain connected</td><td class="Bordered">Disconnected</td></tr></table>
</body>
</html>    7�#����  �    Status                            ��-   �  �    vi                                 	              I    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_ConfigureOperationMode</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_ConfigureOperationMode</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_ConfigureOperationMode&nbsp;(ViSession&nbsp;vi, ViConstString&nbsp;channelName, ViInt32&nbsp;operationMode);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Determines how the signal generator produces waveforms. NI signal generators support only Continuous operation mode. To control trigger mode, use the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_ConfigureTriggerMode.html')"><span class="monospace">niFgen_ConfigureTriggerMode</span></a> function.</p>

</body>
</html>

    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Operation Mode</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">operationMode</td>
<td class="paramDataType">ViInt32</td>
<td>Specifies the operation mode you want the signal generator to use.  NI-FGEN sets the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'NIFGEN_ATTR_OPERATION_MODE.html')"><span class="monospace">NIFGEN_ATTR_OPERATION_MODE</span></a> attribute to this value. NI-FGEN supports only one value.

<p class="Body"><strong>Defined Value</strong>: <span class="monospace"> NIFGEN_VAL_OPERATE_CONTINUOUS</span></p></td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>channelName</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">channelName</td>
<td class="paramDataType">ViConstString</td>
<td>Specifies the channel name for which you want to configure the operation mode.

<p class="Body"><strong>Defined Value</strong>: &quot;0&quot;</p>

</td>
 </tr></table></body>
</html>    7�#����  �    Status                            ��-   �  �    vi                                �G = � � �    Operation Mode                    �E =  �  �    Channel Name                       	                          )Continuous NIFGEN_VAL_OPERATE_CONTINUOUS    ""   �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_ConfigureOutputMode</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_ConfigureOutputMode</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_ConfigureOutputMode&nbsp;(ViSession&nbsp;vi, ViInt32&nbsp;outputMode);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Configures the output mode of the signal generator. The output mode determines how the signal generator produces waveforms. For example, you can select to generate a standard waveform, an arbitrary waveform, or a sequence of arbitrary waveforms.</p>

<table class="Borderless-Wide">
<tr>
<td class="Icon"><img src="note.gif"></td>
<td>
<strong>Note</strong>&nbsp;&nbsp; The signal generator must not be in the Generating state when you call this function.</td></tr></table>
</body>
</html>

    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Output Mode</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">outputMode</td>
<td class="paramDataType">ViInt32</td>
<td>Specifies the output mode that you want the signal generator to use.  The value you specify determines which functions and attributes you can use to configure the waveform the signal generator produces.<br><br>

Refer to the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'NIFGEN_ATTR_OUTPUT_MODE.html')"><span class="monospace">NIFGEN_ATTR_OUTPUT_MODE</span></a> attribute for more information about setting this parameter. <br><br>

<strong><strong>Defined Values</strong></strong><br><br>
     
<table class="Bordered"><tr><td class="Bordered"><span class="monospace">NIFGEN_VAL_OUTPUT_FUNC</span></td>
<td class="Bordered"><strong>Standard Function mode</strong>&#8212;Generates standard function waveforms such as sine, square, triangle, and so on.</td></tr>
     
<tr><td class="Bordered"><span class="monospace">NIFGEN_VAL_OUTPUT_FREQ_LIST</span></td>
<td class="Bordered"><strong>Frequency List mode</strong>&#8212;Generates a standard function using a list of frequencies you define.</td></tr>
       
<tr><td class="Bordered"><span class="monospace">NIFGEN_VAL_OUTPUT_ARB</span></td>
<td class="Bordered"><strong>Arbitrary waveform mode</strong>&#8212;Generates waveforms from user-created/provided waveform arrays of numeric data.</td></tr>
       
<tr><td class="Bordered"><span class="monospace">NIFGEN_VAL_OUTPUT_SEQ</span></td>
<td class="Bordered"><strong>Arbitrary sequence mode</strong>&#8212;Generates downloaded waveforms in an order your specify.</td></tr>

<tr><td class="Bordered"><span class="monospace">NIFGEN_VAL_OUTPUT_SCRIPT</span></td>
<td class="Bordered"><strong>Script mode</strong>&#8212;Allows you to use scripting to link and loop multiple waveforms in complex combinations.</td></tr>

</table>

<br><br><strong>Default Value</strong>: <span class="monospace">NIFGEN_VAL_OUTPUT_FUNC</span>


</td>
 </tr></table></body>
</html>    7�#����  �    Status                            ��+   �  �    vi                                �� = � � �    Output Mode                        	                          �Standard Function NIFGEN_VAL_OUTPUT_FUNC Frequency List NIFGEN_VAL_OUTPUT_FREQ_LIST Arbitrary Waveform NIFGEN_VAL_OUTPUT_ARB Arbitrary Sequence NIFGEN_VAL_OUTPUT_SEQ Script NIFGEN_VAL_OUTPUT_SCRIPT   �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_ConfigureChannels</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_ConfigureChannels</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_ConfigureChannels&nbsp;(ViSession&nbsp;vi, ViConstString&nbsp;channels);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Configures the channels to use with the instrument specified in the <strong>vi</strong> parameter.  If you call this function, you must call it immediately after initializing your session and before configuring attributes or writing data.</p>


</body>
</html>

    +    
<html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Enabled</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">channels</td>
<td class="paramDataType">ViConstString</td>

<td>Specifies the channel on which all subsequent channel-based attributes  in the session are set. Valid values are non-negative integers. For example, <span class="monospace">0</span> is the only valid value on devices with one channel, while devices with two channels support values of <span class="monospace">0</span> and <span class="monospace">1</span>. You can specify more than one channel by inserting  commas between values (for example, <span class="monospace">0,1</span>).


</td>
 </tr></table></body>
</html>    7�#����  �    Status                            ��+   �  �    vi                                �� = � �  �    Channels                           	               ""   N    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_ConfigureOutputEnabled</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_ConfigureOutputEnabled</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_ConfigureOutputEnabled&nbsp;(ViSession&nbsp;vi, ViConstString&nbsp;channelName, ViBoolean&nbsp;enabled);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Configures the signal generator to generate a signal at the channel output connector. </p>

</body>
</html>

    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>channelName</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">channelName</td>
<td class="paramDataType">ViConstString</td>
<td>Specifies the channel name for which you want to enable the output.


<p class="Body"><strong>Default Value</strong>: &quot;0&quot;</p>
</td>
 </tr></table></body>
</html>        <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Enabled</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">enabled</td>
<td class="paramDataType">ViBoolean</td>
<td>Specifies whether you want to enable or disable the output. NI-FGEN uses this value to set the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'NIFGEN_ATTR_OUTPUT_ENABLED.html')"><span class="monospace">NIFGEN_ATTR_OUTPUT_ENABLED</span></a> attribute.

<p class="Body"><strong><strong>Defined Values</strong></strong></p>

<table class="Bordered"><tr><td class="bordered"><span class="monospace">VI_TRUE</span></td>
<td class="bordered">Enable the output.</td></tr>

<tr><td class="bordered"><span class="monospace">VI_FALSE</span></td>
<td class="bordered">Disable the output.</td></tr></table>

<p class="Body"><strong>Default Value</strong>: <span class="monospace">VI_TRUE</span></p></td>
 </tr></table></body>
</html>    7�#����  �    Status                            ��-   �  �    vi                                � =  �  �    Channel Name                      �� =
 �  �    Enabled                            	               ""   True VI_TRUE False VI_FALSE   ;    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_ConfigureOutputImpedance</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_ConfigureOutputImpedance</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_ConfigureOutputImpedance&nbsp;(ViSession&nbsp;vi, ViConstString&nbsp;channelName, ViReal64&nbsp;impedance);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Configures the output impedance for the channel you specify.</p>

</body>
</html>

    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>channelName</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">channelName</td>
<td class="paramDataType">ViConstString</td>
<td>Specifies the channel name for which you want to set the output impedance.


<p class="Body"><strong>Default Value</strong>: &quot;0&quot;</p>
</td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Impedance</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">impedance</td>
<td class="paramDataType">ViReal64</td>
<td>Specifies the impedance value that you want the signal generator to use.  NI-FGEN sets the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'NIFGEN_ATTR_OUTPUT_IMPEDANCE.html')"><span class="monospace">NIFGEN_ATTR_OUTPUT_IMPEDANCE</span></a> attribute to this value. 

<p class="Body"><strong>Units</strong>: &#8486; (ohms)</p>

<p class="Body"><strong><strong>Defined Values</strong></strong>:</p>

<table class="bordered"><tr><td class="bordered"><span class="monospace">NIFGEN_VAL_50_OHMS</span></td><td class="bordered">Specifies that 50 &#8486; of impedance is used</td></tr>
<tr><td class="bordered"><span class="monospace">NIFGEN_VAL_75_OHMS</span></td><td class="bordered">Specifies that 75 &#8486; of impedance is used</td></tr></table>


<p class="Body"><strong>Default Value</strong>: <span class="monospace">NIFGEN_VAL_50_OHMS</span></p>
</td>
</tr>
</table></body>
</html>    7�#����  �    Status                            ��-   �  �    vi                                �C =  �  �    Channel Name                      �' = � � �    Impedance                          	               ""               50 ohms 50.0 75 ohms 75.0   �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_EnableAnalogFilter</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_EnableAnalogFilter</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_EnableAnalogFilter&nbsp;(ViSession&nbsp;vi, ViConstString&nbsp;channelName, ViReal64&nbsp;filterCorrectionFrequency);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Configures the analog filter for the device. This function sets the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'NIFGEN_ATTR_ANALOG_FILTER_ENABLED.html')"><span class="monospace">NIFGEN_ATTR_ANALOG_FILTER_ENABLED</span></a> attribute to <span class="monospace">VI_TRUE</span>. This setting can be applied in Arbitrary Waveform, Arbitrary Sequence, or Script output modes. You also can use this setting in Standard Function and Frequency List output modes for user-defined waveforms.</p>

</body>
</html>

    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>channelName</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">channelName</td>
<td class="paramDataType">ViConstString</td>
<td>Specifies the channel name for which you want to enable the analog filter.


<p class="Body"><strong>Default Value</strong>: &quot;0&quot;</p>
</td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>ADD_TITLE</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">filterCorrectionFrequency</td>
<td class="paramDataType">ViReal64</td>
<td>Specifies the filter correction frequency of the analog filter. On the NI&nbsp;5411 and NI&nbsp;5431, 
NI-FGEN adjusts signal amplitude to compensate for the filter attenuation at that 
frequency. To disable amplitude correction, set <strong>filterCorrectionFrequency</strong> to <span class="monospace">0</span>. For 
Standard Function output mode, <strong>filterCorrectionFrequency</strong> typically should  be set to
the same value  as the frequency of the standard waveform. 
<p class="Body"><strong>Units</strong>: hertz</p>

<p class="Body"><strong>Default Value</strong>: 0</p>

</td>
 </tr></table></body>
</html>    �� _ > �  �    Channel Name                      ��   �  �    vi                                7�����  �    Status                            �� ^C �  `    Filter Correction Frequency        ""        	              �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_DisableAnalogFilter</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_DisableAnalogFilter</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_DisableAnalogFilter&nbsp;(ViSession&nbsp;vi, ViConstString&nbsp;channelName);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Disables the analog filter. This function sets the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'NIFGEN_ATTR_ANALOG_FILTER_ENABLED.html')"><span class="monospace">NIFGEN_ATTR_ANALOG_FILTER_ENABLED</span></a> attribute to <span class="monospace">VI_FALSE</span>. This setting can be applied in Arbitrary Waveform, Arbitrary Sequence, or Script output modes. You also can use this setting in Standard Function and Frequency List output modes for user-defined waveforms.</p>

</body>
</html>

    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>channelName</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">channelName</td>
<td class="paramDataType">ViConstString</td>
<td>Specifies the channel name for which you want to disable the analog filter.


<p class="Body"><strong>Default Value</strong>: &quot;0&quot;</p>
</td>
 </tr></table></body>
</html>    �5 u � �  �    Channel Name                      ��   �  �    vi                                7�����  �    Status                             ""        	          �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_EnableDigitalFilter</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_EnableDigitalFilter</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_EnableDigitalFilter&nbsp;(ViSession&nbsp;vi, ViConstString&nbsp;channelName);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Enables the digital filter by setting the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'NIFGEN_ATTR_DIGITAL_FILTER_ENABLED.html')"><span class="monospace">NIFGEN_ATTR_DIGITAL_FILTER_ENABLED</span></a> attribute to <span class="monospace">VI_TRUE</span>. This setting can be applied in Arbitrary Waveform, Arbitrary Sequence, or Script output modes. You also can use this setting in Standard Function and Frequency List output modes for user-defined waveforms.</p>




</body>
</html>

    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>channelName</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">channelName</td>
<td class="paramDataType">ViConstString</td>
<td>Specifies the channel name for which you want to enable the digital filter.


<p class="Body"><strong>Default Value</strong>: &quot;0&quot;</p>
</td>
 </tr></table></body>
</html>    ږ u � �  �    Channel Name                      ��   �  �    vi                                7�����  �    Status                             ""        	          �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_DisableDigitalFilter</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_DisableDigitalFilter</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_DisableDigitalFilter&nbsp;(ViSession&nbsp;vi, ViConstString&nbsp;channelName);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Disables the digital filter. This function sets the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'NIFGEN_ATTR_DIGITAL_FILTER_ENABLED.html')"><span class="monospace">NIFGEN_ATTR_DIGITAL_FILTER_ENABLED</span></a> attribute to <span class="monospace">VI_FALSE</span>. This setting can be applied in Arbitrary Waveform, Arbitrary Sequence, or Script output modes. You also can use this setting in Standard Function and Frequency List output modes for user-defined waveforms.</p>

</body>
</html>

    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>channelName</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">channelName</td>
<td class="paramDataType">ViConstString</td>
<td>Specifies the channel name for which you want to disable the digital filter. 


<p class="Body"><strong>Default Value</strong>: &quot;0&quot;</p>
</td>
 </tr></table></body>
</html>    � u � �  �    Channel Name                      ��   �  �    vi                                7�����  �    Status                             ""        	          !    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_EnableDigitalPatterning</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_EnableDigitalPatterning</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_EnableDigitalPatterning&nbsp;(ViSession&nbsp;vi, ViConstString&nbsp;channelName);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Enables digital pattern output on the signal generator. This function sets the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'NIFGEN_ATTR_DIGITAL_PATTERN_ENABLED.html')"><span class="monospace">NIFGEN_ATTR_DIGITAL_PATTERN_ENABLED</span></a> attribute to <span class="monospace">VI_TRUE</span>.</p>

</body>
</html>

    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>channelName</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">channelName</td>
<td class="paramDataType">ViConstString</td>
<td>Specifies the channel name for which you want to enable the digital pattern output.


<p class="Body"><strong>Default Value</strong>: &quot;0&quot;</p>
</td>
 </tr></table></body>
</html>    ��   �  �    vi                                7�����  �    Status                            �� } � �  �    Channel Name                           	           ""   %    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_DisableDigitalPatterning</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_DisableDigitalPatterning</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_DisableDigitalPatterning&nbsp;(ViSession&nbsp;vi, ViConstString&nbsp;channelName);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Disables digital pattern output on the signal generator. This function sets the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'NIFGEN_ATTR_DIGITAL_PATTERN_ENABLED.html')"><span class="monospace">NIFGEN_ATTR_DIGITAL_PATTERN_ENABLED</span></a> attribute to <span class="monospace">VI_FALSE</span>.</p>
</body>
</html>

    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>channelName</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">channelName</td>
<td class="paramDataType">ViConstString</td>
<td>Specifies the channel name for which you want to disable digital pattern output.


<p class="Body"><strong>Default Value</strong>: &quot;0&quot;</p>
</td>
 </tr></table></body>
</html>    ��   �  �    vi                                7�����  �    Status                            � f � �  �    Channel Name                           	           ""   I    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_ConfigureStandardWaveform</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_ConfigureStandardWaveform</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_ConfigureStandardWaveform&nbsp;(ViSession&nbsp;vi, ViConstString&nbsp;channelName, ViInt32&nbsp;waveform, ViReal64&nbsp;amplitude, ViReal64&nbsp;dcOffset, ViReal64&nbsp;frequency, ViReal64&nbsp;startPhase);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Configures the following attributes of the signal generator that affect standard waveform generation:</p>

<ul>
<li>
<a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'NIFGEN_ATTR_FUNC_WAVEFORM.html')"> <span class="Monospace"> NIFGEN_ATTR_FUNC_WAVEFORM</span></a>
</li>
<li>
<a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'NIFGEN_ATTR_FUNC_AMPLITUDE.html')"> <span class="Monospace"> NIFGEN_ATTR_FUNC_AMPLITUDE</span></a>
</li> 
<li>
<a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'NIFGEN_ATTR_FUNC_DC_OFFSET.html')"> <span class="Monospace"> NIFGEN_ATTR_FUNC_DC_OFFSET</span></a>
</li> 
<li>
<a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'NIFGEN_ATTR_FUNC_FREQUENCY.html')"> <span class="Monospace"> NIFGEN_ATTR_FUNC_FREQUENCY</span></a>
</li> 
<li>
<a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'NIFGEN_ATTR_FUNC_START_PHASE.html')"> <span class="Monospace"> NIFGEN_ATTR_FUNC_START_PHASE</span></a>
</li>
</ul>


<table class="Borderless-Wide">
<tr>
<td class="Icon"><img src="note.gif"></td>
<td>
<strong>Note</strong>&nbsp;&nbsp;You must call the 

<a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cviniFgen_ConfigureOutputMode.html')"> <span class="Monospace"> niFgen_ConfigureOutputMode</span></a> function with the <strong>outputMode</strong> parameter set to <span class="monospace">NIFGEN_VAL_OUTPUT_FUNC</span> before calling this function.</td></tr></table>



</body>
</html>

    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>channelName</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">channelName</td>
<td class="paramDataType">ViConstString</td>
<td>Specifies the channel name for which you want to configure a standard waveform.


<p class="Body"><strong>Default Value</strong>: &quot;0&quot;</p>
</td>
 </tr></table></body>
</html>    3    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Amplitude</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">amplitude</td>
<td class="paramDataType">ViReal64</td>
<td>Specifies the amplitude of the standard waveform that you want the signal generator to produce. This value is the amplitude at the output terminal. NI-FGEN sets the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'NIFGEN_ATTR_FUNC_AMPLITUDE.html')"><span class="monospace">NIFGEN_ATTR_FUNC_AMPLITUDE</span></a> attribute to this value. 

<p class="Body">For example, to produce a waveform ranging from &#8211;5.00&nbsp;V to +5.00&nbsp;V, set the amplitude to 10.00&nbsp;V.</p>


<table class="Borderless-Wide">
<tr>
<td class="Icon"><img src="note.gif"></td>
<td>
<strong>Note</strong>&nbsp;&nbsp; This parameter does not affect signal generator behavior when you set the <strong>waveform</strong> parameter of the <span class="monospace">niFgen_ConfigureStandardWaveform</span> function to <span class="monospace">NIFGEN_VAL_WFM_DC</span>.</td></tr></table>

<p class="Body"><strong>Units</strong>: peak-to-peak voltage</p>

<p class="Body"><strong>Default Value</strong>: None</p>

</td>
 </tr></table></body>
</html>    $    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>DC Offset</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">dcOffset</td>
<td class="paramDataType">ViReal64</td>
<td>Specifies the DC offset of the standard waveform that you want the signal generator to produce. The value is the offset from ground to the center of the waveform you specify with the <strong>waveform</strong> parameter, observed at the output terminal. For example, to configure a waveform with an amplitude of 10.00&nbsp;V to range from 0.00&nbsp;V to +10.00&nbsp;V, set the <strong>dcOffset</strong> to 5.00&nbsp;V. NI-FGEN sets the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'NIFGEN_ATTR_FUNC_DC_OFFSET.html')"><span class="monospace">NIFGEN_ATTR_FUNC_DC_OFFSET</span></a> attribute to this value.

<p class="Body"><strong>Units</strong>: volts</p>

<p class="Body"><strong>Default Value</strong>: None</p>
</td></tr></table>
</body>
</html>    \    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Frequency</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">frequency</td>
<td class="paramDataType">ViReal64</td>
<td>Specifies the frequency of the standard waveform that you want the signal generator to produce. NI-FGEN sets the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'NIFGEN_ATTR_FUNC_FREQUENCY.html')"><span class="monospace">NIFGEN_ATTR_FUNC_FREQUENCY</span></a> attribute to this value.<br><br>

<table class="Borderless-Wide">
<tr>
<td class="Icon"><img src="note.gif"></td>
<td>
<strong>Notes</strong>&nbsp;&nbsp;This parameter does not affect signal generator behavior when you set the <strong>waveform</strong> parameter of the <span class="monospace">niFgen_ConfigureStandardWaveform</span> function to <span class="monospace">NIFGEN_VAL_WFM_DC</span>.</td></tr>

<tr><td></td><td>
Frequency ranges vary from device to device. For information about the frequencies supported on your device, refer to the <em>Features Supported</em> topic for your device in the <em>NI Signal Generators Help</em>.</td></tr></table>


<p class="Body"><strong>Units</strong>: hertz</p>
<p class="Body"><strong>Default Value</strong>: None</p></td>
 </tr></table></body>
</html>    A    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Start Phase</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">startPhase</td>
<td class="paramDataType">ViReal64</td>
<td>Specifies the horizontal offset of the standard waveform that you want the signal generator to produce. Specify this parameter in degrees of one waveform cycle.  NI-FGEN sets the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'NIFGEN_ATTR_FUNC_START_PHASE.html')"><span class="monospace">NIFGEN_ATTR_FUNC_START_PHASE</span></a> attribute to this value. A start phase of 180 degrees means output generation begins halfway through the waveform. A start phase of 360 degrees offsets the output by an entire waveform cycle, which is identical to a start phase of 0 degrees.

<table class="Borderless-Wide">
<tr>
<td class="Icon"><img src="note.gif"></td>
<td>
<strong>Note</strong>&nbsp;&nbsp; This parameter does not affect signal generator behavior when you set the <strong>waveform</strong> parameter to <span class="monospace">NIFGEN_VAL_WFM_DC</span>.</td></tr></table>

<p class="Body"><strong>Units</strong>: degrees of one cycle</p>

<p class="Body"><strong>Default Value</strong>: 0.00</p></td>
 </tr></table></body>
</html>    	�    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Waveform</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">waveform</td>
<td class="paramDataType">ViInt32</td>
<td>Specifies the standard waveform that you want the signal generator to produce. NI-FGEN sets the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'NIFGEN_ATTR_FUNC_WAVEFORM.html')"><span class="monospace">NIFGEN_ATTR_FUNC_WAVEFORM</span></a> attribute to this value.

<p class="Body"><strong><strong>Defined Values</strong></strong></p>

<table class="Bordered"><tr><td class="bordered"><span class="monospace">NIFGEN_VAL_WFM_SINE</span></td>
<td class="bordered">Specifies that the signal generator produces a sinusoid waveform.</td></tr>

<tr><td class="bordered"><span class="monospace">NIFGEN_VAL_WFM_SQUARE</span></td>
<td class="bordered">Specifies that the signal generator produces a square waveform.</td></tr>

<tr><td class="bordered"><span class="monospace">NIFGEN_VAL_WFM_TRIANGLE</span></td>
<td class="bordered">Specifies that the signal generator produces a triangle waveform.</td></tr>

<tr><td class="bordered"><span class="monospace">NIFGEN_VAL_WFM_RAMP_UP</span></td>
<td class="bordered">Specifies that the signal generator produces a positive ramp waveform.</td></tr>

<tr><td class="bordered"><span class="monospace">NIFGEN_VAL_WFM_RAMP_DOWN</span></td>
<td class="bordered">Specifies that the signal generator produces a negative ramp waveform.</td></tr>

<tr><td class="bordered"><span class="monospace">NIFGEN_VAL_WFM_DC</span></td>
<td class="bordered">Specifies that the signal generator produces a constant voltage.</td></tr>

<tr><td class="bordered"><span class="monospace">NIFGEN_VAL_WFM_NOISE</span></td>
<td class="bordered">Specifies that the signal generator produces white noise.</td></tr>

<tr><td class="bordered"><span class="monospace">NIFGEN_VAL_WFM_USER</span></td>
<td class="bordered">Specifies that the signal generator produces a user-defined waveform as defined with the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_DefineUserStandardWaveform.html')"><span class="monospace">niFgen_DefineUserStandardWaveform</span></a> function.</td></tr></table>

<p class="Body"><strong>Default Value</strong>: <span class="monospace">NIFGEN_VAL_WFM_SINE</span></p>
</td>

 </tr></table></body>
</html>    7�#����  �    Status                            ��-   �  �    vi                                �� =  �  �    Channel Name                      �o =� �  �    Amplitude                         �� �  �  �    DC Offset                        � � � �  �    Frequency                        : �� �  �    Start Phase                      � = � � �    Waveform                           	               ""                0.00               �Sine NIFGEN_VAL_WFM_SINE Square NIFGEN_VAL_WFM_SQUARE Triangle NIFGEN_VAL_WFM_TRIANGLE Ramp Up NIFGEN_VAL_WFM_RAMP_UP Ramp Down NIFGEN_VAL_WFM_RAMP_DOWN DC NIFGEN_VAL_WFM_DC User NIFGEN_VAL_WFM_USER       <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_DefineUserStandardWaveform</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_DefineUserStandardWaveform</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_DefineUserStandardWaveform&nbsp;(ViSession&nbsp;vi, ViConstString&nbsp;channelName, ViInt32&nbsp;waveformSize, ViReal64[]&nbsp;waveformDataArray);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Defines a user waveform for use in either Standard Function or Frequency List output mode. </p> 

<p class="Body">To select the waveform, set the <strong>waveform</strong> parameter to 
<span class="monospace">NIFGEN_VAL_WFM_USER</span> with either the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_ConfigureStandardWaveform.html')"><span class="monospace">niFgen_ConfigureStandardWaveform</span></a> or the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_CreateFreqList.html')"><span class="monospace">niFgen_CreateFreqList</span></a> function.</p>

<p class="Body">The waveform data must be scaled between &#8211;1.0 and 1.0. Use the 
<strong>amplitude</strong> parameter in the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cviniFgen_ConfigureStandardWaveform.html')"><span class="monospace">niFgen_ConfigureStandardWaveform</span></a> function to generate different output voltages.
</p>

<table class="Borderless-Wide">
<tr>
<td class="Icon"><img src="note.gif"></td>
<td>
<strong>Note</strong>&nbsp;&nbsp;You must call the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_ConfigureOutputMode.html')"><span class="monospace">niFgen_ConfigureOutputMode</span></a> function     to set the <strong>outputMode</strong> parameter to
<span class="monospace">NIFGEN_VAL_OUTPUT_FUNC</span> or
<span class="monospace">NIFGEN_VAL_OUTPUT_FREQ_LIST</span> before calling this function. </td></tr></table>

</body>
</html>

    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Waveform Size</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">waveformSize</td>
<td class="paramDataType">ViInt32</td>
<td>Specifies the size of the waveform in samples.<br><br>

<strong>Default Value</strong>: <span class="monospace">16384</span>
</td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Waveform Data Array</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">waveformDataArray</td>
<td class="paramDataType">ViReal64[]</td>
<td>Specifies the array of data you want to use for the new arbitrary waveform. The array must have at least as many elements as the value that you specify in <strong>waveformSize</strong>.

<p class="Body">You must normalize the data points in the array to be between &#8211;1.00 and +1.00.</p>

<p class="Body"><strong>Default Value</strong>: None</p>
</td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>channelName</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">channelName</td>
<td class="paramDataType">ViConstString</td>
<td>Specifies the channel name for which you want to define a user standard waveform.


<p class="Body"><strong>Default Value</strong>: &quot;0&quot;</p>
</td>
 </tr></table></body>
</html>   " � > �  �    Waveform Size                    #� � � �  �    Waveform Data Array               ��   �  �    vi                                7�����  �    Status                           &� J > �  �    Channel Name                       16384            	           ""   �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_ClearUserStandardWaveform</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_ClearUserStandardWaveform</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_ClearUserStandardWaveform&nbsp;(ViSession&nbsp;vi, ViConstString&nbsp;channelName);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Clears the user-defined waveform created by the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_DefineUserStandardWaveform.html')"><span class="monospace">niFgen_DefineUserStandardWaveform</span></a> function.</p>

</body>
</html>

    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>channelName</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">channelName</td>
<td class="paramDataType">ViConstString</td>
<td>Specifies the channel name from which you want to clear a user standard waveform.


<p class="Body"><strong>Default Value</strong>: &quot;0&quot;</p>
</td>
 </tr></table></body>
</html>    ��   �  �    vi                                7�����  �    Status                           ,� h � �  �    Channel Name                           	           ""   L    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_ConfigureFrequency</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_ConfigureFrequency</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_ConfigureFrequency&nbsp;(ViSession&nbsp;vi, ViConstString&nbsp;channelName, ViReal64&nbsp;frequency);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Configures the frequency of the standard waveform that you want the signal generator to produce.</p>
</body>
</html>

    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>channelName</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">channelName</td>
<td class="paramDataType">ViConstString</td>
<td>Specifies the channel name for which you want to configure a standard waveform.


<p class="Body"><strong>Default Value</strong>: &quot;0&quot;</p>
</td>
 </tr></table></body>
</html>    ��   �  �    vi                                7�����  �    Status                           1� �  �  �    Channel Name                     � �� �  �    Frequency                              	           ""       M    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_ConfigureAmplitude</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_ConfigureAmplitude</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_ConfigureAmplitude&nbsp;(ViSession&nbsp;vi, ViConstString&nbsp;channelName, ViReal64&nbsp;amplitude);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Configures the amplitude of the standard waveform that you want the signal generator to produce.</p>

</body>
</html>

    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>channelName</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">channelName</td>
<td class="paramDataType">ViConstString</td>
<td>Specifies the channel name for which you want to configure a standard waveform.


<p class="Body"><strong>Default Value</strong>: &quot;0&quot;</p>
</td>
 </tr></table></body>
</html>    7�����  �    Status                            ��   �  �    vi                               6� �  �  �    Channel Name                      �o � �  �    Amplitude                          	               ""       [    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_CreateFreqList</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_CreateFreqList</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_CreateFreqList&nbsp;(ViSession&nbsp;vi, ViInt32&nbsp;waveform, ViInt32&nbsp;frequencyListLength, ViReal64[]&nbsp;frequencyArray, ViReal64[]&nbsp;durationArray, ViInt32*&nbsp;frequencyListHandle);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Creates a frequency list from an array of frequencies (<strong>frequencyArray</strong>) and an array of durations (<strong>durationArray</strong>). The two arrays should have the same number of elements, and this value must also be the size of the <strong>frequencyListLength</strong>. The function returns a handle that identifies the frequency list (the <strong>frequencyListHandle</strong>). You can pass this handle to <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_ConfigureFreqList.html')"><span class="monospace">niFgen_ConfigureFreqList</span></a> to specify what frequency list you want the signal generator to produce.</p>

<table class="Borderless-Wide">
<tr>
<td class="Icon"><img src="note.gif"></td>
<td>
<strong>Notes</strong>&nbsp;&nbsp;The signal generator must not be in the Generating state when you call this function.</td></tr>
<tr>
<td></td>
<td>You must call the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_ConfigureOutputMode.html')"><span class="monospace">niFgen_ConfigureOutputMode</span></a> function  to set the <strong>outputMode</strong> parameter to <span class="monospace">NIFGEN_VAL_OUTPUT_FREQ_LIST</span> before calling this function.</td></tr></table>

<p class="body">A frequency list consists of a list of frequencies and durations. The signal generator generates each frequency for the given amount of time and then proceeds to the next frequency. When the end of the list is reached, the signal generator starts over at the beginning of the list.</p>

</body>
</html>

    G    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Frequency List Length</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">frequencyListLength</td>
<td class="paramDataType">ViInt32</td>
<td>Specifies the number of steps in the frequency list you want to create. The value must be between the minimum and maximum frequency list lengths that the signal generator allows. You can obtain the minimum and maximum frequency list lengths from the <strong>minimumFrequencyListLength</strong> and <strong>maximumFrequencyListLength</strong> parameters in the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_QueryFreqListCapabilities.html')"><span class="monospace">niFgen_QueryFreqListCapabilities</span></a> function.

<p class="Body"><strong>frequency</strong> and <strong>duration</strong> must each be at least as long as this frequency list length.</p>

<p class="Body"><strong>Default Value</strong>: None</p></td>
 </tr></table></body>
</html>    
    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Frequency Array</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">frequencyArray</td>
<td class="paramDataType">ViReal64[]</td>
<td>Specifies the array of frequencies to form the frequency list. The array must have at least as many elements as the value you specify in <strong>frequencyListLength</strong>. Each <strong>frequencyArray</strong> element has a corresponding <strong>durationArray</strong> element that indicates how long that frequency is repeated.  

<p class="Body"><strong>Units</strong>: hertz</p>

<p class="Body"><strong>Default Value</strong>: None</p></td>
 </tr></table></body>
</html>    $    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Duration Array</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">durationArray</td>
<td class="paramDataType">ViReal64[]</td>
<td>Specifies the array of durations to form the frequency list. The array must have at least as many elements as the value that you specify in <strong>frequencyListLength</strong>. Each <strong>durationArray</strong> element has a corresponding <strong>frequencyArray</strong> element and indicates how long in seconds to generate the corresponding frequency.  

<p class="Body"><strong>Units</strong>: seconds</p>

<p class="Body"><strong>Default Value</strong>: None</p></td>
 </tr></table></body>
</html>    |    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Frequency List Handle</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">frequencyListHandle</td>
<td class="paramDataType">ViInt32*</td>
<td>Returns the handle that identifies the new frequency list. You can pass this handle to <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_ConfigureFreqList.html')"><span class="monospace">niFgen_ConfigureFreqList</span></a> to generate the arbitrary sequence.</td>
 </tr></table></body>
</html>    7�#����  �    Status                            ��-   �  �    vi                               A� ( �  �    Frequency List Length            F7 p > �  �    Frequency Array                  II p	 �  �    Duration Array                   Lu � B �  �    Frequency List Handle            � ( > � �    Waveform                           	                           	                       �Sine NIFGEN_VAL_WFM_SINE Square NIFGEN_VAL_WFM_SQUARE Triangle NIFGEN_VAL_WFM_TRIANGLE Ramp Up NIFGEN_VAL_WFM_RAMP_UP Ramp Down NIFGEN_VAL_WFM_RAMP_DOWN DC NIFGEN_VAL_WFM_DC User NIFGEN_VAL_WFM_USER   �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_ConfigureFreqList</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_ConfigureFreqList</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_ConfigureFreqList&nbsp;(ViSession&nbsp;vi, ViConstString&nbsp;channelName, ViInt32&nbsp;frequencyListHandle, ViReal64&nbsp;amplitude, ViReal64&nbsp;dcOffset, ViReal64&nbsp;startPhase);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Configures the attributes of the signal generator that affect frequency list generation 
(the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'NIFGEN_ATTR_FREQ_LIST_HANDLE.html')"><span class="monospace">NIFGEN_ATTR_FREQ_LIST_HANDLE</span></a>, 
<a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'NIFGEN_ATTR_FUNC_AMPLITUDE.html')"><span class="monospace">NIFGEN_ATTR_FUNC_AMPLITUDE</span></a>, 
<a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'NIFGEN_ATTR_FUNC_DC_OFFSET.html')"><span class="monospace">NIFGEN_ATTR_FUNC_DC_OFFSET</span></a>, 
and <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'NIFGEN_ATTR_FUNC_START_PHASE.html')"><span class="monospace">NIFGEN_ATTR_FUNC_START_PHASE</span></a> attributes).</p>

<table class="Borderless-Wide">
<tr>
<td class="Icon"><img src="note.gif"></td>
<td>
<strong>Notes</strong>&nbsp;&nbsp;The signal generator must not be in the Generating state when you call this function.</td></tr>
<tr>
<td></td>
<td>You must call the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_ConfigureOutputMode.html')"><span class="monospace">niFgen_ConfigureOutputMode</span></a> function to set the <strong>outputMode</strong> parameter to <span class="monospace">NIFGEN_VAL_OUTPUT_FREQ_LIST</span> before calling this function.</td></tr></table>
</body>
</html>

    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>channelName</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">channelName</td>
<td class="paramDataType">ViConstString</td>
<td>Specifies the channel name for which you want to configure the frequency list.


<p class="Body"><strong>Default Value</strong>: &quot;0&quot;</p>
</td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Frequency List Handle</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">frequencyListHandle</td>
<td class="paramDataType">ViInt32</td>
<td>Specifies the handle of the frequency list that you want the signal generator to produce. NI-FGEN sets the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'NIFGEN_ATTR_FREQ_LIST_HANDLE.html')"><span class="monospace">NIFGEN_ATTR_FREQ_LIST_HANDLE</span></a> attribute to this value. You can create a frequency list using the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cviniFgen_CreateFreqList.html')"><span class="monospace">niFgen_CreateFreqList</span></a> function, which returns a handle that you use to identify the list.<br><br>

<strong>Default Value</strong>: None

</td>
 </tr></table></body>
</html>    E    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Start Phase</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">startPhase</td>
<td class="paramDataType">ViReal64</td>
<td>Specifies the horizontal offset of the standard waveform you want the  signal generator to produce. Specify this attribute in degrees of one waveform cycle. NI-FGEN sets the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'NIFGEN_ATTR_FUNC_START_PHASE.html')"><span class="monospace">NIFGEN_ATTR_FUNC_START_PHASE</span></a> attribute to this value. A start phase of 180 degrees means output generation begins halfway through the waveform. A start phase of 360 degrees offsets the output by an entire waveform cycle, which is identical to a start phase of 0 degrees.

<table class="Borderless-Wide">
<tr>
<td class="Icon"><img src="note.gif"></td>
<td>
<strong>Note</strong>&nbsp;&nbsp; This parameter does not affect signal generator behavior when you set the <strong>waveform</strong> parameter to <span class="monospace"> NIFGEN_VAL_WFM_DC</span>.</td></tr></table>

<p class="Body"><strong>Units</strong>: degrees of one cycle</p>

<p class="Body"><strong>Default Value</strong>: None degrees</p></td>
 </tr></table></body>
</html>    7�#����  �    Status                            ��-   �  �    vi                               Y  >  �  �    Channel Name                     [ = � �  �    Frequency List Handle             �o =~ �  �    Amplitude                         �� �  �  �    DC Offset                        ^� �~ �  �    Start Phase                        	               ""                       <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_ClearFreqList</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_ClearFreqList</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_ClearFreqList&nbsp;(ViSession&nbsp;vi, ViInt32&nbsp;frequencyListHandle);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Removes a previously created frequency list from the signal generator memory and invalidates the frequency list handle.</p>

<table class="Borderless-Wide">
<tr>
<td class="Icon"><img src="note.gif"></td>
<td>
<strong>Note</strong>&nbsp;&nbsp; The signal generator must not be in the Generating state when you call this function.</td></tr></table>

</body>
</html>

        <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Frequency List Handle</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">frequencyListHandle</td>
<td class="paramDataType">ViInt32</td>
<td>Specifies the handle of the frequency list you want the signal generator to remove. You create multiple frequency lists using <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cviniFgen_CreateFreqList.html')"><span class="monospace">niFgen_CreateFreqList</span></a>. <span class="monospace">niFgen_CreateFreqList</span> returns a handle that you use to identify each list. Specify a value of -1 to clear all frequency lists.

<p class="Body"><strong>Defined Value</strong></p>

<p class="Body"><span class="monospace">NIFGEN_VAL_ALL_FLISTS</span>&#8212;Remove all frequency lists from the signal generator.</p>

<p class="Body"><strong>Default Value</strong>: None</p>
</td>
 </tr></table></body>
</html>    7�#����  �    Status                            ��-   �  �    vi                               h� = � �  �    Frequency List Handle              	                  �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_QueryFreqListCapabilities</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_QueryFreqListCapabilities</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_QueryFreqListCapabilities&nbsp;(ViSession&nbsp;vi, ViInt32*&nbsp;maximumNumberOfFreqLists, ViInt32*&nbsp;minimumFrequencyListLength, ViInt32*&nbsp;maximumFrequencyListLength, ViReal64*&nbsp;minimumFrequencyListDuration, ViReal64*&nbsp;maximumFrequencyListDuration, ViReal64*&nbsp;frequencyListDurationQuantum);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Returns the attributes of the signal generator that are related to creating frequency lists.  These attributes are <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'NIFGEN_ATTR_MAX_NUM_FREQ_LISTS.html')"><span class="monospace">NIFGEN_ATTR_MAX_NUM_FREQ_LISTS</span></a>,

<a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'NIFGEN_ATTR_MIN_FREQ_LIST_LENGTH.html')"><span class="monospace">NIFGEN_ATTR_MIN_FREQ_LIST_LENGTH</span></a>, 

<a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'NIFGEN_ATTR_MAX_FREQ_LIST_LENGTH.html')"><span class="monospace">NIFGEN_ATTR_MAX_FREQ_LIST_LENGTH</span></a>, 

<a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'NIFGEN_ATTR_MIN_FREQ_LIST_DURATION.html')"><span class="monospace">NIFGEN_ATTR_MIN_FREQ_LIST_DURATION</span></a>, 

<a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'NIFGEN_ATTR_MAX_FREQ_LIST_DURATION.html')"><span class="monospace">NIFGEN_ATTR_MAX_FREQ_LIST_DURATION</span></a>, 

and <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'NIFGEN_ATTR_FREQ_LIST_DURATION_QUANTUM.html')"><span class="monospace">NIFGEN_ATTR_FREQ_LIST_DURATION_QUANTUM</span></a>.</p>

</body>
</html>

    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Maximum Number of Freq Lists</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">maximumNumberOfFreqLists</td>
<td class="paramDataType">ViInt32</td>
<td>Returns the maximum number of frequency lists that the signal generator allows. NI-FGEN obtains this value from the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'NIFGEN_ATTR_MAX_NUM_FREQ_LISTS.html')"><span class="monospace">NIFGEN_ATTR_MAX_NUM_FREQ_LISTS</span></a> attribute.</td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Minimum Frequency List Length</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">minimumFrequencyListLength</td>
<td class="paramDataType">ViInt32</td>
<td>Returns the minimum number of steps that the signal generator allows in a frequency list. NI-FGEN obtains this value from the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'NIFGEN_ATTR_MIN_FREQ_LIST_LENGTH.html')"><span class="monospace">NIFGEN_ATTR_MIN_FREQ_LIST_LENGTH</span></a> attribute.</td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Maximum Frequency List Length</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">maximumFrequencyListLength</td>
<td class="paramDataType">ViInt32</td>
<td>Returns the maximum number of steps that the signal generator allows in a frequency list. NI-FGEN obtains this value from the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'NIFGEN_ATTR_MAX_FREQ_LIST_LENGTH.html')"><span class="monospace">NIFGEN_ATTR_MAX_FREQ_LIST_LENGTH</span></a> attribute.</td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Minimum Frequency List Duration</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">minimumFrequencyListDuration</td>
<td class="paramDataType">ViReal64</td>
<td>Returns the minimum duration that the signal generator allows in a step of a frequency list. NI-FGEN obtains this value from the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'NIFGEN_ATTR_MIN_FREQ_LIST_DURATION.html')"><span class="monospace">NIFGEN_ATTR_MIN_FREQ_LIST_DURATION</span></a> attribute.</td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Maximum Frequency List Duration</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">maximumFrequencyListDuration</td>
<td class="paramDataType">ViReal64</td>
<td>Returns the maximum duration that the signal generator allows in a step of a frequency list. NI-FGEN obtains this value from the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'NIFGEN_ATTR_MAX_FREQ_LIST_DURATION.html')"><span class="monospace">NIFGEN_ATTR_MAX_FREQ_LIST_DURATION</span></a> attribute.</td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Frequency List Duration Quantum</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">frequencyListDurationQuantum</td>
<td class="paramDataType">ViReal64</td>
<td>Returns the quantum of which all durations must be a multiple in a frequency list. NI-FGEN obtains this value from the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'NIFGEN_ATTR_FREQ_LIST_DURATION_QUANTUM.html')"><span class="monospace">NIFGEN_ATTR_FREQ_LIST_DURATION_QUANTUM</span></a> attribute.</td>
</tr>
</table>

 </tr></table></body>
</html>    7�#����  �    Status                            ��-   �  �    vi                               uS =  �  �    Maximum Number Of Freq Lists     w� = � �  �    Minimum Frequency List Length    z� =� �  �    Maximum Frequency List Length    }I �  �  �    Minimum Frequency List Duration  � � � �  �    Maximum Frequency List Duration  �� �� �  �    Frequency List Duration Quantum    	               	            	            	            	           	           	          \    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_ConfigureGain</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_ConfigureGain</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_ConfigureGain&nbsp;(ViSession&nbsp;vi, ViConstString&nbsp;channelName, ViReal64&nbsp;gain);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Configures the amount of gain to apply to the waveform.</p>

<table class="Borderless-Wide">
<tr>
<td class="Icon"><img src="note.gif"></td>
<td>
<strong>Notes</strong>&nbsp;&nbsp;The signal generator must not be in the Generating state when you call this function.</td></tr>
<tr>
<td></td>
<td>You must call the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_ConfigureOutputMode.html')"><span class="monospace">niFgen_ConfigureOutputMode</span></a> function  to set the <strong>outputMode</strong> parameter to <span class="monospace">NIFGEN_VAL_OUTPUT_ARB</span> before calling this function.</td></tr></table>

</body>
</html>

    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>channelName</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">channelName</td>
<td class="paramDataType">ViConstString</td>
<td>Specifies the channel name for which you want to configure the gain.


<p class="Body"><strong>Default Value</strong>: &quot;0&quot;</p>
</td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Gain</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">gain</td>
<td class="paramDataType">ViReal64</td>
<td>Specifies the factor by which the signal generator scales the arbitrary waveforms in the sequence. When you create an arbitrary waveform, you must first normalize the data points to a range of &#8211;1.00 to +1.00. You can use this parameter to scale the waveform to other ranges. The gain is applied before the offset is added.

<p class="Body">For example, to configure the output signal to range from &#8211;2.00 to +2.00&nbsp;V, set <strong>gain</strong> to 2.00.</p>

<p class="Body"><strong>Units</strong>: unitless</p>

<p class="Body"><strong>Default Value</strong>: None</p></td>
 </tr></table></body>
</html>    ��'   �  �    vi                                7�%����  �    Status                           �� �  �  �    Channel Name                     �� � �  �    Gain                                   	           ""       (    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_ConfigureSampleRate</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_ConfigureSampleRate</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_ConfigureSampleRate&nbsp;(ViSession&nbsp;vi, ViReal64&nbsp;sampleRate);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Configures the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'NIFGEN_ATTR_ARB_SAMPLE_RATE.html')"><span class="monospace">NIFGEN_ATTR_ARB_SAMPLE_RATE</span></a> attribute, which determines the rate at which the signal generator produces arbitrary waveforms.  When you configure the signal generator to produce an arbitrary sequence, this value is the sample rate for all arbitrary waveforms in the sequence.</p>

<table class="Borderless-Wide">
<tr>
<td class="Icon"><img src="note.gif"></td>
<td>
<strong>Notes</strong>&nbsp;&nbsp;The signal generator must not be in the Generating state when you call this function.</td></tr>
<tr>
<td></td>
<td>
You must call the <a href="javascript:LaunchHelp('fgencref.chm::/cviniFgen_ConfigureOutputMode.html')"> <span class="Monospace"> niFgen_ConfigureOutputMode</span></a> function to set the <strong>outputMode</strong> parameter to <span class="monospace">NIFGEN_VAL_OUTPUT_ARB</span>, <span class="monospace">NIFGEN_VAL_OUTPUT_SEQ</span>, or <span class="monospace">NIFGEN_VAL_OUTPUT_SCRIPT</span> before calling this function.</td></tr></table>

</body>
</html>

    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Sample Rate</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">sampleRate</td>
<td class="paramDataType">ViReal64</td>
<td>Specifies the sample rate at which you want the signal generator to generate arbitrary waveforms. NI-FGEN sets the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'NIFGEN_ATTR_ARB_SAMPLE_RATE.html')"><span class="monospace">NIFGEN_ATTR_ARB_SAMPLE_RATE</span></a> attribute to this value. 

<p class="Body"><strong>Units</strong>: Samples/s</p>

<p class="Body"><strong>Default Value</strong>: None</p></td>
 </tr></table></body>
</html>    7�#����  �    Status                            ��-   �  �    vi                               �k W � �  �    Sample Rate                        	                  2    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_QueryArbWfmCapabilities</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_QueryArbWfmCapabilities</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_QueryArbWfmCapabilities&nbsp;(ViSession&nbsp;vi, ViInt32*&nbsp;maximumNumberofWaveforms, ViInt32*&nbsp;waveformQuantum, ViInt32*&nbsp;minimumWaveformSize, ViInt32*&nbsp;maximumWaveformSize);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Returns the attributes of the signal generator that are related to creating arbitrary waveforms. These attributes are the maximum number of waveforms, waveform quantum, minimum waveform size, and maximum waveform size.</p>

<table class="Borderless-Wide">
<tr>
<td class="Icon"><img src="note.gif"></td>
<td>
<strong>Note</strong>&nbsp;&nbsp; If you do not want to obtain the waveform quantum, pass a value of <span class="monospace">VI_NULL</span> for this parameter.</td></tr></table>

</body>
</html>

    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Maximum Number of Waveforms</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">maximumNumberofWaveforms</td>
<td class="paramDataType">ViInt32*</td>
<td>Returns the maximum number of arbitrary waveforms that the signal generator allows. NI-FGEN obtains this value from the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'NIFGEN_ATTR_MAX_NUM_WAVEFORMS.html')"><span class="monospace">NIFGEN_ATTR_MAX_NUM_WAVEFORMS</span></a> attribute.</td>
 </tr></table></body>
</html>    K    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Waveform Quantum</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">waveformQuantum</td>
<td class="paramDataType">ViInt32*</td>
<td>The size (number of points) of each waveform must be a multiple of a constant quantum value. This parameter obtains the quantum value that the signal generator uses. NI-FGEN returns this value from the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'NIFGEN_ATTR_WAVEFORM_QUANTUM.html')"><span class="monospace">NIFGEN_ATTR_WAVEFORM_QUANTUM</span></a> attribute.

<p class="Body">For example, when this attribute returns a value of 8, all waveform sizes must be a multiple of 8.</p>
</td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Minimum Waveform Size</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">minimumWaveformSize</td>
<td class="paramDataType">ViInt32*</td>
<td>Returns the minimum number of points that the signal generator allows in a waveform. NI-FGEN obtains this value from the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'NIFGEN_ATTR_MIN_WAVEFORM_SIZE.html')"><span class="monospace">NIFGEN_ATTR_MIN_WAVEFORM_SIZE</span></a> attribute.</td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Maximum Waveform Size</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">maximumWaveformSize</td>
<td class="paramDataType">ViInt32*</td>
<td>Returns the maximum number of points that the signal generator allows in a waveform. NI-FGEN obtains this value from the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'NIFGEN_ATTR_MAX_WAVEFORM_SIZE.html')"><span class="monospace">NIFGEN_ATTR_MAX_WAVEFORM_SIZE</span></a> attribute.</td>
 </tr></table></body>
</html>    7�#����  �    Status                            ��-   �  �    vi                               �O = " �  �    Maximum Number of Waveforms      �� = � �  �    Waveform Quantum                 �@ =� �  �    Minimum Waveform Size            �� � # �  �    Maximum Waveform Size              	               	            	            	            	           �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_CreateWaveformF64</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_CreateWaveformF64</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_CreateWaveformF64&nbsp;(ViSession&nbsp;vi, ViConstString&nbsp;channelName, ViInt32&nbsp;waveformSize, ViReal64[]&nbsp;waveformDataArray, ViInt32*&nbsp;waveformHandle);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Creates an onboard waveform from binary F64 (floating point double) data for use in Arbitrary Waveform output mode or Arbitrary Sequence output mode.  The <strong>waveformHandle</strong> returned  can later be used for setting the active waveform, changing the data in the waveform, building sequences of waveforms, or deleting the waveform when it is no longer needed.
</p>

<table class="Borderless-Wide">
<tr>
<td class="Icon"><img src="note.gif"></td>
<td>
<strong>Note</strong>&nbsp;&nbsp; You must call the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_ConfigureOutputMode.html')"><span class="monospace">niFgen_ConfigureOutputMode</span></a> function to set the <strong>outputMode</strong> parameter to <span class="monospace">NIFGEN_VAL_OUTPUT_ARB</span> or <span class="monospace">NIFGEN_VAL_OUTPUT_SEQ</span> before calling this function.</td></tr></table>

</body>
</html>

    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Waveform Size</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">waveformSize</td>
<td class="paramDataType">ViInt32</td>
<td>Specifies the size of the arbitrary waveform that you want to create.
<br><br>The size must meet the following restrictions:

<ul>
<li> The size must be less than or equal to the maximum waveform size that the device allows.</li>
<li>The size must be greater than or equal to the minimum waveform size that the device allows.</li>
<li> The size must be an integer multiple of the device waveform quantum.</li>
</ul>
<p class="body">You can obtain these values from the <strong>maximumWaveformSize</strong>, <strong>minimumWaveformSize</strong>, and <strong>waveformQuantum</strong> parameters of the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_QueryArbWfmCapabilities.html')"><span class="monospace">niFgen_QueryArbWfmCapabilities</span></a> function.</p><strong><strong>Default Value</strong>:</strong> None<br><br></td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>channelName</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">channelName</td>
<td class="paramDataType">ViConstString</td>
<td>Specifies the channel name for which you want to create the waveform.

<p class="Body"><strong>Default Value</strong>: &quot;0&quot;</p>
</td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Waveform Handle</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">waveformHandle</td>
<td class="paramDataType">ViInt32*</td>
<td>The handle that identifies the new waveform.  This handle is used later when referring to this waveform.<br><br></td>
 </tr></table></body>
</html>    7�����  �    Status                            �� 
  �  �    vi                               ��  � �  �    Waveform Size                    #� x �  �    Waveform Data Array              �E   �  �    Channel Name                     �# i| �  �    Waveform Handle                    	                       ""    	           �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_CreateWaveformI16</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_CreateWaveformI16</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_CreateWaveformI16&nbsp;(ViSession&nbsp;vi, ViConstString&nbsp;channelName, ViInt32&nbsp;waveformSize, ViInt16[]&nbsp;waveformDataArray, ViInt32*&nbsp;waveformHandle);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Creates an onboard waveform from binary 16-bit signed integer (I16) data for use in Arbitrary Waveform or Arbitrary Sequence output mode.  The <strong>waveformHandle</strong> returned  can later be used for setting the active waveform, changing the data in the waveform, building sequences of waveforms, or deleting the waveform when it is no longer needed.

<table class="Borderless-Wide">
<tr>
<td class="Icon"><img src="note.gif"></td>
<td>
<strong>Note</strong>&nbsp;&nbsp; You must call the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_ConfigureOutputMode.html')"><span class="monospace">niFgen_ConfigureOutputMode</span></a> function to set the <strong>outputMode</strong> parameter to <span class="monospace">NIFGEN_VAL_OUTPUT_ARB</span> or <span class="monospace">NIFGEN_VAL_OUTPUT_SEQ</span> before calling this function.</td></tr></table>

</body>
</html>

    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Waveform Size</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">waveformSize</td>
<td class="paramDataType">ViInt32</td>
<td>Specifies the size of the arbitrary waveform that you want to create.<br><br>The size must meet the following restrictions:
<ul>
<li> The size must be less than or equal to the maximum waveform size that the device allows.</li>
<li> The size must be greater than or equal to the minimum waveform size that the device allows.</li>
<li> The size must be an integer multiple of the device waveform quantum.</li>
</ul>
<p class="body">You can obtain these values from the <strong>maximumWaveformSize</strong>, <strong>minimumWaveformSize</strong>, and <strong>waveformQuantum</strong> parameters of the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_QueryArbWfmCapabilities.html')"><span class="monospace">niFgen_QueryArbWfmCapabilities</span></a> function.</p><br><strong><strong>Default Value</strong>:</strong> None<br><br></td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Waveform Data Array</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">waveformDataArray</td>
<td class="paramDataType">ViInt16[]</td>
<td>Specify the array of data that you want to use for the new arbitrary waveform. The array must have at least as many elements as the value that you specify in the Waveform Size parameter.
<br>
<br>You must normalize the data points in the array to be between -32768 and +32767.
<br>
<br><strong><strong>Default Value</strong>:</strong> None<br><br></td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>channelName</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">channelName</td>
<td class="paramDataType">ViConstString</td>
<td>Specifies the channel name for which you want to create the waveform.

<p class="Body"><strong>Default Value</strong>: &quot;0&quot;</p>
</td>
 </tr></table></body>
</html>   �� + � �  �    Waveform Size                    Ƣ +~ �  �    Waveform Data Array              �# q~ �  �    Waveform Handle                   �� 	  �  �    vi                                7�����  �    Status                           �\ + # �  �    Channel Name                               	                	           ""   �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_CreateWaveformComplexF64</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_CreateWaveformComplexF64</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_CreateWaveformComplexF64&nbsp;(ViSession&nbsp;vi, ViConstString&nbsp;channelName, ViInt32&nbsp;numberofSamples, niFgen_ComplexF64[]&nbsp;waveformDataArray, ViInt32*&nbsp;waveformHandle);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Creates an onboard waveform from complex double-precision floating-point (F64) data for use with the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'NIFGEN_ATTR_OUTPUT_MODE.html')"><span class="monospace">NIFGEN_ATTR_OUTPUT_MODE</span></a> attribute set to Arbitrary Waveform or Arbitrary Sequence output mode on devices with the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'NIFGEN_ATTR_OUTPUT_ENABLED.html')"><span class="monospace">NIFGEN_ATTR_OUTPUT_ENABLED</span></a> attribute set to <span class="monospace">VI_TRUE</span> and the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'NIFGEN_ATTR_OSP_DATA_PROCESSING_MODE.html')"><span class="monospace">NIFGEN_ATTR_OSP_DATA_PROCESSING_MODE</span></a> attribute set to <span class="monospace">NIFGEN_VAL_OSP_COMPLEX</span>. The <strong>waveformHandle</strong> returned by the function can be used later for setting the active waveform, changing the data in the waveform, building sequences of waveforms, or deleting the waveform when it is no longer needed.</p>

<table class="Borderless-Wide">
<tr>
<td class="Icon"><img src="note.gif"></td>
<td>
<strong>Note</strong>&nbsp;&nbsp; You must call the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_ConfigureOutputMode.html')"><span class="monospace">niFgen_ConfigureOutputMode</span></a> function to set the <strong>outputMode</strong> parameter to <span class="monospace">NIFGEN_VAL_OUTPUT_ARB</span> or <span class="monospace">NIFGEN_VAL_OUTPUT_SEQ</span> before calling this function.</td></tr></table>

</body>
</html>

    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Number of Samples</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">numberofSamples</td>
<td class="paramDataType">ViInt32</td>
<td>Specifies the size of the arbitrary waveform that you want to create.<p class="body">The size must meet the following restrictions:</p>

<ul>
<li> The size must be less than or equal to the maximum waveform size that the device allows.</li>
<li> The size must be greater than or equal to the minimum waveform size that the device allows.</li>
<li>The size must be an integer multiple of the device waveform quantum.</li>
</ul>

<p class="body">You can obtain these values from the <strong>maximumWaveformSize</strong>, <strong>minimumWaveformSize</strong>, and <strong>waveformQuantum</strong> parameters of the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cviniFgen_QueryArbWfmCapabilities.html')"><span class="monospace">niFgen_QueryArbWfmCapabilities</span></a> function.</p><br><strong>Default Value</strong>: None<br><br></td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>channelName</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">channelName</td>
<td class="paramDataType">ViConstString</td>
<td>Specifies the channel name for which you want to create the waveform.


<p class="Body"><strong>Default Value</strong>: &quot;0&quot;</p>
</td>
 </tr></table></body>
</html>    7�����  �    Status                            �� 
  �  �    vi                               �A  � �  �    Number of Samples                #� x �  �    Waveform Data Array              ��   �  �    Channel Name                     �# i| �  �    Waveform Handle                    	                       ""    	           ?    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_CreateWaveformFromFileI16</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_CreateWaveformFromFileI16</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_CreateWaveformFromFileI16&nbsp;(ViSession&nbsp;vi, ViConstString&nbsp;channelName, ViConstString&nbsp;filename, ViInt32&nbsp;byteOrder, ViInt32*&nbsp;waveformHandle);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Takes the binary 16-bit signed integer (I16) data from the specified file and creates an onboard waveform for use in Arbitrary Waveform or Arbitrary Sequence output mode. The <strong>waveformHandle</strong> returned  by this function can later be used for setting the active waveform, changing the data in the waveform, building sequences of waveforms, or deleting the waveform when it is no longer needed.

<table class="Borderless-Wide">
<tr>
<td class="Icon"><img src="note.gif"></td>
<td>
<strong>Notes</strong>&nbsp;&nbsp; The I16 data (values between &#8211;32768 and +32767) is assumed to represent &#8211;1 to +1 V.  Use the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'NIFGEN_ATTR_DIGITAL_GAIN.html')"><span class="monospace">NIFGEN_ATTR_DIGITAL_GAIN</span></a> attribute to generate different voltage outputs.</td></tr>

<tr>
<td></td>
<td>
You must call the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_ConfigureOutputMode.html')"><span class="monospace">niFgen_ConfigureOutputMode</span></a> function to set the <strong>outputMode</strong> parameter to <span class="monospace">NIFGEN_VAL_OUTPUT_ARB</span> or <span class="monospace">NIFGEN_VAL_OUTPUT_SEQ</span> before calling this function.</td></tr></table>



</body>
</html>

    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>channelName</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">channelName</td>
<td class="paramDataType">ViConstString</td>
<td>Specifies the channel name for which you want to create the waveform.


<p class="Body"><strong>Default Value</strong>: &quot;0&quot;</p>
</td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>File Name</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">fileName</td>
<td class="paramDataType">ViConstString</td>
<td>The full path and name of the file where the waveform data resides.<br><br></td>
 </tr></table></body>
</html>    0    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Byte Order</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">byteOrder</td>
<td class="paramDataType">ViInt32</td>
<td>Specifies the byte order of the data in the file.

<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&nbsp;&nbsp;Data written by most applications in Windows (including LabWindows&#8482;/CVI&#8482;) is in Little Endian format. Data written to a file from LabVIEW is in Big Endian format by default on all platforms. Big Endian and Little Endian refer to the way data is stored in memory, which can differ on different processors.</td>
</tr>
</table>

<p class="Body"><strong><strong>Defined Values</strong></strong></p>

<table class="bordered">
<tr>
<td class="bordered"><span class="monospace">NIFGEN_VAL_LITTLE_ENDIAN</span></td> <td class="bordered">Little Endian Data&#8212;The least significant bit is stored at the lowest address, followed by the other bits, in order of increasing significance.</td>
</tr>
<tr>
<td class="bordered"><span class="monospace">NIFGEN_VAL_BIG_ENDIAN</span></td> <td class="bordered">Big Endian Data&#8212;The most significant bit is stored at the lowest address, followed by the other bits, in order of decreasing significance.</td>
</tr>
</table>

<br>
<br><strong><strong>Default Value</strong>:</strong> <span class="monospace">NIFGEN_VAL_LITTLE_ENDIAN</span>
</td>
 </tr></table></body>
</html>   �# �� �  �    Waveform Handle                   �� 
  �  �    vi                                7�����  �    Status                           �} (  �  �    Channel Name                     �\ ^  �     FileName                         �� (� � �    Byte Order                         	                	           ""                   RLittle Endian NIFGEN_VAL_LITTLE_ENDIAN Big Endian (LabVIEW) NIFGEN_VAL_BIG_ENDIAN       <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_CreateWaveformFromFileF64</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_CreateWaveformFromFileF64</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_CreateWaveformFromFileF64&nbsp;(ViSession&nbsp;vi, ViConstString&nbsp;channelName, ViConstString&nbsp;filename, ViInt32&nbsp;byteOrder, ViInt32*&nbsp;waveformHandle);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">This function takes the floating point double (F64) data from the specified file and creates an onboard waveform for use in Arbitrary Waveform or Arbitrary Sequence output mode. The <strong>waveformHandle</strong> returned  by this function can later be used  for setting the active waveform, changing the data in the waveform, building sequences of waveforms, or deleting the waveform when it is no longer needed.


<table class="Borderless-Wide">
<tr>
<td class="Icon"><img src="note.gif"></td>
<td>
<strong>Notes</strong>&nbsp;&nbsp; The F64 data must be between &#8211;1.0 and +1.0 V.  Use the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'NIFGEN_ATTR_DIGITAL_GAIN.html')"><span class="monospace">NIFGEN_ATTR_DIGITAL_GAIN</span></a> attribute to generate different voltage outputs. </td></tr>
<tr>
<td></td>
<td> You must call the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_ConfigureOutputMode.html')"><span class="monospace">niFgen_ConfigureOutputMode</span></a> function to set the <strong>outputMode</strong> parameter to <span class="monospace">NIFGEN_VAL_OUTPUT_ARB</span> or <span class="monospace">NIFGEN_VAL_OUTPUT_SEQ</span> before calling this function.</td></tr></table>

</body>
</html>

        <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>channelName</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">channelName</td>
<td class="paramDataType">ViConstString</td>
<td>Specifies the channel name for which you want to create the waveform.

<p class="Body"><strong>Defined Value</strong>: &quot;0&quot;</p>

<p class="Body"><strong>Default Value</strong>: &quot;0&quot;</p>
</td>
 </tr></table></body>
</html>   �# �� �  �    Waveform Handle                   ��   �  �    vi                                7�����  �    Status                           � $  �  �    Channel Name                     �\ Z  �     FileName                         �� $� � �    Byte Order                         	                	           ""                   RLittle Endian NIFGEN_VAL_LITTLE_ENDIAN Big Endian (LabVIEW) NIFGEN_VAL_BIG_ENDIAN   +    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_CreateWaveformFromFileHWS</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>




<h1 class="function">niFgen_CreateWaveformFromFileHWS</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_CreateWaveformFromFileHWS&nbsp;(ViSession&nbsp;vi, ViConstString&nbsp;channelName, ViConstString&nbsp;filename, ViBoolean&nbsp;useRateFromWaveform, ViBoolean&nbsp;useGain&amp;OffsetFromWaveform, ViInt32*&nbsp;waveformHandle);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Takes the waveform data from the specified HWS (Hierarchical Waveform Storage) file and creates an onboard  waveform for use in Arbitrary Waveform or Arbitrary Sequence output mode. The <strong>waveformHandle</strong> returned by this function can be used later for setting the active waveform, changing the data in the waveform, building sequences of waveforms, or deleting the waveform when it is no longer needed.
<br><br>
When the Analog Waveform Editor saves data in an HWS file, it also stores the rate, gain, and offset with the data. If the <strong>useRateFromWaveform</strong> and <strong>useGain&amp;OffsetFromWaveform</strong> parameters are set to <span class="monospace">VI_TRUE</span>, this function also sets those properties.</p>
<br>

<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Notes</strong>&nbsp;&nbsp;If you choose to have this function set the gain and offset properties for you, you should <strong>not</strong> use the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cviniFgen_ConfigureArbWaveform.html')"><span class="monospace">niFgen_ConfigureArbWaveform</span></a> or <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cviniFgen_ConfigureArbSequence.html')"><span class="monospace">niFgen_ConfigureArbSequence</span></a> functions, as they also set the gain and offset, thereby overriding the values set by this function.  Instead, use the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'NIFGEN_ATTR_ARB_WAVEFORM_HANDLE.html')"><span class="monospace">NIFGEN_ATTR_ARB_WAVEFORM_HANDLE</span></a> or <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'NIFGEN_ATTR_ARB_SEQUENCE_HANDLE.html')"><span class="monospace">NIFGEN_ATTR_ARB_SEQUENCE_HANDLE</span></a> attributes.</td>
</tr>


<tr>
<td></td>
<td> HWS files may contain I16 or DBL data, depending on how it was saved.  This function automatically adapts to either data type.  If the file contains DBL data, it must be between &#8211;1.0 and +1.0.  Check the &quot;Scale Data to +/&#8211; 1V&quot; option in the Analog Waveform Editor to ensure your data is between &#8211;1.0 and +1.0.</td>
</tr>
</table>

</body>
</html>

        <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>channelName</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">channelName</td>
<td class="paramDataType">ViConstString</td>
<td>Specifies the channel name for which you want to create the waveform.

<p class="Body"><strong>Defined Value</strong>: &quot;0&quot;</p>

<p class="Body"><strong>Default Value</strong>: &quot;0&quot;</p>
</td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Use Rate From Waveform</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">useRateFromWaveform</td>
<td class="paramDataType">ViBoolean</td>
<td>If you set this parameter input to <span class="monospace">VI_TRUE</span> and if onboard signal processing (OSP) is enabled, the rate from the waveform is interpreted as the data rate, and FGEN sets the data rate attribute for you. In all other cases, it is interpreted as the sample rate, and FGEN sets the sample rate attribute for you.
<br>
<p class="Body"><strong><strong>Defined Values</strong></strong></p>

<table class="Bordered">
<tr><td class="Bordered"><span class="monospace">VI_TRUE</span></td><td class="bordered">Use rate from waveform.</td></tr>
<tr><td class="Bordered"><span class="monospace">VI_FALSE</span></td><td class="bordered"> Do not use rate from waveform.</td></tr></table>
<br>
<br><strong><strong>Default Value</strong>:</strong> <span class="monospace">VI_TRUE</span><br><br> </td>
 </tr></table></body>
</html>        <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Use Gain & Offset From Waveform</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">useGain&amp;OffsetFromWaveform</td>
<td class="paramDataType">ViBoolean</td>
<td>If this input is set to <span class="monospace">VI_TRUE</span>, NI-FGEN retrieves the gain and offset values from the specified HWS file and applies them to the NI-FGEN driver.
<br>
<p class="Body"><strong><strong>Defined Values</strong></strong></p>

<table class="Bordered">
<tr><td class="Bordered"><span class="monospace">VI_TRUE</span></td><td class="bordered">Use gain and offset from waveform.</td></tr>
<tr><td class="Bordered"><span class="monospace">VI_FALSE</span></td><td class="bordered"> Do not use gain and offset from waveform.
</td></tr></table>
<br><strong><strong>Default Value</strong>:</strong> <span class="monospace">VI_TRUE</span><br><br></td>
 </tr></table></body>
</html>   �# �� �  �    Waveform Handle                   �� 
  �  �    vi                                7�����  �    Status                           / )  �  �    Channel Name                     �\ U  �     FileName                         P � R �       Use Rate From Waveform           � � �       Use Gain & Offset From Waveform    	                	           ""       Yes VI_TRUE No VI_FALSE   Yes VI_TRUE No VI_FALSE   �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_ConfigureArbWaveform</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_ConfigureArbWaveform</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_ConfigureArbWaveform&nbsp;(ViSession&nbsp;vi, ViConstString&nbsp;channelName, ViInt32&nbsp;waveformHandle, ViReal64&nbsp;gain, ViReal64&nbsp;offset);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Configures the attributes of the signal generator that affect arbitrary waveform generation. Sets the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'NIFGEN_ATTR_ARB_WAVEFORM_HANDLE.html')"><span class="monospace">NIFGEN_ATTR_ARB_WAVEFORM_HANDLE</span></a>, <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'NIFGEN_ATTR_ARB_GAIN.html')"><span class="monospace">NIFGEN_ATTR_ARB_GAIN</span></a>, and <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'NIFGEN_ATTR_ARB_OFFSET.html')"><span class="monospace">NIFGEN_ATTR_ARB_OFFSET</span></a> attributes.</p>

<table class="Borderless-Wide">
<tr>
<td class="Icon"><img src="note.gif"></td>
<td>
<strong>Notes</strong>&nbsp;&nbsp;The signal generator must not be in the Generating state when you call this function.</td></tr>

<tr><td></td><td> You must call the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_ConfigureOutputMode.html')"><span class="monospace">niFgen_ConfigureOutputMode</span></a> function  to set the <strong>outputMode</strong> parameter to <span class="monospace">NIFGEN_VAL_OUTPUT_ARB</span> before calling this function.</td>

</tr>
</table>

</body>
</html>

    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>channelName</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">channelName</td>
<td class="paramDataType">ViConstString</td>
<td>Specifies the channel name for which you want to configure an arbitrary waveform.

<p class="Body"><strong>Default Value</strong>: &quot;0&quot;</p>
</td>
 </tr></table></body>
</html>    ?    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Waveform Handle</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">waveformHandle</td>
<td class="paramDataType">ViInt32</td>

<td>Specifies the handle of the arbitrary waveform you want the signal generator to produce. 
NI-FGEN sets the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'NIFGEN_ATTR_ARB_WAVEFORM_HANDLE.html')"><span class="monospace">NIFGEN_ATTR_ARB_WAVEFORM_HANDLE</span></a> attribute 
to this value. You can create an arbitrary waveform using one of the following niFgen Create Waveform functions:

<ul>
<li><a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cviniFgen_CreateWaveformF64.html')"><span class="monospace">niFgen_CreateWaveformF64</span></a></li>

<li>

<a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cviniFgen_CreateWaveformI16.html')"><span class="monospace">niFgen_CreateWaveformI16</span></a></li>


<li>
<a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cviniFgen_CreateWaveformFromFileI16.html')"><span class="monospace">niFgen_CreateWaveformFromFileI16</span></a></li>


<li>
<a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cviniFgen_CreateWaveformFromFileF64.html')"><span class="monospace">niFgen_CreateWaveformFromFileF64</span></a></li>


<li>
<a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cviniFgen_CreateWaveformFromFileHWS.html')"><span class="monospace">niFgen_CreateWaveformFromFileHWS</span></a></li>


</ul>

<p class="body">These functions return a handle that you use to identify the waveform.</p>

<p class="Body"><strong>Default Value</strong>: None</p>

</td>
 </tr></table></body>
</html>    )    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Offset</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">offset</td>
<td class="paramDataType">ViReal64</td>
<td>Specifies the value the signal generator adds to the arbitrary waveform data. When you create arbitrary waveforms, you must first normalize the data points to a range of &#8211;1.00 to +1.00&nbsp;V. You can use this parameter to shift the range of the arbitrary waveform. NI-FGEN sets the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'NIFGEN_ATTR_ARB_OFFSET.html')"><span class="monospace">NIFGEN_ATTR_ARB_OFFSET</span></a> attribute to this value.

<p class="Body">For example, to configure the output signal to range from 0.00 to 2.00&nbsp;V instead of &#8211;1.00 to 1.00&nbsp;V, set the offset to 1.00.</p>

<p class="Body"><strong>Units</strong>: volts</p>

<p class="Body"><strong>Default Value</strong>: None</p>

</td>
 </tr></table></body>
</html>    7�#����  �    Status                            ��-   �  �    vi                               � =  �  �    Channel Name                     � = � �  �    Waveform Handle                  �� >| �  �    Gain                             "� z  �  �    Offset                             	               ""                    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_ClearArbWaveform</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_ClearArbWaveform</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_ClearArbWaveform&nbsp;(ViSession&nbsp;vi, ViInt32&nbsp;waveformHandle);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Removes a previously created arbitrary waveform from the signal generator memory and invalidates the waveform handle.</p>

<table class="Borderless-Wide">
<tr>
<td class="Icon"><img src="note.gif"></td>
<td>
<strong>Note</strong>&nbsp;&nbsp; The signal generator must not be in the Generating state when you call this function.</td></tr></table>

</body>
</html>

    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>waveformHandle</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">waveformHandle</td>
<td class="paramDataType">ViInt32</td>
<td>Specifies the handle of the arbitrary waveform that you want the signal generator to remove. 
<p class="body">You can create multiple arbitrary waveforms using one of the following niFgen Create 
Waveform functions:</p>

<ul>
<li>
<a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cviniFgen_CreateWaveformF64.html')"><span class="monospace">niFgen_CreateWaveformF64</span></a></li>
<li>
<a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cviniFgen_CreateWaveformI16.html')"><span class="monospace">niFgen_CreateWaveformI16</span></a></li>
<li>
<a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cviniFgen_CreateWaveformFromFileI16.html')"><span class="monospace">niFgen_CreateWaveformFromFileI16</span></a></li>
<li>
<a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cviniFgen_CreateWaveformFromFileF64.html')"><span class="monospace">niFgen_CreateWaveformFromFileF64</span></a></li>
<li>
<a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cviniFgen_CreateWaveformFromFileHWS.html')"><span class="monospace">niFgen_CreateWaveformFromFileHWS</span></a></li>
</ul>


<p class="Body"><strong>Defined Value</strong>:</p>

<p class="Body"><span class="monospace">NIFGEN_VAL_ALL_WAVEFORMS</span>&#8212;Remove all waveforms from the signal generator.</p>

<p class="Body"><strong>Default Value</strong>: None</p>

</td>
 </tr></table></body>
</html>    7�#����  �    Status                            ��-   �  �    vi                               +� W � �  �    Waveform Handle                    	                  �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_QueryArbSeqCapabilities</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_QueryArbSeqCapabilities</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_QueryArbSeqCapabilities&nbsp;(ViSession&nbsp;vi, ViInt32*&nbsp;maximumNumberofSequences, ViInt32*&nbsp;minimumSequenceLength, ViInt32*&nbsp;maximumSequenceLength, ViInt32*&nbsp;maximumLoopCount);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Returns the attributes of the signal generator that are related to creating arbitrary sequences (the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'NIFGEN_ATTR_MAX_NUM_SEQUENCES.html')"><span class="monospace">NIFGEN_ATTR_MAX_NUM_SEQUENCES</span></a>, <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'NIFGEN_ATTR_MIN_SEQUENCE_LENGTH.html')"><span class="monospace">NIFGEN_ATTR_MIN_SEQUENCE_LENGTH</span></a>, <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'NIFGEN_ATTR_MAX_SEQUENCE_LENGTH.html')"><span class="monospace">NIFGEN_ATTR_MAX_SEQUENCE_LENGTH</span></a>, and <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'NIFGEN_ATTR_MAX_LOOP_COUNT.html')"><span class="monospace">NIFGEN_ATTR_MAX_LOOP_COUNT</span></a> attributes).</p>
</body>
</html>

    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Maximum Number of Sequences</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">maximumNumberofSequences</td>
<td class="paramDataType">ViInt32*</td>
<td>Returns the maximum number of arbitrary waveform sequences that the signal generator allows.  NI-FGEN obtains this value from the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'NIFGEN_ATTR_MAX_NUM_SEQUENCES.html')"><span class="monospace">NIFGEN_ATTR_MAX_NUM_SEQUENCES</span></a> attribute.</td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Minimum Sequence Length</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">minimumSequenceLength</td>
<td class="paramDataType">ViInt32*</td>
<td>Returns the minimum number of arbitrary waveforms the signal generator allows in a sequence.  NI-FGEN obtains this value from the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'NIFGEN_ATTR_MIN_SEQUENCE_LENGTH.html')"><span class="monospace">NIFGEN_ATTR_MIN_SEQUENCE_LENGTH</span></a> attribute.</td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Maximum Sequence Length</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">maximumSequenceLength</td>
<td class="paramDataType">ViInt32*</td>
<td>Returns the maximum number of arbitrary waveforms the signal generator allows in a sequence.  NI-FGEN obtains this value from the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'NIFGEN_ATTR_MAX_SEQUENCE_LENGTH.html')"><span class="monospace">NIFGEN_ATTR_MAX_SEQUENCE_LENGTH</span></a> attribute.</td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Maximum Loop Count</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">maximumLoopCount</td>
<td class="paramDataType">ViInt32*</td>
<td>Returns the maximum number of times the signal generator can repeat an arbitrary waveform in a sequence.  NI-FGEN obtains this value from the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'NIFGEN_ATTR_MAX_LOOP_COUNT.html')"><span class="monospace">NIFGEN_ATTR_MAX_LOOP_COUNT</span></a> attribute.</td>
 </tr></table></body>
</html>    7�#����  �    Status                            ��-   �  �    vi                               8� = " �  �    Maximum Number of Sequences      ;J = � �  �    Minimum Sequence Length          =� =� �  �    Maximum Sequence Length          @� � # �  �    Maximum Loop Count                 	               	            	            	            	               <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_CreateArbSequence</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_CreateArbSequence</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_CreateArbSequence&nbsp;(ViSession&nbsp;vi, ViInt32&nbsp;sequenceLength, ViInt32[]&nbsp;waveformHandlesArray, ViInt32[]&nbsp;loopCountsArray, ViInt32*&nbsp;sequenceHandle);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body"></p>

<p class="Body">Creates an arbitrary sequence from an array of waveform handles and an array of corresponding loop counts. This function returns a handle that identifies the sequence. You pass this handle to the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_ConfigureArbSequence.html')"><span class="monospace">niFgen_ConfigureArbSequence</span></a> function to specify what arbitrary sequence you want the signal generator to produce.</p>

<table class="Borderless-Wide">
<tr>
<td class="Icon"><img src="note.gif"></td>
<td>
<strong>Note</strong>&nbsp;&nbsp;You must call the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_ConfigureOutputMode.html')"><span class="monospace">niFgen_ConfigureOutputMode</span></a> function  to set the <strong>outputMode</strong> parameter to <span class="monospace">NIFGEN_VAL_OUTPUT_SEQ</span> before calling this function.</td></tr></table>

<p class="body">An arbitrary sequence consists of multiple waveforms. For each waveform, you can specify the number of times that the signal generator produces the waveform before proceeding to the next waveform. The number of times to repeat a specific waveform is called the loop count.</p>


</body>
</html>

    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Sequence Length</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">sequenceLength</td>
<td class="paramDataType">ViInt32</td>
<td>Specifies the number of waveforms in the new arbitrary sequence that you want to create. The value you pass must be between the minimum and maximum sequence lengths that the signal generator allows. You can obtain the minimum and maximum sequence lengths from <strong>minimumSequenceLength</strong> and <strong>maximumSequenceLength</strong> in the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_QueryArbSeqCapabilities.html')"><span class="monospace">niFgen_QueryArbSeqCapabilities</span></a> function.

<p class="Body"><strong>Default Value</strong>: None</p></td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Waveform Handles Array</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">waveformHandlesArray</td>
<td class="paramDataType">ViInt32[]</td>
<td>Specifies the array of waveform handles from which you want to create a new arbitrary 
sequence. The array must have at least as many elements as the value that you specify in 
<strong>sequenceLength</strong>. Each <strong>waveformHandlesArray</strong> element has a 
corresponding <strong>loopCountsArray</strong> element that indicates how many times that 
waveform is repeated. You obtain waveform handles when you create arbitrary waveforms with the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_AllocateWaveform.html')"><span class="monospace">niFgen_AllocateWaveform</span></a> function or one of the following niFgen CreateWaveform functions:

<ul>
<li><a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_CreateWaveformF64.html')"><span class="monospace">niFgen_CreateWaveformF64</span></a></li>
<li><a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_CreateWaveformI16.html')"><span class="monospace">niFgen_CreateWaveformI16</span></a></li>
<li><a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_CreateWaveformFromFileI16.html')"><span class="monospace">niFgen_CreateWaveformFromFileI16</span></a></li>
<li><a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_CreateWaveformFromFileF64.html')"><span class="monospace">niFgen_CreateWaveformFromFileF64</span></a></li>
<li><a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_CreateWaveformFromFileHWS.html')"><span class="monospace">niFgen_CreateWaveformFromFileHWS</span></a></li>
</ul>

<p class="Body"><strong>Default Value</strong>: None</p>

</td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Loop Counts Array</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">loopCountsArray</td>
<td class="paramDataType">ViInt32[]</td>
<td>Specifies the array of loop counts you want to use to create a new arbitrary sequence. The array must have at least as many elements as the value that you specify in the <strong>sequenceLength</strong> parameter. Each <strong>loopCountsArray</strong> element corresponds to a <strong>waveformHandlesArray</strong> element and indicates how many times to repeat that waveform. Each element of the <strong>loopCountsArray</strong> must be less than or equal to the maximum number of loop counts that the signal generator allows. You can obtain the maximum loop count from <strong>maximumLoopCount</strong> in the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_QueryArbSeqCapabilities.html')"><span class="monospace">niFgen_QueryArbSeqCapabilities</span></a> function.

<p class="Body"><strong>Default Value</strong>: None</p>

</td>
 </tr></table></body>
</html>    }    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Sequence Handle</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">sequenceHandle</td>
<td class="paramDataType">ViInt32*</td>
<td>Returns the handle that identifies the new arbitrary sequence.  You can pass this handle to <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_ConfigureArbSequence.html')"><span class="monospace">niFgen_ConfigureArbSequence</span></a> to generate the arbitrary sequence.</td>

 </tr></table></body>
</html>    7�#����  �    Status                            ��-   �  �    vi                               K� =  �  �    Sequence Length                  On = � �  �    Waveform Handles Array           Wm =| �  �    Loop Counts Array                \$ z  �  �    Sequence Handle                    	                           	           	^    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_CreateAdvancedArbSequence</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_CreateAdvancedArbSequence</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_CreateAdvancedArbSequence&nbsp;(ViSession&nbsp;vi, ViInt32&nbsp;sequenceLength, ViInt32[]&nbsp;waveformHandlesArray, ViInt32[]&nbsp;loopCountsArray, 
ViInt32[]&nbsp;sampleCountsArray, 
ViInt32[]&nbsp;markerLocationArray, 
ViInt32[]&nbsp;coercedMarkersArray, 
ViInt32*&nbsp;sequenceHandle);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">

Creates an arbitrary sequence from an array of waveform handles and an array of corresponding loop counts. This function returns a handle that identifies the sequence. You pass this handle to the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cviniFgen_ConfigureArbSequence.html')"><span class="monospace">niFgen_ConfigureArbSequence</span></a> function to specify what arbitrary sequence you want the signal generator to produce.</p>

<p class="body">The <span class="monospace">niFgen_CreateAdvancedArbSequence</span> function extends on the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cviniFgen_CreateArbSequence.html')"><span class="monospace">niFgen_CreateArbSequence</span></a> function by adding the ability to set the number of samples in each sequence step and to set marker locations.</p>


<table class="Borderless-Wide">
<tr>
<td class="Icon"><img src="note.gif"></td>
<td>
<strong>Notes</strong>&nbsp;&nbsp;The signal generator must not be in the Generating state when you call this function.<br><br>You must call the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_ConfigureOutputMode.html')"><span class="monospace">niFgen_ConfigureOutputMode</span></a> function  to set the <strong>outputMode</strong> parameter to <span class="monospace">NIFGEN_VAL_OUTPUT_SEQ</span> before calling this function.</td></tr></table>

<p class="body">An arbitrary sequence consists of multiple waveforms. For each waveform, you specify the number of times the signal generator produces the waveform before proceeding to the next waveform. The number of times to repeat a specific waveform is called the loop count.</p>



</body>
</html>

    }    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Sequence Handle</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">sequenceHandle</td>
<td class="paramDataType">ViInt32*</td>
<td>Returns the handle that identifies the new arbitrary sequence.  You can pass this handle to <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_ConfigureArbSequence.html')"><span class="monospace">niFgen_ConfigureArbSequence</span></a> to generate the arbitrary sequence.</td>

 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Sample Counts Array</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">sampleCountsArray</td>
<td class="paramDataType">ViInt32[]</td>
<td>Specifies the array of sample counts that you want to use to create a new arbitrary sequence.  The array must have at least as many elements as the value you specify in the <strong>sequenceLength</strong> parameter.  Each <strong>sampleCountsArray</strong> element corresponds to a <strong>waveformHandlesArray</strong> element and indicates the subset, in samples, of the given waveform to generate.  Each element of the <strong>sampleCountsArray</strong> must be larger than the minimum waveform size, a multiple of the waveform quantum and no larger than the number of samples in the corresponding waveform.  You can obtain these values by calling the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_QueryArbWfmCapabilities.html')"><span class="monospace">niFgen_QueryArbWfmCapabilities</span></a> function. 

<p class="Body"><strong>Default Value</strong>: None</p>
</td>
 </tr></table></body>
</html>        <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Marker Location Array</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">markerLocationArray</td>
<td class="paramDataType">ViInt32[]</td>
<td>Specifies the array of marker locations to where you want a marker to be generated in the sequence.  The array must have at least as many elements as the value you specify in the <strong>sequenceLength</strong> parameter.  Each <strong>markerLocationArray</strong> element corresponds to a <strong>waveformHandlesArray</strong> element and indicates where in the waveform a marker is to generate.  The marker location must be less than the size of the waveform the marker is in.  The markers are coerced to the nearest marker quantum and the coerced values are returned in the <strong>coercedMarkersArray</strong> parameter.

<p class="Body">If you do not want a marker generated for a particular sequence stage, set this parameter to <span class="monospace">NIFGEN_VAL_NO_MARKER</span>.</p>

<p class="Body"><strong>Defined Value</strong>: <span class="monospace">NIFGEN_VAL_NO_MARKER</span></p>

<p class="Body"><strong>Default Value</strong>: None
</p>
</td>
 </tr></table></body>
</html>        <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Coerced Markers Array</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">coercedMarkersArray</td>
<td class="paramDataType">ViInt32[]</td>
<td>Returns an array of all given markers that are coerced (rounded) to the nearest marker quantum. Not all devices coerce markers. 
<p class="Body"><strong>Default Value</strong>: None</p>
</td>
 </tr></table></body>
</html>   K� #  �  �    Sequence Length                  On # � �  �    Waveform Handles Array           Wm #x �  �    Loop Counts Array                iu �y �  �    Sequence Handle                   ��   �  �    vi                                7�	r���  �    Status                           k� h  �  �    Sample Counts Array              p� hw �  �    Marker Location Array            v  �  �  �    Coerced Markers Array                          	                	                   	           �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_ConfigureArbSequence</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_ConfigureArbSequence</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_ConfigureArbSequence&nbsp;(ViSession&nbsp;vi, VViConstString channelName,
ViInt32 sequenceHandle, ViReal64 gain, ViReal64 offset;</span></p>



<h2 class="purpose">Purpose</h2>

<p class="Body">Configures the signal generator attributes that affect arbitrary sequence generation. Sets the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'NIFGEN_ATTR_ARB_SEQUENCE_HANDLE.html')"><span class="monospace">NIFGEN_ATTR_ARB_SEQUENCE_HANDLE</span></a>, <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'NIFGEN_ATTR_ARB_GAIN.html')"><span class="monospace">NIFGEN_ATTR_ARB_GAIN</span></a>, and <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'NIFGEN_ATTR_ARB_OFFSET.html')"><span class="monospace">NIFGEN_ATTR_ARB_OFFSET</span></a> attributes.

</p>

<table class="Borderless-Wide">
<tr>
<td class="Icon"><img src="note.gif"></td>
<td>
<strong>Notes</strong>&nbsp;&nbsp;The signal generator must not be in the Generating state when you call this function.</td></tr>

<tr>
<td ></td>
<td>You must call the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_ConfigureOutputMode.html')"><span class="monospace">niFgen_ConfigureOutputMode</span></a> function  to set the <strong>outputMode</strong> parameter to <span class="monospace">NIFGEN_VAL_OUTPUT_SEQ</span> before calling this function.</td></tr></table>

</body>
</html>

    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>channelName</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">channelName</td>
<td class="paramDataType">ViConstString</td>
<td>Specifies the channel name from which you want to configure an arbitrary sequence.


<p class="Body"><strong>Default Value</strong>: &quot;0&quot;</p>
</td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Sequence Handle</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">sequenceHandle</td>
<td class="paramDataType">ViInt32</td>

<td>Specifies the handle of the arbitrary sequence that you want the signal generator to produce. NI-FGEN sets the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'NIFGEN_ATTR_ARB_SEQUENCE_HANDLE.html')"><span class="monospace">NIFGEN_ATTR_ARB_SEQUENCE_HANDLE</span></a> attribute to this value. You can create an arbitrary sequence using the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cviniFgen_CreateArbSequence.html')"><span class="monospace">niFgen_CreateArbSequence</span></a> or <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cviniFgen_CreateAdvancedArbSequence.html')"><span class="monospace">niFgen_CreateAdvancedArbSequence</span></a> function. These functions return a handle that you use to identify the sequence.

<p class="Body"><strong>Default Value</strong>: None</p>

</td>
 </tr></table></body>
</html>


    7�#����  �    Status                            ��-   �  �    vi                               �� =  �  �    Channel Name                     �� = � �  �    Sequence Handle                  �� =} �  �    Gain                             "� z  �  �    Offset                             	               ""               "    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_ClearArbSequence</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_ClearArbSequence</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_ClearArbSequence&nbsp;(ViSession&nbsp;vi, ViInt32&nbsp;sequenceHandle);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Removes a previously created arbitrary sequence from the signal generator memory and invalidates the sequence handle.</p>

<table class="Borderless-Wide">
<tr>
<td class="Icon"><img src="note.gif"></td>
<td>
<strong>Note</strong>&nbsp;&nbsp;  The signal generator must not be in the Generating state when you call this function.</td></tr></table>


</body>
</html>

    u    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Sequence Handle</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">sequenceHandle</td>
<td class="paramDataType">ViInt32</td>




<td>Specifies the handle of the arbitrary sequence that you want the signal generator to remove.  You can create an arbitrary sequence using the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_CreateArbSequence.html')"><span class="monospace">niFgen_CreateArbSequence</span></a> or <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_CreateAdvancedArbSequence.html')"><span class="monospace">niFgen_CreateAdvancedArbSequence</span></a> function. These functions return a handle that you use to identify the sequence.

<p class="body"><strong>Defined Value</strong>:<br><span class="monospace">NIFGEN_VAL_ALL_SEQUENCES</span>&#8212;Remove all sequences from the signal generator</p>

<p class="Body"><strong>Default Value</strong>: None</p>

</td>
 </tr></table></body>
</html>

    7�#����  �    Status                            ��-   �  �    vi                               �' ^ � �  �    Sequence Handle                    	                  A    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_ClearArbMemory</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_ClearArbMemory</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_ClearArbMemory&nbsp;(ViSession&nbsp;vi);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Removes all previously created arbitrary waveforms, sequences, and scripts from the signal generator memory and invalidates all waveform handles, sequence handles, and waveform names.</p>

<table class="Borderless-Wide">
<tr>
<td class="Icon"><img src="note.gif"></td>
<td>
<strong>Note</strong>&nbsp;&nbsp;  The signal generator must not be in the Generating state when you call this function.</td></tr></table>


</body>
</html>

    7�#����  �    Status                            ��-   �  �    vi                                 	                  <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_AllocateWaveform</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_AllocateWaveform</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_AllocateWaveform&nbsp;(ViSession&nbsp;vi, ViConstString&nbsp;channelName, ViInt32&nbsp;waveformSize, ViInt32*&nbsp;waveformHandle);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Specifies the size of a waveform so that it can be allocated in onboard memory before loading the associated data. Data can then be loaded in smaller blocks with the Write Binary 16 Waveform functions.</p>

<table class="Borderless-Wide">
<tr>
<td class="Icon"><img src="note.gif"></td>
<td>
<strong>Notes</strong>&nbsp;&nbsp;The signal generator must not be in the Generating state when you call this function.</td></tr>
<tr>
<td></td>
<td>You must call the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_ConfigureOutputMode.html')"><span class="monospace">niFgen_ConfigureOutputMode</span></a> function  to set the <strong>outputMode</strong> parameter to <span class="monospace">NIFGEN_VAL_OUTPUT_SEQ</span> before calling this function.</td></tr></table>

</body>
</html>

    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>channelName</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">channelName</td>
<td class="paramDataType">ViConstString</td>
<td>Specifies the channel name for which you want to allocate the waveform.


<p class="Body"><strong>Default Value</strong>: &quot;0&quot;</p>
</td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Waveform Size</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">waveformSize</td>
<td class="paramDataType">ViInt32</td>
<td>Specifies, in samples, the size of the waveform to allocate.</td>
 </tr></table></body>
</html>    ��   �  �    vi                                7�{���  �    Status                           �> c  �  �    Channel Name                     � �  �  �    Waveform Size                    �# �{ �  �    Waveform Handle                        	           ""    0    	           �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_SetWaveformNextWritePosition</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_SetWaveformNextWritePosition</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_SetWaveformNextWritePosition&nbsp;(ViSession&nbsp;vi, ViConstString&nbsp;channelName, ViInt32&nbsp;waveformHandle, ViInt32&nbsp;relativeto, ViInt32&nbsp;offset);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Sets the position in the waveform at which the next waveform data is written. 
This function allows you to write to arbitrary locations within the waveform. These settings 
apply only to the next write to the waveform specified by the <span class="bold">waveformHandle</span> 
parameter. Subsequent writes to that waveform begin where the last write left off, unless 
this function is called again. The <span class="bold">waveformHandle</span> passed in must have been created by a call 
to the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_AllocateWaveform.html')"><span class="monospace">niFgen_AllocateWaveform</span></a> function or one of the following
niFgen CreateWaveform functions:</p>


<ul>
<li><a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_CreateWaveformF64.html')"><span class="monospace">niFgen_CreateWaveformF64</span></a></li>
<li><a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_CreateWaveformI16.html')"><span class="monospace">niFgen_CreateWaveformI16</span></a></li>
<li><a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_CreateWaveformFromFileI16.html')"><span class="monospace">niFgen_CreateWaveformFromFileI16</span></a></li>
<li><a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_CreateWaveformFromFileF64.html')"><span class="monospace">niFgen_CreateWaveformFromFileF64</span></a></li>
<li><a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_CreateWaveformFromFileHWS.html')"><span class="monospace">niFgen_CreateWaveformFromFileHWS</span></a></li>
</ul>
</body>
</html>

    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>channelName</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">channelName</td>
<td class="paramDataType">ViConstString</td>
<td>Specifies the channel on which to the waveform data should be loaded.

<p class="Body"><strong>Default Value</strong>: &quot;0&quot;</p>
</td>
 </tr></table></body>
</html>    M    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>waveformHandle</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">waveformHandle</td>
<td class="paramDataType">ViInt32</td>
<td>
Specifies the handle of the arbitrary waveform previously allocated with the 
<a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_AllocateWaveform.html')"><span class="monospace">niFgen_AllocateWaveform</span></a> function. 
</td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>relativeTo</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">relativeTo</td>
<td class="paramDataType">ViInt32</td>
<td>Specifies the reference position in the waveform. This position and <strong>offset</strong> together determine where to start loading data into the waveform.

<p class="Body"><strong><strong>Defined Values</strong></strong></p>

<table class="Bordered"><tr><td class="Bordered"><span class="monospace">NIFGEN_VAL_WAVEFORM_POSITION_START</span>&nbsp;(0)  </td>
<td class="Bordered">Use the start of the waveform as the reference position.</td></tr>
<tr><td class="Bordered"><span class="monospace">NIFGEN_VAL_WAVEFORM_POSITION_CURRENT</span>&nbsp;(1)</td> 
<td class="Bordered">Use the current position within the waveform as the reference position.</td></tr></table> </td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>offset</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">offset</td>
<td class="paramDataType">ViInt32</td>
<td>Specifies the offset from <strong>relativeTo</strong> at which to start loading the data into the waveform.</td></tr></table>
 </tr></table></body>
</html>    ��   �  �    vi                                7�{���  �    Status                           �� C  �  �    Channel Name                     �� C � �  �    Waveform Handle                  �� �  � �    relativeTo                       �� � � �  �    offset                                 	           ""                  kStart of Waveform NIFGEN_VAL_WAVEFORM_POSITION_START Current Position NIFGEN_VAL_WAVEFORM_POSITION_CURRENT    0   	�    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_WriteWaveform</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_WriteWaveform</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_WriteWaveform&nbsp;(ViSession&nbsp;vi, ViConstString&nbsp;channelName, ViInt32&nbsp;waveformHandle, ViInt32&nbsp;size, ViReal64[]&nbsp;data);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Writes floating-point data to the waveform in onboard memory. 
The waveform handle passed in must have been created by a call to the 
<a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_AllocateWaveform.html')"><span class="Monospace">niFgen_AllocateWaveform</span></a> function or one of the following 
niFgen CreateWaveform functions:</p>
<ul>
<li><a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_CreateWaveformF64.html')"><span class="monospace">niFgen_CreateWaveformF64</span></a></li>
<li><a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_CreateWaveformI16.html')"><span class="monospace">niFgen_CreateWaveformI16</span></a></li>
<li><a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_CreateWaveformFromFileI16.html')"><span class="monospace">niFgen_CreateWaveformFromFileI16</span></a></li>
<li><a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_CreateWaveformFromFileF64.html')"><span class="monospace">niFgen_CreateWaveformFromFileF64</span></a></li>
<li><a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_CreateWaveformFromFileHWS.html')"><span class="monospace">niFgen_CreateWaveformFromFileHWS</span></a></li>
</ul>
<p class="body">By default, the subsequent call to the <span class="monospace">niFgen_WriteWaveform</span> function continues writing data from the position of the last sample written. You can set the write position and offset by calling the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_SetWaveformNextWritePosition.html')"><span class="monospace">niFgen_SetWaveformNextWritePosition</span></a> function. If streaming is enabled, you can write more data than the allocated waveform size in onboard memory. Refer to the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'streaming.html')">Streaming</a> topic for more information about streaming data.</p>

</body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>channelName</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">channelName</td>
<td class="paramDataType">ViConstString</td>
<td>The channel onto which the waveform data should be loaded. 

<p class="Body"><strong>Default Value</strong>: &quot;0&quot;</p>
</td>
 </tr></table></body>
</html>    M    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>waveformHandle</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">waveformHandle</td>
<td class="paramDataType">ViInt32</td>
<td>
Specifies the handle of the arbitrary waveform previously allocated with the
<a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_AllocateWaveform.html')"><span class="monospace">niFgen_AllocateWaveform</span></a> function. 
</td>
 </tr></table></body>
</html>
    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Size</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">size</td>
<td class="paramDataType">ViInt32</td>
<td>Specifies the number of samples to load into the waveform.

<p class="Body"><strong>Default Value</strong>: 0</p>
</td>
 </tr></table></body>
</html>

    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Data</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">data</td>
<td class="paramDataType">ViInt64[]</td>
<td>Specifies the array of data to load into the waveform. The array must have at least as many elements as the value in <strong>size</strong>.</td>
 </tr></table></body>
</html>    ��   �  �    vi                                7�}���  �    Status                           �@ C  �  �    Channel Name                     � �  �  �    Waveform Handle                  �i � � �  �    Size                             � C � �  �    Data                                   	           ""        0    0   !    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_WriteWaveformComplexF64</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_WriteWaveformComplexF64</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_WriteWaveformComplexF64&nbsp;(ViSession&nbsp;vi, ViConstString&nbsp;channelName, ViInt32&nbsp;numberofSamples, niFgen_ComplexF64[]&nbsp;data, ViInt32&nbsp;waveformHandle);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Writes complex data to the waveform in onboard memory on devices with the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'NIFGEN_ATTR_OUTPUT_ENABLED.html')"><span class="monospace">NIFGEN_ATTR_OUTPUT_ENABLED</span></a> attribute set to <span class="monospace">VI_TRUE</span> and the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'NIFGEN_ATTR_OSP_DATA_PROCESSING_MODE.html')"><span class="monospace">NIFGEN_ATTR_OSP_DATA_PROCESSING_MODE</span></a> attribute set to <span class="monospace">NIFGEN_VAL_OSP_COMPLEX</span>. The waveform handle passed in must have been created by a call to the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_AllocateWaveform.html')"><span class="monospace">niFgen_AllocateWaveform</span></a> function or to one of the following niFgen Create Waveform functions:</p>

<ul>
<li><a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_CreateWaveformF64.html')"><span class="monospace">niFgen_CreateWaveformF64</span></a></li>

<li><a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_CreateWaveformI16.html')"><span class="monospace">niFgen_CreateWaveformI16</span></a></li>

<li> <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_CreateWaveformFromFileI16.html')"><span class="monospace">niFgen_CreateWaveformFromFileI16</span></a></li>

<li><a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_CreateWaveformFromFileF64.html')"><span class="monospace">niFgen_CreateWaveformFromFileF64</span></a></li>

<li><a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_CreateWaveformFromFileHWS.html')"><span class="monospace">niFgen_CreateWaveformFromFileHWS</span></a></li>
</ul>


<p class="body">By default, the subsequent call to the <span class="monospace">niFgen_WriteWaveformComplexF64</span> function continues writing data from the position of the last sample written. You can set the write position and offset by calling the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_SetWaveformNextWritePosition.html')"><span class="monospace">niFgen_SetWaveformNextWritePosition</span></a> function. If streaming is enabled, you can write more data than the allocated waveform size in onboard memory. Refer to the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'streaming.html')">Streaming</a> topic for more information about streaming data.</p>

</body>
</html>

    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>channelName</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">channelName</td>
<td class="paramDataType">ViConstString</td>
<td>Specifies the channel onto which the waveform data should be loaded. 

<p class="Body"><strong>Default Value</strong>: &quot;0&quot;</p>
</td>
 </tr></table></body>
</html>    N    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>waveformHandle</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">waveformHandle</td>
<td class="paramDataType">ViInt32</td>
<td>
Specifies the handle of the arbitrary waveform previously allocated with the  
<a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cviniFgen_AllocateWaveform.html')"><span class="monospace">niFgen_AllocateWaveform</span></a> function. 
</td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Number of Samples</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">numberofSamples</td>
<td class="paramDataType">ViInt32</td>
<td>Specifies the number of samples to load into the waveform.<br><br><strong>Default Value</strong>: <span class="monospace">0</span><br><br></td>
 </tr></table></body>
</html>    F    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Data</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">data</td>
<td class="paramDataType">niFgen_ComplexF64[]</td>
<td>Specifies the array of data to load into the waveform. You must normalize the data points in the array to be between &#8211;1.00 and +1.00. The array must have at least as many elements as the value in the <strong>numberOfSamples</strong> parameter.<br><br></td>
 </tr></table></body>
</html>    ��   �  �    vi                                7�����  �    Status                           �w H  �  �    Channel Name                     �U �  �  �    Waveform Handle                  ֫ � � �  �    Number of Samples                ؎ H � �  �    Data                                   	           ""        0    0   �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_WriteBinary16Waveform</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_WriteBinary16Waveform</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_WriteBinary16Waveform&nbsp;(ViSession&nbsp;vi, ViConstString&nbsp;channelName, ViInt32&nbsp;waveformHandle, ViInt32&nbsp;size, ViInt16[]&nbsp;data);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Writes binary data to the waveform in onboard memory. The waveform handle 
passed must have been created by a call to the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_AllocateWaveform.html')"><span class="monospace">niFgen_AllocateWaveform</span></a>
or the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_CreateWaveformI16.html')"><span class="monospace">niFgen_CreateWaveformI16</span></a> function.</p>
<p class="body">By default, the subsequent call to the <span class="monospace">niFgen_WriteBinary16Waveform</span> function continues writing data from the position of the last sample written. You can set the write position and offset by calling the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_SetWaveformNextWritePosition.html')"><span class="monospace">niFgen_SetWaveformNextWritePosition</span></a> function. If streaming is enabled, you can write more data than the allocated waveform size in onboard memory. Refer to the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'streaming.html')">Streaming</a> topic for more information about streaming data.</p>

</body>
</html>

    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>channelName</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">channelName</td>
<td class="paramDataType">ViConstString</td>
<td>Specifies the channel on which to the waveform data should be loaded.  

<p class="Body"><strong>Default Value</strong>: &quot;0&quot;</p>
</td>
 </tr></table></body>
</html>    N    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>waveformHandle</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">waveformHandle</td>
<td class="paramDataType">ViInt32</td>
<td>
Specifies the handle of the arbitrary waveform previously allocated with the 
<a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_AllocateWaveform.html')"><span class="monospace">niFgen_AllocateWaveform</span></a> function. 
</td> 
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Data</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">data</td>
<td class="paramDataType">ViInt16 []</td>
<td>Specifies the array of data to load into the waveform. The array must have at least as many elements as the value in <strong>size</strong>. The binary data is left-justified.</td>
 </tr></table></body>
</html>    ��   �  �    vi                                7�����  �    Status                           � 3 
 �  �    Channel Name                     �� w 
 �  �    Waveform Handle                  �i w � �  �    Size                             �7 3 � �  �    Data                                   	           ""        0    0   �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_WriteComplexBinary16Waveform</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_WriteComplexBinary16Waveform</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_WriteComplexBinary16Waveform&nbsp;(ViSession&nbsp;vi, ViConstString&nbsp;channelName, ViInt32&nbsp;waveformHandle, ViInt32&nbsp;size, NIComplexI16[]&nbsp;data);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Writes binary data to the waveform in onboard memory. The waveform handle passed in must have been created by a call to the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_AllocateWaveform.html')"><span class="monospace">niFgen_AllocateWaveform</span></a> or the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_CreateWaveformI16.html')"><span class="monospace">niFgen_CreateWaveformI16</span></a> function.</p>
<p class="body">By default, the subsequent call to the <span class="monospace">niFgen_WriteComplexBinary16Waveform</span> function continues writing data from the position of the last sample written. You can set the write position and offset by calling the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_SetWaveformNextWritePosition.html')"><span class="monospace">niFgen_SetWaveformNextWritePosition</span></a> function. If streaming is enabled, you can write more data than the allocated waveform size in onboard memory. Refer to the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'streaming.html')">Streaming</a> topic for more information about streaming data.</p>
</body>
</html>

    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>channelName</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">channelName</td>
<td class="paramDataType">ViConstString</td>
<td>Specifies channel on which to the waveform data should be loaded.  

<p class="Body"><strong>Default Value</strong>: &quot;0&quot;</p>
</td>
 </tr></table></body>
</html>    M    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>waveformHandle</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">waveformHandle</td>
<td class="paramDataType">ViInt32</td>
<td>
Specifies the handle of the arbitrary waveform previously allocated with the 
<a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_AllocateWaveform.html')"><span class="monospace">niFgen_AllocateWaveform</span></a> function. 
</td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Data</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">data</td>
<td class="paramDataType">NIComplexI16&nbsp;[]</td>
<td>Specifies the array of data to load into the waveform. The array must have at least as many elements as the value in <strong>size</strong>. The binary data is left-justified.</td>
 </tr></table></body>
</html>    ��   �  �    vi                                7�����  �    Status                           �p >  �  �    Channel Name                     �L �  �  �    Waveform Handle                  �i � � �  �    Size                             �� > � �  �    Data                                   	           ""        0    0   2    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_ConfigureReferenceClock</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_ConfigureReferenceClock</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_ConfigureReferenceClock&nbsp;(ViSession&nbsp;vi, ViConstString&nbsp;referenceClockSource, ViReal64&nbsp;referenceClockFrequency);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Configures the signal generator Reference Clock source and frequency. 

The signal generator uses the Reference Clock to tune the Sample Clock timebase of the signal generator so that the frequency stability and accuracy of the Sample Clock timebase matches that of the Reference Clock.</p>


</body>
</html>

    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Reference Clock Source</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">referenceClockSource</td>
<td class="paramDataType">ViConstString</td>
<td>Specifies the source for the Reference Clock.



For example, when you set this parameter to &quot;ClkIn,&quot; the signal generator uses the signal it receives at its CLK IN front panel connector as the Reference Clock. The Reference Clock phase-locks with the signal generator Sample Clock timebase to allow the frequency stability and accuracy of the Sample Clock timebase to match that of the Reference Clock.


<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&nbsp;&nbsp; The following <strong>Defined Values</strong> are examples of possible Reference Clock sources. For a complete list of the Reference Clock sources available on your device, refer to the Routes topic for your device or the <strong>Device Routes</strong> tab in MAX.</td>
</tr>
</table>
<br>

<strong><strong>Defined Values</strong></strong>

<table class="bordered">
<tr><td class="bordered">&quot;None&quot;</td><td class="bordered">No Reference Clock</td></tr>

<tr><td class="bordered">&quot;PXI_Clk&quot;</td><td class="bordered">10 MHz backplane Reference Clock</td></tr>

<tr><td class="bordered">&quot;ClkIn&quot;</td><td class="bordered">CLK IN front panel connector</td></tr>

<tr><td class="bordered">&quot;OnboardReferenceClock&quot;</td>
<td class="bordered">Onboard Reference Clock</td></tr>

<tr><td class="bordered">&quot;RTSI7&quot;</td><td class="bordered">RTSI line 7</td></tr>

<tr><td class="bordered">&quot;RefIn&quot;</td><td class="bordered">REF IN front panel connector</td></tr>

</table>
<br>
<strong>Default Value</strong>: &quot;None&quot;


</td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Reference Clock Frequency</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">referenceClockFrequency</td>
<td class="paramDataType">ViReal64</td>
<td>The Reference Clock frequency in hertz.
<p class="Body"><strong>Default Value</strong>: 10000000</p>
</td>
 </tr></table></body>
</html>    7�{���  �    Status                            ��   �  �    vi                               �9 p % � �    Reference Clock Source           � p[ �  `    Reference Clock Frequency          	                          wNone "None" PXI Clock "PXI_Clk" Clock In "ClkIn" Onboard Reference Clock "OnboardRefClk" RTSI 7 "RTSI7" Ref In "RefIn"    	10000000   =    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_ConfigureSampleClockSource</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_ConfigureSampleClockSource</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_ConfigureSampleClockSource&nbsp;(ViSession&nbsp;vi, ViConstString&nbsp;sampleClockSource);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Sets the source of the Sample Clock (Update Clock) of the signal generator.</p>

</body>
</html>

    	*    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>SampleClockSource</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">sampleClockSource</td>
<td class="paramDataType">ViConstString</td>
<td>Specifies the Sample Clock source the signal generator uses. <br><br>


<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&nbsp;&nbsp; The following <strong>Defined Values</strong> are examples of possible Sample Clock sources. For a complete list of the Sample Clock sources available on your device, refer to the Routes topic for your device or the <strong>Device Routes</strong> tab in MAX.</td>
</tr>
</table>
<br>
<strong><strong>Defined Values</strong></strong>

<table class="bordered">
<tr><td class="bordered">&quot;OnboardClock&quot;</td><td class="bordered">Onboard Clock</td></tr>


<tr><td class="bordered">&quot;ClkIn&quot;</td><td class="bordered">CLK IN front panel connector</td></tr>

<tr><td class="bordered">&quot;PXI_Star&quot;</td><td class="bordered">PXI star trigger line</td></tr>

<tr><td class="bordered">&quot;PXI_Trig0&quot;</td>
<td class="bordered">PXI trigger line 0 or RTSI line 0</td></tr>

<tr><td class="bordered">&quot;PXI_Trig1&quot;</td>
<td class="bordered">PXI trigger line 1 or RTSI line 1</td></tr>

<tr><td class="bordered">&quot;PXI_Trig2&quot;</td>
<td class="bordered">PXI trigger line 2 or RTSI line 2</td></tr>

<tr><td class="bordered">&quot;PXI_Trig3&quot;</td>
<td class="bordered">PXI trigger line 3 or RTSI line 3</td></tr>

<tr><td class="bordered">&quot;PXI_Trig4&quot;</td>
<td class="bordered">PXI trigger line 4 or RTSI line 4</td></tr>

<tr><td class="bordered">&quot;PXI_Trig5&quot;</td>
<td class="bordered">PXI trigger line 5 or RTSI line 5</td></tr>

<tr><td class="bordered">&quot;PXI_Trig6&quot;</td>
<td class="bordered">PXI trigger line 6 or RTSI line 6</td></tr>

<tr><td class="bordered">&quot;PXI_Trig7&quot;</td>
<td class="bordered">PXI trigger line 7 or RTSI line 7</td></tr>

<tr><td class="bordered">&quot;DDC_ClkIn&quot;</td>
<td class="bordered">Sample Clock from DDC connector</td></tr>

</table>

<br><strong>Default Value</strong>: &quot;OnboardClock&quot;


</td>
 </tr></table></body>
</html>    �� 	  �  �    vi                                7�����  �    Status                           	u H � � �    Sample Clock Source                    	                     �Onboard Clock "OnboardClock" Clock In "ClkIn" PXI STAR Line "PXI_Star" PXI Trigger Line 0/RTSI 0 "PXI_Trig0" PXI Trigger Line 1/RTSI 1 "PXI_Trig1" PXI Trigger Line 2/RTSI 2 "PXI_Trig2" PXI Trigger Line 3/RTSI 3 "PXI_Trig3" PXI Trigger Line 4/RTSI 4 "PXI_Trig4" PXI Trigger Line 5/RTSI 5 "PXI_Trig5" PXI Trigger Line 6/RTSI 6 "PXI_Trig6" PXI Trigger Line 7/RTSI 7 "PXI_Trig7" DDC Clock In "DDC_ClkIn"   K    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_ConfigureClockMode</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_ConfigureClockMode</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_ConfigureClockMode&nbsp;(ViSession&nbsp;vi, ViInt32&nbsp;clockMode);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Selects the clock mode for the signal generator.  </p>

<p class="Body">Some signal generators allow you to switch the Sample Clock to High-Resolution or Automatic Sampling mode with this function.</p>

<p class="Body">When you select <span class="monospace">NIFGEN_VAL_DIVIDE_DOWN</span>, NI-FGEN rounds the sample rate to a frequency that can be achieved by dividing down the board clock (Sample Clock timebase). However, if you select <span class="monospace">NIFGEN_VAL_HIGH_RESOLUTION</span>, you can set the sample rate to any value. If you select <span class="monospace">NIFGEN_VAL_AUTOMATIC</span>, NI-FGEN selects the clock mode based on the sample rate, using divide-down sampling when possible.</p>

<table class="Borderless-Wide">
<tr>
<td class="Icon"><img src="note.gif"></td>
<td>
<strong>Notes</strong>&nbsp;&nbsp;The signal generator must not be in the Generating state when you call this function.</td></tr>
<tr>
<td></td>
<td>You must call the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_ConfigureOutputMode.html')"><span class="monospace">niFgen_ConfigureOutputMode</span></a> function  to set the <strong>outputMode</strong> parameter to <span class="monospace">NIFGEN_VAL_OUTPUT_SEQ</span>, <span class="monospace">NIFGEN_VAL_OUTPUT_ARB</span>, or <span class="monospace">NIFGEN_VAL_OUTPUT_SCRIPT</span> before calling this function.</td></tr></table>


</body>
</html>

    J    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Clock Mode</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">clockMode</td>
<td class="paramDataType">ViInt32</td>
<td>Sets the clock mode of the signal generator. 

<p class="Body"><strong><strong>Defined Values</strong></strong></p>

<table class="bordered"><tr><td class="bordered"><span class="monospace">NIFGEN_VAL_DIVIDE_DOWN</span></td><td class="bordered"><strong>Divide down sampling</strong>&#8212;Sample rates are generated by dividing the source frequency.</td></tr>
<tr><td class="bordered"><span class="monospace">NIFGEN_VAL_HIGH_RESOLUTION</span></td><td class="bordered"><strong>High resolution sampling</strong>&#8212;Sample rate is generated by a high-resolution clock source.</td></tr>
<tr><td class="bordered"><span class="monospace">NIFGEN_VAL_AUTOMATIC</span></td><td class="bordered"><strong>Automatic Selection</strong>&#8212;NI-FGEN selects between the divide-down and high-resolution clocking modes.</td></tr>
</table>

<p class="Body"><strong>Default Value</strong>: <span class="monospace">NIFGEN_VAL_HIGH_RESOLUTION</span> (NI 5450, NI 5451), <span class="monospace">NIFGEN_VAL_DIVIDE_DOWN</span> (all other devices)</p></td>
 </tr></table></body>
</html>    ��   �  �    vi                                7�����  �    Status                           H W � � �    Clock Mode                             	                      Divide-Down Sampling NIFGEN_VAL_DIVIDE_DOWN High-Resolution Sampling NIFGEN_VAL_HIGH_RESOLUTION Automatic NIFGEN_VAL_AUTOMATIC   �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_AdjustSampleClockRelativeDelay</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_AdjustSampleClockRelativeDelay</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_AdjustSampleClockRelativeDelay&nbsp;(ViSession&nbsp;vi, ViReal64&nbsp;adjustmentTime);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Delays (or phase shifts) the Sample Clock, which delays the generated signal.  Delaying the Sample Clock can be useful when synchronizing the output of multiple modules or when intentionally phase shifting the output relative to a fixed reference, such as the PLL Reference Clock. </p> 
<p class="Body">Adjustment time can be positive or negative, but it must be less than or equal to the Sample Clock period.  The delay takes effect immediately after this function is called.  To delay an external Sample Clock, use the 
<a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'NIFGEN_ATTR_SAMPLE_CLOCK_ABSOLUTE_DELAY.html')"><span class="monospace">NIFGEN_ATTR_SAMPLE_CLOCK_ABSOLUTE_DELAY</span></a> attribute.</p>
</body>
</html>

    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Adjustment Time</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">adjustmentTime</td>
<td class="paramDataType">ViReal64</td>
<td>Specifies the amount of time to adjust the Sample Clock delay.

<p class="Body"><strong>Units</strong>: Seconds</p>

<p class="Body"><strong>Default Value</strong>: 0</p>

</td>
 </tr></table></body>
</html>    ��%   �  �    vi                                7�����  �    Status                           '� � � �  �    Adjustment Time                        	           0   E    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_ConfigureDigitalEdgeStartTrigger</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_ConfigureDigitalEdgeStartTrigger</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_ConfigureDigitalEdgeStartTrigger&nbsp;(ViSession&nbsp;vi, ViConstString&nbsp;source, ViInt32&nbsp;edge);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Configures the Start Trigger for digital edge triggering.</p>

</body>
</html>

    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Source</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">source</td>
<td class="paramDataType">ViConstString</td>
<td>Specifies which trigger source the signal generator uses.
<p class="body"><strong>Defined Values</strong></p>
<table class="bordered">
<tr><td class="bordered">&quot;PFI0&quot;</td><td class="bordered">PFI 0</td></tr>

<tr><td class="bordered">&quot;PFI1&quot;</td><td class="bordered">PFI 1</td></tr>

<tr><td class="bordered">&quot;PFI2&quot;</td><td class="bordered">PFI 2</td></tr>

<tr><td class="bordered">&quot;PFI3&quot;</td><td class="bordered">PFI 3</td></tr>

<tr><td class="bordered">&quot;PFI4&quot;</td><td class="bordered">PFI 4</td></tr>

<tr><td class="bordered">&quot;PFI5&quot;</td><td class="bordered">PFI 5</td></tr>

<tr><td class="bordered">&quot;PFI6&quot;</td><td class="bordered">PFI 6</td></tr>

<tr><td class="bordered">&quot;PFI7&quot;</td><td class="bordered">PFI 7</td></tr>

<tr><td class="bordered">&quot;PXI_Trig0&quot;</td>
<td class="bordered">PXI trigger line 0 or RTSI line 0</td></tr>

<tr><td class="bordered">&quot;PXI_Trig1&quot;</td>
<td class="bordered">PXI trigger line 1 or RTSI line 1</td></tr>

<tr><td class="bordered">&quot;PXI_Trig2&quot;</td>
<td class="bordered">PXI trigger line 2 or RTSI line 2</td></tr>

<tr><td class="bordered">&quot;PXI_Trig3&quot;</td>
<td class="bordered">PXI trigger line 3 or RTSI line 3</td></tr>

<tr><td class="bordered">&quot;PXI_Trig4&quot;</td>
<td class="bordered">PXI trigger line 4 or RTSI line 4</td></tr>

<tr><td class="bordered">&quot;PXI_Trig5&quot;</td>
<td class="bordered">PXI trigger line 5 or RTSI line 5</td></tr>

<tr><td class="bordered">&quot;PXI_Trig6&quot;</td>
<td class="bordered">PXI trigger line 6 or RTSI line 6</td></tr>

<tr><td class="bordered">&quot;PXI_Trig7&quot;</td>
<td class="bordered">PXI trigger line 7 or RTSI line 7</td></tr>

<tr><td class="bordered">&quot;PXI_Star&quot;</td><td class="bordered">PXI star trigger line</td></tr>


</table>

<p class="body"><strong>Default Value</strong>:  &quot;PFI0&quot;</p>
</td>
 </tr>
</table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Edge</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">edge</td>
<td class="paramDataType">ViInt32</td>
<td>Specifies the edge to detect. 

<p class="body"><strong><strong>Defined Values</strong></strong></p>
<table class="bordered">
<tr><td class="bordered"><span class="monospace">NIFGEN_VAL_RISING_EDGE</span></td><td class="bordered">Occurs when the signal transitions from low level to high level.</td></tr>
<tr><td class="bordered"><span class="monospace">NIFGEN_VAL_FALLING_EDGE</span></td><td class="bordered">Occurs when the signal transitions from high level to low level.</td></tr>
</table>
<p class="body"><strong><strong>Default Value</strong>:</strong>
<span class="monospace">NIFGEN_VAL_RISING_EDGE</span></p>
</td>
 </tr></table></body>
</html>    �� 	  �  �    vi                                7�����  �    Status                           ,� 8 � � �    Source                           5� � � � �    Edge                                   	                     }PFI 0 "PFI0" PFI 1 "PFI1" PFI 2 "PFI2" PFI 3 "PFI3" PXI Trigger Line 0/RTSI 0 "PXI_Trig0" PXI Trigger Line 1/RTSI 1 "PXI_Trig1" PXI Trigger Line 2/RTSI 2 "PXI_Trig2" PXI Trigger Line 3/RTSI 3 "PXI_Trig3" PXI Trigger Line 4/RTSI 4 "PXI_Trig4" PXI Trigger Line 5/RTSI 5 "PXI_Trig5" PXI Trigger Line 6/RTSI 6 "PXI_Trig6" PXI Trigger Line 7/RTSI 7 "PXI_Trig7" PXI STAR Line "PXI_Star"               HRising Edge NIFGEN_VAL_RISING_EDGE Falling Edge NIFGEN_VAL_FALLING_EDGE   m    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_ConfigureP2PEndpointFullnessStartTrigger</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_ConfigureP2PEndpointFullnessStartTrigger</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_ConfigureP2PEndpointFullnessStartTrigger&nbsp;(ViSession&nbsp;vi, ViInt32&nbsp;p2pEndpointFullnessLevel);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Configures the Start Trigger for to detect peer-to-peer endpoint fullness. Generation begins when the number of samples in the peer-to-peer endpoint reaches the threshold indicated by the <strong>p2pEndpointFullnessLevel</strong> parameter.

</p>
<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&nbsp;&nbsp;Because there is an additional internal FIFO in the signal generator, the writer peer must actually write 2,304 bytes more than the quantity of data specified by this function to satisfy the trigger level.</td>
</tr>
</table>


</body>
</html>

    y    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>p2pEndpointFullnessLevel</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">p2pEndpointFullnessLevel</td>
<td class="paramDataType">ViInt32</td>
<td>Specifies the quantity of data in the FIFO endpoint that asserts the trigger. The value&nbsp;<span class="monospace">&#8211;1</span> specifies that NI-FGEN uses a default value based on your endpoint configuration.

<p class="body"><strong>Units</strong>: samples per channel</p>
</td>
 </tr></table></body>
</html>    �� 	  �  �    vi                                7�����  �    Status                           @q - � �  �    p2pEndpointFullnessLevel               	           -1       <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_ConfigureSoftwareEdgeStartTrigger</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_ConfigureSoftwareEdgeStartTrigger</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_ConfigureSoftwareEdgeStartTrigger&nbsp;(ViSession&nbsp;vi);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Configures the Start Trigger for software edge triggering.</p>

</body>
</html>

    �� 	  �  �    vi                                7�����  �    Status                                 	          �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_DisableStartTrigger</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_DisableStartTrigger</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_DisableStartTrigger&nbsp;(ViSession&nbsp;vi);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Disables the Start Trigger.</p>
</body>
</html>

    �� 	  �  �    vi                                7�����  �    Status                                 	          q    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_ConfigureDigitalEdgeScriptTrigger</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_ConfigureDigitalEdgeScriptTrigger</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_ConfigureDigitalEdgeScriptTrigger&nbsp;(ViSession&nbsp;vi, ViConstString&nbsp;triggerID, ViConstString&nbsp;source, ViInt32&nbsp;edge);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Configures the specified Script Trigger for digital edge triggering.</p>

</body>
</html>

    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Trigger ID</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">triggerID</td>
<td class="paramDataType">ViConstString</td>
<td>Specifies the Script Trigger used for triggering.
<p class="body"><strong>Defined Values</strong></p>
<table class="bordered">
<tr><td class="bordered">&quot;ScriptTrigger0&quot;</td><td class="bordered">Script Trigger 0</td></tr>
<tr><td class="bordered">&quot;ScriptTrigger1&quot;</td><td class="bordered">Script Trigger 1</td></tr>
<tr><td class="bordered">&quot;ScriptTrigger2&quot;</td><td class="bordered">Script Trigger 2</td></tr>
<tr><td class="bordered">&quot;ScriptTrigger3&quot;</td><td class="bordered">Script Trigger 3</td></tr>
</table>

<p class="body"><strong>Default Value</strong>: &quot;ScriptTrigger0&quot;</p>
</td>
 </tr>
</table></body>
</html>    ��   �  �    vi                                7�����  �    Status                           ,� 82 � �    Source                           5� �3 � �    Edge                             K 9 D � �    Trigger ID                             	                     }PFI 0 "PFI0" PFI 1 "PFI1" PFI 2 "PFI2" PFI 3 "PFI3" PXI Trigger Line 0/RTSI 0 "PXI_Trig0" PXI Trigger Line 1/RTSI 1 "PXI_Trig1" PXI Trigger Line 2/RTSI 2 "PXI_Trig2" PXI Trigger Line 3/RTSI 3 "PXI_Trig3" PXI Trigger Line 4/RTSI 4 "PXI_Trig4" PXI Trigger Line 5/RTSI 5 "PXI_Trig5" PXI Trigger Line 6/RTSI 6 "PXI_Trig6" PXI Trigger Line 7/RTSI 7 "PXI_Trig7" PXI STAR Line "PXI_Star"               HRising Edge NIFGEN_VAL_RISING_EDGE Falling Edge NIFGEN_VAL_FALLING_EDGE               �Script Trigger 0 "ScriptTrigger0" Script Trigger 1 "ScriptTrigger1" Script Trigger 2 "ScriptTrigger2" Script Trigger 3 "ScriptTrigger3"   |    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_ConfigureDigitalLevelScriptTrigger</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_ConfigureDigitalLevelScriptTrigger</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_ConfigureDigitalLevelScriptTrigger&nbsp;(ViSession&nbsp;vi, ViConstString&nbsp;triggerID, ViConstString&nbsp;source, ViInt32&nbsp;triggerWhen);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Configures the specified Script Trigger for digital level triggering.</p>

</body>
</html>

    8    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Trigger When</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">triggerWhen</td>
<td class="paramDataType">ViInt32</td>
<td>Specifies whether the Script Trigger asserts on a high or low digital level.
<p class="body"><strong>Defined Values</strong></p>
<table class="bordered">
<tr><td class="bordered">&quot;HighLevel&quot;</td><td class="bordered">Script Trigger asserts on a high digital level.</td></tr>
<tr><td class="bordered">&quot;LowLevel&quot;</td><td class="bordered">Script Trigger asserts on a low digital level.</td></tr>
</table>

<p class="body"><strong>Default Value</strong>: &quot;HighLevel&quot;</p>
</td>
 </tr></table></body>
</html>    ��   �  �    vi                                7�����  �    Status                           ,� 82 � �    Source                           T� �3 � �    Trigger When                     K 9 D � �    Trigger ID                             	                     }PFI 0 "PFI0" PFI 1 "PFI1" PFI 2 "PFI2" PFI 3 "PFI3" PXI Trigger Line 0/RTSI 0 "PXI_Trig0" PXI Trigger Line 1/RTSI 1 "PXI_Trig1" PXI Trigger Line 2/RTSI 2 "PXI_Trig2" PXI Trigger Line 3/RTSI 3 "PXI_Trig3" PXI Trigger Line 4/RTSI 4 "PXI_Trig4" PXI Trigger Line 5/RTSI 5 "PXI_Trig5" PXI Trigger Line 6/RTSI 6 "PXI_Trig6" PXI Trigger Line 7/RTSI 7 "PXI_Trig7" PXI STAR Line "PXI_Star"               BHigh Level NIFGEN_VAL_ACTIVE_HIGH Low Level NIFGEN_VAL_ACTIVE_LOW               �Script Trigger 0 "ScriptTrigger0" Script Trigger 1 "ScriptTrigger1" Script Trigger 2 "ScriptTrigger2" Script Trigger 3 "ScriptTrigger3"   F    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_ConfigureSoftwareEdgeScriptTrigger</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_ConfigureSoftwareEdgeScriptTrigger</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_ConfigureSoftwareEdgeScriptTrigger&nbsp;(ViSession&nbsp;vi, ViConstString&nbsp;triggerID);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Configures the specified Script Trigger for software edge triggering.</p>
</body>
</html>

    �� 	  �  �    vi                                7�����  �    Status                           K x � � �    Trigger ID                             	                      �Script Trigger 0 "ScriptTrigger0" Script Trigger 1 "ScriptTrigger1" Script Trigger 2 "ScriptTrigger2" Script Trigger 3 "ScriptTrigger3"   �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_DisableScriptTrigger</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_DisableScriptTrigger</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_DisableScriptTrigger&nbsp;(ViSession&nbsp;vi, ViConstString&nbsp;triggerID);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Disables the specified Script Trigger.</p>

</body>
</html>

    �� 	  �  �    vi                                7�����  �    Status                           K  � � �    Trigger ID                             	                      �Script Trigger 0 "ScriptTrigger0" Script Trigger 1 "ScriptTrigger1" Script Trigger 2 "ScriptTrigger2" Script Trigger 3 "ScriptTrigger3"       <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_ConfigureTriggerMode</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_ConfigureTriggerMode</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_ConfigureTriggerMode&nbsp;(ViSession&nbsp;vi, ViConstString&nbsp;channelName, ViInt32&nbsp;triggerMode);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Sets the trigger mode for your device. Refer to the <em>Trigger Modes</em> topic for your device in the <em>NI&nbsp;Signal Generators Help</em> for descriptions of the specific behavior for supported trigger modes.</p>

<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Notes</strong>&nbsp;&nbsp;The signal generator must not be in the Generating state when you call this function.<br><br>
In Frequency List output mode, Stepped trigger mode is the same as Burst trigger mode.
</td>
</tr>
</table>


</body>
</html>

    
X    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Trigger Mode</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">triggerMode</td>
<td class="paramDataType">ViInt32</td>
<td>Specifies the trigger mode.

<p class="Body"><strong><strong>Defined Values</strong></strong></p>

<table class="Bordered"><tr><td class="Bordered"><span class="monospace">NIFGEN_VAL_SINGLE</span></td>
<td class="Bordered">The waveform that you describe in the sequence list generates only once by going through the entire staging list. Only one trigger is required to start the waveform generation. You can use Single trigger mode in any output mode. After a trigger is received, the waveform generation starts from the first stage and continues through to the last stage.</td></tr>

<tr><td class="Bordered"><span class="monospace">NIFGEN_VAL_CONTINUOUS</span>&nbsp;</td>
<td class="Bordered">The waveform that you describe in the staging list generates infinitely by repeatedly cycling through the staging list. After a trigger is received, the waveform generation starts from the first stage and continues through to the last stage. After the last stage is completed, the waveform generation loops back to the start of the first stage and continues until it is stopped. Only one trigger is required to start the waveform generation.</td></tr>

<tr><td class="Bordered"><span class="monospace">NIFGEN_VAL_STEPPED</span></td>
<td class="Bordered">After a Start Trigger is received, the waveform described by the first stage generates. Then, the device waits for the next trigger signal. On the next trigger, the waveform described by the second stage generates, and so on. After the staging list is exhausted, the waveform generation returns to the first stage and continues to repeat the cycle.</td></tr>

<tr><td class="Bordered"><span class="monospace">NIFGEN_VAL_BURST</span></td>
<td>After a Start Trigger is received, the waveform described by the first stage generates until another trigger is received. At the next trigger, the buffer of the previous stage completes, then the waveform described by the second stage generates. After the staging list is exhausted, the waveform generation returns to the first stage and continues to repeat the cycle. In Frequency List mode, the duration instruction is ignored, and the trigger switches the frequency to the next frequency in the list.</td></tr></table>


<p class="Body"><strong>Default Value</strong>: <span class="monospace">NIFGEN_VAL_CONTINUOUS</span></p>
</td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>channelName</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">channelName</td>
<td class="paramDataType">ViConstString</td>
<td>Specifies the channel name for which you want to configure the trigger mode.


<p class="Body"><strong>Default Value</strong>: &quot;0&quot;</p>
</td>
 </tr></table></body>
</html>    ��   �  �    vi                                7�����  �    Status                           f� H= � �    Trigger Mode                     q I K �  �    Channel Name                           	                     lSingle NIFGEN_VAL_SINGLE Continuous NIFGEN_VAL_CONTINUOUS Stepped NIFGEN_VAL_STEPPED Burst NIFGEN_VAL_BURST    ""   O    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_SendSoftwareEdgeTrigger</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_SendSoftwareEdgeTrigger</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_SendSoftwareEdgeTrigger&nbsp;(ViSession&nbsp;vi, viInt32&nbsp;trigger, viConstString&nbsp;triggerID);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Sends a command to trigger the signal generator. This VI can act as an override for an external edge trigger. 
</p>

<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&nbsp;&nbsp;This VI does not override external digital edge triggers of the NI&nbsp;5401/5411/5431.
</td>
</tr>
</table>

</body>
</html>

    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Trigger</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">trigger</td>
<td class="paramDataType">ViInt32</td>
<td>Specifies the type of trigger to send.
<p class="Body"><strong><strong>Defined Values</strong></strong></p>

<table class="bordered">
<tr><td class="Bordered"><span class="monospace">NIFGEN_VAL_START_TRIGGER</span></td><td class="bordered">Transitions the device from an Idle state to a Generation state where the device can respond to Sample clocks.</td></tr>
<tr><td class="Bordered"><span class="monospace">NIFGEN_VAL_SCRIPT_TRIGGER</span></td><td class="bordered">Allows you to create sophisticated generation operations that are determined by the generation script.</td></tr>
</table>

<p class="Body"><strong>Default Value</strong>: <span class="monospace">NIFGEN_VAL_START_TRIGGER</span></p>
</td>


 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Trigger ID</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">triggerID</td>
<td class="paramDataType">ViConstString</td>
<td>Identifies the specific trigger to use.
<p class="body"><strong>Defined Values</strong></p>
<table class="bordered"><tr><td class="bordered">&quot;None&quot;</td><td class="bordered">None</td></tr>
<tr><td class="bordered">&quot;ScriptTrigger0&quot;</td><td class="bordered">Script Trigger 0</td></tr>
<tr><td class="bordered">&quot;ScriptTrigger1&quot;</td><td class="bordered">Script Trigger 1</td></tr>
<tr><td class="bordered">&quot;ScriptTrigger2&quot;</td><td class="bordered">Script Trigger 2</td></tr>
<tr><td class="bordered">&quot;ScriptTrigger3&quot;</td><td class="bordered">Script Trigger 3</td></tr>
</table>

<p class="body"><strong>Default Value</strong>: &quot;None&quot;</p>
</td>
 </tr></table></body>
</html>    ��   �  �    vi                                7�����  �    Status                           w� Z � � �    Trigger                          {� � � � �    Trigger ID                             	                      PStart Trigger NIFGEN_VAL_START_TRIGGER Script Trigger NIFGEN_VAL_SCRIPT_TRIGGER               �None "" Script Trigger 0 "ScriptTrigger0" Script Trigger 1 "ScriptTrigger1" Script Trigger 2 "ScriptTrigger2" Script Trigger 3 "ScriptTrigger3"   /    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_ConfigureSynchronization</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_ConfigureSynchronization</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_ConfigureSynchronization&nbsp;(ViSession&nbsp;vi, ViConstString&nbsp;channelName, ViInt32&nbsp;synchronizationSource);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Sets the signal generator to receive a synchronization signal to synchronize two or more NI&nbsp;5401/5411/5431 signal generators. One signal generator should route a SYNC signal to a RTSI line by calling the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_ExportSignal.html')"><span class="monospace">niFgen_ExportSignal</span></a> function (use the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_RouteSignalOut.html')"><span class="monospace">niFgen_RouteSignalOut</span></a> function for the NI 5404), and other signal generators should receive the signal by calling the <span class="monospace">niFgen_ConfigureSynchronization</span> function.</p>

<table class="Borderless-Wide">
<tr>
<td class="Icon"><img src="note.gif"></td>
<td>
<strong>Notes</strong>&nbsp;&nbsp;The signal generator must not be in the Generating state when you call this function.<br><br>
Only the NI&nbsp;5401/5411/5431 signal generators require this function to be called for proper synchronization.
</td></tr></table>

</body>
</html>

    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>channelName</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">channelName</td>
<td class="paramDataType">ViConstString</td>
<td>Specifies the channel name for which you want to configure the synchronization signal.


<p class="Body"><strong>Default Value</strong>: &quot;0&quot;</p>
</td>
 </tr></table></body>
</html>    o    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Synchronization Source</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">synchronizationSource</td>
<td class="paramDataType">ViInt32</td>
<td>Specify the source of the synchronization signal you want to use. 

<p class="Body"><strong><strong>Defined Values</strong></strong></p>

<table class="Bordered"><tr><td><span class="monospace">NIFGEN_VAL_NONE</span>&nbsp;&nbsp;</td>
<td class="Bordered">Specifies that no synchronization source is used.</td></tr>

<tr><td class="Bordered"><span class="monospace">NIFGEN_VAL_RTSI_0</span>&nbsp;&nbsp;</td>
<td class="Bordered">Specifies that RTSI 0 or PXI_Trig 0 is used as the synchronization source.</td></tr>

<tr><td class="Bordered"><span class="monospace">NIFGEN_VAL_RTSI_1</span>&nbsp;&nbsp;</td>
<td class="Bordered">Specifies that RTSI 1 or PXI_Trig 1 is used as the synchronization source.</td></tr>

<tr><td class="Bordered"><span class="monospace">NIFGEN_VAL_RTSI_2</span>&nbsp;&nbsp;</td>
<td class="Bordered">Specifies that RTSI 2 or PXI_Trig 2 is used as the synchronization source.</td></tr>

<tr><td class="Bordered"><span class="monospace">NIFGEN_VAL_RTSI_3</span>&nbsp;&nbsp;</td>
<td class="Bordered">Specifies that RTSI 3 or PXI_Trig 3 is used as the synchronization source.</td></tr>

<tr><td class="Bordered"><span class="monospace">NIFGEN_VAL_RTSI_4</span>&nbsp;&nbsp;</td>
<td class="Bordered">Specifies that RTSI 4 or PXI_Trig 4 is used as the synchronization source.</td></tr>

<tr><td class="Bordered"><span class="monospace">NIFGEN_VAL_RTSI_5</span>&nbsp;&nbsp;</td>
<td class="Bordered">Specifies that RTSI 5 or PXI_Trig 5 is used as the synchronization source.</td></tr>

<tr><td class="Bordered"><span class="monospace">NIFGEN_VAL_RTSI_6</span>&nbsp;&nbsp;</td>
<td class="Bordered">Specifies that RTSI 6 or PXI_Trig 6 is used as the synchronization source.</td></tr>

<tr><td class="Bordered"><span class="monospace">NIFGEN_VAL_TTL0</span>&nbsp;&nbsp;</td>
<td class="Bordered">Specifies that TTL 0 is used as the synchronization source.</td></tr>

<tr><td class="Bordered"><span class="monospace">NIFGEN_VAL_TTL1</span>&nbsp;&nbsp;</td>
<td class="Bordered">Specifies that TTL 1 is used as the synchronization source.</td></tr>

<tr><td class="Bordered"><span class="monospace">NIFGEN_VAL_TTL2</span>&nbsp;&nbsp;</td>
<td class="Bordered">Specifies that TTL 2 is used as the synchronization source.</td></tr>

<tr><td class="Bordered"><span class="monospace">NIFGEN_VAL_TTL3</span>&nbsp;&nbsp;</td>
<td class="Bordered">Specifies that TTL 3 is used as the synchronization source.</td></tr>

<tr><td class="Bordered"><span class="monospace">NIFGEN_VAL_TTL4</span>&nbsp;&nbsp;</td>
<td class="Bordered">Specifies that TTL 4 is used as the synchronization source.</td></tr>

<tr><td class="Bordered"><span class="monospace">NIFGEN_VAL_TTL5</span>&nbsp;&nbsp;</td>
<td class="Bordered">Specifies that TTL 5 is used as the synchronization source.</td></tr>

<tr><td class="Bordered"><span class="monospace">NIFGEN_VAL_TTL6</span>&nbsp;&nbsp;</td>
<td class="Bordered">Specifies that TTL 6 is used as the synchronization source.</td></tr></table>

<p class="Body"><strong>Default Value</strong>: <span class="monospace">NIFGEN_VAL_NONE</span></p>
</td>
</tr>
</table>
 </tr></table></body>
</html>   �� O j �  �    Channel Name                     �� O- � �    Synchronization Source            �� 
  �  �    vi                                7�����  �    Status                             ""              WNONE NIFGEN_VAL_NONE TTL0 NIFGEN_VAL_TTL0 TTL1 NIFGEN_VAL_TTL1 TTL2 NIFGEN_VAL_TTL2 TTL3 NIFGEN_VAL_TTL3 TTL4 NIFGEN_VAL_TTL4 TTL5 NIFGEN_VAL_TTL5 TTL6 NIFGEN_VAL_TTL6 RTSI 0 NIFGEN_VAL_RTSI_0 RTSI 1 NIFGEN_VAL_RTSI_1 RTSI 2 NIFGEN_VAL_RTSI_2 RTSI 3 NIFGEN_VAL_RTSI_3 RTSI 4 NIFGEN_VAL_RTSI_4 RTSI 5 NIFGEN_VAL_RTSI_5 RTSI 6 NIFGEN_VAL_RTSI_6        	          1    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_ExportSignal</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_ExportSignal</h1>

<p class="syntax"><span class="monospace">ViStatus&nbsp;niFgen_ExportSignal&nbsp;(ViSession&nbsp;vi, ViInt32&nbsp;signal, ViConstString&nbsp;signalIdentifier, ViConstString&nbsp;outputTerminal);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Routes signals (clocks, triggers, and events) to the output terminal you specify.</p>

<p class="Body">Any routes created within a session persist after the session closes to prevent signal glitching. To unconfigure signal routes created in previous sessions, set <strong>resetDevice</strong> in the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cviniFgen_init.html')"><span class="monospace">niFgen_init</span></a> function to <span class="monospace">VI_TRUE</span> or use the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cviniFgen_ResetDevice.html')"><span class="monospace">niFgen_ResetDevice</span></a> function.</p>

<p class="Body">If you export a signal with this function and commit the session, the signal is routed to the output terminal you specify.</p>

</body>
</html>

    	�    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>signal</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">signal</td>
<td class="paramDataType">ViInt32</td>
<td>Specifies the source of the signal to route.<br><br><strong><strong>Defined Values</strong></strong>

<table class="bordered">


<tr><td class="bordered"><span class="monospace">NIFGEN_VAL_ONBOARD_REFERENCE_CLOCK</span></td><td class="bordered">Onboard 10 MHz synchronization clock (PCI only)</td></tr>

<tr><td class="bordered"><span class="monospace">NIFGEN_VAL_SYNC_OUT</span></td><td class="bordered">SYNC OUT signal <br><br>The SYNC OUT signal is normally generated on the SYNC OUT front panel connector.</td></tr>

<tr><td class="bordered"><span class="monospace">NIFGEN_VAL_START_TRIGGER</span></td><td class="bordered">Start Trigger</td></tr>


<tr><td class="bordered"><span class="monospace">NIFGEN_VAL_MARKER_EVENT</span></td><td class="bordered">Marker Event</td></tr>


<tr><td class="bordered"><span class="monospace">NIFGEN_VAL_SAMPLE_CLOCK_TIMEBASE</span></td><td class="bordered">The clock from which the Sample Clock is derived</td></tr>

<tr><td class="bordered"><span class="monospace">NIFGEN_VAL_SYNCHRONIZATION</span></td><td class="bordered">Synchronization strobe (NI 5404/5411/5431 only) <br><br>A synchronization strobe is used to guarantee absolute synchronization between two or more signal generators.</td></tr>

<tr><td class="bordered"><span class="monospace">NIFGEN_VAL_SAMPLE_CLOCK</span></td><td class="bordered">Sample Clock</td></tr>

<tr><td class="bordered"><span class="monospace">NIFGEN_VAL_REFERENCE_CLOCK</span></td><td class="bordered">PLL Reference Clock</td></tr>

<tr><td class="bordered"><span class="monospace">NIFGEN_VAL_SCRIPT_TRIGGER</span></td><td class="bordered">Script Trigger</td></tr>

<tr><td class="bordered"><span class="monospace">NIFGEN_VAL_READY_FOR_START_EVENT</span></td><td class="bordered">Ready For Start Event</td></tr>

<tr><td class="bordered"><span class="monospace">NIFGEN_VAL_STARTED_EVENT</span></td><td class="bordered">Started Event</td></tr>

<tr><td class="bordered"><span class="monospace">NIFGEN_VAL_DONE_EVENT</span></td><td class="bordered">Done Event</td></tr>

<tr><td class="bordered"><span class="monospace">NIFGEN_VAL_DATA_MARKER_EVENT</span></td><td class="bordered">Data Marker Event</td></tr>


</table>

</td>
</tr></table></body>
</html>    	g    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>signalIdentifier</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">signalIdentifier</td>
<td class="paramDataType">ViConstString</td>
<td>Specifies which instance of the selected signal to export.

<br><br>
<strong><strong>Defined Values</strong></strong>

<table class="bordered">
<tr><td class="bordered">&quot;&quot; (empty string)</td><td class="bordered">Default (for non instance-based signals)</td></tr>


<tr><td class="bordered">&quot;ScriptTrigger0&quot;</td><td class="bordered">Script Trigger 0</td></tr>

<tr><td class="bordered">&quot;ScriptTrigger1&quot;</td><td class="bordered">Script Trigger 1</td></tr>

<tr><td class="bordered">&quot;ScriptTrigger2&quot;</td><td class="bordered">Script Trigger 2</td></tr>

<tr><td class="bordered">&quot;ScriptTrigger3&quot;</td><td class="bordered">Script Trigger 3</td></tr>

<tr><td class="bordered">&quot;Marker0&quot;</td>
<td class="bordered">Marker 0</td></tr>

<tr><td class="bordered">&quot;Marker1&quot;</td>
<td class="bordered">Marker 1</td></tr>

<tr><td class="bordered">&quot;Marker2&quot;</td>
<td class="bordered">Marker 2</td></tr>

<tr><td class="bordered">&quot;Marker3&quot;</td>
<td class="bordered">Marker 3</td></tr>

<tr><td class="bordered">&quot;DataMarker0&quot;</td>
<td class="bordered">Data Marker 0*</td></tr>

<tr><td class="bordered">&quot;DataMarker1&quot;</td>
<td class="bordered">Data Marker 1*</td></tr>

<tr><td class="bordered">&quot;DataMarker2&quot;</td>
<td class="bordered">Data Marker 2*</td></tr>

<tr><td class="bordered">&quot;DataMarker3&quot;</td>
<td class="bordered">Data Marker 3*</td></tr>

<tr><td class="bordered" colspan="2">* These Data Marker values apply only to single-channel devices or to multichannel devices that are configured for single-channel operation. When using a device that is configured for multichannel operation, specify the channel number along with the signal identifier. For example, to export Data Marker 0 on channel 1 of a device configured for multichannel operation, use the value &#34;1/ DataMarker0.&#34; If you do not specify a channel when using a device configured for multichannel generation, DataMarker0  generates on all channels.</td></tr>

</table>


</td>
 </tr></table></body>
</html>    R    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>outputTerminal</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">outputTerminal</td>
<td class="paramDataType">ViConstString</td>
<td>Specifies the output terminal to export the signal.

<br>

<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&nbsp;&nbsp; The following <strong>Defined Values</strong> are examples of possible output terminals. For a complete list of the output terminals available on your device, refer to the Routes topic for your device or the <strong>Device Routes</strong> tab in MAX.</td>
</tr>
</table>

<br>
<strong><strong>Defined Values</strong></strong>

<table class="bordered">
<tr><td class="bordered"><span class="monospace">&quot;&quot; (empty string)</span></td><td class="bordered">Do not export signal</td></tr>


<tr><td class="bordered"><span class="monospace">&quot;PFI0&quot;</span></td><td class="bordered">PFI line 0</td></tr>

<tr><td class="bordered"><span class="monospace">&quot;PFI1&quot;</span></td><td class="bordered">PFI line 1</td></tr>

<tr><td class="bordered"><span class="monospace">&quot;PFI4&quot;</span></td><td class="bordered">PFI line 4</td></tr>

<tr><td class="bordered"><span class="monospace">&quot;PFI5&quot;</span></td><td class="bordered">PFI line 5</td></tr>

<tr><td class="bordered"><span class="monospace">&quot;PXI_Trig0&quot;</span></td>
<td class="bordered">PXI or RTSI line 0</td></tr>

<tr><td class="bordered"><span class="monospace">&quot;PXI_Trig1&quot;</span></td>
<td class="bordered">PXI or RTSI line 1</td></tr>

<tr><td class="bordered"><span class="monospace">&quot;PXI_Trig2&quot;</span></td>
<td class="bordered">PXI or RTSI line 2</td></tr>

<tr><td class="bordered"><span class="monospace">&quot;PXI_Trig3&quot;</span></td>
<td class="bordered">PXI or RTSI line 3</td></tr>

<tr><td class="bordered"><span class="monospace">&quot;PXI_Trig4&quot;</span></td>
<td class="bordered">PXI or RTSI line 4</td></tr>

<tr><td class="bordered"><span class="monospace">&quot;PXI_Trig5&quot;</span></td>
<td class="bordered">PXI or RTSI line 5</td></tr>

<tr><td class="bordered"><span class="monospace">&quot;PXI_Trig6&quot;</span></td>
<td class="bordered">PXI or RTSI line 6</td></tr>

<tr><td class="bordered"><span class="monospace">&quot;PXI_Trig7&quot;</span></td>
<td class="bordered">PXI or RTSI line 7</td></tr>

<tr><td class="bordered"><span class="monospace">&quot;DDC_ClkOut&quot;</span></td>
<td class="bordered">Clock out from DDC connector</td></tr>

<tr><td class="bordered"><span class="monospace">&quot;PXI_Star&quot;</span></td><td class="bordered">PXI star trigger line</td></tr>


</table>


</td>
 </tr></table></body>
</html>


</td>
 </tr></table></body>
</html>    ��   �  �    vi                                7�����  �    Status                           �� >  � �    Signal                           �� �  � �    Signal Identifier                � �� � �    Output Terminal                        	                    �Sample Clock NIFGEN_VAL_SAMPLE_CLOCK Reference Clock NIFGEN_VAL_REFERENCE_CLOCK Onboard Reference Clock NIFGEN_VAL_ONBOARD_REFERENCE_CLOCK Sync Out NIFGEN_VAL_SYNC_OUT Start Trigger NIFGEN_VAL_START_TRIGGER Script Trigger NIFGEN_VAL_SCRIPT_TRIGGER Marker Event NIFGEN_VAL_MARKER_EVENT Data Marker Event NIFGEN_VAL_DATA_MARKER_EVENT Ready For Start Event NIFGEN_VAL_READY_FOR_START_EVENT Started Event NIFGEN_VAL_STARTED_EVENT Done Event NIFGEN_VAL_DONE_EVENT Synchronization Pulse NIFGEN_VAL_SYNCHRONIZATION              LNone "" Script Trigger 0 "ScriptTrigger0" Script Trigger 1 "ScriptTrigger1" Script Trigger 2 "ScriptTrigger2" Script Trigger 3 "ScriptTrigger3" Marker 0 "Marker0" Marker 1 "Marker1" Marker 2 "Marker2" Marker 3 "Marker3" Data Marker 0 "DataMarker0" Data Marker 1 "DataMarker1" Data Marker 2 "DataMarker2" Data Marker 3 "DataMarker3"              �Do not export signal "" PFI 0 "PFI0" PFI 1 "PFI1" PFI 4 "PFI4" PFI 5 "PFI5" PXI Trigger Line 0/RTSI 0 "PXI_Trig0" PXI Trigger Line 1/RTSI 1 "PXI_Trig1" PXI Trigger Line 2/RTSI 2 "PXI_Trig2" PXI Trigger Line 3/RTSI 3 "PXI_Trig3" PXI Trigger Line 4/RTSI 4 "PXI_Trig4" PXI Trigger Line 5/RTSI 5 "PXI_Trig5" PXI Trigger Line 6/RTSI 6 "PXI_Trig6" PXI Trigger Line 7/RTSI 7 "PXI_Trig7" ClkOut on Digital Data & Control Connector "DDC_ClkOut" PXI Star "PXI_Star"       <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_RouteSignalOut</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_RouteSignalOut</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_RouteSignalOut&nbsp;(ViSession&nbsp;vi, ViConstString&nbsp;channelName, ViInt32&nbsp;routeSignalFrom, ViInt32&nbsp;routeSignalTo);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Routes various signals in the signal generator to the RTSI lines and front 
panel terminals. </p>

<table class="Borderless-Wide">
<tr>
<td class="Icon"><img src="note.gif"></td>
<td>
<strong>Notes</strong>&nbsp;&nbsp;The signal generator must not be in the Generating state when you call this function.</td></tr></table>

<table class="Borderless-Wide">
<tr>
<td class="Icon"></td>
<td>
You can clear a previously routed signal by routing <span class="monospace">NIFGEN_VAL_NONE</span> to the destination terminal.
</td></tr></table>


</body>
</html>

    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Route Signal From</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">routeSignalFrom</td>
<td class="paramDataType">ViInt32</td>
<td>Various signals can be routed out the RTSI lines.  

<p class="Body"><strong><strong>Defined Values</strong></strong></p>

<table class="bordered"><tr><td class="bordered"><span class="monospace">NIFGEN_VAL_NONE</span></td>
<td class="bordered">Nothing <br><br>Sending this value clears the line.</td></tr>

<tr><td class="bordered"><span class="monospace">NIFGEN_VAL_MARKER</span></td>
<td class="bordered">Marker Event</td></tr>

<tr><td class="bordered"><span class="monospace">NIFGEN_VAL_SYNC_OUT</span></td>
<td class="bordered">SYNC signal <br><br>This signal normally appears on the SYNC OUT front panel connector.</td></tr>

<tr><td class="bordered"><span class="monospace">NIFGEN_VAL_OUT_START_TRIGGER</span></td>
<td class="bordered">Start Trigger <br><br>The Start Trigger is normally generated at the start of the sequence. Call the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_ConfigureTriggerSource.html')"><span class="monospace">niFgen_ConfigureTriggerSource</span></a> function to receive this trigger.</td></tr>

<tr><td class="bordered"><span class="monospace">NIFGEN_VAL_BOARD_CLOCK</span></td>
<td class="bordered">Signal generator board clock <br><br>The signal generator board clock is 20&nbsp;MHz for the NI&nbsp;PCI-5401/5411/5431. The NI&nbsp;PXI-5404 has a 20&nbsp;MHz board clock, and the NI&nbsp;PXI-5421 has integer divisors of 100&nbsp;MHz. The NI&nbsp;PXI-5401/5411/5431 does not support routing a Board Clock to RTSI lines or front panel connectors.</td></tr>

<tr><td class="bordered"><span class="monospace">NIFGEN_VAL_SYNCHRONIZATION</span></td>
<td class="bordered">Synchronization strobe <br><br>A synchronization strobe is used to guarantee absolute synchronization between two or more signal generators. Call the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_ConfigureSynchronization.html')"><span class="monospace">niFgen_ConfigureSynchronization</span></a> function to receive the strobe.</td></tr>

<tr><td class="bordered"><span class="monospace">NIFGEN_VAL_SOFTWARE_TRIG</span></td>
<td>Software trigger</td></tr>

<tr><td class="bordered"><span class="monospace">NIFGEN_VAL_OUT_UPDATE</span></td>
<td class="bordered">&#8212;</td></tr>

<tr><td class="bordered"><span class="monospace">NIFGEN_VAL_REF_OUT</span></td>
<td class="bordered">Reference Clock out front panel connector</td></tr>

<tr><td class="bordered"><span class="monospace">NIFGEN_VAL_PXI_CLK10</span></td>
<td class="bordered">PXI 10&nbsp;MHz backplane Reference Clock</td></tr>

<tr><td class="bordered"><span class="monospace">NIFGEN_VAL_PXI_STAR</span></td>
<td class="bordered">PXI star trigger line</td></tr>

<tr><td class="bordered"><span class="monospace">NIFGEN_VAL_PFI_0</span></td>
<td class="bordered">PFI 0</td></tr>

<tr><td class="bordered"><span class="monospace">NIFGEN_VAL_RTSI_0</span></td>
<td class="bordered">RTSI 0 or PXI_Trig 0</td></tr>

<tr><td class="bordered"><span class="monospace">NIFGEN_VAL_RTSI_1</span></td>
<td class="bordered">RTSI 1 or PXI_Trig 1</td></tr>

<tr><td class="bordered"><span class="monospace">NIFGEN_VAL_RTSI_2</span></td>
<td class="bordered">RTSI 2 or PXI_Trig 2</td></tr>

<tr><td class="bordered"><span class="monospace">NIFGEN_VAL_RTSI_3</span></td>
<td class="bordered">RTSI 3 or PXI_Trig 3</td></tr>

<tr><td class="bordered"><span class="monospace">NIFGEN_VAL_RTSI_4</span></td>
<td class="bordered">RTSI 4 or PXI_Trig 4</td></tr>

<tr><td class="bordered"><span class="monospace">NIFGEN_VAL_RTSI_5</span></td>
<td class="bordered">RTSI 5 or PXI_Trig 5</td></tr>

<tr><td class="bordered"><span class="monospace">NIFGEN_VAL_RTSI_6</span></td>
<td class="bordered">RTSI 6 or PXI_Trig 6</td></tr>

<tr><td class="bordered"><span class="monospace">NIFGEN_VAL_RTSI_7</span></td>
<td class="bordered">RTSI 7 or PXI_Trig 7</td></tr>

<tr><td class="bordered"><span class="monospace">NIFGEN_VAL_REF_CLOCK_RTSI_CLOCK</span></td>
<td class="bordered">RTSI clock</td></tr>

<tr><td class="bordered"><span class="monospace">NIFGEN_VAL_ONBOARD_REFERENCE_CLOCK</span></td>
<td class="bordered">Onboard Reference Clock</td></tr>

<tr><td class="bordered"><span class="monospace">NIFGEN_VAL_UPDATE_CLOCK</span></td>
<td class="bordered">Sample Clock</td></tr>

<tr><td class="bordered"><span class="monospace">NIFGEN_VAL_PLL_REF_SOURCE</span></td>
<td class="bordered">PLL Reference Clock</td></tr></table>

</td>
 </tr></table></body>
</html>    
&    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Route Signal To</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">routeSignalTo</td>
<td class="paramDataType">ViInt32</td>
<td>The possible RTSI lines to which you can route a signal.

<p class="Body"><strong><strong>Defined Values</strong></strong></p>

<table class="bordered"><tr><td class="bordered"><span class="monospace">NIFGEN_VAL_RTSI_0</span></td>
<td class="bordered">RTSI 0 or PXI_Trig 0</td></tr>

<tr><td class="bordered"><span class="monospace">NIFGEN_VAL_RTSI_1</span></td>
<td class="bordered">RTSI 1 or PXI_Trig 1</td></tr>

<tr><td class="bordered"><span class="monospace">NIFGEN_VAL_RTSI_2</span></td>
<td class="bordered">RTSI 2 or PXI_Trig 2</td></tr>

<tr><td class="bordered"><span class="monospace">NIFGEN_VAL_RTSI_3</span></td>
<td class="bordered">RTSI 3 or PXI_Trig 3</td></tr>

<tr><td class="bordered"><span class="monospace">NIFGEN_VAL_RTSI_4</span></td>
<td class="bordered">RTSI 4 or PXI_Trig 4</td></tr>

<tr><td class="bordered"><span class="monospace">NIFGEN_VAL_RTSI_5</span></td>
<td class="bordered">RTSI 5 or PXI_Trig 5</td></tr>

<tr><td class="bordered"><span class="monospace">NIFGEN_VAL_RTSI_6</span></td>
<td class="bordered">RTSI 6 or PXI_Trig 6</td></tr>

<tr><td class="bordered"><span class="monospace">NIFGEN_VAL_RTSI_7</span></td>
<td class="bordered">RTSI 7 or PXI_Trig 7</td></tr>

<tr><td class="bordered"><span class="monospace">NIFGEN_VAL_REF_CLOCK_RTSI_CLOCK</span></td>
<td class="bordered">RTSI clock</td></tr>

<tr><td class="bordered"><span class="monospace">NIFGEN_VAL_REF_OUT</span></td>
<td class="bordered">Reference Clock out front panel connector</td></tr>

<tr><td class="bordered"><span class="monospace">NIFGEN_VAL_PFI_0</span></td>
<td class="bordered">PFI 0</td></tr>

<tr><td class="bordered"><span class="monospace">NIFGEN_VAL_PFI_1</span></td>
<td class="bordered">PFI 1</td></tr>

<tr><td class="bordered"><span class="monospace">NIFGEN_VAL_PFI_4</span></td>
<td class="bordered">PFI 4</td></tr>

<tr><td class="bordered"><span class="monospace">NIFGEN_VAL_PFI_5</span></td>
<td class="bordered">PFI 5</td></tr>
 
<tr><td class="bordered"><span class="monospace">NIFGEN_VAL_PXI_STAR</span></td>
<td class="bordered">PXI star trigger line</td></tr>

<tr><td class="bordered"><span class="monospace">NIFGEN_VAL_PXI_CLK10</span></td>
<td class="bordered">PXI 10&nbsp;MHz backplane Reference Clock</td></tr>

</table>

</td>

 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>channelName</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">channelName</td>
<td class="paramDataType">ViConstString</td>
<td>Specifies the channel name for which you want to route a signal.



<p class="Body"><strong>Default Value</strong>: &quot;0&quot;</p>
</td>
 </tr></table></body>
</html>    ��    �  �    vi                                7� �����  �    Status                           �� � \ � �    Route Signal From                ڒ �( � �    Route Signal To                  �� K � �  �    Channel Name                           	                     None NIFGEN_VAL_NONE Marker NIFGEN_VAL_MARKER PLL Ref Source NIFGEN_VAL_PLL_REF_SOURCE Update Clock NIFGEN_VAL_UPDATE_CLOCK Sync Out NIFGEN_VAL_SYNC_OUT Start Trigger NIFGEN_VAL_OUT_START_TRIGGER Out Update NIFGEN_VAL_OUT_UPDATE Board Clock NIFGEN_VAL_BOARD_CLOCK Synchronization NIFGEN_VAL_SYNCHRONIZATION Software Trigger NIFGEN_VAL_SOFTWARE_TRIG REF OUT NIFGEN_VAL_REF_OUT PXI_CLK10 NIFGEN_VAL_PXI_CLK10 PXI Star NIFGEN_VAL_PXI_STAR  PFI 0 NIFGEN_VAL_PFI_0 RTSI 0 NIFGEN_VAL_RTSI_0 RTSI 1 NIFGEN_VAL_RTSI_1 RTSI 2 NIFGEN_VAL_RTSI_2 RTSI 3 NIFGEN_VAL_RTSI_3 RTSI 4 NIFGEN_VAL_RTSI_4 RTSI 5 NIFGEN_VAL_RTSI_5 RTSI 6 NIFGEN_VAL_RTSI_6 RTSI 7 NIFGEN_VAL_RTSI_7 RTSI Clock NIFGEN_VAL_REF_CLOCK_RTSI_CLOCK Clock Out NIFGEN_VAL_CLOCK_OUT Onboard Reference Clock NIFGEN_VAL_ONBOARD_REFERENCE_CLOCK              �RTSI 0 NIFGEN_VAL_RTSI_0 RTSI 1 NIFGEN_VAL_RTSI_1 RTSI 2 NIFGEN_VAL_RTSI_2 RTSI 3 NIFGEN_VAL_RTSI_3 RTSI 4 NIFGEN_VAL_RTSI_4 RTSI 5 NIFGEN_VAL_RTSI_5 RTSI 6 NIFGEN_VAL_RTSI_6 RTSI 7 NIFGEN_VAL_RTSI_7 RTSI Clock NIFGEN_VAL_REF_CLOCK_RTSI_CLOCK REF OUT NIFGEN_VAL_REF_OUT PFI 0 NIFGEN_VAL_PFI_0 PFI 1  NIFGEN_VAL_PFI_1 PFI 4  NIFGEN_VAL_PFI_4 PFI 5  NIFGEN_VAL_PFI_5 PXI STAR NIFGEN_VAL_PXI_STAR PXI_CLK10 NIFGEN_VAL_PXI_CLK10 DDC CLK OUT NIFGEN_VAL_DDC_CLK_OUT    ""   �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_AllocateNamedWaveform</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_AllocateNamedWaveform</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_AllocateNamedWaveform&nbsp;(ViSession&nbsp;vi, ViConstString&nbsp;channelName, ViConstString&nbsp;waveformName, ViInt32&nbsp;waveformSize);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Specifies the size of a named waveform up front so that it can be allocated in onboard memory before loading the associated data. Data can then be loaded in smaller blocks with the niFgen Write (Binary16) Waveform functions.</p>

</body>
</html>

    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>channelName</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">channelName</td>
<td class="paramDataType">ViConstString</td>
<td>Specifies the channel name for which you want to allocate the named waveform.


<p class="Body"><strong>Default Value</strong>: &quot;0&quot;</p>
</td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Waveform Size</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">waveformSize</td>
<td class="paramDataType">ViInt32</td>
<td>Specifies the size of the waveform to allocate in samples.
<p class="Body"><strong>Default Value</strong>: &quot;4096&quot;</p>
</td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Waveform Name</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">waveformName</td>
<td class="paramDataType">ViConstString</td>
<td>Specifies the name to associate with the allocated waveform.<br><br></td>
 </tr></table></body>
</html>    ��   �  �    vi                                7�{���  �    Status                           � 2  �  �    Channel Name                     � �  �  �    Waveform Size                    �w p  �  �    Waveform Name                          	           ""    4096       �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_SetNamedWaveformNextWritePosition</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_SetNamedWaveformNextWritePosition</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_SetNamedWaveformNextWritePosition&nbsp;(ViSession&nbsp;vi, ViConstString&nbsp;channelName, ViConstString&nbsp;waveformName, ViInt32&nbsp;relativeto, ViInt32&nbsp;offset);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Sets the position in the waveform to which data is written at the next write. This function allows you to write to arbitrary locations within the waveform. These settings apply only to the next write to the waveform specified by the <strong>waveformHandle</strong> parameter. Subsequent writes to that waveform begin where the last write left off, unless this function is called again. The <strong>waveformHandle</strong> passed in must have been created with a call to one of the following functions:</p>

<ul>
<li> <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_AllocateWaveform.html')"><span class="monospace">niFgen_AllocateWaveform</span></a></li>
<li> <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_CreateWaveformF64.html')"><span class="monospace">niFgen_CreateWaveformF64</span></a></li>

<li><a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_CreateWaveformI16.html')"><span class="monospace">niFgen_CreateWaveformI16</span></a></li>

<li> <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_CreateWaveformFromFileI16.html')"><span class="monospace">niFgen_CreateWaveformFromFileI16</span></a></li>

<li> <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_CreateWaveformFromFileF64.html')"><span class="monospace">niFgen_CreateWaveformFromFileF64</span></a></li>

<li> <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_CreateWaveformFromFileHWS.html')"><span class="monospace">niFgen_CreateWaveformFromFileHWS</span></a></li>
</ul>
</body>
</html>

    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>channelName</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">channelName</td>
<td class="paramDataType">ViConstString</td>
<td>Specifies the channel onto which the waveform data should be loaded.

<p class="Body"><strong>Default Value</strong>: &quot;0&quot;</p>
</td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Offset</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">offset</td>
<td class="paramDataType">ViInt32</td>
<td>Specifies the offset from the <strong>relativeTo</strong> parameter at which to start loading the data into the waveform.
</td>
 </tr></table></body>
</html>    ��   �  �    vi                                7�e���  �    Status                           �� C  �  �    Channel Name                     �w E � �  �    Waveform Name                    �� �  � �    relativeTo                        � � � �  �    offset                                 	           ""                  kStart of Waveform NIFGEN_VAL_WAVEFORM_POSITION_START Current Position NIFGEN_VAL_WAVEFORM_POSITION_CURRENT    0   
    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_WriteNamedWaveformF64</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_WriteNamedWaveformF64</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_WriteNamedWaveformF64&nbsp;(ViSession&nbsp;vi, ViConstString&nbsp;channelName, ViConstString&nbsp;waveformName, ViInt32&nbsp;size, ViReal64[]&nbsp;data);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Writes floating-point data to the waveform in onboard memory.  The waveform handle passed in must have been created by a call to the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_AllocateWaveform.html')"><span class="monospace">niFgen_AllocateWaveform</span></a> function or to one of the following niFgen Create Waveform functions:

<ul>
<li> <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_CreateWaveformF64.html')"><span class="monospace">niFgen_CreateWaveformF64</span></a></li>

<li> <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_CreateWaveformI16.html')"><span class="monospace">niFgen_CreateWaveformI16</span></a></li>

<li> <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_CreateWaveformFromFileI16.html')"><span class="monospace">niFgen_CreateWaveformFromFileI16</span></a></li>

<li> <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_CreateWaveformFromFileF64.html')"><span class="monospace">niFgen_CreateWaveformFromFileF64</span></a></li>

<li> <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_CreateWaveformFromFileHWS.html')"><span class="monospace">niFgen_CreateWaveformFromFileHWS</span></a></li></ul>

<p class="body">By default, the subsequent call to the <span class="monospace">niFgen_WriteNamedWaveformF64</span> function continues writing data from the position of the last sample written. You can set the write position and offset by calling the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_SetNamedWaveformNextWritePosition.html')"><span class="monospace">niFgen_SetNamedWaveformNextWritePosition</span></a> function. If streaming is enabled, you can write more data than the allocated waveform size in onboard memory. Refer to the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'streaming.html')">Streaming</a> topic for more information about streaming data.</p>
</body>
</html>

    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>channelName</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">channelName</td>
<td class="paramDataType">ViConstString</td>
<td>Specifies the channel onto which the waveform data should be loaded.  

<p class="Body"><strong>Default Value</strong>: &quot;0&quot;</p>
</td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Data</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">data</td>
<td class="paramDataType">ViReal64 []</td>
<td>Specifies the array of data to load into the waveform. The array must have at least as many elements as the value in <strong>size</strong>.</td>
 </tr></table></body>
</html>    ��   �  �    vi                                7�����  �    Status                           � F  �  �    Channel Name                     �w �  �  �    Waveform Name                    �i � � �  �    Size                             d F � �  �    Data                                   	           ""        0    0   '    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_WriteNamedWaveformI16</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_WriteNamedWaveformI16</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_WriteNamedWaveformI16&nbsp;(ViSession&nbsp;vi, ViConstString&nbsp;channelName, ViConstString&nbsp;waveformName, ViInt32&nbsp;size, ViInt16[]&nbsp;data);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Writes binary data to the named waveform in onboard memory.
<p class="body">By default, the subsequent call to the <span class="monospace">niFgen_WriteNamedWaveformI16</span> function continues writing data from the position of the last sample written. You can set the write position and offset by calling the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_SetNamedWaveformNextWritePosition.html')"><span class="monospace">niFgen_SetNamedWaveformNextWritePosition</span></a> function. If streaming is enabled, you can write more data than the allocated waveform size in onboard memory. Refer to the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'streaming.html')">Streaming</a> topic for more information about streaming data.</p>
</body>
</html>

    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>channelName</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">channelName</td>
<td class="paramDataType">ViConstString</td>
<td>Specifies the channel onto which the waveform data should be loaded.  

<p class="Body"><strong>Default Value</strong>: &quot;0&quot;</p>
</td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Data</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">data</td>
<td class="paramDataType">ViInt16 []</td>
<td>Specifies the array of data to load into the waveform. The array must have at least as many elements as the value in <strong>size</strong>.</td>
 </tr></table></body>
</html>    ��   �  �    vi                                7�{���  �    Status                           � C  �  �    Channel Name                     �w �  �  �    Waveform Name                    �i � � �  �    Size                             � C � �  �    Data                                   	           ""        0    0   M    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_WriteNamedWaveformComplexF64</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_WriteNamedWaveformComplexF64</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_WriteNamedWaveformComplexF64&nbsp;(ViSession&nbsp;vi, ViConstString&nbsp;channelName, ViConstString&nbsp;waveformName, ViInt32&nbsp;size, NIComplexNumber[]&nbsp;data);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Writes complex floating&#8211;point data to the named waveform in onboard memory on devices with the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'NIFGEN_ATTR_OSP_ENABLED.html')"><span class="Monospace">NIFGEN_ATTR_OSP_ENABLED</span></a> attribute set to <span class="monospace">VI_TRUE</span> and the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'NIFGEN_ATTR_OSP_DATA_PROCESSING_MODE.html')"><span class="Monospace">NIFGEN_ATTR_OSP_DATA_PROCESSING_MODE</span></a> attribute set to <span class="Monospace">NIFGEN_VAL_OSP_COMPLEX</span>.  The waveform handle passed in must have been created by a call to the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_AllocateWaveform.html')"><span class="monospace">niFgen_AllocateWaveform</span></a> function or to one of the following niFgen Create Waveform functions:</p>

<ul>
<li> <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_CreateWaveformF64.html')"><span class="monospace">niFgen_CreateWaveformF64</span></a></li>

<li> <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_CreateWaveformI16.html')"><span class="monospace">niFgen_CreateWaveformI16</span></a></li>

<li> <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_CreateWaveformFromFileI16.html')"><span class="monospace">niFgen_CreateWaveformFromFileI16</span></a></li>

<li> <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_CreateWaveformFromFileF64.html')"><span class="monospace">niFgen_CreateWaveformFromFileF64</span></a></li>

<li> <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_CreateWaveformFromFileHWS.html')"><span class="monospace">niFgen_CreateWaveformFromFileHWS</span></a></li></ul>

<p class="body">By default, the subsequent call to the <span class="monospace">niFgen_WriteNamedWaveformComplexF64</span> function continues writing data from the position of the last sample written. You can set the write position and offset by calling the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_SetNamedWaveformNextWritePosition.html')"><span class="monospace">niFgen_SetNamedWaveformNextWritePosition</span></a> function. If streaming is enabled, you can write more data than the allocated waveform size in onboard memory. Refer to the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'streaming.html')">Streaming</a> topic for more information about streaming data.</p>
</body>
</html>

    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>channelName</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">channelName</td>
<td class="paramDataType">ViConstString</td>
<td>Specifies the channel onto which the waveform data should be loaded.  

<p class="Body"><strong>Default Value</strong>: &quot;0&quot;</p>
</td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Data</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">data</td>
<td class="paramDataType">NIComplexNumber []</td>
<td>Specifies the array of data to load into the waveform. The array must have at least as many elements as the value in <strong>size</strong>.</td>
 </tr></table></body>
</html>    �� �   �  �    vi                                7� �|���  �    Status                           ** C  �  �    Channel Name                     �w �  �  �    Waveform Name                    �i � � �  �    Size                             ,	 C � �  �    Data                                   	           ""        0    0       <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_WriteNamedComplexWaveformI16</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_WriteNamedComplexWaveformI16</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_WriteNamedComplexWaveformI16&nbsp;(ViSession&nbsp;vi, ViConstString&nbsp;channelName, ViConstString&nbsp;waveformName, ViInt32&nbsp;size, NIComplexI16[]&nbsp;data);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Writes complex binary data to the named waveform in onboard memory on devices with the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'NIFGEN_ATTR_OSP_ENABLED.html')"><span class="Monospace">NIFGEN_ATTR_OSP_ENABLED</span></a> attribute set to <span class="monospace">VI_TRUE</span> and the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'NIFGEN_ATTR_OSP_DATA_PROCESSING_MODE.html')"><span class="Monospace">NIFGEN_ATTR_OSP_DATA_PROCESSING_MODE</span></a> attribute set to NIFGEN_VAL_OSP_COMPLEX. The waveform handle passed in must have been created by a call to the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_AllocateWaveform.html')"><span class="monospace">niFgen_AllocateWaveform</span></a> function or to one of the following niFgen Create Waveform functions:

<ul>
<li> <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_CreateWaveformF64.html')"><span class="monospace">niFgen_CreateWaveformF64</span></a></li>

<li> <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_CreateWaveformI16.html')"><span class="monospace">niFgen_CreateWaveformI16</span></a></li>

<li> <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_CreateWaveformFromFileI16.html')"><span class="monospace">niFgen_CreateWaveformFromFileI16</span></a></li>

<li> <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_CreateWaveformFromFileF64.html')"><span class="monospace">niFgen_CreateWaveformFromFileF64</span></a></li>

<li> <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_CreateWaveformFromFileHWS.html')"><span class="monospace">niFgen_CreateWaveformFromFileHWS</span></a></li></ul>

<p class="body">By default, the subsequent call to the <span class="monospace">niFgen_WriteNamedWaveformComplexi16</span> function continues writing data from the position of the last sample written. You can set the write position and offset by calling the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_SetNamedWaveformNextWritePosition.html')"><span class="monospace">niFgen_SetNamedWaveformNextWritePosition</span></a> function. If streaming is enabled, you can write more data than the allocated waveform size in onboard memory. Refer to the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'streaming.html')">Streaming</a> topic for more information about streaming data.</p>

</body>
</html>

    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>channelName</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">channelName</td>
<td class="paramDataType">ViConstString</td>
<td>Specifies the channel onto which the waveform data should be loaded.  

<p class="Body"><strong>Default Value</strong>: &quot;0&quot;</p>
</td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Data</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">data</td>
<td class="paramDataType">NIComplexI16 []</td>
<td>Specifies the array of data to load into the waveform. The array must have at least as many elements as the value in <strong>size</strong>.</td>
 </tr></table></body>
</html>    �� �   �  �    vi                                7� �|���  �    Status                           ;c C  �  �    Channel Name                     �w �  �  �    Waveform Name                    �i � � �  �    Size                             =B C � �  �    Data                                   	           ""        0    0   P    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_DeleteNamedWaveform</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_DeleteNamedWaveform</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_DeleteNamedWaveform&nbsp;(ViSession&nbsp;vi, ViConstString&nbsp;channelName, ViConstString&nbsp;waveformName);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Removes a previously created arbitrary waveform from the signal generator memory and invalidates the waveform handle.

<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&nbsp;&nbsp;The signal generator must not be in the Generating state when you call this function.</td>
</tr>
</table>


</body>
</html>

    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>channelName</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">channelName</td>
<td class="paramDataType">ViConstString</td>
<td>Specifies the channel onto which the named waveform is loaded.


<p class="Body"><strong>Default Value</strong>: &quot;0&quot;</p>
</td>
 </tr></table></body>
</html>    7�#����  �    Status                            ��#   �  �    vi                               C� = � �  �    Channel Name                     �w � � �  �    Waveform Name                      	                   ""   0    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_WriteScript</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_WriteScript</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_WriteScript&nbsp;(ViSession&nbsp;vi, ViConstString&nbsp;channelName, ViConstString&nbsp;script);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Writes a string containing one or more scripts that govern the generation of waveforms.</P>
</body>
</html>

    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>channelName</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">channelName</td>
<td class="paramDataType">ViConstString</td>
<td>Specifies the channel on which the script is loaded. 

<p class="Body"><strong>Default Value</strong>: &quot;0&quot;</p>
</td>
 </tr></table></body>
</html>    J    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Script</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">script</td>
<td class="paramDataType">ViConstString</td>
<td>Contains the text of the script you want to use for your generation operation. Refer to <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'niscripted.chm', 'scripting_instructions.html')">Scripting Instructions</a> for more information about writing scripts.</td>
 </tr></table></body>
</html>    7�#����  �    Status                            ��-   �  �    vi                               H� = � �  �    Channel Name                     J� � � �  �    Script                             	               ""           <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_DeleteScript</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_DeleteScript</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_DeleteScript&nbsp;(ViSession&nbsp;vi, ViConstString&nbsp;channelName, ViConstString&nbsp;scriptName);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Deletes the specified script from onboard memory.</p>

</body>
</html>

    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>channelName</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">channelName</td>
<td class="paramDataType">ViConstString</td>
<td>Specifies the channel onto which the script is loaded.


<p class="Body"><strong>Default Value</strong>: &quot;0&quot;</p>
</td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Script Name</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">scriptName</td>
<td class="paramDataType">ViConstString</td>
<td>Specifies the name of the script you want to delete. The script name appears in the text of the script following the <span class="monospace">script</span> keyword.</td>
 </tr></table></body>
</html>    7�#����  �    Status                            ��-   �  �    vi                               O� = � �  �    Channel Name                     Q� � � �  �    Script Name                        	               ""       �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_ConfigureCustomFIRFilterCoefficients</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_ConfigureCustomFIRFilterCoefficients</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_ConfigureCustomFIRFilterCoefficients&nbsp;(ViSession&nbsp;vi, ViConstString&nbsp;channelName, ViInt32&nbsp;numberofCoefficients, ViReal64[]&nbsp;coefficientsArray);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Sets the FIR filter coefficients used by the onboard signal processing block. The values are coerced to the closest settings achievable by the signal generator.</p>

<p class="Body">Refer to the <em>FIR Filter</em> topic for your device in the <em>NI&nbsp;Signal Generators Help</em> for more information about FIR filter coefficients.  This function is supported only for the NI 5441.</p>

<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&nbsp;&nbsp;The signal generator must not be in the Generating state when you call this function.</td>
</tr>
</table>



</body>
</html>

    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Number of Coefficients</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">numberofCoefficients</td>
<td class="paramDataType">ViInt32</td>
<td>Specifies the number of coefficients. The NI 5441 requires 95.<br><br></td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Coefficients Array</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">coefficientsArray</td>
<td class="paramDataType">ViReal64[]</td>
<td>Specifies the array of data the onboard signal processor uses for the FIR filter coefficients. For the NI&nbsp;5441, provide a symmetric array of 95 coefficients to this parameter. The array must have at least as many elements as the value that you specify in the <strong>numberOfCoefficients</strong> parameter in this function.<br><br>The coefficients should range between &#8211;1.00 and +1.00.<br><br></td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>channelName</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">channelName</td>
<td class="paramDataType">ViConstString</td>
<td>Specifies the channel name for which you want to configure the operation mode.

<p class="Body"><strong>Defined Value</strong>: &quot;0&quot;</p>

</td>
 </tr></table></body>
</html>    7�|���  �    Status                            ��   �  �    vi                               Yl f  �  �    Number of Coefficients           [ �  �  �    Coefficients Array               ^	 '  �  �    Channel Name                       	                       ""   �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_GetFIRFilterCoefficients</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_GetFIRFilterCoefficients</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_GetFIRFilterCoefficients&nbsp;(ViSession&nbsp;vi, ViConstString&nbsp;channelName, ViInt32&nbsp;arraySize, ViReal64[]&nbsp;coefficientsArray, ViInt32*&nbsp;numberofCoefficientsRead);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">

Returns the FIR filter coefficients used by the onboard signal processing block. These coefficients are determined by NI-FGEN and based on the FIR filter type and corresponding attribute (Alpha, Passband, BT) unless you are using the custom filter. If you are using a custom filter, the coefficients returned are those set with the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_ConfigureCustomFIRFilterCoefficients.html')"><span class="monospace">niFgen_ConfigureCustomFIRFilterCoefficients</span></a>  function coerced to the quantized values used by the device.<br><br>

To use this function, first call an instance of the <span class="monospace">niFgen_GetFIRFilterCoefficients</span> function with the <strong>coefficientsArray</strong> parameter set to <span class="monospace">VI_NULL</span>. Calling the function in this state returns the current size of the <strong>coefficientsArray</strong> as the value of the <strong>numberOfCoefficientsRead</strong> parameter. Create an array of this size, and call the <span class="monospace">niFgen_GetFIRFilterCoefficients</span> function a second time, passing the new array as the <strong>coefficientsArray</strong> parameter and the size as the <strong>arraySize</strong> parameter.  This second function call populates the array with the FIR filter coefficients. 



<br><br>Refer to the FIR Filter topic for your device in the <em>NI&nbsp;Signal Generators Help</em> for more information about FIR filter coefficients. This function is supported only for the NI 5441.

<br><br><strong>Default Value</strong>: None</p>
</body>
</html>

    w    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Array Size</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">arraySize</td>
<td class="paramDataType">ViInt32</td>
<td>Specifies the size of the coefficient array<br><br></td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>channelName</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">channelName</td>
<td class="paramDataType">ViConstString</td>
<td>Specifies the channel name for which you want to configure the operation mode.

<p class="Body"><strong>Defined Value</strong>: &quot;0&quot;</p>

</td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Number of Coefficients Read</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">numberofCoefficientsRead</td>
<td class="paramDataType">ViInt32[]</td>
<td>Specifies the array of data containing the number of coefficients you want to read.<br><br></td>
 </tr></table></body>
</html>    7�|���  �    Status                            ��   �  �    vi                               i� e  �  �    Array Size                       [ �  �  �    Coefficients Array               k, '  �  �    Channel Name                     m �  �  �    Number of Coefficients Read        	                       ""           <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_ManualEnableP2PStream</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_ManualEnableP2PStream</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_ManualEnableP2PStream&nbsp;(ViSession&nbsp;vi, ViConstString&nbsp;endpointName[]</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Enables a peer-to-peer data stream using manual flow control.</p>
</body>
</html>

    N    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Endpoint Name</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">endpointName</td>
<td class="paramDataType">ViConstString []</td>
<td>Specifies the stream endpoint FIFO to configure. Refer to the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm',  'P2P_Streaming.html')">Peer-to-Peer Data Streaming</a> documentation in the <em>NI Signal Generators Help</em> for more information.</td>
 </tr></table></body>
</html>
    ��   �  �    vi                                7�{���  �    Status                           r_ >  �  �    Endpoint Name                          	           "FIFOEndpoint0"   �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_WriteP2PEndpointI16</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_WriteP2PEndpointI16</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_WriteP2PEndpointI16&nbsp;(ViSession&nbsp;vi, ViConstString&nbsp;endpointName, ViInt32&nbsp;numberOfSamples, ViInt16&nbsp;endpointData[])</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Writes I16 data to the peer-to-peer endpoint. Use this function to write initial data from the host to the endpoint before starting generation to avoid an underflow at start.</p>
</body>
</html>

    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Endpoint Name</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">endpointName</td>
<td class="paramDataType">ViConstString []</td>
<td>Specifies the name of the FIFO endpoint. Data is written to the endpoint FIFO.</td>
 </tr></table></body>
</html>
    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Number of Samples</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">numberOfSamples</td>
<td class="paramDataType">ViInt32</td>
<td>Specifies the number of samples to write into the endpoint FIFO.</td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Endpoint Data</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">endpointData</td>
<td class="paramDataType">ViInt16 []</td>
<td>Specifies the array of data to write into the endpoint FIFO. The binary data is left-justified.</td>
 </tr></table></body>
</html>    ��   �  �    vi                                7�{���  �    Status                           x> >  �  �    Endpoint Name                    y� � � �  �    Number Of Samples                {� > � �  �    Endpoint Data                          	           "FIFOEndpoint0"    0    0   �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_GetStreamEndpointHandle</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_GetStreamEndpointHandle</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_GetStreamEndpointHandle&nbsp;(ViSession&nbsp;vi, ViConstString&nbsp;streamEndpoint, ViInt32*&nbsp;readerHandle);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Returns a reader endpoint handle that can be used with NI-P2P to configure a peer-to-peer stream with a signal generator endpoint.</p>

</body>
</html>

        
<html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Enabled</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">streamEndpoint</td>
<td class="paramDataType">ViConstString</td>

<td>Specifies the stream endpoint FIFO to configure. Refer to the device-specific documentation for peer-to-peer streaming  in the <em>NI Signal Generators Help</em> for more information.
</td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>State</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">readerHandle</td>
<td class="paramDataType">ViInt32*</td>
<td>Specifies the reader endpoint handle that is used with NI-P2P to create a stream with the signal generator as an endpoint.</td>
 </tr></table></body>
</html>    7�#����  �    Status                            ��-   �  �    vi                               �� ; ) �  �    streamEndpoint                   � 8c    �    readerHandle                       	               "FIFOEndpoint0"    	               <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_SetAttributeViInt32</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_SetAttributeViInt32</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_SetAttributeViInt32&nbsp;(ViSession&nbsp;vi, ViConstString&nbsp;channelName, ViAttr&nbsp;attributeID, ViInt32&nbsp;attributeValue);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Sets the value of a ViInt32 attribute.</p>

<p class="Body">This is a low-level function that you can use to set the values of instrument-specific attributes and inherent IVI attributes.  If the attribute represents an instrument state, this function performs instrument I/O in the following cases:</p>

<ul><li>State caching is disabled for the entire session or for the particular attribute.</li>

<li>State caching is enabled and the currently cached value is invalid or is different than the value you specify. </li></ul>

<p class="Body">NI-FGEN contains high-level functions that set most of the instrument attributes.  NI recommends that you use the high-level driver functions as much as possible.  They handle order dependencies and multithread locking for you.  In addition, they perform status checking only after setting all of the attributes.  In contrast, when you set multiple attributes using the Set Attribute functions, the functions check the instrument status after each call.</p>

<p class="Body">Also, when state caching is enabled, the high-level functions that configure multiple attributes perform instrument I/O only for the attributes whose value you change.  Thus, you can safely call the high-level functions without the penalty of redundant instrument I/O.</p>

</body>
</html>

    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Attribute Value</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">attributeValue</td>
<td class="paramDataType">ViInt32</td>
<td>Specifies the value to which you want to set the attribute.

<table class="Borderless-Wide">
<tr>
<td class="Icon"><img src="note.gif"></td>
<td>
<strong>Note</strong>&nbsp;&nbsp;  Some of the values might not be valid depending on the current settings of the instrument session.</td></tr></table>

<strong>Default Value</strong>: None</td>
 </tr></table></body>
</html>    j    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Attribute ID</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">attributeID</td>
<td class="paramDataType">ViAttr</td>
<td>Specifies the ID of an attribute.

</td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>channelName</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">channelName</td>
<td class="paramDataType">ViConstString</td>
<td>Specifies the name of the channel on which to check the attribute value if the attribute is channel-based.  If the attribute is not channel-based, then pass <span class="monospace">VI_NULL</span> or &quot;&quot; (empty string). 


<p class="Body"><strong>Default Value</strong>: &quot;&quot; (empty string) </p>
</td>
 </tr></table></body>
</html>    ��-   �  �    vi                                7�#����  �    Status                           �� � � �  �    Attribute Value                 ���� � ���                                          �� = � � �    Attribute ID                     �� =  �  �    Channel Name                           	               .Press <ENTER> for a list of 
value constants.                0    ""       <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_SetAttributeViInt64</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_SetAttributeViInt64</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_SetAttributeViInt64&nbsp;(ViSession&nbsp;vi, ViConstString&nbsp;channelName, ViAttr&nbsp;attributeID, ViInt32&nbsp;attributeValue);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Sets the value of a ViInt64 attribute.</p>

<p class="Body">This is a low-level function that you can use to set the values of instrument-specific attributes and inherent IVI attributes.  If the attribute represents an instrument state, this function performs instrument I/O in the following cases:</p>

<ul><li>State caching is disabled for the entire session or for the particular attribute.</li>

<li>State caching is enabled and the currently cached value is invalid or is different than the value you specify. </li></ul>

<p class="Body">NI-FGEN contains high-level functions that set most of the instrument attributes.  NI recommends that you use the high-level driver functions as much as possible.  They handle order dependencies and multithread locking for you.  In addition, they perform status checking only after setting all of the attributes.  In contrast, when you set multiple attributes using the Set Attribute functions, the functions check the instrument status after each call.</p>

<p class="Body">Also, when state caching is enabled, the high-level functions that configure multiple attributes perform instrument I/O only for the attributes whose value you change.  Thus, you can safely call the high-level functions without the penalty of redundant instrument I/O.</p>

</body>
</html>

    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Attribute Value</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">attributeValue</td>
<td class="paramDataType">ViInt64</td>
<td>Specifies the value to which you want to set the attribute.

<table class="Borderless-Wide">
<tr>
<td class="Icon"><img src="note.gif"></td>
<td>
<strong>Note</strong>&nbsp;&nbsp;  Some of the values might not be valid depending on the current settings of the instrument session.</td></tr></table>

<strong>Default Value</strong>: None</td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>channelName</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">channelName</td>
<td class="paramDataType">ViConstString</td>
<td>Specifies the name of the channel on which to check the attribute value if the attribute is channel-based.  If the attribute is not channel-based, then pass <span class="monospace">VI_NULL</span> or &quot;&quot; (empty string). 


<p class="Body"><strong>Default Value</strong>: &quot;&quot; (empty string) </p>
</td>
 </tr></table></body>
</html>    ��-   �  �    vi                                7�#����  �    Status                           �B � � �  �    Attribute Value                 ���� � ���                                          �� = � � �    Attribute ID                     �� =  �  �    Channel Name                           	               .Press <ENTER> for a list of 
value constants.                0    ""       <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_SetAttributeViReal64</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_SetAttributeViReal64</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_SetAttributeViReal64&nbsp;(ViSession&nbsp;vi, ViConstString&nbsp;channelName, ViAttr&nbsp;attributeID, ViReal64&nbsp;attributeValue);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Sets the value of a ViReal64 attribute.

<p class="Body">This is a low-level function that you can use to set the values of instrument-specific attributes and inherent IVI attributes.  If the attribute represents an instrument state, this function performs instrument I/O in the following cases:</p>

<ul><li>State caching is disabled for the entire session or for the particular attribute.</li>

<li>State caching is enabled and the currently cached value is invalid or is different than the value you specify. </li></ul>

<p class="Body">NI-FGEN contains high-level functions that set most of the instrument attributes.  NI recommends that you use the high-level driver functions as much as possible.  They handle order dependencies and multithread locking for you.  In addition, they perform status checking only after setting all of the attributes.  In contrast, when you set multiple attributes using the Set Attribute functions, the functions check the instrument status after each call.</p>

<p class="Body">Also, when state caching is enabled, the high-level functions that configure multiple attributes perform instrument I/O only for the attributes whose value you change.  Thus, you can safely call the high-level functions without the penalty of redundant instrument I/O.</p>

</body>
</html>

    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Attribute Value</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">attributeValue</td>
<td class="paramDataType">ViReal64</td>
<td>Specifies the value to which you want to set the attribute.

<table class="Borderless-Wide">
<tr>
<td class="Icon"><img src="note.gif"></td>
<td>
<strong>Note</strong>&nbsp;&nbsp;  Some of the values might not be valid depending on the current settings of the instrument session.</td></tr></table>

<strong>Default Value</strong>: None</td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>channelName</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">channelName</td>
<td class="paramDataType">ViConstString</td>
<td>Specifies the name of the channel on which to check the attribute value if the attribute is channel-based.  If the attribute is not channel-based, then pass <span class="monospace">VI_NULL</span> or &quot;&quot; (empty string). 


<p class="Body"><strong>Default Value</strong>: &quot;&quot; (empty string) </p>
</td>
 </tr></table></body>
</html>    ��-   �  �    vi                                7�#����  �    Status                           �+ � � �  �    Attribute Value                 ���� � ���                                          �� = � � �    Attribute ID                     �� =  �  �    Channel Name                           	               .Press <ENTER> for a list of 
value constants.                0    ""       <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_SetAttributeViString</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_SetAttributeViString</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_SetAttributeViString&nbsp;(ViSession&nbsp;vi, ViConstString&nbsp;channelName, ViAttr&nbsp;attributeID, ViConstString&nbsp;attributeValue);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Sets the value of a ViString attribute.

<p class="Body">This is a low-level function that you can use to set the values of instrument-specific attributes and inherent IVI attributes.  If the attribute represents an instrument state, this function performs instrument I/O in the following cases:</p>

<ul><li>State caching is disabled for the entire session or for the particular attribute.</li>

<li>State caching is enabled and the currently cached value is invalid or is different than the value you specify. </li></ul>

<p class="Body">NI-FGEN contains high-level functions that set most of the instrument attributes. NI recommends that you use the high-level driver functions as much as possible. They handle order dependencies and multithread locking for you. In addition, they perform status checking only after setting all of the attributes. In contrast, when you set multiple attributes using the Set Attribute functions, the functions check the instrument status after each call.</p>

<p class="Body">Also, when state caching is enabled, the high-level functions that configure multiple attributes perform instrument I/O only for the attributes whose value you change.  Thus, you can safely call the high-level functions without the penalty of redundant instrument I/O.</p>
</body>
</html>

    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Attribute Value</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">attributeValue</td>
<td class="paramDataType">ViString</td>
<td>Specifies the value to which you want to set the attribute.

<table class="Borderless-Wide">
<tr>
<td class="Icon"><img src="note.gif"></td>
<td>
<strong>Note</strong>&nbsp;&nbsp;  Some of the values might not be valid depending on the current settings of the instrument session.</td></tr></table>

<strong>Default Value</strong>: None</td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>channelName</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">channelName</td>
<td class="paramDataType">ViConstString</td>
<td>Specifies the name of the channel on which to check the attribute value if the attribute is channel-based.  If the attribute is not channel-based, then pass <span class="monospace">VI_NULL</span> or &quot;&quot; (empty string). 


<p class="Body"><strong>Default Value</strong>: &quot;&quot; (empty string) </p>
</td>
 </tr></table></body>
</html>    ��-   �  �    vi                                7�#����  �    Status                           � � � �  �    Attribute Value                 ���� � ���                                          �� = � � �    Attribute ID                     �� =  �  �    Channel Name                           	               .Press <ENTER> for a list of 
value constants.                0    ""       <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_SetAttributeViBoolean</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_SetAttributeViBoolean</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_SetAttributeViBoolean&nbsp;(ViSession&nbsp;vi, ViConstString&nbsp;channelName, ViAttr&nbsp;attributeID, ViBoolean&nbsp;attributeValue);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Sets the value of a ViBoolean attribute.

<p class="Body">This is a low-level function that you can use to set the values of instrument-specific attributes and inherent IVI attributes.  If the attribute represents an instrument state, this function performs instrument I/O in the following cases:</p>

<ul><li>State caching is disabled for the entire session or for the particular attribute.</li>

<li>State caching is enabled and the currently cached value is invalid or is different than the value you specify. </li></ul>

<p class="Body">NI-FGEN contains high-level functions that set most of the instrument attributes.  NI recommends that you use the high-level driver functions as much as possible.  They handle order dependencies and multithread locking for you.  In addition, they perform status checking only after setting all of the attributes.  In contrast, when you set multiple attributes using the Set Attribute functions, the functions check the instrument status after each call.</p>

<p class="Body">Also, when state caching is enabled, the high-level functions that configure multiple attributes perform instrument I/O only for the attributes whose value you change.  Thus, you can safely call the high-level functions without the penalty of redundant instrument I/O.</p>

</body>
</html>

    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Attribute Value</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">attributeValue</td>
<td class="paramDataType">ViBoolean</td>
<td>Specifies the value to which you want to set the attribute.

<table class="Borderless-Wide">
<tr>
<td class="Icon"><img src="note.gif"></td>
<td>
<strong>Note</strong>&nbsp;&nbsp;  Some of the values might not be valid depending on the current settings of the instrument session.</td></tr></table>

<strong>Default Value</strong>: None</td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>channelName</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">channelName</td>
<td class="paramDataType">ViConstString</td>
<td>Specifies the name of the channel on which to check the attribute value if the attribute is channel-based.  If the attribute is not channel-based, then pass <span class="monospace">VI_NULL</span> or &quot;&quot; (empty string). 


<p class="Body"><strong>Default Value</strong>: &quot;&quot; (empty string) </p>
</td>
 </tr></table></body>
</html>    ��-   �  �    vi                                7�#����  �    Status                           � � � �  �    Attribute Value                 ���� � ���                                          �� = � � �    Attribute ID                     ȫ =  �  �    Channel Name                           	               .Press <ENTER> for a list of 
value constants.                0    ""       <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_SetAttributeViSession</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_SetAttributeViSession</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_SetAttributeViSession&nbsp;(ViSession&nbsp;vi, ViConstString&nbsp;channelName, ViAttr&nbsp;attributeID, ViSession&nbsp;attributeValue);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Sets the value of a ViSession attribute.</p>

<p class="Body">This is a low-level function that you can use to set the values of instrument-specific attributes and inherent IVI attributes.  If the attribute represents an instrument state, this function performs instrument I/O in the following cases:</p>

<ul><li>State caching is disabled for the entire session or for the particular attribute.</li>

<li>State caching is enabled and the currently cached value is invalid or is different than the value you specify. </li></ul>

<p class="Body">NI-FGEN contains high-level functions that set most of the instrument attributes.  It is best to use the high-level driver functions as much as possible.  They handle order dependencies and multithread locking for you.  In addition, they perform status checking only after setting all of the attributes.  In contrast, when you set multiple attributes using the Set Attribute functions, the functions check the instrument status after each call.</p>
<p class="Body">
Also, when state caching is enabled, the high-level functions that configure multiple attributes perform instrument I/O only for the attributes whose value you change.  Thus, you can safely call the high-level functions without the penalty of redundant instrument I/O.</p>


</body>
</html>

    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Attribute Value</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">attributeValue</td>
<td class="paramDataType">ViSession</td>
<td>Specifies the value to which you want to set the attribute.

<table class="Borderless-Wide">
<tr>
<td class="Icon"><img src="note.gif"></td>
<td>
<strong>Note</strong>&nbsp;&nbsp;  Some of the values might not be valid depending on the current settings of the instrument session.</td></tr></table>

<strong>Default Value</strong>: None</td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>channelName</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">channelName</td>
<td class="paramDataType">ViConstString</td>
<td>Specifies the name of the channel on which to check the attribute value if the attribute is channel-based.  If the attribute is not channel-based, then pass <span class="monospace">VI_NULL</span> or an empty string (&quot;&quot;). 


<p class="Body"><strong>Default Value</strong>: &quot;&quot; (empty string) </p>
</td>
 </tr></table></body>
</html>    ��-   �  �    vi                                7�#����  �    Status                           �� � � �  �    Attribute Value                  ֗ =  �  �    Channel Name                     �� = � � �    Attribute ID                    ���� � ���                                                	               ""                0    .Press <ENTER> for a list of 
value constants.   �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_GetAttributeViInt32</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_GetAttributeViInt32</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_GetAttributeViInt32&nbsp;(ViSession&nbsp;vi, ViConstString&nbsp;channelName, ViAttr&nbsp;attributeID, ViInt32*&nbsp;attributeValue);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Queries the value of a ViInt32 attribute. You can use this function to get the values of instrument-specific attributes and inherent IVI attributes.  If the attribute represents an instrument state, this function performs instrument I/O in the following cases:

<ul><li>State caching is disabled for the entire session or for the particular attribute.</li>

<li>State caching is enabled and the currently cached value is invalid.</li></ul>
</body>
</html>

    �    
<html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Attribute Value</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">attributeValue</td>
<td class="paramDataType">ViInt32*</td>
<td>Returns the current value of the attribute.  Pass the address of a ViInt32 variable.</td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>channelName</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">channelName</td>
<td class="paramDataType">ViConstString</td>
<td>Specifies the name of the channel on which to check the attribute value if the attribute is channel-based.  If the attribute is not channel-based, then pass <span class="monospace">VI_NULL</span> or an empty string (&quot;&quot;). 


<p class="Body"><strong>Default Value</strong>: &quot;&quot; (empty string) </p>
</td>
 </tr></table></body>
</html>    ��-   �  �    vi                                7�#����  �    Status                           ފ � � �  �    Attribute Value                  �6 =  �  �    Channel Name                     �� = � � �    Attribute ID                           	           	            ""                0   �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_GetAttributeViInt64</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_GetAttributeViInt64</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_GetAttributeViInt64&nbsp;(ViSession&nbsp;vi, ViConstString&nbsp;channelName, ViAttr&nbsp;attributeID, ViInt64*&nbsp;attributeValue);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Queries the value of a ViInt64 attribute. You can use this function to get the values of instrument-specific attributes and inherent IVI attributes.  If the attribute represents an instrument state, this function performs instrument I/O in the following cases:

<ul><li>State caching is disabled for the entire session or for the particular attribute.</li>

<li>State caching is enabled and the currently cached value is invalid.</li></ul>
</body>
</html>

    �    
<html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Attribute Value</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">attributeValue</td>
<td class="paramDataType">ViInt64*</td>
<td>Returns the current value of the attribute.  Pass the address of a ViInt64 variable.</td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>channelName</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">channelName</td>
<td class="paramDataType">ViConstString</td>
<td>Specifies the name of the channel on which to check the attribute value if the attribute is channel-based.  If the attribute is not channel-based, then pass <span class="monospace">VI_NULL</span> or an empty string (&quot;&quot;). 


<p class="Body"><strong>Default Value</strong>: &quot;&quot; (empty string) </p>
</td>
 </tr></table></body>
</html>    ��-   �  �    vi                                7�#����  �    Status                           �� � � �  �    Attribute Value                  �w =  �  �    Channel Name                     �� = � � �    Attribute ID                           	           	            ""                0   �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_GetAttributeViReal64</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_GetAttributeViReal64</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_GetAttributeViReal64&nbsp;(ViSession&nbsp;vi, ViConstString&nbsp;channelName, ViAttr&nbsp;attributeID, ViReal64*&nbsp;attributeValue);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Queries the value of a ViReal64 attribute.

<p class="Body">You can use this function to get the values of instrument-specific attributes and inherent IVI attributes.  If the attribute represents an instrument state, this function performs instrument I/O in the following cases:</p>

<ul><li>State caching is disabled for the entire session or for the particular attribute.</li>

<li>State caching is enabled and the currently cached value is invalid.</li></ul>


</body>
</html>

    �    
<html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Attribute Value</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">attributeValue</td>
<td class="paramDataType">ViReal64*</td>
<td>Returns the current value of the attribute.  Pass the address of a ViReal64 variable.
</td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>channelName</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">channelName</td>
<td class="paramDataType">ViConstString</td>
<td>Specifies the name of the channel on which to check the attribute value if the attribute is channel-based.  If the attribute is not channel-based, then pass <span class="monospace">VI_NULL</span> or an empty string (&quot;&quot;). 


<p class="Body"><strong>Default Value</strong>: &quot;&quot; (empty string) </p>
</td>
 </tr></table></body>
</html>    ��-   �  �    vi                                7�#����  �    Status                           �( � � �  �    Attribute Value                  �� =  �  �    Channel Name                     �� = � � �    Attribute ID                           	           	           ""                0   �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_GetAttributeViString</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_GetAttributeViString</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_GetAttributeViString&nbsp;(ViSession&nbsp;vi, ViConstString&nbsp;channelName, ViAttr&nbsp;attributeID, ViInt32&nbsp;arraySize, ViChar[]&nbsp;attributeValue);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Queries the value of a ViString attribute.

<p class="Body">You can use this function to get the values of instrument-specific attributes and inherent IVI attributes. If the attribute represents an instrument state, this function performs instrument I/O in the following cases:</p>

<ul><li>State caching is disabled for the entire session or for the particular attribute.</li>

<li>State caching is enabled and the currently cached value is invalid. </li></ul>

<p class="Body">You must provide a ViChar array to serve as a buffer for the value. You pass the number of bytes in the buffer as the <strong>arraySize</strong> parameter. If the current value of the attribute, including the terminating NUL byte, is larger than the size you indicate in the <strong>arraySize</strong> parameter, the function copies <strong>arraySize</strong> &ndash; 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the array size you must pass to get the entire value.  For example, if the value is <span class="monospace">123456</span> and <strong>arraySize</strong> is 4, the function places <span class="monopsace">123</span> into the buffer and returns <span class="monospace">7</span>.</p>

<p class="Body">If you want to call this function just to get the required array size, you can pass 0 for <strong>arraySize</strong> and <span class="monospace">VI_NULL</span> for the <strong>attributeValue</strong> buffer.  </p>

<p class="Body">If you want the function to fill in the buffer regardless of the number of bytes in the value, pass a negative number for the <strong>arraySize</strong> parameter.</p>

</body>
</html>

        <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Status</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">Status</td>
<td class="paramDataType">ViStatus</td>
<td>Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You can examine the status code from each call to an NI-FGEN function to determine if an error occurred.

To obtain a text description of the status code, call <a href="javascript:LaunchHelp('fgencref.chm::/cviniFgen_error_message.html')"> <span class="Monospace"> niFgen_error_message</span></a>. To obtain additional information about the error condition, call <a href="javascript:LaunchHelp('fgencref.chm::/cviniFgen_GetError.html')"> <span class="Monospace"> niFgen_GetError</span></a>. To clear the error information from NI-FGEN, call <a href="javascript:LaunchHelp('fgencref.chm::/cviniFgen_ClearError.html')"> <span class="Monospace"> niFgen_ClearError</span></a>. <br><br>
 

The general meaning of the status code is as follows:<br> <br>


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
</td>
</tr>
</table>

</body>
</html>



    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Attribute Value</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">attributeValue</td>
<td class="paramDataType">ViChar[]</td>
<td>The buffer in which the function returns the current value of the attribute.  The buffer must be a ViChar data type and have at least as many bytes as indicated in the <strong>arraySize</strong> parameter.

<p class="Body">If the current value of the attribute, including the terminating NUL byte, contains more bytes than you indicate in this parameter, the function copies <strong>arraySize</strong> &ndash; 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the array size you must pass to get the entire value. For example, if the value is <span class="monospace">123456</span> and <strong>arraySize</strong> is 4, the function places <span class="monospace">123</span> into the buffer and returns <span class="monospace">7</span>.</p>

<p class="Body">If you specify 0 for the <strong>arraySize</strong> parameter, you can pass <span class="monospace">VI_NULL</span> for this parameter.</p>

</td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>channelName</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">channelName</td>
<td class="paramDataType">ViConstString</td>
<td>Specifies the name of the channel on which to check the attribute value if the attribute is channel-based.  If the attribute is not channel-based, then pass <span class="monospace">VI_NULL</span> or an empty string (&quot;&quot;). 


<p class="Body"><strong>Default Value</strong>: &quot;&quot; (empty string) </p>
</td>
 </tr></table></body>
</html>        <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Array Size</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">arraySize</td>
<td class="paramDataType">ViInt32</td>
<td>Specifies the number of bytes in the ViChar array you specify for the <strong>attributeValue</strong> parameter. 

<p class="Body">If the current value of the attribute, including the terminating NUL byte, contains more bytes than you indicate in this parameter, the function copies <strong>arraySize</strong> &ndash; 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the array size you must pass to get the entire value. For example, if the value is <span class="monospace">123456</span> and <strong>arraySize</strong> is 4, the function places <span class="monospace">123</span> into the buffer and returns <span class="monospace">7</span>.</p>

<p class="Body">If you pass a negative number, the function copies the value to the buffer regardless of the number of bytes in the value.</p>

<p class="Body">If you pass 0, you can pass <span class="monospace">VI_NULL</span> for the <strong>attributeValue</strong> buffer parameter.</p>

</td>
 </tr></table></body>
</html>    ��-   �  �    vi                               �/#����  �    Status or Required Size          P � L � �    Attribute Value                  
M =  �  �    Channel Name                     � =� �  �    Array Size                       �� = � � �    Attribute ID                           	           	            ""    512                0   �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_GetAttributeViBoolean</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_GetAttributeViBoolean</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_GetAttributeViBoolean&nbsp;(ViSession&nbsp;vi, ViConstString&nbsp;channelName, ViAttr&nbsp;attributeID, ViBoolean*&nbsp;attributeValue);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Queries the value of a ViBoolean attribute.</p>

<p class="Body">You can use this function to get the values of instrument-specific attributes and inherent IVI attributes.  If the attribute represents an instrument state, this function performs instrument I/O in the following cases:</p>

<ul><li>State caching is disabled for the entire session or for the particular attribute.</li>

<li>State caching is enabled and the currently cached value is invalid.</li></ul>
</body>
</html>

    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Attribute Value</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">attributeValue</td>
<td class="paramDataType">ViBoolean*</td>
<td>Returns the current value of the attribute.  Pass the address of a ViBoolean variable.</td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>channelName</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">channelName</td>
<td class="paramDataType">ViConstString</td>
<td>Specifies the name of the channel on which to check the attribute value if the attribute is channel-based.  If the attribute is not channel-based, then pass <span class="monospace">VI_NULL</span> or an empty string (&quot;&quot;). 


<p class="Body"><strong>Default Value</strong>: &quot;&quot; (empty string) </p>
</td>
 </tr></table></body>
</html>    ��-   �  �    vi                                7�#����  �    Status                           ] � � �  �    Attribute Value                   =  �  �    Channel Name                     �� = � � �    Attribute ID                           	           	            ""                0   �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_GetAttributeViSession</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_GetAttributeViSession</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_GetAttributeViSession&nbsp;(ViSession&nbsp;vi, ViConstString&nbsp;channelName, ViAttr&nbsp;attributeID, ViSession*&nbsp;attributeValue);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Queries the value of a ViSession attribute.

<p class="Body">You can use this function to get the values of instrument-specific attributes and inherent IVI attributes.  If the attribute represents an instrument state, this function performs instrument I/O in the following cases:</p>

<ul><li>State caching is disabled for the entire session or for the particular attribute.</li>

<li>State caching is enabled and the currently cached value is invalid.</li></ul>

</body>
</html>

    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Attribute Value</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">attributeValue</td>
<td class="paramDataType">ViSession*</td>
<td>Returns the current value of the attribute.  Pass the address of a ViSession variable.</td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>channelName</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">channelName</td>
<td class="paramDataType">ViConstString</td>
<td>Specifies the name of the channel on which to check the attribute value if the attribute is channel-based.  If the attribute is not channel-based, then pass <span class="monospace">VI_NULL</span> or an empty string (&quot;&quot;). 


<p class="Body"><strong>Default Value</strong>: &quot;&quot; (empty string) </p>
</td>
 </tr></table></body>
</html>    ��-   �  �    vi                                7�#����  �    Status                            � � � �  �    Attribute Value                  "p =  �  �    Channel Name                     �� = � � �    Attribute ID                           	           	            ""                0   V    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_CheckAttributeViInt32</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_CheckAttributeViInt32</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_CheckAttributeViInt32&nbsp;(ViSession&nbsp;vi, ViConstString&nbsp;channelName, ViAttr&nbsp;attributeID, ViInt32&nbsp;attributeValue);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Checks the validity of a value you specify for a ViInt32 attribute.</p>

</body>
</html>

    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Attribute Value</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">attributeValue</td>
<td class="paramDataType">ViInt32</td>
<td>Specifies the value to which you want to set the attribute.

<table class="Borderless-Wide">
<tr>
<td class="Icon"><img src="note.gif"></td>
<td>
<strong>Note</strong>&nbsp;&nbsp;  Some of the values might not be valid depending on the current settings of the instrument session.</td></tr></table>

<strong>Default Value</strong>: None</td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>channelName</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">channelName</td>
<td class="paramDataType">ViConstString</td>
<td>Specifies the name of the channel on which to check the attribute value if the attribute is channel-based.  If the attribute is not channel-based, then pass <span class="monospace">VI_NULL</span> or an empty string (&quot;&quot;). 


<p class="Body"><strong>Default Value</strong>: &quot;&quot; (empty string) </p>
</td>
 </tr></table></body>
</html>    ��-   �  �    vi                                7�#����  �    Status                           (� � � �  �    Attribute Value                  +@ =  �  �    Channel Name                    ���� � ���                                          �� = � � �    Attribute ID                           	               ""    .Press <ENTER> for a list of 
value constants.                0   V    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_CheckAttributeViInt64</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_CheckAttributeViInt64</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_CheckAttributeViInt64&nbsp;(ViSession&nbsp;vi, ViConstString&nbsp;channelName, ViAttr&nbsp;attributeID, ViInt64&nbsp;attributeValue);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Checks the validity of a value you specify for a ViInt64 attribute.</p>

</body>
</html>

    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Attribute Value</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">attributeValue</td>
<td class="paramDataType">ViInt64</td>
<td>Specifies the value to which you want to set the attribute.

<table class="Borderless-Wide">
<tr>
<td class="Icon"><img src="note.gif"></td>
<td>
<strong>Note</strong>&nbsp;&nbsp;  Some of the values might not be valid depending on the current settings of the instrument session.</td></tr></table>

<strong>Default Value</strong>: None</td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>channelName</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">channelName</td>
<td class="paramDataType">ViConstString</td>
<td>Specifies the name of the channel on which to check the attribute value if the attribute is channel-based.  If the attribute is not channel-based, then pass <span class="monospace">VI_NULL</span> or an empty string (&quot;&quot;). 


<p class="Body"><strong>Default Value</strong>: &quot;&quot; (empty string) </p>
</td>
 </tr></table></body>
</html>    ��-   �  �    vi                                7�#����  �    Status                           1� � � �  �    Attribute Value                  4n =  �  �    Channel Name                    ���� � ���                                          �� = � � �    Attribute ID                           	               ""    .Press <ENTER> for a list of 
value constants.                0   X    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_CheckAttributeViReal64</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_CheckAttributeViReal64</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_CheckAttributeViReal64&nbsp;(ViSession&nbsp;vi, ViConstString&nbsp;channelName, ViAttr&nbsp;attributeID, ViReal64&nbsp;attributeValue);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Checks the validity of a value you specify for a ViReal64 attribute.</p>
</body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Attribute Value</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">attributeValue</td>
<td class="paramDataType">ViReal64</td>
<td>Specifies the value to which you want to set the attribute.

<table class="Borderless-Wide">
<tr>
<td class="Icon"><img src="note.gif"></td>
<td>
<strong>Note</strong>&nbsp;&nbsp;  Some of the values might not be valid depending on the current settings of the instrument session.</td></tr></table>

<strong>Default Value</strong>: None</td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>channelName</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">channelName</td>
<td class="paramDataType">ViConstString</td>
<td>Specifies the name of the channel on which to check the attribute value if the attribute is channel-based.  If the attribute is not channel-based, then pass <span class="monospace">VI_NULL</span> or an empty string (&quot;&quot;). 


<p class="Body"><strong>Default Value</strong>: &quot;&quot; (empty string) </p>
</td>
 </tr></table></body>
</html>    ��-   �  �    vi                                7�#����  �    Status                           :� � � �  �    Attribute Value                  =� =  �  �    Channel Name                    ���� � ���                                          �� = � � �    Attribute ID                           	               ""    .Press <ENTER> for a list of 
value constants.                0   `    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_CheckAttributeViString</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_CheckAttributeViString</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_CheckAttributeViString&nbsp;(ViSession&nbsp;vi, ViConstString&nbsp;channelName, ViAttr&nbsp;attributeID, ViConstString&nbsp;attributeValue);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Checks the validity of a value you specify for a ViString attribute.</p>

</body>
</html>

    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Attribute Value</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">attributeValue</td>
<td class="paramDataType">ViConstString</td>
<td>Specifies the value which you want to verify as a valid value for the attribute.

<table class="Borderless-Wide">
<tr>
<td class="Icon"><img src="note.gif"></td>
<td>
<strong>Note</strong>&nbsp;&nbsp;  Some of the values might not be valid depending on the current settings of the instrument session.</td></tr></table><p class="Body"><strong>Default Value</strong>: None</p>
</td>
</tr>
</table>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>channelName</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">channelName</td>
<td class="paramDataType">ViConstString</td>
<td>Specifies the name of the channel on which to check the attribute value if the attribute is channel-based.  If the attribute is not channel-based, then pass <span class="monospace">VI_NULL</span> or an empty string (&quot;&quot;). 


<p class="Body"><strong>Default Value</strong>: &quot;&quot; (empty string) </p>
</td>
 </tr></table></body>
</html>    ��-   �  �    vi                                7�#����  �    Status                           D2 � � �  �    Attribute Value                  G =  �  �    Channel Name                    ���� � ���                                          �� = � � �    Attribute ID                           	               ""    .Press <ENTER> for a list of 
value constants.                0   `    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_CheckAttributeViBoolean</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_CheckAttributeViBoolean</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_CheckAttributeViBoolean&nbsp;(ViSession&nbsp;vi, ViConstString&nbsp;channelName, ViAttr&nbsp;attributeID, ViBoolean&nbsp;attributeValue);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Checks the validity of a value you specify for a ViBoolean attribute.</p>

</body>
</html>

    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Attribute Value</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">attributeValue</td>
<td class="paramDataType">ViBoolean</td>
<td>Specifies the value to which you want to set the attribute.

<table class="Borderless-Wide">
<tr>
<td class="Icon"><img src="note.gif"></td>
<td>
<strong>Note</strong>&nbsp;&nbsp;  Some of the values might not be valid depending on the current settings of the instrument session.</td></tr></table>

<strong>Default Value</strong>: None</td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>channelName</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">channelName</td>
<td class="paramDataType">ViConstString</td>
<td>Specifies the name of the channel on which to check the attribute value if the attribute is channel-based.  If the attribute is not channel-based, then pass <span class="monospace">VI_NULL</span> or an empty string (&quot;&quot;). 


<p class="Body"><strong>Default Value</strong>: &quot;&quot; (empty string) </p>
</td>
 </tr></table></body>
</html>    ��-   �  �    vi                                7�#����  �    Status                           M� � � �  �    Attribute Value                  PN =  �  �    Channel Name                    ���� � ���                                          �� = � � �    Attribute ID                           	               ""    .Press <ENTER> for a list of 
value constants.                0   `    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_CheckAttributeViSession</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_CheckAttributeViSession</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_CheckAttributeViSession&nbsp;(ViSession&nbsp;vi, ViConstString&nbsp;channelName, ViAttr&nbsp;attributeID, ViSession&nbsp;attributeValue);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Checks the validity of a value you specify for a ViSession attribute.</p>

</body>
</html>

    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Attribute Value</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">attributeValue</td>
<td class="paramDataType">ViSession</td>
<td>Specifies the value to which you want to set the attribute.

<table class="Borderless-Wide">
<tr>
<td class="Icon"><img src="note.gif"></td>
<td>
<strong>Note</strong>&nbsp;&nbsp;  Some of the values might not be valid depending on the current settings of the instrument session.</td></tr></table>

<strong>Default Value</strong>: None</td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>channelName</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">channelName</td>
<td class="paramDataType">ViConstString</td>
<td>Specifies the name of the channel on which to check the attribute value if the attribute is channel-based.  If the attribute is not channel-based, then pass <span class="monospace">VI_NULL</span> or an empty string (&quot;&quot;). 


<p class="Body"><strong>Default Value</strong>: &quot;&quot; (empty string) </p>
</td>
 </tr></table></body>
</html>    ��-   �  �    vi                                7�#����  �    Status                           V� � � �  �    Attribute Value                  Y� =  �  �    Channel Name                    ���� � ���                                          �� = � � �    Attribute ID                           	               ""    .Press <ENTER> for a list of 
value constants.                0       <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_ResetAttribute</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_ResetAttribute</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_ResetAttribute&nbsp;(ViSession&nbsp;vi, ViConstString&nbsp;channelName, ViAttr&nbsp;attributeID);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Resets the attribute to its default value.</p>


</body>
</html>

    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>channelName</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">channelName</td>
<td class="paramDataType">ViConstString</td>
<td>Specifies the name of the channel on which to check the attribute value if the attribute is channel-based.  If the attribute is not channel-based, then pass <span class="monospace">VI_NULL</span> or an empty string (&quot;&quot;). 


<p class="Body"><strong>Default Value</strong>: &quot;&quot; (empty string) </p>
</td>
 </tr></table></body>
</html>    ��-   �  �    vi                                7�#����  �    Status                           �� = � � �    Attribute ID                     _� =  �  �    Channel Name                           	                       0    ""   �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niFgen_ImportAttributeConfigurationFile</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niFgen_ImportAttributeConfigurationFile</h1>
<p class="syntax">ViStatus niFgen_ImportAttributeConfigurationFile
             (ViSession Instrument_Handle,
              ViConstString File_Path);</p>
<h2 class="purpose">Purpose</h2>
<p class="Body">Imports a configuration to the session from the specified file.</p>

<p class="Body">You can export and import supported configurations only between NI&#8209;FGEN devices with identical bus types, model numbers, and channel counts, as well as the same number of initialized channels.</p>

<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&nbsp;&nbsp;You cannot call this function while the session is in the <a href="javascript:LaunchHelp('SigGenHelp.chm::/prog_nifgen_state_model.html')">Running/Generating</a> state.</td>
</tr>
</table>

<p class="Body"><strong>Supported Configurations</strong></p>
<p class="Body">You can export and import the following between NI&#8209;FGEN sessions:</p>
<ul>
<li>Attribute configurations</li>
<li>Arbitrary waveforms</li>
</ul>

<p class="Body"><strong>Requirements for Exporting and Importing Arbitrary Waveforms</strong></p>
<p class="Body">Arbitrary waveforms you export and import between sessions using this function must meet the following criteria:</p>
<ul>
<li>All waveforms in the exporting session are created from files, other than HWS files, using the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm','fgencref.chm','cviniFgen_CreateWaveformFromFileI16.html')"><span class="Monospace">niFgen_CreateWaveformFromFileI16</span></a> or <a href="javascript:LaunchMergedHelp('SigGenHelp.chm','fgencref.chm','cviniFgen_CreateWaveformFromFileF64.html')"><span class="Monospace">niFgen_CreateWaveformFromFileF64</span></a> functions</li>
<li>The full file path of the file containing the arbitrary waveform still exists upon import</li>
<li>All waveforms are defined using handles rather than names</li>
<li>All waveforms are complete&#0151;none are <a href="javascript:LaunchHelp('SigGenHelp.chm::/streaming.html')">streamed</a> or <a href="javascript:LaunchMergedHelp('SigGenHelp.chm','fgencref.chm','incremental_write_waveforms.html')">incrementally written</a></li>
</ul>
<p class="Body">You can set the device mode with the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm','fgencref.chm','cviniFgen_ConfigureOutputMode.html')"><span class="Monospace">niFgen_ConfigureOutputMode</span></a> function. For more information on arbitrary waveform mode, refer to <a href="javascript:LaunchHelp('SigGenHelp.chm::/Arb_Mode.html')">Arbitrary Waveform Output Mode</a> and <a href="javascript:LaunchHelp('SigGenHelp.chm::/programming_arb_waveform.html')">Configure Arbitrary Waveform Mode</a>.</p>

<p class="Body"><strong>Channel Mapping Behavior</strong></p>
<p class="Body">When exporting and importing configurations between NI&#8209;FGEN sessions that were initialized with different channels using the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm','fgencref.chm','cviniFgen_InitializeWithChannels.html')"><span class="Monospace">niFgen_InitializeWithChannels</span></a> function, the configuration of the exporting channel is mapped to the importing channel.</p>
<p class="Body">For example, if your entry for <strong>channelName</strong> is <span class="Monospace">0</span> for the exporting session and <span class="Monospace">1</span> for the importing session, the configuration exported from channel&#0160;0 is imported into channel&#0160;1.</p>

<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&nbsp;&nbsp;This function will return an error if the total number of channels initialized for the exporting session is not equal to the total number of channels initialized for the importing session.</td>
</tr>
</table>

<p class="Body"><strong>Related Topics:</strong></p>
<p class="Body"><a href="javascript:LaunchHelp('SigGenHelp.chm::/prog_nifgen_state_model.html')">Programming State Model</a></p>
<p class="Body"><a href="javascript:LaunchHelp('SigGenHelp.chm::/setting_before_reading_attributes.html')">Setting Attributes Before Reading Attributes</a></p>
<p class="Body"><a href="javascript:LaunchHelp('SigGenHelp.chm::/output_arb_freq_script_seq.html')">Output Modes</a></p>


</body>
</html>    �    <html>
<head>
<script src="launchhelp.js"></script>
<title>Instrument_Handle</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<table class="borderless"><tr>
<td class="paramName">Instrument_Handle</td>
<td class="paramDataType">ViSession</td>
<td>Identifies your instrument session. <strong>Instrument_Handle</strong> is obtained from the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cviniFgen_init.html')"><span class="monospace">niFgen_init</span></a>, <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_InitWithOptions.html')"><span class="monospace">niFgen_InitWithOptions</span></a>, or <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_InitializeWithChannels.html')"><span class="monospace">niFgen_InitializeWithChannels</span></a> functions and identifies a particular instrument session.</td>
</tr>
</table>
</body>

</html>         <html>
<head>
<script src="launchhelp.js"></script>
<title>filePath</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<table class="borderless"><tr>
<td class="paramName">File_Path</td>
<td class="paramDataType">ViConstString</td>
<td>The absolute path to the file that contains the configuration to import. If you specify an empty or relative path, this function returns an error.<br><br><strong>Default File Extension:</strong><span class="Monospace"> .nifgenconfig</span></td>
</tr></table>
</body>

</html>    7�#����  �    Status                           u.-   �  �    Instrument Handle                x� 2  �  �    File Path                          	                  �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niFgen_ExportAttributeConfigurationFile</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niFgen_ExportAttributeConfigurationFile</h1>
<p class="syntax">ViStatus niFgen_ExportAttributeConfigurationFile
             (ViSession Instrument_Handle,
              ViConstString File_Path);</p>

<h2 class="purpose">Purpose</h2>
<p class="Body">Exports a session configuration to the specified file.</p>

<p class="Body">You can export and import supported configurations only betwen NI&#8209;FGEN devices with identical bus types, model numbers, and channel counts, as well as the same number of initialized channels.</p>

<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&nbsp;&nbsp;You cannot call this function while the session is in the <a href="javascript:LaunchHelp('SigGenHelp.chm::/prog_nifgen_state_model.html')">Running/Generating</a> state.</td>
</tr>
</table>

<p class="Body"><strong>Supported Configurations</strong></p>
<p class="Body">You can export and import the following between NI&#8209;FGEN sessions:</p>
<ul>
<li>Attribute configurations</li>
<li>Arbitrary waveforms</li>
</ul>

<p class="Body"><strong>Requirements for Exporting and Importing Arbitrary Waveforms</strong></p>
<p class="Body">Arbitrary waveforms you export and import between sessions using this function must meet the following criteria:</p>
<ul>
<li>All waveforms in the exporting session are created from files, other than HWS files, using the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm','fgencref.chm','cviniFgen_CreateWaveformFromFileI16.html')"><span class="Monospace">niFgen_CreateWaveformFromFileI16</span></a> or <a href="javascript:LaunchMergedHelp('SigGenHelp.chm','fgencref.chm','cviniFgen_CreateWaveformFromFileF64.html')"><span class="Monospace">niFgen_CreateWaveformFromFileF64</span></a> functions</li>
<li>The full file path of the file containing the arbitrary waveform still exists upon import</li>
<li>All waveforms are defined using handles rather than names</li>
<li>All waveforms are complete&#0151;none are <a href="javascript:LaunchHelp('SigGenHelp.chm::/streaming.html')">streamed</a> or <a href="javascript:LaunchMergedHelp('SigGenHelp.chm','fgencref.chm','incremental_write_waveforms.html')">incrementally written</a></li>
</ul>
<p class="Body">You can set the device mode with the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm','fgencref.chm','cviniFgen_ConfigureOutputMode.html')"><span class="Monospace">niFgen_ConfigureOutputMode</span></a> function. For more information on arbitrary waveform mode, refer to <a href="javascript:LaunchHelp('SigGenHelp.chm::/Arb_Mode.html')">Arbitrary Waveform Output Mode</a> and <a href="javascript:LaunchHelp('SigGenHelp.chm::/programming_arb_waveform.html')">Configure Arbitrary Waveform Mode</a>.</p>

<p class="Body"><strong>Channel Mapping Behavior</strong></p>
<p class="Body">When exporting and importing configurations between NI&#8209;FGEN sessions that were initialized with different channels using the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm','fgencref.chm','cviniFgen_InitializeWithChannels.html')"><span class="Monospace">niFgen_InitializeWithChannels</span></a> function, the configuration of the exporting channel is mapped to the importing channel.</p>
<p class="Body">For example, if your entry for <strong>channelName</strong> is <span class="Monospace">0</span> for the exporting session and <span class="Monospace">1</span> for the importing session, the configuration exported from channel&#0160;0 is imported into channel&#0160;1.</p>

<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&nbsp;&nbsp;This function will return an error if the total number of channels initialized for the exporting session is not equal to the total number of channels initialized for the importing session.</td>
</tr>
</table>

<p class="Body"><strong>Related Topics:</strong></p>
<p class="Body"><a href="javascript:LaunchHelp('SigGenHelp.chm::/prog_nifgen_state_model.html')">Programming State Model</a></p>
<p class="Body"><a href="javascript:LaunchHelp('SigGenHelp.chm::/setting_before_reading_attributes.html')">Setting Attributes Before Reading Attributes</a></p>
<p class="Body"><a href="javascript:LaunchHelp('SigGenHelp.chm::/output_arb_freq_script_seq.html')">Output Modes</a></p>

</body>

</html>    �    <html>
<head>
<script src="launchhelp.js"></script>
<title>Instrument_Handle</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<table class="borderless"><tr>
<td class="paramName">Instrument_Handle</td>
<td class="paramDataType">ViSession</td>
<td>Identifies your instrument session. <strong>Instrument_Handle</strong> is obtained from the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cviniFgen_init.html')"><span class="monospace">niFgen_init</span></a>, <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_InitWithOptions.html')"><span class="monospace">niFgen_InitWithOptions</span></a>, or <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_InitializeWithChannels.html')"><span class="monospace">niFgen_InitializeWithChannels</span></a> functions and identifies a particular instrument session.</td>
</tr>
</table>
</body>

</html>    A    <html>
<head>
<script src="launchhelp.js"></script>
<title>File_Path</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<table class="borderless"><tr>
<td class="paramName">File_Path</td>
<td class="paramDataType">ViConstString</td>
<td>The absolute path to a placeholder file you must create to contain the configuration you want to export. If you specify an empty or relative path, this function returns an error.<br><br><strong>Default file extension:</strong><span class="Monospace"> .nifgenconfig</span></td>
</tr></table>
</body>

</html>    7�#����  �    Status                           ��-   �  �    Instrument Handle                �e 2  �  �    File Path                          	                  �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niFgen_ImportAttributeConfigurationBuffer</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niFgen_ImportAttributeConfigurationBuffer</h1>
<p class="syntax">ViStatus niFgen_ImportAttributeConfigurationBuffer
             (ViSession Instrument_Handle, ViInt32 Size,
              ViAddr Configuration);</p>
<h2 class="purpose">Purpose</h2>
<p class="Body">Imports a configuration to the session from the specified buffer.</p>
<p class="Body">You can export and import supported configurations only betwen NI&#8209;FGEN devices with identical bus types, model numbers, and channel counts, as well as the same number of initialized channels.</p>

<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&nbsp;&nbsp;You cannot call this function while the session is in the <a href="javascript:LaunchHelp('SigGenHelp.chm::/prog_nifgen_state_model.html')">Running/Generating</a> state.</td>
</tr>
</table>

<p class="Body"><strong>Supported Configurations</strong></p>
<p class="Body">You can export and import the following between NI&#8209;FGEN sessions:</p>
<ul>
<li>Attribute configurations</li>
<li>Arbitrary waveforms</li>
</ul>

<p class="Body"><strong>Requirements for Exporting and Importing Arbitrary Waveforms</strong></p>
<p class="Body">Arbitrary waveforms you export and import between sessions using this function must meet the following criteria:</p>
<ul>
<li>All waveforms in the exporting session are created from files, other than HWS files, using the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm','fgencref.chm','cviniFgen_CreateWaveformFromFileI16.html')"><span class="Monospace">niFgen_CreateWaveformFromFileI16</span></a> or <a href="javascript:LaunchMergedHelp('SigGenHelp.chm','fgencref.chm','cviniFgen_CreateWaveformFromFileF64.html')"><span class="Monospace">niFgen_CreateWaveformFromFileF64</span></a> functions</li>
<li>The full file path of the file containing the arbitrary waveform still exists upon import</li>
<li>All waveforms are defined using handles rather than names</li>
<li>All waveforms are complete&#0151;none are <a href="javascript:LaunchHelp('SigGenHelp.chm::/streaming.html')">streamed</a> or <a href="javascript:LaunchMergedHelp('SigGenHelp.chm','fgencref.chm','incremental_write_waveforms.html')">incrementally written</a></li>
</ul>
<p class="Body">You can set the device mode with the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm','fgencref.chm','cviniFgen_ConfigureOutputMode.html')"><span class="Monospace">niFgen_ConfigureOutputMode</span></a> function. For more information on arbitrary waveform mode, refer to <a href="javascript:LaunchHelp('SigGenHelp.chm::/Arb_Mode.html')">Arbitrary Waveform Output Mode</a> and <a href="javascript:LaunchHelp('SigGenHelp.chm::/programming_arb_waveform.html')">Configure Arbitrary Waveform Mode</a>.</p>

<p class="Body"><strong>Channel Mapping Behavior</strong></p>
<p class="Body">When exporting and importing configurations between NI&#8209;FGEN sessions that were initialized with different channels using the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm','fgencref.chm','cviniFgen_InitializeWithChannels.html')"><span class="Monospace">niFgen_InitializeWithChannels</span></a> function, the configuration of the exporting channel is mapped to the importing channel.</p>
<p class="Body">For example, if your entry for <strong>channelName</strong> is <span class="Monospace">0</span> for the exporting session and <span class="Monospace">1</span> for the importing session, the configuration exported from channel&#0160;0 is imported into channel&#0160;1.</p>

<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&nbsp;&nbsp;This function will return an error if the total number of channels initialized for the exporting session is not equal to the total number of channels initialized for the importing session.</td>
</tr>
</table>

<p class="Body"><strong>Related Topics:</strong></p>
<p class="Body"><a href="javascript:LaunchHelp('SigGenHelp.chm::/prog_nifgen_state_model.html')">Programming State Model</a></p>
<p class="Body"><a href="javascript:LaunchHelp('SigGenHelp.chm::/setting_before_reading_attributes.html')">Setting Attributes Before Reading Attributes</a></p>
<p class="Body"><a href="javascript:LaunchHelp('SigGenHelp.chm::/output_arb_freq_script_seq.html')">Output Modes</a></p>

</body>

</html>    �    <html>
<head>
<script src="launchhelp.js"></script>
<title>Instrument_Handle</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<table class="borderless"><tr>
<td class="paramName">Instrument_Handle</td>
<td class="paramDataType">ViSession</td>
<td>Identifies your instrument session. <strong>Instrument_Handle</strong> is obtained from the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cviniFgen_init.html')"><span class="monospace">niFgen_init</span></a>, <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_InitWithOptions.html')"><span class="monospace">niFgen_InitWithOptions</span></a>, or <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_InitializeWithChannels.html')"><span class="monospace">niFgen_InitializeWithChannels</span></a> functions and identifies a particular instrument session.</td>
</tr>
</table>
</body>

</html>    }    <html>
<head>
<script src="launchhelp.js"></script>
<title>configuration</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<table class="borderless"><tr>
<td class="paramName">Configuration</td>
<td class="paramDataType">ViAddr</td>
<td>Specifies the byte array buffer that contains the configuration to import.</td>
</tr></table>
</body>

</html>    7�#����  �    Status                           �M-   �  �    Instrument Handle                �i 2  �  �    Size                             � 2 � �  �    Configuration                      	               0       �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niFgen_ExportAttributeConfigurationBuffer</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niFgen_ExportAttributeConfigurationFile</h1>
<p class="syntax">ViStatus niFgen_ExportAttributeConfigurationBuffer
             (ViSession Instrument_Handle, ViInt32 Size,
              ViAddr Configuration);</p>

<h2 class="purpose">Purpose</h2>
<p class="Body">Exports a session configuration to a buffer.</p>

<p class="Body">You can export and import supported configurations only betwen NI&#8209;FGEN devices with identical bus types, model numbers, and channel counts, as well as the same number of initialized channels.</p>

<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&nbsp;&nbsp;You cannot call this function while the session is in the <a href="javascript:LaunchHelp('SigGenHelp.chm::/prog_nifgen_state_model.html')">Running/Generating</a> state.</td>
</tr>
</table>

<p class="Body"><strong>Supported Configurations</strong></p>
<p class="Body">You can export and import the following between NI&#8209;FGEN sessions:</p>
<ul>
<li>Attribute configurations</li>
<li>Arbitrary waveforms</li>
</ul>

<p class="Body"><strong>Requirements for Exporting and Importing Arbitrary Waveforms</strong></p>
<p class="Body">Arbitrary waveforms you export and import between sessions using this function must meet the following criteria:</p>
<ul>
<li>All waveforms in the exporting session are created from files, other than HWS files, using the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm','fgencref.chm','cviniFgen_CreateWaveformFromFileI16.html')"><span class="Monospace">niFgen_CreateWaveformFromFileI16</span></a> or <a href="javascript:LaunchMergedHelp('SigGenHelp.chm','fgencref.chm','cviniFgen_CreateWaveformFromFileF64.html')"><span class="Monospace">niFgen_CreateWaveformFromFileF64</span></a> functions</li>
<li>The full file path of the file containing the arbitrary waveform still exists upon import</li>
<li>All waveforms are defined using handles rather than names</li>
<li>All waveforms are complete&#0151;none are <a href="javascript:LaunchHelp('SigGenHelp.chm::/streaming.html')">streamed</a> or <a href="javascript:LaunchMergedHelp('SigGenHelp.chm','fgencref.chm','incremental_write_waveforms.html')">incrementally written</a></li>
</ul>
<p class="Body">You can set the device mode with the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm','fgencref.chm','cviniFgen_ConfigureOutputMode.html')"><span class="Monospace">niFgen_ConfigureOutputMode</span></a> function. For more information on arbitrary waveform mode, refer to <a href="javascript:LaunchHelp('SigGenHelp.chm::/Arb_Mode.html')">Arbitrary Waveform Output Mode</a> and <a href="javascript:LaunchHelp('SigGenHelp.chm::/programming_arb_waveform.html')">Configure Arbitrary Waveform Mode</a>.</p>

<p class="Body"><strong>Channel Mapping Behavior</strong></p>
<p class="Body">When exporting and importing configurations between NI&#8209;FGEN sessions that were initialized with different channels using the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm','fgencref.chm','cviniFgen_InitializeWithChannels.html')"><span class="Monospace">niFgen_InitializeWithChannels</span></a> function, the configuration of the exporting channel is mapped to the importing channel.</p>
<p class="Body">For example, if your entry for <strong>channelName</strong> is <span class="Monospace">0</span> for the exporting session and <span class="Monospace">1</span> for the importing session, the configuration exported from channel&#0160;0 is imported into channel&#0160;1.</p>

<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&nbsp;&nbsp;This function will return an error if the total number of channels initialized for the exporting session is not equal to the total number of channels initialized for the importing session.</td>
</tr>
</table>

<p class="Body"><strong>Related Topics:</strong></p>
<p class="Body"><a href="javascript:LaunchHelp('SigGenHelp.chm::/prog_nifgen_state_model.html')">Programming State Model</a></p>
<p class="Body"><a href="javascript:LaunchHelp('SigGenHelp.chm::/setting_before_reading_attributes.html')">Setting Attributes Before Reading Attributes</a></p>
<p class="Body"><a href="javascript:LaunchHelp('SigGenHelp.chm::/output_arb_freq_script_seq.html')">Output Modes</a></p>

</body>

</html>    �    <html>
<head>
<script src="launchhelp.js"></script>
<title>Instrument_Handle</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<table class="borderless"><tr>
<td class="paramName">Instrument_Handle</td>
<td class="paramDataType">ViSession</td>
<td>Identifies your instrument session. <strong>Instrument_Handle</strong> is obtained from the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cviniFgen_init.html')"><span class="monospace">niFgen_init</span></a>, <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_InitWithOptions.html')"><span class="monospace">niFgen_InitWithOptions</span></a>, or <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_InitializeWithChannels.html')"><span class="monospace">niFgen_InitializeWithChannels</span></a> functions and identifies a particular instrument session.</td>
</tr>
</table>
</body>

</html>    �    <html>
<head>
<script src="launchhelp.js"></script>
<title>Configuration</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<table class="borderless"><tr>
<td class="paramName">Configuration</td>
<td class="paramDataType">ViAddr</td>
<td>Specifies the byte array buffer to be populated with the exported configuration.</td>
</tr></table>
</body>

</html>    7�#����  �    Status                           �[-   �  �    Instrument Handle                �i 2  �  �    Size                             �  2 � �  �    Configuration                      	               0       c    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_InitiateGeneration</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_InitiateGeneration</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_InitiateGeneration&nbsp;(ViSession&nbsp;vi);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Initiates signal generation.  If you want to abort signal generation, call the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_AbortGeneration.html')"><span class="monospace">niFgen_AbortGeneration</span></a> function. After the signal generation is aborted, you can call the <span class="monospace">niFgen_InitiateGeneration</span> function to cause the signal generator to produce a signal again.</p>
</body>
</html>

    7�#����  �    Status                            ��-   �  �    vi                                 	              �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_AbortGeneration</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_AbortGeneration</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_AbortGeneration&nbsp;(ViSession&nbsp;vi);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Aborts any previously initiated signal generation. Call the 
<a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_InitiateGeneration.html')"><span class="monospace">niFgen_InitiateGeneration</span></a> function to cause the signal generator to produce a signal again.</p>

</body>
</html>

    7�#����  �    Status                            ��-   �  �    vi                                 	              L    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_SendSoftwareEdgeTrigger</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_SendSoftwareEdgeTrigger</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_SendSoftwareEdgeTrigger&nbsp;(ViSession&nbsp;vi, viInt32&nbsp;trigger, viConstString&nbsp;triggerID);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Sends a command to trigger the signal generator. This VI can act as an override for an external edge trigger.</p>

<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&nbsp;&nbsp;This VI does not override external digital edge triggers of the NI&nbsp;5401/5411/5431.</td>
</tr>
</table>

</body>
</html>

    "    
<html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Trigger</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">trigger</td>
<td class="paramDataType">ViInt32</td>
<td>Sets the clock mode of the signal generator.<p class="Body"><strong><strong>Defined Values</strong></strong></p>

<table class="bordered">
<tr><td class="bordered"><span class="monospace">NIFGEN_VAL_DIVIDE_DOWN</span></td></tr>
<tr><td class="bordered"><span class="monospace">NIFGEN_VAL_HIGH_RESOLUTION</span></td></tr>
<tr><td class="bordered"><span class="monospace">NIFGEN_VAL_AUTOMATIC</span></td></tr>
<p class="Body"><strong>Default Value</strong>: Depends on the device.</p></td>
 </tr></table></body>
</html>    7�#����  �    Status                            ��-   �  �    vi                               �& P � � �    Trigger                         ���� � � � �    Trigger ID                         	                         PStart Trigger NIFGEN_VAL_START_TRIGGER Script Trigger NIFGEN_VAL_SCRIPT_TRIGGER               �None "" Script Trigger 0 "ScriptTrigger0" Script Trigger 1 "ScriptTrigger1" Script Trigger 2 "ScriptTrigger2" Script Trigger 3 "ScriptTrigger3"       <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_GetHardwareState</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_GetHardwareState</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_GetHardwareState&nbsp;(ViSession&nbsp;vi, ViInt32*&nbsp;state);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Returns the current hardware state of the device and, if the device is in the hardware error state, the current hardware error.  </p>

<table class="Borderless-Wide">
<tr>
<td class="Icon"><img src="note.gif"></td>
<td>
<strong>Note</strong>&nbsp;&nbsp;  Hardware states do not necessarily correspond to NI-FGEN states.</td></tr></table>
</body>
</html>

    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>State</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">state</td>
<td class="paramDataType">ViInt32*</td>
<td>Returns the hardware state of the signal generator.<p class="body"><strong>Defined Values</strong></p>

<table class="bordered"><tr><td class="bordered"><span class="monospace">NIFGEN_VAL_IDLE</span></td>
<td class="bordered">The device is in the Idle state.</td></tr>

<tr><td class="bordered"><span class="monospace">NIFGEN_VAL_WAITING_FOR_START_TRIGGER</span></td>
<td class="bordered">The device is waiting for Start Trigger.</td></tr>

<tr><td class="bordered"><span class="monospace">NIFGEN_VAL_RUNNING</span></td>
<td class="bordered">The device is in the Running state.</td></tr>

<tr><td class="bordered"><span class="monospace">NIFGEN_VAL_DONE</span></td>
<td class="bordered">The generation has completed successfully.</td></tr>

<tr><td class="bordered"><span class="monospace">NIFGEN_VAL_HARDWARE_ERROR</span></td>
<td class="bordered">There is a hardware error.</td></tr></table>

</td>
 </tr></table></body>
</html>    7�����  �    Status                            ��   �  �    vi                               �I �� �  �    state                              	               	           
    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_WaitUntilDone</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_WaitUntilDone</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_WaitUntilDone&nbsp;(ViSession&nbsp;vi, ViInt32&nbsp;maxtime);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Waits until the device is done generating or until the maximum time has expired.</p>
</body>
</html>

    k    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>maxTime</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">maxTime</td>
<td class="paramDataType">ViInt32</td>
<td>Specifies the timeout value in milliseconds.</td>
 </tr></table></body>
</html>    ��   �  �    vi                                7�����  �    Status                           �� �� �  �    maxTime                                	              �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_IsDone</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_IsDone</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_IsDone&nbsp;(ViSession&nbsp;vi, ViBoolean*&nbsp;done);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Determines whether the current generation is complete.  This function sets the <strong>done</strong> parameter to <span class="monospace">VI_TRUE</span> if the session is in the Idle or Committed states.</p>

<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&nbsp;&nbsp;NI-FGEN only reports the <strong>done</strong> parameter as <span class="monospace">VI_TRUE</span> after the current generation is complete in Single trigger mode.</td>
</tr>
</table>

</body>
</html>

    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Done</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>
<table class="borderless"><tr>
<td class="paramName">done</td>
<td class="paramDataType">ViBoolean*</td>
<td>Returns information about the completion of waveform generation.

<p class="body"><strong>Defined Values</strong></p>

<table class="bordered">
<tr><td class="bordered"><span class="monospace">VI_TRUE</span></td><td class="bordered">Generation is complete.</td></tr>
<tr><td class="bordered"><span class="monospace">VI_FALSE</span></td><td class="bordered">Generation is not complete.</td>
 </tr></table>

</td>
</tr>
</table>
</body>
</html>    7�}���  �    Status                            ��   �  �    vi                               � ~� �  �    Done                               	               	           *    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_ResetWithDefaults</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_ResetWithDefaults</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_ResetWithDefaults&nbsp;(ViSession&nbsp;vi);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Resets the instrument and reapplies initial user&#8211;specified settings from the logical name that was used to initialize the session.  If the session was created without a logical name, this function is equivalent to the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_reset.html')"><span class="monospace">niFgen_reset</span></a> function.</p>

</body>
</html>

    7�#����  �    Status                            ��-   �  �    vi                                 	              �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_ResetDevice</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_ResetDevice</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_ResetDevice&nbsp;(ViSession&nbsp;vi);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Performs a hard reset on the device.  Generation is stopped, all routes are released, external bidirectional terminals are tristated, FPGAs are reset, hardware is configured to its default state, and all session attributes are reset to their default states.</p>
</body>
</html>

    7�#����  �    Status                            ��-   �  �    vi                                 	              A    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_Disable</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_Disable</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_Disable&nbsp;(ViSession&nbsp;vi);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Places the instrument in a quiescent state where it has minimal or no impact on the system to which it is connected. The analog output and all exported signals are disabled. </p>

</body>
</html>

    7�#����  �    Status                            ��#   �  �    vi                                 	              �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_self_test</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_self_test</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_self_test&nbsp;(ViSession&nbsp;vi, ViInt16*&nbsp;selfTestResult, ViChar[]&nbsp;selfTestMessage);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Runs the instrument self-test routine and returns the test result(s).</p>

<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&nbsp;&nbsp;When used on some signal generators, the device is reset after the <span class="monospace">niFgen_self_test</span> function runs. If you use the <span class="monospace">niFgen_self_test</span> function, your device may not be in its previously configured state after the function runs. </td>
</tr>
</table>

</body>
</html>

    C    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Self Test Result</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">selfTestResult</td>
<td class="paramDataType">ViInt16</td>
<td>Contains the value returned from the instrument self-test.  A value of <span class="monospace">0</span> indicates success. <br><br>

<table class="Bordered"><tr><th class="Bordered">Self-Test Code    </th>
<th class="Bordered">Description</th></tr>

<tr><td class="Bordered"><div align="center">0</div>              </td>
<td class="Bordered">Passed self-test</td></tr>

<tr><td class="Bordered"><div align="center">1</div>              </td>
<td class="Bordered">Self-test failed</td></tr></table>

</td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Self-Test Message</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">selfTestMessage</td>
<td class="paramDataType">ViChar[]</td>
<td>Returns the self-test response string from the instrument. 

<p class="Body">You must pass a ViChar array with at least 256 bytes.</p></td>
 </tr></table></body>
</html>   �� =  �  �    Self Test Result                 �� = � � ,    Self-Test Message                 7�#����  �    Status                            ��-   �  �    vi                                 	           	            	              4    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_revision_query</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_revision_query</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_revision_query&nbsp;(ViSession&nbsp;vi, ViChar[]&nbsp;instrumentDriverRevision, ViChar[]&nbsp;firmwareRevision);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Returns the revision numbers of the NI-FGEN and instrument firmware.</p>

</body>
</html>

    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Instrument Driver Revision</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">instrumentDriverRevision</td>
<td class="paramDataType">ViChar[]</td>
<td>Returns the NI-FGEN software revision numbers in the form of a string.

<p class="Body">You must pass a ViChar array with at least 256 bytes.</p>
</td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Firmware Revision</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">firmwareRevision</td>
<td class="paramDataType">ViChar[]</td>
<td>Returns the instrument firmware revision numbers in the form of a string.

<p class="Body">You must pass a ViChar array with at least 256 bytes.</p>
</td>
 </tr></table></body>
</html>   � = 3 �  �    Instrument Driver Revision         =6 �  �    Firmware Revision                 7�#����  �    Status                            ��-   �  �    vi                                 	            	            	              `    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_GetNextCoercionRecord</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_GetNextCoercionRecord</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_GetNextCoercionRecord&nbsp;(ViSession&nbsp;vi, ViInt32&nbsp;bufferSize, ViChar[]&nbsp;coercionRecord);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Returns the coercion information associated with the IVI session.  This function retrieves and clears the oldest instance in which the NI-FGEN coerced a value you specified to another value.</p>

<p class="Body">If you set the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'NIFGEN_ATTR_RECORD_COERCIONS.html')"><span class="monospace">NIFGEN_ATTR_RECORD_COERCIONS</span></a> attribute to <span class="monospace">VI_TRUE</span>, NI-FGEN keeps a list of all coercions it makes on ViInt32 or ViReal64 values that you pass to NI-FGEN functions.  You use this function to retrieve information from that list.</p>

<p class="Body">If the next coercion record string, including the terminating NUL byte, contains more bytes than you indicate in this parameter, the function copies <strong>bufferSize</strong> &#8211; 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.  For example, if the value is <span class="monospace">123456</span> and <strong>bufferSize</strong> is 4, the function places <span class="monospace">123</span> into the buffer and returns <span class="monospace">7</span>.</p>

<p class="Body">If you pass a negative number, the function copies the value to the buffer regardless of the number of bytes in the value.</p>

<p class="Body">If you pass 0, you can pass <span class="monospace">VI_NULL</span> for the <strong>coercionRecord</strong> buffer parameter.</p>

<p class="Body">The function returns an empty string in the <strong>coercionRecord</strong> parameter if no coercion records remain for the session.</p>

</body>
</html>

    d    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Status</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">Status</td>
<td class="paramDataType">ViStatus</td>
<td>Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You can examine the status code from each call to an NI-FGEN function to determine if an error occurred.

To obtain a text description of the status code, call <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_error_message.html')"> <span class="monospace"> niFgen_error_message</span></a>. To obtain additional information about the error condition, call <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_GetError.html')"> <span class="Monospace"> niFgen_GetError</span></a>. To clear the error information from NI-FGEN, call <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_ClearError.html')"> <span class="Monospace"> niFgen_ClearError</span></a>. <br><br>
 

The general meaning of the status code is as follows:<br> <br>


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
</td>
</tr>
</table>

</body>
</html>



    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Coercion Record</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">coercionRecord</td>
<td class="paramDataType">ViChar[]</td>
<td>Returns the next coercion record for the IVI session.  If there are no coercion records, the function returns an empty string.

<p class="Body">The buffer must contain at least as many elements as the value you specify with the <strong>bufferSize</strong> parameter.  If the next coercion record string, including the terminating NUL byte, contains more bytes than you indicate with the <strong>bufferSize</strong> parameter, the function copies <strong>bufferSize</strong> &#8211; 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size that you must pass to get the entire value.  For example, if the value is &quot;123456&quot; and <strong>bufferSize</strong> is 4, the function places &quot;123&quot; into the buffer and returns 7.</p>

<p class="Body">This parameter returns an empty string if no coercion records remain for the session.</p>

</td>
 </tr></table></body>
</html>    J    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Buffer Size</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">bufferSize</td>
<td class="paramDataType">ViInt32</td>
<td>Specifies the number of bytes in the ViChar array you specify for the <strong>coercionRecord</strong> parameter.

<p class="Body">If the next coercion record string, including the terminating NUL byte, contains more bytes than you indicate in this parameter, the function copies <strong>bufferSize</strong> &#8211; 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size that you must pass to get the entire value.  For example, if the value is <span class="monospace">123456</span> and the buffer size is 4, the function places <span class="monospace">123</span> into the buffer and returns <span class="monospace">7</span>.</p>

<p class="Body">If you pass a negative number, the function copies the value to the buffer regardless of the number of bytes in the value.</p>

<p class="Body">If you pass 0, you can pass <span class="monospace">VI_NULL</span> for the <strong>coercionRecord</strong> buffer parameter.</p>

<p class="Body"><strong>Default Value</strong>:  None
</p>
</td>
 </tr></table></body>
</html>   Z#����  �    Status or Required Size           ��-   �  �    vi                               � � Q � �    Coercion Record                  � = � �  �    Buffer Size                        	               	                   <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_error_query</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_error_query</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_error_query&nbsp;(ViSession&nbsp;vi, ViInt32*&nbsp;errorCode, ViChar[]&nbsp;Error_Message);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Reads an error code and a message from the instrument error queue.</p>

</body>
</html>

    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Error Code</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">errorCode</td>
<td class="paramDataType">ViInt32*</td>
<td>Returns the error code read from the instrument error queue.
</td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Error Message</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">errorMessage</td>
<td class="paramDataType">ViChar[]</td>
<td>Returns the error message string read from the instrument error message queue.

<p class="Body">You must pass a ViChar array with at least 256 bytes.</p>
</td>
 </tr></table></body>
</html>    =  �  �    Error Code                        � = � � ,    Error Message                     7�#����  �    Status                            ��-   �  �    vi                                 	            	            	              M    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_ErrorHandler</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_ErrorHandler</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_ErrorHandler&nbsp;(ViSession&nbsp;vi, ViStatus&nbsp;errorCode, ViChar[]&nbsp;errorMessage);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Converts a status code returned by an NI-FGEN function into a user-readable string and returns any error elaborations.</p>

</body>
</html>

        <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Error Code</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">errorCode</td>
<td class="paramDataType">ViStatus</td>
<td>Specifies the <strong>status</strong> parameter that is returned from any of the NI-FGEN functions.

<p class="Body"><strong>Default Value</strong>:  0  (<span class="monospace">VI_SUCCESS</span>)</p>

</td>
 </tr></table></body>
</html>    %    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>vi</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">vi</td>
<td class="paramDataType">ViSession</td>
<td>Identifies your instrument session. <strong>vi</strong> is obtained from the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cviniFgen_init.html')"><span class="monospace">niFgen_init</span></a> or the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cviniFgen_InitWithOptions.html')"><span class="monospace">niFgen_InitWithOptions</span></a> functions and identifies a
            particular instrument session.  
<p class="Body">You can pass <span class="monospace">VI_NULL</span> for this parameter.  Passing <span class="monospace">VI_NULL</span> is useful when one of the initialize functions fails.</p>

<p class="Body"><strong>Default Value</strong>:  <span class="monospace">VI_NULL</span></p>

</td>
 </tr></table></body>
</html>   %� =  �  h    Error Code                        � = � � �    Error Message                     7�#����  �    Status                           '�-   �  �    vi                                 0    	            	           VI_NULL   .    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_error_message</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_error_message</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_error_message&nbsp;(ViSession&nbsp;vi, ViStatus&nbsp;errorCode, ViChar[]&nbsp;Error_Message);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Converts a status code returned by an NI-FGEN function into a user-readable string.</p>

</body>
</html>

    %    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>vi</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">vi</td>
<td class="paramDataType">ViSession</td>
<td>Identifies your instrument session. <strong>vi</strong> is obtained from the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cviniFgen_init.html')"><span class="monospace">niFgen_init</span></a> or the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cviniFgen_InitWithOptions.html')"><span class="monospace">niFgen_InitWithOptions</span></a> functions and identifies a
            particular instrument session.  
<p class="Body">You can pass <span class="monospace">VI_NULL</span> for this parameter.  Passing <span class="monospace">VI_NULL</span> is useful when one of the initialize functions fails.</p>

<p class="Body"><strong>Default Value</strong>:  <span class="monospace">VI_NULL</span></p>

</td>
 </tr></table></body>
</html>   %� =  �  h    Error Code                        � = � � �    Error Message                     7�#����  �    Status                           /@-   �  �    vi                                 0    	            	           VI_NULL   �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_GetError</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_GetError</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_GetError&nbsp;(ViSession&nbsp;vi, ViStatus*&nbsp;errorCode, ViInt32&nbsp;errorDescriptionBufferSize, ViChar[]&nbsp;errorDescription);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Returns the error information associated with an IVI session or with the current execution thread.  If you specify a valid IVI session for the <strong>vi</strong> parameter, this function retrieves and then clears the error information for the session.  If you pass <span class="monospace">VI_NULL</span> for the <strong>vi</strong> parameter, this function retrieves and then clears the error information for the current execution thread.  </p>

<p class="Body">The IVI Engine also maintains this error information separately for each thread. This feature is useful if you do not have a session handle to pass to the <span class="monospace">niFgen_GetError</span> or <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_ClearError.html')"><span class="monospace">niFgen_ClearError</span></a> functions. This situation occurs when a call to the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_init.html')"><span class="monospace">niFgen_init</span></a> or <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_InitWithOptions.html')"><span class="monospace">niFgen_InitWithOptions</span></a> function fails.</p>
</body>
</html>

        <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>vi</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">vi</td>
<td class="paramDataType">ViSession</td>
<td>Identifies your instrument session. <strong>vi</strong> is obtained from the 
   <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cviniFgen_init.htm')"><span class="monospace">niFgen_init</span></a> or the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_InitWithOptions.html')"><span class="monospace">niFgen_InitWithOptions</span></a> functions and identifies a particular instrument session.

<p class="Body">You can pass <span class="monospace">VI_NULL</span> for this parameter.  Passing <span class="monospace">VI_NULL</span> is useful when one of the initialize functions fail.</p>

<p class="Body"><strong>Default Value</strong>:  <span class="monospace">VI_NULL</span></p>





</td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Error Code</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">errorCode</td>
<td class="paramDataType">ViStatus*</td>
<td>The error code for the session or execution thread.   

<p class="Body">A value of <span class="monospace">VI_SUCCESS</span> (0) indicates that no error occurred. A positive value indicates a warning.  A negative value indicates an error. </p>

<p class="Body">You can call <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_error_message.html')"><span class="monospace">niFgen_error_message</span></a> to get a text description of the value.</p>

<p class="Body">If you are not interested in this value, you can pass <span class="monospace">VI_NULL</span>.</p>

</td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Error Description</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">errorDescription</td>
<td class="paramDataType">ViChar[]</td>
<td>The error description string for the session or execution thread.  If the error code is nonzero, the description string can further describe the error or warning condition.   

<p class="Body">If you are not interested in this value, you can pass <span class="monospace">VI_NULL</span>.  Otherwise, you must pass a ViChar array of a size specified with the <strong>errorDescriptionBufferSize</strong> parameter.</p>

</td>



 </tr></table></body>
</html>    U    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Error Description Buffer Size</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">errorDescriptionBufferSize</td>
<td class="paramDataType">ViInt32</td>
<td>Specifies the size of the <strong>errorDescription</strong> array.

<p class="Body">You can determine the array size needed to store the entire error description by setting this parameter to <span class="monospace">0</span>. The function then ignores the <strong>errorDescription</strong> buffer, which may be set to <span class="monospace">VI_NULL</span>, and gives as its return value the required buffer size. You can then call the function a second time using the correct buffer size.</p>
</td>
 </tr></table></body>
</html>    7�#����  �    Status                           ;-   �  �    vi                               ?= = R �  �    Error Code                       B� � Q � �    Error Description                E� =A �  �    Error Description Buffer Size      	           VI_NULL    	           	               �    
<html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_ClearError</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_ClearError</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_ClearError&nbsp;(ViSession&nbsp;vi);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Clears the error information for the current execution thread and the IVI session you specify. If you pass <span class="monospace">VI_NULL</span> for the <strong>vi</strong> parameter, this function clears the error information only for the current execution thread. </p>

<p class="Body">This function sets the error code to <span class="monospace">VI_SUCCESS</span> (0), and sets the error description string to &quot;&quot; (empty string).</p>

<p class="Body">The IVI Engine also maintains this error information separately for each thread. This feature is useful if you do not have a session handle to pass to the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_ClearError.html')"><span class="monospace">niFgen_ClearError</span></a> or the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_GetError.html')"><span class="monospace">niFgen_GetError</span></a> function. This situation occurs when a call to the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_init.html')"><span class="monospace">niFgen_init</span></a> or <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_InitWithOptions.html')"><span class="monospace">niFgen_InitWithOptions</span></a> function fails.</p>

</body>
</html>

    7�#����  �    Status                            ��-   �  �    vi                                 	              	�    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_LockSession</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_LockSession</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_LockSession&nbsp;(ViSession&nbsp;vi, ViBoolean*&nbsp;callerHasLock);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Obtains a multithread lock on the instrument session.  Before it does so, this function waits until all other execution threads have released their locks on the instrument session.

<p class="Body">Other threads might have obtained a lock on this session in the following ways:</p>

<ul><li>Your application called the <span class="monospace">niFgen_LockSession</span> function.</li>

<li>A call to the NI-FGEN locked the session.</li>

<li>A call to the IVI Engine locked the session.</li></ul>

<p class="Body">After your call to the <span class="monospace">niFgen_LockSession</span> function returns successfully, no other threads can access the instrument session until you call the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_UnlockSession.html')"><span class="monospace">niFgen_UnlockSession</span></a> function.</p>

<p class="Body">Use the <span class="monospace">niFgen_LockSession</span> function and the <span class="monospace">niFgen_UnlockSession</span> function around a sequence of calls to NI-FGEN functions if you require that the instrument retain its settings through the end of the sequence.</p>

<p class="Body">You can safely make nested calls to the <span class="monospace">niFgen_LockSession</span> function within the same thread.  To completely unlock the session, you must balance each call to the <span class="monospace">niFgen_LockSession</span> function with a call to the <span class="monospace">niFgen_UnlockSession</span> function.  If, however, you use the <strong>callerHasLock</strong> parameter in all calls to the <span class="monospace">niFgen_LockSession</span> function and the <span class="monospace">niFgen_UnlockSession</span> function within a function, the IVI Engine locks the session only once within the function regardless of the number of calls you make to the <span class="monospace">niFgen_LockSession</span> function.  This configuration allows you to call the <span class="monospace">niFgen_UnlockSession</span> function just once at the end of the function.</p>

</body>
</html>

    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Caller Has Lock</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">callerHasLock</td>
<td class="paramDataType">ViBoolean*</td>
<td> Keeps track of whether you obtained a lock and therefore need to unlock the session.  Pass the address of a local ViBoolean variable.  In the declaration of the local variable, initialize it to <span class="monospace">VI_FALSE</span>.  Pass the address of the same local variable to any other calls you make to the <span class="monospace">niFgen_LockSession</span> function or the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_UnlockSession.html')"><span class="monospace">niFgen_UnlockSession</span></a> function in the same function.

<p class="body">This parameter serves as a convenience.  If you do not want to use this parameter, pass <span class="monospace">VI_NULL</span>.</p>

<p class="Body">This parameter is an input/output parameter. The  <span class="monospace">niFgen_LockSession</span> function and the <span class="monospace">niFgen_UnlockSession</span> function each inspect the current value and take the following actions:</p>

<ul><li>If the value is <span class="monospace">VI_TRUE</span>, the <span class="monospace">niFgen_LockSession</span> function does not lock the session again.  If the value is <span class="monospace">VI_FALSE</span>, the <span class="monospace">niFgen_LockSession</span> function obtains the lock and sets the value of the parameter to <span class="monospace">VI_TRUE</span>.</li>

<li>If the value is <span class="monospace">VI_FALSE</span>, the <span class="monospace">niFgen_UnlockSession</span> function does not attempt to unlock the session.  If the value is <span class="monospace">VI_TRUE</span>, the <span class="monospace">niFgen_UnlockSession</span> function releases the lock and sets the value of the parameter to <span class="monospace">VI_FALSE</span>.</li></ul>

<p class="Body">Thus, you can call the <span class="monospace">niFgen_UnlockSession</span> function at the end of your function without worrying about whether you actually have the lock.</p>

<p class="Body">Example:</p>


<span class="monospace">ViStatus TestFunc (ViSession vi, ViInt32 flags)<br>
{</span>

    <p class="Indent2">
    
    <span class="monospace">ViStatus error = <span class="monospace">VI_SUCCESS</span>;<br>
    ViBoolean haveLock = <span class="monospace">VI_FALSE</span>;<br><br>
    if (flags &amp; BIT_1)<br>
    {<br></span>
    
    </p>
        <p class="Indent3">
        
        <span class="monospace">viCheckErr( niFgen_LockSession(vi, &amp;haveLock));<br>
        viCheckErr( TakeAction1(vi));<br>
        if (flags &amp; BIT_2)<br>
        {<br></span>
        </p>
            <p class="F-VI-Code4">
            
         <span class="monospace">   viCheckErr( niFgen_UnlockSession(vi, &amp;haveLock));<br>
            viCheckErr( TakeAction2(vi));<br>
            viCheckErr( niFgen_LockSession(vi, &amp;haveLock);<br></span>
            </p>
        <p class="Indent3">
        
        <span class="monospace">}<br>
        if (flags &amp; BIT_3)<br></span>
        
        </p>
            <p class="F-VI-Code4">
            
           <span class="monospace"> viCheckErr( TakeAction3(vi));<br></span>
            
            </p>
    <p class="Indent2">
    
    <span class="monospace">}<br><br></span>
    
    </p>
<p class="Body">Error:</p><br>
    <p class="Indent2">
    
    <span class="monospace">/*<br>
    At this point, you cannot really be sure that <br>
    you have the lock.  Fortunately, the haveLock <br>
    variable takes care of that for you.          <br>
    */<br>
    niFgen_UnlockSession(vi, &amp;haveLock);<br>
    return error;<br></span>
    
    </p>
<span class="monospace">}</span><br><br>
</td>
 </tr></table></body>
</html>    7�#����  �    Status                            ��-   �  �    vi                               [v H � �  �    Caller Has Lock                    	               	           �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_UnlockSession</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_UnlockSession</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_UnlockSession&nbsp;(ViSession&nbsp;vi, ViBoolean*&nbsp;callerHasLock);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Releases a lock that you acquired on an instrument session using the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_LockSession.html')"><span class="monospace">niFgen_LockSession</span></a> function. </p>

</body>
</html>

    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Caller Has Lock</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">callerHasLock</td>
<td class="paramDataType">ViBoolean*</td>
<td>Keeps track of whether you obtain a lock and therefore need to unlock the session.

<p class="body">This parameter serves as a convenience.  If you do not want to use this parameter, pass <span class="monospace">VI_NULL</span>.</p>

<p class="Body">Pass the address of a local ViBoolean variable. In the declaration of the local variable, initialize it to <span class="monospace">VI_FALSE</span>. Pass the address of the same local variable to any other calls you make to the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cviniFgen_LockSession.html')"><span class="monospace">niFgen_LockSession</span></a> function or the <span class="monospace">niFgen_UnlockSession</span> function in the same function.</p>

<p class="Body">The parameter is an input/output parameter. The <span class="monospace">niFgen_LockSession</span> function and the <span class="monospace">niFgen_UnlockSession</span> function each inspect the current value and take the following actions:</p>

<ul><li>If the value is <span class="monospace">VI_TRUE</span>, the <span class="monospace">niFgen_LockSession</span> function does not lock the session again.  If the value is <span class="monospace">VI_FALSE</span>, the <span class="monospace">niFgen_LockSession</span> function obtains the lock and sets the value of the parameter to <span class="monospace">VI_TRUE</span>.</li>

<li>If the value is <span class="monospace">VI_FALSE</span>, the <span class="monospace">niFgen_UnlockSession</span> function does not attempt to unlock the session.  If the value is <span class="monospace">VI_TRUE</span>, the <span class="monospace">niFgen_UnlockSession</span> function releases the lock and sets the value of the parameter to <span class="monospace">VI_FALSE</span>.</li></ul>

<p class="Body">Thus, you can, call the <span class="monospace">niFgen_UnlockSession</span> function at the end of your function without worrying about whether you actually have the lock.</p>

<p class="Body">Example:</p>


<span class="monospace">ViStatus TestFunc (ViSession vi, ViInt32 flags)<br>
{<br></span>

    <p class="Indent2">
    
    <span class="monospace">ViStatus error = <span class="monospace">VI_SUCCESS</span>;<br>
    ViBoolean haveLock = <span class="monospace">VI_FALSE</span>;<br><br>
    if (flags &amp; BIT_1)<br>
    {<br></span>
    
    </p>
        <p class="Indent3">
        
        <span class="monospace">viCheckErr(niFgen_LockSession(vi, &amp;haveLock));<br>
        viCheckErr( TakeAction1(vi));<br>
        if (flags &amp; BIT_2)<br>
        {<br></span>
        
        </p>
            <p class="F-VI-Code4">
            
            <span class="monospace">viCheckErr( niFgen_UnlockSession(vi, &amp;haveLock));<br>
            viCheckErr( TakeAction2(vi));<br>
            viCheckErr( niFgen_LockSession(vi, &amp;haveLock);<br></span>
            
            </p>
        <p class="Indent3">
        
        <span class="monospace">}<br>
        if (flags &amp; BIT_3)<br></span>
        
        </p>
            <p class="F-VI-Code4">
            
           <span class="monospace"> viCheckErr( TakeAction3(vi));<br></span>
            
            </p>
    <p class="Indent2">
    
    <span class="monospace">}<br><br></span>
    
    </p>
<p class="Body">Error:</p><br>
    <p class="Indent2">
    
    <span class="monospace">/*<br>
    At this point, you cannot really be sure that <br>
    you have the lock.  Fortunately, the haveLock <br>
    variable takes care of that for you.          <br>
    */<br>
    niFgen_UnlockSession(vi, &amp;haveLock);<br>
    return error;<br></span>
    
    </p>

<span class="monospace">}</span>
</td>
 </tr></table></body>
</html>    7�#����  �    Status                            ��-   �  �    vi                               np H � �  �    Caller Has Lock                    	               	               <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_GetNextInterchangeWarning</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_GetNextInterchangeWarning</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_GetNextInterchangeWarning&nbsp;(ViSession&nbsp;vi, ViInt32&nbsp;bufferSize, ViChar[]&nbsp;interchangeWarning);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Returns the interchangeability warnings associated with the IVI session. It retrieves and clears the oldest instance in which the class driver recorded an interchangeability warning.  Interchangeability warnings indicate that using your application with a different instrument might cause different behavior. Use this function to retrieve interchangeability warnings.</p>

<p class="Body">NI-FGEN performs interchangeability checking when the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'NIFGEN_ATTR_INTERCHANGE_CHECK.html')"><span class="monospace">NIFGEN_ATTR_INTERCHANGE_CHECK</span></a> attribute is set to <span class="monospace">VI_TRUE</span>.</p>

<p class="Body">The function returns an empty string in the <strong>interchangeWarning</strong> parameter if no interchangeability warnings remain for the session.</p>

<p class="Body">In general, NI-FGEN generates interchangeability warnings when an attribute that affects the behavior of the instrument is in a state that you did not specify.</p>
</body>
</html>

    ^    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Status</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">Status</td>
<td class="paramDataType">ViStatus</td>
<td>Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You can examine the status code from each call to an NI-FGEN function to determine if an error occurred.

To obtain a text description of the status code, call <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cviniFgen_error_message.html')"><span class="Monospace">niFgen_error_message</span></a>. To obtain additional information about the error condition, call <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cviniFgen_GetError.html')"><span class="Monospace">niFgen_GetError</span></a>. To clear the error information from NI-FGEN, call <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cviniFgen_ClearError.html')"><span class="Monospace">niFgen_ClearError</span></a>. <br><br>
 

The general meaning of the status code is as follows:<br> <br>


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
</td>
</tr>
</table>

</body>
</html>



    i    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Buffer Size</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">bufferSize</td>
<td class="paramDataType">ViInt32</td>
<td>Specifies the number of bytes in the ViChar array you specify for the <strong>interchangeWarning</strong> parameter.

<p class="Body">If the next interchangeability warning string, including the terminating NUL byte, contains more bytes than you indicate in this parameter, the function copies <strong>bufferSize</strong> &#8211; 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size that you must pass to get the entire value. For example, if the value is <span class="monospace">123456</span> and <strong>bufferSize</strong> is 4, the function places <span class="monospace">123</span> into the buffer and returns <span class="monospace">7</span>.</p>

<p class="Body">If you pass a negative number, the function copies the value to the buffer regardless of the number of bytes in the value.</p>

<p class="Body">If you pass 0, you can pass <span class="monospace">VI_NULL</span> for the <strong>interchangeWarning</strong> buffer parameter.</p>

<p class="Body"><strong>Default Value</strong>:  None</p>

</td>
 </tr></table></body>
</html>
    8    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Interchange Warning</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">interchangeWarning</td>
<td class="paramDataType">ViChar[]</td>
<td>Returns the next interchange warning for the IVI session. If there are no interchange warnings, the function returns an empty string.

<p class="Body">The buffer must contain at least as many elements as the value you specify with the <strong>bufferSize</strong> parameter. If the next interchangeability warning string, including the terminating NUL byte, contains more bytes than you indicate with the <strong>bufferSize</strong> parameter, the function copies <strong>bufferSize</strong> &#8211; 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size that you must pass to get the entire value.  For example, if the value is <span class="monospace">123456</span> and <strong>bufferSize</strong> is 4, the function places <span class="monospace">123</span> into the buffer and returns <span class="monospace">7</span>.</p>

<p class="Body">This parameter returns an empty string if no interchangeability warnings remain for the session.</p>

</td>
 </tr></table></body>
</html>   ��#����  �    Status or Required Size           ��-   �  �    vi                               �E = � �  �    Buffer Size                      �� � Q � �    Interchange Warning                	                   	           �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_ClearInterchangeWarnings</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_ClearInterchangeWarnings</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_ClearInterchangeWarnings&nbsp;(ViSession&nbsp;vi);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Clears the list of current interchange warnings.</p>

</body>
</html>

    ��-   �  �    vi                                7�#����  �    Status                                 	          
�    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_ResetInterchangeCheck</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_ResetInterchangeCheck</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_ResetInterchangeCheck&nbsp;(ViSession&nbsp;vi);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">This function tests the current test module for dependencies on the operation of previously executed test modules. If your module depends on the operation of previous modules, your test system has less flexibility.</p>

<p class="Body">When developing a complex test system that consists of multiple test modules, NI recommends that you design the test modules so that they can run in any order.  To do so, ensure that each test module completely configures the state of each instrument it uses.  If a particular test module does not completely configure the state of an instrument, the state of the instrument depends on the configuration from a previously executed test module.  If you execute the test modules in a different order, the behavior of the instrument and the test module may change.  This change in behavior is generally instrument specific and represents an interchangeability problem.</p>

<p class="Body">After you call this function, the interchangeability checking algorithms in the specific driver ignore all previous configuration operations.  By calling this function at the beginning of a test module, you can determine whether the test module has dependencies on the operation of previously executed test modules.</p>

<p class="Body">This function does not clear the interchangeability warnings from the list of previously recorded interchangeability warnings.  If you want to guarantee that the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_GetNextInterchangeWarning.html')"><span class="monospace">niFgen_GetNextInterchangeWarning</span></a> function only returns those interchangeability warnings that are generated after calling this function, you must clear the list of interchangeability warnings.  You can clear the interchangeability warnings list by repeatedly calling the <span class="monospace">niFgen_GetNextInterchangeWarning</span> function until no more interchangeability warnings are returned.  If you are not interested in the content of those warnings, you can call the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_ClearInterchangeWarnings.html')"> <span class="monospace">niFgen_ClearInterchangeWarnings</span></a> function.</p>

</body>
</html>

    ��-   �  �    vi                                7�#����  �    Status                                 	          &    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_InitExtCal</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_InitExtCal</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_InitExtCal&nbsp;(ViRsrc&nbsp;resourceName, ViConstString&nbsp;password, ViSession*&nbsp;vi);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Creates and initializes a special NI-FGEN external calibration session.  The ViSession returned is an NI-FGEN session that can be used to configure the device using normal attributes and functions.  However, flags have been set that allow you to program an external calibration procedure using the special calibration attributes and functions. The NI&nbsp;5401/5404/5411/5431 have different calibration functions. Refer to the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'nifgen_Related_Documentation.html')">calibration procedure</a> for the signal generator for more information. 
</p>

</body>
</html>

    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Password</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">password</td>
<td class="paramDataType">ViConstString</td>
<td>The calibration password required to open an external calibration session to the device.</td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niFgen_init</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">vi</td>
<td class="paramDataType">ViSession</td>
<td>Returns a session handle that you can use to identify the device in all subsequent NI-FGEN function calls.</td>
 </tr></table></body>
</html>    u I   �  �    Resource Name                    �� ~  �  �    Password                         �9  �  �    vi                                7�����  �    Status                             	"DAQ::1"    0    	           	          e    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_CloseExtCal</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_CloseExtCal</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_CloseExtCal&nbsp;(ViSession&nbsp;vi, ViInt32&nbsp;action);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Closes an NI-FGEN external calibration session and, if specified, stores the new calibration constants and calibration data, such as time and temperature, in the onboard EEPROM.</p>

</body>
</html>

    X    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>vi</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">vi</td>
<td class="paramDataType">ViSession</td>
<td>Identifies your instrument session. <strong>vi</strong> is obtained from the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_InitExtCal.html')"><span class="monospace">niFgen_InitExtCal</span></a>  function and identifies a particular instrument session.</td>
 </tr></table></body>
</html>
    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Action</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">action</td>
<td class="paramDataType">ViInt32</td>
<td>Specifies he action to perform upon closing. 

<p class="Body"><strong>Defined Values</strong></p>

<table class="Bordered"><tr><td class="Bordered"><span class="monospace">NIFGEN_VAL_EXT_CAL_ABORT</span></td>
<td class="Bordered">No changes are made to the calibration constants and data in the EEPROM.</td></tr>

<tr><td class="Bordered"><span class="monospace">NIFGEN_VAL_EXT_CAL_COMMIT</span></td>
<td class="Bordered">The new calibration constants and data determined during the external calibration session are stored in the onboard EEPROM.</td></tr>
</table>
<p class="Body"><strong>Default Value</strong>: <span class="monospace">NIFGEN_VAL_EXT_CAL_ABORT</span></p>
</td>
 </tr></table></body>
</html>   �U   �  �    vi                               ��   � �    Action                            7�U���  �    Status                                            @Abort NIFGEN_VAL_EXT_CAL_ABORT Commit NIFGEN_VAL_EXT_CAL_COMMIT    	          3    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_SelfCal</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_SelfCal</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_SelfCal&nbsp;(ViSession&nbsp;vi);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Performs a full internal self-calibration on the device.  If the calibration is successful, new calibration data and constants are stored in the onboard EEPROM.</p>

</body>
</html>

    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>vi</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">vi</td>
<td class="paramDataType">ViSession</td>
<td>Identifies your instrument session. <strong>vi</strong> is obtained from the 
   <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cviniFgen_init.html')"><span class="monospace">niFgen_init</span></a> or the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_InitWithOptions.html')"><span class="monospace">niFgen_InitWithOptions</span></a> functions and identifies a particular instrument session.</td>
 </tr></table></body>
</html>
   ��   �  �    vi                                7�\���  �    Status                                 	              <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_InitializeAnalogOutputCalibration</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_InitializeAnalogOutputCalibration</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_InitializeAnalogOutputCalibration&nbsp;(ViSession&nbsp;vi);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Sets up the device to start the analog output calibration.</p>


</body>
</html>

    X    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>vi</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">vi</td>
<td class="paramDataType">ViSession</td>
<td>Identifies your instrument session. <strong>vi</strong> is obtained from the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_InitExtCal.html')"><span class="monospace">niFgen_InitExtCal</span></a>  function and identifies a particular instrument session.</td>
 </tr></table></body>
</html>
   �v   �  �    vi                                7�r���  �    Status                                 	          �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_WriteBinary16AnalogStaticValue</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_WriteBinary16AnalogStaticValue</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_WriteBinary16AnalogStaticValue &nbsp;(ViSession&nbsp;vi, ViConstString&nbsp;channelName, ViInt16&nbsp;value);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Writes a 16-bit value to the DAC, which can be generated as a DC voltage. This function writes to the DAC only within an external calibration session.</p>

</body>
</html>

    X    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>vi</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">vi</td>
<td class="paramDataType">ViSession</td>
<td>Identifies your instrument session. <strong>vi</strong> is obtained from the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_InitExtCal.html')"><span class="monospace">niFgen_InitExtCal</span></a>  function and identifies a particular instrument session.</td>
 </tr></table></body>
</html>
    X    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Value</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">value</td>
<td class="paramDataType">ViInt16</td>
<td>Specifies the value to write.</td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>channelName</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">channelName</td>
<td class="paramDataType">ViConstString</td>
<td>Specifies the channel name for which you want to write the value.  

<p class="Body"><strong>Default Value</strong>: &quot;0&quot;</p>
</td>
 </tr></table></body>
</html>   ��    �  �    vi                               �[ �  �  �    Value                             7� }���  �    Status                           ǻ � �  �    Channel Name                           0    	           ""   j    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_CalAdjustMainPathPreAmpOffset</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_CalAdjustMainPathPreAmpOffset</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_CalAdjustMainPathPreAmpOffset&nbsp;(ViSession&nbsp;vi, ViConstString&nbsp;channelName, ViInt32&nbsp;configuration, ViInt32[]&nbsp;gainDACValues, ViInt32[]&nbsp;offsetDACValues, ViReal64[]&nbsp;measuredOutputs);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Calculates calibration constants pertaining to the preamplifier offset of the main analog path. During external calibration, you can put the device in different configurations; program different gain, offset, and main DAC values; and take measurements of the resulting output voltage. Pass the configuration data, as well as the measurements, to this function to allow NI-FGEN to calculate the appropriate calibration constants and store them in the onboard EEPROM when the calibration session is committed.</p>
</body>
</html>

    X    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>vi</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">vi</td>
<td class="paramDataType">ViSession</td>
<td>Identifies your instrument session. <strong>vi</strong> is obtained from the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_InitExtCal.html')"><span class="monospace">niFgen_InitExtCal</span></a>  function and identifies a particular instrument session.</td>
 </tr></table></body>
</html>
    L    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Configuration</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">configuration</td>
<td class="paramDataType">ViInt32</td>
<td>Specifies the preamplifier stage configuration. Refer to the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'nifgen_Related_Documentation.html')">calibration procedure</a> for your device for information about what configurations must be calibrated.</td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Gain DAC Values</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">gainDACValues</td>
<td class="paramDataType">ViInt32[]</td>
<td>Specifies an array of the values programmed to the gain calibration DAC during this calibration stage.</td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Offset DAC Values</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">offsetDACValues</td>
<td class="paramDataType">ViInt32[]</td>
<td>Specifies an array of the values programmed to the offset calibration DAC during this calibration stage.</td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Measured Outputs</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">measuredOutputs</td>
<td class="paramDataType">ViReal64[]</td>
<td>Specifies an array of the analog output voltages measured during this calibration stage.</td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>channelName</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">channelName</td>
<td class="paramDataType">ViConstString</td>
<td>Specifies the name of the channel being calibrated.


<p class="Body"><strong>Default Value</strong>: &quot;0&quot;</p>
</td>
 </tr></table></body>
</html>   ��   �  �    vi                                7�y���  �    Status                           �X Q  � �    Configuration                    Ӭ �  �  �    Gain DAC Values                  �i �  �  �    Offset DAC Values                �, �y �  �    Measured Outputs                 �� �z �  �    Channel Name                           	                   
  zFilter Off, 0 dB NIFGEN_VAL_CAL_CONFIG_MAIN_PATH_FILTER_OFF_0DB Filter Off, 3 dB NIFGEN_VAL_CAL_CONFIG_MAIN_PATH_FILTER_OFF_3DB Filter Off, 6 dB NIFGEN_VAL_CAL_CONFIG_MAIN_PATH_FILTER_OFF_6DB Filter Off, 9 dB NIFGEN_VAL_CAL_CONFIG_MAIN_PATH_FILTER_OFF_9DB Filter Off, 12 dB NIFGEN_VAL_CAL_CONFIG_MAIN_PATH_FILTER_OFF_12DB Filter On, 0 dB NIFGEN_VAL_CAL_CONFIG_MAIN_PATH_FILTER_ON_0DB Filter On, 3 dB NIFGEN_VAL_CAL_CONFIG_MAIN_PATH_FILTER_ON_3DB Filter On, 6 dB NIFGEN_VAL_CAL_CONFIG_MAIN_PATH_FILTER_ON_6DB Filter On, 9 dB NIFGEN_VAL_CAL_CONFIG_MAIN_PATH_FILTER_ON_9DB Filter On, 12 dB NIFGEN_VAL_CAL_CONFIG_MAIN_PATH_FILTER_ON_12DB                ""   �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_CalAdjustMainPathPreAmpGain</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_CalAdjustMainPathPreAmpGain</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_CalAdjustMainPathPreAmpGain&nbsp;(ViSession&nbsp;vi, ViConstString&nbsp;channelName, ViInt32&nbsp;configuration, ViInt32[]&nbsp;mainDACValues, ViInt32[]&nbsp;gainDACValues, ViInt32[]&nbsp;offsetDACValues, ViReal64[]&nbsp;measuredOutputs);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Calculates calibration constants pertaining to the preamplifier gain of the main analog path. During external calibration, you can put the device in different configurations; program different gain, offset, and main DAC values; and take measurements of the resulting output voltage. Pass the configuration data, as well as the measurements to this function to allow NI-FGEN to calculate the appropriate calibration constants and store them in the onboard EEPROM when the calibration session is committed.</p>


</body>
</html>

    X    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>vi</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">vi</td>
<td class="paramDataType">ViSession</td>
<td>Identifies your instrument session. <strong>vi</strong> is obtained from the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_InitExtCal.html')"><span class="monospace">niFgen_InitExtCal</span></a>  function and identifies a particular instrument session.</td>
 </tr></table></body>
</html>
    I    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Configuration</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">configuration</td>
<td class="paramDataType">ViInt32</td>
<td>Specifies the preamplifier stage configuration. Refer to the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'nifgen_Related_Documentation.html')">calibration procedure</a> for your device for information on what configurations must be calibrated.</td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Main DAC Values</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">mainDACValues</td>
<td class="paramDataType">ViInt32[]</td>
<td>Specifies an array of the values programmed to the main output DAC during this calibration stage.</td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>channelName</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">channelName</td>
<td class="paramDataType">ViConstString</td>
<td>Specifies the name of the channel being calibrated.


<p class="Body"><strong>Default Value</strong>: &quot;0&quot;</p>
</td>
 </tr></table></body>
</html>   �S	   �  �    vi                                7�x���  �    Status                           � '  � �    Configuration                    Ӭ �  �  �    Gain DAC Values                  �i �  �  �    Offset DAC Values                �, vx �  �    Measured Outputs                 � g  �  �    Main DAC Values                  � �z �  �    Channel Name                           	                   
  zFilter Off, 0 dB NIFGEN_VAL_CAL_CONFIG_MAIN_PATH_FILTER_OFF_0DB Filter Off, 3 dB NIFGEN_VAL_CAL_CONFIG_MAIN_PATH_FILTER_OFF_3DB Filter Off, 6 dB NIFGEN_VAL_CAL_CONFIG_MAIN_PATH_FILTER_OFF_6DB Filter Off, 9 dB NIFGEN_VAL_CAL_CONFIG_MAIN_PATH_FILTER_OFF_9DB Filter Off, 12 dB NIFGEN_VAL_CAL_CONFIG_MAIN_PATH_FILTER_OFF_12DB Filter On, 0 dB NIFGEN_VAL_CAL_CONFIG_MAIN_PATH_FILTER_ON_0DB Filter On, 3 dB NIFGEN_VAL_CAL_CONFIG_MAIN_PATH_FILTER_ON_3DB Filter On, 6 dB NIFGEN_VAL_CAL_CONFIG_MAIN_PATH_FILTER_ON_6DB Filter On, 9 dB NIFGEN_VAL_CAL_CONFIG_MAIN_PATH_FILTER_ON_9DB Filter On, 12 dB NIFGEN_VAL_CAL_CONFIG_MAIN_PATH_FILTER_ON_12DB    0    0        0    ""   �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_CalAdjustMainPathPostAmpGainAndOffset</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_CalAdjustMainPathPostAmpGainAndOffset</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_CalAdjustMainPathPostAmpGainAndOffset&nbsp;(ViSession&nbsp;vi, ViConstString&nbsp;channelName, ViInt32&nbsp;configuration, ViInt32[]&nbsp;mainDACValues, ViInt32[]&nbsp;gainDACValues, ViInt32[]&nbsp;offsetDACValues, ViReal64[]&nbsp;measuredOutputs);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Calculates calibration constants pertaining to the postamplifier gain and offset of the main analog path. During external calibration, you can put the device in different configurations; program different gain, offset, and main DAC values; and take measurements of the resulting output voltage.  Pass the configuration data, as well as the measurements to this function to allow NI-FGEN to calculate the appropriate calibration constants and store them in the onboard EEPROM when the calibration session is committed.</p>

</body>
</html>

    X    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>vi</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">vi</td>
<td class="paramDataType">ViSession</td>
<td>Identifies your instrument session. <strong>vi</strong> is obtained from the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_InitExtCal.html')"><span class="monospace">niFgen_InitExtCal</span></a>  function and identifies a particular instrument session.</td>
 </tr></table></body>
</html>
    J    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Configuration</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">configuration</td>
<td class="paramDataType">ViInt32</td>
<td>Specifies the postamplifier stage configuration. Refer to the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'nifgen_Related_Documentation.html')">calibration procedure</a> for your device for information on what configurations must be calibrated.</td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>channelName</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">channelName</td>
<td class="paramDataType">ViConstString</td>
<td>Specifies the name of the channel being calibrated.


<p class="Body"><strong>Default Value</strong>: &quot;0&quot;</p>
</td>
 </tr></table></body>
</html>   ��! 	  �  �    vi                                7�{���  �    Status                           �� > 	 � �    Configuration                    Ӭ � 	 �  �    Gain DAC Values                  �i � 	 �  �    Offset DAC Values                �, �{ �  �    Measured Outputs                 �H �} �  �    Channel Name                     � }  �  �    Main DAC Values                        	                     �Low Gain, 0 dB NIFGEN_VAL_CAL_CONFIG_MAIN_PATH_LOW_GAIN_0DB Low Gain, 12 dB NIFGEN_VAL_CAL_CONFIG_MAIN_PATH_LOW_GAIN_12DB Low Gain, 24 dB NIFGEN_VAL_CAL_CONFIG_MAIN_PATH_LOW_GAIN_24DB Low Gain, 36 dB NIFGEN_VAL_CAL_CONFIG_MAIN_PATH_LOW_GAIN_36DB High Gain, 0 dB NIFGEN_VAL_CAL_CONFIG_MAIN_PATH_HIGH_GAIN_0DB High Gain, 12 dB NIFGEN_VAL_CAL_CONFIG_MAIN_PATH_HIGH_GAIN_12DB High Gain, 24 dB NIFGEN_VAL_CAL_CONFIG_MAIN_PATH_HIGH_GAIN_24DB High Gain, 36 dB NIFGEN_VAL_CAL_CONFIG_MAIN_PATH_HIGH_GAIN_36DB    0    0        ""    0   $    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_CalAdjustDirectPathGain</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_CalAdjustDirectPathGain</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_CalAdjustDirectPathGain&nbsp;(ViSession&nbsp;vi, ViConstString&nbsp;channelName, ViInt32[]&nbsp;mainDACValues, ViInt32[]&nbsp;gainDACValues, ViReal64[]&nbsp;measuredOutputs);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Calculates calibration constants pertaining to the gain of the direct analog path. During external calibration, you can put the device in different configurations; program different gain and main DAC values; and take measurements of the resulting output voltage. Pass the configuration data, as well as the measurements, to this function to allow NI-FGEN to calculate the appropriate calibration constants and store them in the onboard EEPROM when the calibration session is committed.</p>
</body>
</html>

    X    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>vi</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">vi</td>
<td class="paramDataType">ViSession</td>
<td>Identifies your instrument session. <strong>vi</strong> is obtained from the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_InitExtCal.html')"><span class="monospace">niFgen_InitExtCal</span></a>  function and identifies a particular instrument session.</td>
 </tr></table></body>
</html>
    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>channelName</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">channelName</td>
<td class="paramDataType">ViConstString</td>
<td>Specifies the name of the channel being calibrated.


<p class="Body"><strong>Default Value</strong>: &quot;0&quot;</p>
</td>
 </tr></table></body>
</html>      �  �    vi                                7�����  �    Status                           � o  �  �    Main DAC Values                  Ӭ �  �  �    Gain DAC Values                  �, i� �  �    Measured Outputs                 u �� �  �    Channel Name                           	           0    0        ""   U    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_CalAdjustMainPathOutputImpedance</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_CalAdjustMainPathOutputImpedance</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_CalAdjustMainPathOutputImpedance&nbsp;(ViSession&nbsp;vi, ViConstString&nbsp;channelName, ViInt32&nbsp;configuration, ViReal64&nbsp;loadImpedance, ViReal64&nbsp;measuredSourceVoltage, ViReal64&nbsp;measuredVoltageAcrossLoad);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Calculates calibration constants pertaining to main analog path output impedance.  During external calibration, you can put the device in different configurations and take measurements of the resulting output voltage across different loads.  Pass the configuration data, as well as the measurements, to this function to allow NI-FGEN to calculate the appropriate calibration constants and store them in the onboard EEPROM when the calibration session is committed.</p>

</body>
</html>

    X    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>vi</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">vi</td>
<td class="paramDataType">ViSession</td>
<td>Identifies your instrument session. <strong>vi</strong> is obtained from the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_InitExtCal.html')"><span class="monospace">niFgen_InitExtCal</span></a>  function and identifies a particular instrument session.</td>
 </tr></table></body>
</html>
    Q    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Configuration</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">configuration</td>
<td class="paramDataType">ViInt32</td>
<td>Specifies the main path output impedance configuration. Refer to the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'nifgen_Related_Documentation.html')">calibration procedure</a> for your device for information on what configurations must be calibrated.</td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Load Impedance</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">loadImpedance</td>
<td class="paramDataType">ViReal64</td>
<td>Specifies the impedance of the load across which the measurement passed in as <strong>measuredVoltageAcrossLoad</strong> is taken.</td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Measured Source Voltage</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">measuredSourceVoltage</td>
<td class="paramDataType">ViReal64</td>
<td>Specifies the analog output voltage measured across a very high-impedance load.</td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Measured Voltage Across Load</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">measuredVoltageAcrossLoad</td>
<td class="paramDataType">ViReal64</td>
<td>Specifies the analog output voltage measured across the load impedance specified in the <strong>loadImpedance</strong> parameter.</td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>channelName</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">channelName</td>
<td class="paramDataType">ViConstString</td>
<td>Specifies the name of the channel being calibrated.


<p class="Body"><strong>Default Value</strong>: &quot;0&quot;</p>
</td>
 </tr></table></body>
</html>    7�����  �    Status                              �  �    vi                               a H  � �    Configuration                    � �  �  �    Load Impedance                   � G� �  �    Measured Source Voltage          F �� �  �    Measured Voltage Across Load     6 �� �  �    Channel Name                       	                         DLow Gain 0 dB, 50 ohms NIFGEN_VAL_CAL_CONFIG_MAIN_PATH_LOW_GAIN_0DB_50OHMS Low Gain 0 dB, 75 ohms NIFGEN_VAL_CAL_CONFIG_MAIN_PATH_LOW_GAIN_0DB_75OHMS Low Gain 12 dB, 50 ohms NIFGEN_VAL_CAL_CONFIG_MAIN_PATH_LOW_GAIN_12DB_50OHMS Low Gain 12 dB, 75 ohms NIFGEN_VAL_CAL_CONFIG_MAIN_PATH_LOW_GAIN_12DB_75OHMS Low Gain 24 dB, 50 ohms NIFGEN_VAL_CAL_CONFIG_MAIN_PATH_LOW_GAIN_24DB_50OHMS Low Gain 24 dB, 75 ohms NIFGEN_VAL_CAL_CONFIG_MAIN_PATH_LOW_GAIN_24DB_75OHMS Low Gain 36 dB, 50 ohms NIFGEN_VAL_CAL_CONFIG_MAIN_PATH_LOW_GAIN_36DB_50OHMS Low Gain 36 dB, 75 ohms NIFGEN_VAL_CAL_CONFIG_MAIN_PATH_LOW_GAIN_36DB_75OHMS High Gain 0 dB, 50 ohms NIFGEN_VAL_CAL_CONFIG_MAIN_PATH_HIGH_GAIN_0DB_50OHMS High Gain 0 dB, 75 ohms NIFGEN_VAL_CAL_CONFIG_MAIN_PATH_HIGH_GAIN_0DB_75OHMS High Gain 12 dB, 50 ohms NIFGEN_VAL_CAL_CONFIG_MAIN_PATH_HIGH_GAIN_12DB_50OHMS High Gain 12 dB, 75 ohms NIFGEN_VAL_CAL_CONFIG_MAIN_PATH_HIGH_GAIN_12DB_75OHMS High Gain 24 dB, 50 ohms NIFGEN_VAL_CAL_CONFIG_MAIN_PATH_HIGH_GAIN_24DB_50OHMS High Gain 24 dB, 75 ohms NIFGEN_VAL_CAL_CONFIG_MAIN_PATH_HIGH_GAIN_24DB_75OHMS High Gain 36 dB, 50 ohms NIFGEN_VAL_CAL_CONFIG_MAIN_PATH_HIGH_GAIN_36DB_50OHMS High Gain 36 dB, 75 ohms NIFGEN_VAL_CAL_CONFIG_MAIN_PATH_HIGH_GAIN_36DB_75OHMS Differential NIFGEN_VAL_CAL_CONFIG_MAIN_PATH_DIFFERENTIAL Single Ended NI_FGEN_VAL_CAL_CONFIG_MAIN_PATH_RSE    0    0    0    ""   [    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_CalAdjustDirectPathOutputImpedance</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_CalAdjustDirectPathOutputImpedance</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_CalAdjustDirectPathOutputImpedance&nbsp;(ViSession&nbsp;vi, ViConstString&nbsp;channelName, ViInt32&nbsp;configuration, ViReal64&nbsp;loadImpedance, ViReal64&nbsp;measuredSourceVoltage, ViReal64&nbsp;measuredVoltageAcrossLoad);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Calculates calibration constants pertaining to direct analog path output impedance. During external calibration, you can put the device in different configurations and take measurements of the resulting output voltage across different loads. Pass the configuration data, as well as the measurements, to this function to allow NI-FGEN to calculate the appropriate calibration constants and store them in the onboard EEPROM when the calibration session is committed.</p>

</body>
</html>

    X    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>vi</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">vi</td>
<td class="paramDataType">ViSession</td>
<td>Identifies your instrument session. <strong>vi</strong> is obtained from the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_InitExtCal.html')"><span class="monospace">niFgen_InitExtCal</span></a>  function and identifies a particular instrument session.</td>
 </tr></table></body>
</html>
    S    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Configuration</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">configuration</td>
<td class="paramDataType">ViInt32</td>
<td>Specifies the direct path output impedance configuration. Refer to the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'nifgen_Related_Documentation.html')">calibration procedure</a> for your device for information on what configurations must be calibrated.</td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>channelName</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">channelName</td>
<td class="paramDataType">ViConstString</td>
<td>Specifies the name of the channel being calibrated.


<p class="Body"><strong>Default Value</strong>: &quot;0&quot;</p>
</td>
 </tr></table></body>
</html>    7�����  �    Status                           $Q   �  �    vi                               &� H  � �    Configuration                    � �  �  �    Load Impedance                   � G� �  �    Measured Source Voltage          F �� �  �    Measured Voltage Across Load     ) �� �  �    Channel Name                       	                          �50 ohms NIFGEN_VAL_CAL_CONFIG_DIRECT_PATH_50OHMS 75 ohms NIFGEN_VAL_CAL_CONFIG_DIRECT_PATH_75OHMS Differential NIFGEN_VAL_CAL_CONFIG_DIRECT_PATH_DIFFERENTIAL    0    0    0    ""       <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_InitializeOscillatorFrequencyCalibration</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_InitializeOscillatorFrequencyCalibration</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_InitializeOscillatorFrequencyCalibration&nbsp;(ViSession&nbsp;vi);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Sets up the device to start the VCXO calibration.</p>

<p class="Body">The session handle should be the handle returned by the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_InitExtCal.html')"><span class="monospace">niFgen_InitExtCal</span></a> function.</p>
</body>
</html>

    X    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>vi</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">vi</td>
<td class="paramDataType">ViSession</td>
<td>Identifies your instrument session. <strong>vi</strong> is obtained from the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_InitExtCal.html')"><span class="monospace">niFgen_InitExtCal</span></a>  function and identifies a particular instrument session.</td>
 </tr></table></body>
</html>
   0=   �  �    vi                                7�l���  �    Status                                 	          �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_CalAdjustOscillatorFrequency</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_CalAdjustOscillatorFrequency</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_CalAdjustOscillatorFrequency&nbsp;(ViSession&nbsp;vi, ViReal64&nbsp;desiredFrequency, ViReal64&nbsp;measuredFrequency);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Calculates calibration constants pertaining to the VCXO.  During external calibration, you can generate sine waves and take measurements of the resulting output frequency.  Pass the desired and measured frequencies to this function to allow NI-FGEN to calculate the appropriate calibration constants and store them in the onboard EEPROM when the calibration session is committed.</p>
</body>
</html>

    X    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>vi</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">vi</td>
<td class="paramDataType">ViSession</td>
<td>Identifies your instrument session. <strong>vi</strong> is obtained from the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_InitExtCal.html')"><span class="monospace">niFgen_InitExtCal</span></a>  function and identifies a particular instrument session.</td>
 </tr></table></body>
</html>
    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Desired Frequency</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">desiredFrequency</td>
<td class="paramDataType">ViReal64</td>
<td>Specifies the expected frequency of the output waveform.
</td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Measured Frequency</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">measuredFrequency</td>
<td class="paramDataType">ViReal64</td>
<td>Specifies the actual measured frequency of the output waveform.</td>
 </tr></table></body>
</html>    7�����  �    Status                           6�   �  �    vi                               9 �  �  �    Desired Frequency                :� �� �  �    Measured Frequency                 	               0    0   {    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_InitializeCalADCCalibration</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_InitializeCalADCCalibration</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_InitializeCalADCCalibration&nbsp;(ViSession&nbsp;vi);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Initializes an external calibration session for ADC calibration.  For the NI 5421/5422/5441, ADC calibration involves characterizing the gain and offset of the onboard ADC.</p>

</body>
</html>

    X    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>vi</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">vi</td>
<td class="paramDataType">ViSession</td>
<td>Identifies your instrument session. <strong>vi</strong> is obtained from the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_InitExtCal.html')"><span class="monospace">niFgen_InitExtCal</span></a>  function and identifies a particular instrument session.</td>
 </tr></table></body>
</html>
   ?�   �  �    vi                                7�q���  �    Status                                 	          �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_WriteBinary16AnalogStaticValue</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_WriteBinary16AnalogStaticValue</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_WriteBinary16AnalogStaticValue&nbsp;(ViSession&nbsp;vi, ViConstString&nbsp;channelName, ViInt16&nbsp;value);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Writes the 16-bit value to the DAC, which could be output as a DC Voltage.<br>This function writes to the DAC only when in an external calibration session.</p>

</body>
</html>

    X    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>vi</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">vi</td>
<td class="paramDataType">ViSession</td>
<td>Identifies your instrument session. <strong>vi</strong> is obtained from the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_InitExtCal.html')"><span class="monospace">niFgen_InitExtCal</span></a>  function and identifies a particular instrument session.</td>
 </tr></table></body>
</html>
    N    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Value</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">value</td>
<td class="paramDataType">ViInt16</td>
<td>The value to write.</td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>channelName</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">channelName</td>
<td class="paramDataType">ViConstString</td>
<td>Specifies the channel name for which you want to write the value. 

<p class="Body"><strong>Default Value</strong>: &quot;0&quot;</p>
</td>
 </tr></table></body>
</html>   E6    �  �    vi                               G� �  �  �    Value                             7� }���  �    Status                           H� � �  �    Channel Name                           0    	           ""   �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_CalAdjustADC</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_CalAdjustADC</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_CalAdjustADC&nbsp;(ViSession&nbsp;vi, ViConstString ChannelName, ViInt32 Configuration, ViReal64[]&nbsp;voltagesMeasuredExternally, ViReal64[]&nbsp;voltagesMeasuredWithCalADC);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Calculates calibration constants pertaining to the gain and offset of the onboard calibration ADC.  During external calibration, you can generate voltages and measure them both externally and with the calibration ADC.  Pass the measured voltages to this function to allow NI-FGEN to calculate the appropriate calibration constants and store them in the onboard EEPROM when the calibration session is committed.</p>

</body>
</html>

    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Voltages Measured Externally</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">voltagesMeasuredExternally</td>
<td class="paramDataType">ViReal64[]</td>
<td>Specifies an array of analog output voltages measured with an external instrument.</td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Voltages Measured With CalADC</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">voltagesMeasuredWithCalADC</td>
<td class="paramDataType">ViReal64[]</td>
<td>Specifies an array of analog output voltages measured with the onboard calibration ADC.</td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>channelName</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">channelName</td>
<td class="paramDataType">ViConstString</td>
<td>Specifies the name of the channel being calibrated.


<p class="Body"><strong>Default Value</strong>: &quot;0&quot;</p>
</td>
 </tr></table></body>
</html>    y    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Configuration</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">configuration</td>
<td class="paramDataType">ViInt32</td>
<td>Specifies the main path configuration.<br><br></td>
 </tr></table></body>
</html>    7�����  �    Status                            ��   �  �    vi                               O� �  �  �    Voltages Measured Externally     QH �� �  �    Voltages Measured With CalADC    S H  �  �    Channel Name                     T� �  � �    Configuration                      	                       ""               YDirect Path NIFGEN_VAL_CAL_CONFIG_DIRECT_PATH Main Path  NIFGEN_VAL_CAL_CONFIG_MAIN_PATH       <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_ReadCalADC</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_ReadCalADC</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_ReadCalADC&nbsp;(ViSession&nbsp;vi, ViInt32&nbsp;numberofReadstoAverage, ViBoolean&nbsp;returnCalibratedValue, ViReal64*&nbsp;calADCValue);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Takes one or more voltage measurements from the onboard calibration ADC and returns the value or the average value. The signal that the ADC actually measures can be specified using the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'NIFGEN_ATTR_CAL_ADC_INPUT.html')"><span class="monospace">NIFGEN_ATTR_CAL_ADC_INPUT</span></a> attribute. The ADC has some inherent gain and offset. These values can be determined during an external calibration session and stored in the calibration EEPROM.</p>

<p class="Body">If the <strong>returnCalibratedValue</strong> parameter is <span class="monospace">VI_TRUE</span>, NI-FGEN adjusts the value that is returned to account for the gain and offset of the ADC. Otherwise, the raw voltage value reported by the ADC is returned.</p>
</body>
</html>


    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>vi</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">vi</td>
<td class="paramDataType">ViSession</td>
<td>Identifies your instrument session. <strong>vi</strong> is obtained from the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_init.html')"><span class="monospace">niFgen_init</span></a> or the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_InitExtCal.html')"><span class="monospace">niFgen_InitExtCal</span></a>  function and identifies a particular instrument session.</td>
 </tr></table></body>
</html>
    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Cal ADC Value</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">calADCValue</td>
<td class="paramDataType">ViReal64*</td>
<td>Specifies the average of the voltage measurements taken from the onboard calibration ADC.</td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Number of Reads to Average</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">numberofReadstoAverage</td>
<td class="paramDataType">ViInt32</td>
<td>Specifies the number of measurements to be taken and averaged to determine the return value.</td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Return Calibrated Value</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">returnCalibratedValue</td>
<td class="paramDataType">ViBoolean</td>
<td>Specifies whether the voltage returned from the ADC should be adjusted to account for the gain and offset of the ADC.</td>
 </tr></table></body>
</html>   ]D   �  �    vi                                7�z���  �    Status                           `9 �y �  �    Cal ADC Value                    a� � 
 �  �    Number of Reads to Average       c� � � �  �    Return Calibrated Value                	           	                      <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_InitializeFlatnessCalibration</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_InitializeFlatnessCalibration</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_InitializeFlatnessCalibration&nbsp;(ViSession&nbsp;vi);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Initializes an external calibration session to calibrate flatness.</p>

</body>
</html>

    Y    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>vi</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">vi</td>
<td class="paramDataType">ViSession</td>
<td>Identifies your instrument session. <strong>vi</strong> is obtained from the  <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_InitExtCal.html')"><span class="monospace">niFgen_InitExtCal</span></a>  function and identifies a particular instrument session.</td>
 </tr></table></body>
</html>
   h�   �  �    vi                                7�l���  �    Status                                 	              <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_CalAdjustFlatness</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_CalAdjustFlatness</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_CalAdjustFlatness&nbsp;(ViSession&nbsp;vi, ViConstString&nbsp;channelName, ViInt32&nbsp;configuration, ViReal64&nbsp;requestedAmplitude, ViReal64[]&nbsp;frequencies, ViReal64[]&nbsp;measuredAmplitudes, ViInt32&nbsp;numberOfMeasurements);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">During external calibration, the device is configured with the different analog settings. Measurements are taken of the resulting output voltage across different frequencies. The configuration data, as well as the measurements, are passed to this function so that NI-FGEN can calculate the appropriate calibration constants and, when the calibration session is committed, store them in the onboard EEPROM.</p>

</body>
</html>

    X    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>vi</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">vi</td>
<td class="paramDataType">ViSession</td>
<td>Identifies your instrument session. <strong>vi</strong> is obtained from the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_InitExtCal.html')"><span class="monospace">niFgen_InitExtCal</span></a>  function and identifies a particular instrument session.</td>
 </tr></table></body>
</html>
    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Requested Amplitude</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">requestedAmplitude</td>
<td class="paramDataType">ViReal64</td>
<td>Specifies the amplitude, in volts, that was used to configure NI-FGEN to generate the sine tones at different frequencies.<br><br></td>
 </tr></table></body>
</html>

    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Measured Amplitudes</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">measuredAmplitudes</td>
<td class="paramDataType">ViReal64[]</td>
<td>Specifies the actual (measured) amplitudes of the output waveform in volts.<br><br></td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>channelName</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">channelName</td>
<td class="paramDataType">ViConstString</td>
<td>Specifies the name of the channel being calibrated.


<p class="Body"><strong>Default Value</strong>: &quot;0&quot;</p>
</td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Frequencies</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">frequencies</td>
<td class="paramDataType">ViReal64[]</td>
<td>Specifies the frequencies of the output waveform in hertz.<br><br></td>
 </tr></table></body>
</html>    q    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Configuration</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">configuration</td>
<td class="paramDataType">ViInt32</td>
<td>Specifies the analog path configuration of the device for this stage of calibration. Refer to the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'nifgen_Related_Documentation.html')">calibration procedure</a> for your device for information on which configurations must be calibrated.</td>
 </tr></table>

</body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Number of Measurements</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">numberofMeasurements</td>
<td class="paramDataType">ViInt32</td>
<td>Specifies the number of measurements to take.<br><br></td>
 </tr></table></body>
</html>    7�����  �    Status                           o�   �  �    vi                               r �  �  �    Requested Amplitude              t  �� �  �    Measured Amplitudes              u� �� �  �    Channel Name                     w� >� �  �    Frequencies                      y >  � �    Configuration                    {� �  �  �    Number Of Measurements             	               0    0    ""    0              �Low Gain Pre Amp 0 dB NIFGEN_VAL_CAL_CONFIG_LOW_GAIN_PATH_PRE_AMP_0DB Low Gain Pre Amp 3 dB NIFGEN_VAL_CAL_CONFIG_LOW_GAIN_PATH_PRE_AMP_3DB Low Gain Pre Amp 6 dB NIFGEN_VAL_CAL_CONFIG_LOW_GAIN_PATH_PRE_AMP_6DB Low Gain Pre Amp 9 dB NIFGEN_VAL_CAL_CONFIG_LOW_GAIN_PATH_PRE_AMP_9DB Low Gain Pre Amp 12 dB NIFGEN_VAL_CAL_CONFIG_LOW_GAIN_PATH_PRE_AMP_12DB High Gain Pre Amp 0 dB NIFGEN_VAL_CAL_CONFIG_HIGH_GAIN_PATH_PRE_AMP_0DB High Gain Pre Amp 3 dB NIFGEN_VAL_CAL_CONFIG_HIGH_GAIN_PATH_PRE_AMP_3DB High Gain Pre Amp 6 dB NIFGEN_VAL_CAL_CONFIG_HIGH_GAIN_PATH_PRE_AMP_6DB High Gain Pre Amp 9 dB NIFGEN_VAL_CAL_CONFIG_HIGH_GAIN_PATH_PRE_AMP_9DB High Gain Pre Amp 12 dB NIFGEN_VAL_CAL_CONFIG_HIGH_GAIN_PATH_PRE_AMP_12DB Direct Path NIFGEN_VAL_CAL_CONFIG_DIRECT_PATH Main Path 0 dB NIFGEN_VAL_CAL_CONFIG_MAIN_PATH_0DB Main Path 9 dB NIFGEN_VAL_CAL_CONFIG_MAIN_PATH_9DB Main Path 33 dB NIFGEN_VAL_CAL_CONFIG_MAIN_PATH_33DB    0       <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_GetSelfCalSupported</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_GetSelfCalSupported</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_GetSelfCalSupported&nbsp;(ViSession&nbsp;vi, ViBoolean*&nbsp;selfCalSupported);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Returns whether the device supports self&#8211;calibration.</p>

</body>
</html>

    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>vi</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">vi</td>
<td class="paramDataType">ViSession</td>
<td>Identifies your instrument session. <strong>vi</strong> is obtained from the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_init.html')"><span class="monospace">niFgen_init</span></a> or the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_InitWithOptions.html')"><span class="monospace">niFgen_InitWithOptions</span></a>  function and identifies a particular instrument session.</td>
 </tr></table></body>
</html>
        <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Self Cal Supported</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">selfCalSupported</td>
<td class="paramDataType">ViBoolean*</td>
<td>Returns whether the device supports self-calibration. 

<p class="body"><strong><strong>Defined Values</strong></strong></p>
<table class="bordered">
<tr><td class="bordered"><span class="monospace">VI_TRUE</span></td><td class="bordered"> Self&#8211;calibration is supported. </td></tr><tr><td class="bordered"> <span class="monospace">VI_FALSE</span></td><td class="bordered">Self&#8211;calibration is not supported.</td></tr></table></td>
 </tr></table>
</td>
</body>
</html>   �� 
  �  �    vi                                7�����  �    Status                           �� �� �  �    Self Cal Supported                     	           
        0   8    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_GetSelfCalLastDateAndTime</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_GetSelfCalLastDateAndTime</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_GetSelfCalLastDateAndTime &nbsp;(ViSession&nbsp;vi, ViInt32*&nbsp;year, ViInt32*&nbsp;month, ViInt32*&nbsp;day, ViInt32*&nbsp;hour, ViInt32*&nbsp;minute);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Returns the date and time of the last successful self-calibration.</p>
<p class="Body">All values are returned as separate parameters. Each parameter is returned as an integer, including the year, month, day, hour, minute, and second. For example, if the device is calibrated in September 2013, this function returns <span class="monospace">9</span> for the <strong>month</strong> parameter and <span class="monospace">2013</span> for the <strong>year</strong> parameter.</p>
<p class="Body">The time returned is 24-hour (military) local time. For example, if the device was calibrated at 2:30 PM, this function returns <span class="monospace">14</span> for the <strong>hours</strong> parameter and <span class="monospace">30</span> for the <strong>minutes</strong> parameter.</p>

</body>
</html>

    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>vi</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">vi</td>
<td class="paramDataType">ViSession</td>
<td>Identifies your instrument session. <strong>vi</strong> is obtained from the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_init.html')"><span class="monospace">niFgen_init</span></a> or the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_InitExtCal.html')"><span class="monospace">niFgen_InitExtCal</span></a>  function and identifies a particular instrument session.</td>
 </tr></table></body>
</html>
    p    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Year</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">year</td>
<td class="paramDataType">ViInt32*</td>
<td>Specifies the year of the last successful calibration.</td>
 </tr></table></body>
</html>    s    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Month</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">month</td>
<td class="paramDataType">ViInt32*</td>
<td>Specifies the month of the last successful calibration.</td>
 </tr></table></body>
</html>    m    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Day</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">day</td>
<td class="paramDataType">ViInt32*</td>
<td>Specifies the day of the last successful calibration.</td>
 </tr></table></body>
</html>    p    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Hour</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">hour</td>
<td class="paramDataType">ViInt32*</td>
<td>Specifies the hour of the last successful calibration.</td>
 </tr></table></body>
</html>    v    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Minute</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">minute</td>
<td class="paramDataType">ViInt32*</td>
<td>Specifies the minute of the last successful calibration.</td>
 </tr></table></body>
</html>   ��   �  �    vi                                7�����  �    Status                           �� " � �  �    Year                             �7 d � �  �    Month                            �� � � �  �    Day                              �' "� �  �    Hour                             �� d� �  �    Minute                                 	           	            	            	            	            	           �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_GetExtCalLastDateAndTime</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_GetExtCalLastDateAndTime</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_GetExtCalLastDateAndTime&nbsp;(ViSession&nbsp;vi, ViInt32*&nbsp;year, ViInt32*&nbsp;month, ViInt32*&nbsp;day, ViInt32*&nbsp;hour, ViInt32*&nbsp;minute);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Returns the date and time of the last successful external calibration.  The time returned is 24-hour (military) local time; for example, if the device was calibrated at 2:30 PM, this function returns <span class="monospace">14</span> for the <strong>hour</strong> parameter and <span class="monospace">30</span> for the <strong>minute</strong> parameter.</p>
</body>
</html>

    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>vi</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">vi</td>
<td class="paramDataType">ViSession</td>
<td>Identifies your instrument session. <strong>vi</strong> is obtained from the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_init.html')"><span class="monospace">niFgen_init</span></a> or the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_InitExtCal.html')"><span class="monospace">niFgen_InitExtCal</span></a>  function and identifies a particular instrument session.</td>
 </tr></table></body>
</html>
   �q    �  �    vi                                7�����  �    Status                           ��  � �  �    Year                             �7 W � �  �    Month                            �� � � �  �    Day                              �' � �  �    Hour                             �� W� �  �    Minute                                 	           	            	            	            	            	           A    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_GetSelfCalLastTemp</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_GetSelfCalLastTemp</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_GetSelfCalLastTemp&nbsp;(ViSession&nbsp;vi, ViReal64*&nbsp;temperature);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Returns the temperature at the last successful self-calibration.  The temperature is returned in degrees Celsius.</p>

</body>
</html>

    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>vi</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">vi</td>
<td class="paramDataType">ViSession</td>
<td>Identifies your instrument session. <strong>vi</strong> is obtained from the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_init.html')"><span class="monospace">niFgen_init</span></a> or the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_InitExtCal.html')"><span class="monospace">niFgen_InitExtCal</span></a>  function and identifies a particular instrument session.</td>
 </tr></table></body>
</html>
    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Temperature</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">temperature</td>
<td class="paramDataType">ViReal64*</td>
<td>Specifies the temperature at the last successful calibration in degrees Celsius.</td>
 </tr></table></body>
</html>   �n   �  �    vi                                7�����  �    Status                           �c �� �  �    Temperature                            	           	          B    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_GetExtCalLastTemp</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_GetExtCalLastTemp</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_GetExtCalLastTemp&nbsp;(ViSession&nbsp;vi, ViReal64*&nbsp;temperature);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Returns the temperature at the last successful external calibration.  The temperature is returned in degrees Celsius.</p>

</body>
</html>

    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>vi</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">vi</td>
<td class="paramDataType">ViSession</td>
<td>Identifies your instrument session. <strong>vi</strong> is obtained from the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_init.html')"><span class="monospace">niFgen_init</span></a> or the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_InitExtCal.html')"><span class="monospace">niFgen_InitExtCal</span></a>  function and identifies a particular instrument session.</td>
 </tr></table></body>
</html>
   �	   �  �    vi                                7�����  �    Status                           �c �� �  �    Temperature                            	           	          1    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_GetExtCalRecommendedInterval</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_GetExtCalRecommendedInterval</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_GetExtCalRecommendedInterval&nbsp;(ViSession&nbsp;vi, ViInt32*&nbsp;months);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Returns the recommended interval between external calibrations in months.</p>

</body>
</html>

    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>vi</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">vi</td>
<td class="paramDataType">ViSession</td>
<td>Identifies your instrument session. <strong>vi</strong> is obtained from the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_init.html')"><span class="monospace">niFgen_init</span></a> or the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_InitExtCal.html')"><span class="monospace">niFgen_InitExtCal</span></a>  function and identifies a particular instrument session.</td>
 </tr></table></body>
</html>
    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Months</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">months</td>
<td class="paramDataType">ViInt32*</td>
<td>Specifies the recommended interval between external calibrations in months.</td>
 </tr></table></body>
</html>   ��    �  �    vi                                7�y���  �    Status                           �� ny �  �    Months                                 	           	               <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_ChangeExtCalPassword</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_ChangeExtCalPassword</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_ChangeExtCalPassword&nbsp;(ViSession&nbsp;vi, ViConstString&nbsp;oldPassword, ViConstString&nbsp;newPassword);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Changes the password that is required to initialize an external calibration session.  The password may be up to four characters long.</p>

</body>
</html>

    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>vi</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">vi</td>
<td class="paramDataType">ViSession</td>
<td>Identifies your instrument session. <strong>vi</strong> is obtained from the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_init.html')"><span class="monospace">niFgen_init</span></a> or the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_InitExtCal.html')"><span class="monospace">niFgen_InitExtCal</span></a>  function and identifies a particular instrument session.</td>
 </tr></table></body>
</html>
    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Old Password</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">oldPassword</td>
<td class="paramDataType">ViConstString</td>
<td>Specifies the old (current) external calibration password.</td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>New Password</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">newPassword</td>
<td class="paramDataType">ViConstString</td>
<td>Specifies the new (desired) external calibration password. The password may be up to four characters long.</td>
 </tr></table></body>
</html>   ��   �  �    vi                                7�~���  �    Status                           �� Y  �  �    Old Password                     �? �  �  �    New Password                           	                      <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_SetCalUserDefinedInfo</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_SetCalUserDefinedInfo</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_SetCalUserDefinedInfo&nbsp;(ViSession&nbsp;vi, ViConstString&nbsp;info);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Stores user-defined information in the onboard EEPROM. Call the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_GetCalUserDefinedInfoMaxSize.html')"><span class="monospace">niFgen_GetCalUserDefinedInfoMaxSize</span></a> function to determine the maximum number of characters that can be stored.</p>

</body>
</html>

    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>vi</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">vi</td>
<td class="paramDataType">ViSession</td>
<td>Identifies your instrument session. <strong>vi</strong> is obtained from the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_init.html')"><span class="monospace">niFgen_init</span></a> or the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_InitExtCal.html')"><span class="monospace">niFgen_InitExtCal</span></a>  function and identifies a particular instrument session.</td>
 </tr></table></body>
</html>
    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Info</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">info</td>
<td class="paramDataType">ViConstString</td>
<td>Specifies the information string that should be stored in the EEPROM.</td>
 </tr></table></body>
</html>   �    �  �    vi                                7�	y���  �    Status                           � �   �  �    Info                                   	              �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_GetCalUserDefinedInfo</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_GetCalUserDefinedInfo</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_GetCalUserDefinedInfo&nbsp;(ViSession&nbsp;vi, ViString&nbsp;info);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Retrieves user-defined information from the onboard EEPROM. Call the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_GetCalUserDefinedInfoMaxSize.html')"><span class="monospace">niFgen_GetCalUserDefinedInfoMaxSize</span></a> function to determine the number of characters that can be retrieved. The buffer you provide should be the size of the maximum number of characters stored plus one termination character.</p>

</body>
</html>

    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>vi</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">vi</td>
<td class="paramDataType">ViSession</td>
<td>Identifies your instrument session. <strong>vi</strong> is obtained from the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_init.html')"><span class="monospace">niFgen_init</span></a> or the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_InitExtCal.html')"><span class="monospace">niFgen_InitExtCal</span></a>  function and identifies a particular instrument session.</td>
 </tr></table></body>
</html>
    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Info</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">info</td>
<td class="paramDataType">ViString</td>
<td>Specifies a string into which the user information is copied.  This parameter must point to a character buffer large enough to hold the information string.</td>
 </tr></table></body>
</html>   ��   �  �    vi                                7�w���  �    Status                           �� |w �  �    Info                                   	              ~    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_GetCalUserDefinedInfoMaxSize</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_GetCalUserDefinedInfoMaxSize</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_GetCalUserDefinedInfoMaxSize&nbsp;(ViSession&nbsp;vi, ViInt32*&nbsp;infoSize);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Returns the maximum number of characters, excluding the termination character, of user-defined information that can be stored in the onboard EEPROM.</p>

</body>
</html>

    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>vi</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">vi</td>
<td class="paramDataType">ViSession</td>
<td>Identifies your instrument session. <strong>vi</strong> is obtained from the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_init.html')"><span class="monospace">niFgen_init</span></a> or the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_InitExtCal.html')"><span class="monospace">niFgen_InitExtCal</span></a>  function and identifies a particular instrument session.</td>
 </tr></table></body>
</html>
    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Info Size</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">infoSize</td>
<td class="paramDataType">ViInt32*</td>
<td>Specifies the maximum number of characters of user defined info that can be stored in the onboard EEPROM.</td>
 </tr></table></body>
</html>   ��$   �  �    vi                                7�!v���  �    Status                           �� �v �  �    Info Size                              	           	           ?    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_ReadCurrentTemperature</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_ReadCurrentTemperature</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_ReadCurrentTemperature&nbsp;(ViSession&nbsp;vi, ViReal64*&nbsp;temperature);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Reads the current onboard temperature of the device. The temperature is returned in degrees Celsius.</p>
</body>
</html>

    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>vi</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">vi</td>
<td class="paramDataType">ViSession</td>
<td>Identifies your instrument session. <strong>vi</strong> is obtained from the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_init.html')"><span class="monospace">niFgen_init</span></a> or the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_InitExtCal.html')"><span class="monospace">niFgen_InitExtCal</span></a>  function and identifies a particular instrument session.</td>
 </tr></table></body>
</html>
    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Temperature</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">Temperature</td>
<td class="paramDataType">ViReal64*</td>
<td>Returns the current temperature read from onboard temperature sensors, in degrees Celsius.</td>
 </tr></table></body>
</html>   ߑ    �  �    vi                                7�{���  �    Status                           � r{ �  �    Temperature                            	           	              <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niFgen_RestoreLastExtCalConstants</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niFgen_RestoreLastExtCalConstants</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_RestoreLastExtCalConstants&nbsp;(ViSession&nbsp;vi);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Overwrites the current calibration constants with those from the last successful external calibration. This action effectively undoes any self-calibrations performed since the last time an external calibration was performed. This function should be used if a self-calibration produced invalid calibration constants.</p>
</body>
</html>

    X    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>vi</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">vi</td>
<td class="paramDataType">ViSession</td>
<td>Identifies your instrument session. <strong>vi</strong> is obtained from the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_InitExtCal.html')"><span class="monospace">niFgen_InitExtCal</span></a>  function and identifies a particular instrument session.</td>
 </tr></table></body>
</html>
   ��   �  �    vi                                7�b���  �    Status                                 	          �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>[OBSOLETE] niFgen_CalAdjustCalADC</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">[OBSOLETE] niFgen_CalAdjustCalADC</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_calAdjustCalADC&nbsp;(ViSession&nbsp;vi, ViReal64[]&nbsp;voltagesMeasuredExternally, ViReal64[]&nbsp;voltagesMeasuredWithCalADC);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Calculates calibration constants pertaining to the gain and offset of the onboard calibration ADC.  During external calibration, you can generate voltages and measure them both externally and with the calibration ADC.  Pass the measured voltages to this function to allow NI-FGEN to calculate the appropriate calibration constants and store them in the onboard EEPROM when the calibration session is committed.</p>

</body>
</html>

    X    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>vi</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">vi</td>
<td class="paramDataType">ViSession</td>
<td>Identifies your instrument session. <strong>vi</strong> is obtained from the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_InitExtCal.html')"><span class="monospace">niFgen_InitExtCal</span></a>  function and identifies a particular instrument session.</td>
 </tr></table></body>
</html>
    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Voltages Measured Externally</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">voltagesMeasuredExternally</td>
<td class="paramDataType">ViReal64[]</td>
<td>Specifies an array of analog output voltages measured with an external instrument.</td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Voltages Measured With CalADC</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">voltagesMeasuredWithCalADC</td>
<td class="paramDataType">ViReal64[]</td>
<td>Specifies an array of analog output voltages measured with the onboard calibration ADC.</td>
 </tr></table></body>
</html>    7�����  �    Status                           �   �  �    vi                               �� �  �  �    Voltages Measured Externally     � �� �  �    Voltages Measured With CalADC      	                      �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>[OBSOLETE] niFgen_ConfigureTriggerSource</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">[OBSOLETE] niFgen_ConfigureTriggerSource</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_ConfigureTriggerSource&nbsp;(ViSession&nbsp;vi, ViConstString&nbsp;channelName, ViInt32&nbsp;triggerSource);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Configures the trigger source. The signal generator responds to a trigger depending on the operation mode in which the signal generator is operating.</p>

<table class="Borderless-Wide">
<tr>
<td class="Icon"><img src="note.gif"></td>
<td>
<strong>Note</strong>&nbsp;&nbsp; The signal generator must not be in the Generating state when you call this function.</td></tr></table>

</body>
</html>

    p    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Trigger Source</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">triggerSource</td>
<td class="paramDataType">ViInt32</td>
<td>Controls which trigger source the signal generator uses.

<p class="Body"><strong><strong>Defined Values</strong></strong></p>

<table class="Bordered"><tr><td class="Bordered"><span class="monospace">NIFGEN_VAL_IMMEDIATE</span></td>
<td class="Bordered">Immediate</td></tr>

<tr><td class="Bordered"><span class="monospace">NIFGEN_VAL_EXTERNAL</span></td>
<td class="Bordered">External (maps to PFI 0)</td></tr>

<tr><td class="Bordered"><span class="monospace">NIFGEN_VAL_SOFTWARE_TRIG</span></td>
<td class="Bordered">Software trigger</td></tr>

<tr><td class="Bordered"><span class="monospace">NIFGEN_VAL_PXI_STAR</span></td>
<td class="Bordered">PXI star</td></tr>

<tr><td class="Bordered"><span class="monospace">NIFGEN_VAL_RTSI_0</span></td>
<td class="Bordered">RTSI 0 or PXI_Trig 0</td></tr>

<tr><td class="Bordered"><span class="monospace">NIFGEN_VAL_RTSI_1</span></td>
<td class="Bordered">RTSI 1 or PXI_Trig 1</td></tr>

<tr><td class="Bordered"><span class="monospace">NIFGEN_VAL_RTSI_2</span></td>
<td class="Bordered">RTSI 2 or PXI_Trig 2</td></tr>

<tr><td class="Bordered"><span class="monospace">NIFGEN_VAL_RTSI_3</span></td>
<td class="Bordered">RTSI 3 or PXI_Trig 3</td></tr>

<tr><td class="Bordered"><span class="monospace">NIFGEN_VAL_RTSI_4</span></td>
<td class="Bordered">RTSI 4 or PXI_Trig 4</td></tr>

<tr><td class="Bordered"><span class="monospace">NIFGEN_VAL_RTSI_5</span></td>
<td class="Bordered">RTSI 5 or PXI_Trig 5</td></tr>

<tr><td class="Bordered"><span class="monospace">NIFGEN_VAL_RTSI_6</span></td>
<td class="Bordered">RTSI 6 or PXI_Trig 6</td></tr>

<tr><td class="Bordered"><span class="monospace">NIFGEN_VAL_RTSI_7</span></td>
<td class="Bordered">RTSI 7 or PXI_Trig 7</td></tr>

<tr><td class="Bordered"><span class="monospace">NIFGEN_VAL_TTL0</span></td>
<td class="Bordered">TTL 0</td></tr>

<tr><td class="Bordered"><span class="monospace">NIFGEN_VAL_TTL1</span></td>
<td class="Bordered">TTL 1</td></tr>

<tr><td class="Bordered"><span class="monospace">NIFGEN_VAL_TTL2</span></td>
<td class="Bordered">TTL 2</td></tr>

<tr><td class="Bordered"><span class="monospace">NIFGEN_VAL_TTL3</span></td>
<td class="Bordered">TTL 3</td></tr>

<tr><td class="Bordered"><span class="monospace">NIFGEN_VAL_TTL4</span></td>
<td class="Bordered">TTL 4</td></tr>

<tr><td class="Bordered"><span class="monospace">NIFGEN_VAL_TTL5</span></td>
<td class="Bordered">TTL 5</td></tr>

<tr><td class="Bordered"><span class="monospace">NIFGEN_VAL_TTL6</span></td>
<td class="Bordered">TTL 6</td></tr>

<tr><td class="Bordered"><span class="monospace">NIFGEN_VAL_PFI_0</span></td>
<td class="Bordered">PFI 0</td></tr>

<tr><td class="Bordered"><span class="monospace">NIFGEN_VAL_PFI_1</span></td>
<td class="Bordered">PFI 1</td></tr>

<tr><td class="Bordered"><span class="monospace">NIFGEN_VAL_PFI_2</span></td>
<td class="Bordered">PFI 2</td></tr>

<tr><td class="Bordered"><span class="monospace">NIFGEN_VAL_PFI_3</span></td>
<td class="Bordered">PFI 3</td></tr></table>

<p class="Body"><strong>Default Value</strong>: <span class="monospace">NIFGEN_VAL_IMMEDIATE</span></p>
</td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>channelName</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">channelName</td>
<td class="paramDataType">ViConstString</td>
<td>Specifies the channel name for which you want to configure the trigger source.

<p class="Body"><strong>Defined Value:</strong>&quot;0&quot;</p>

</td>
 </tr></table></body>
</html>    ��#   �  �    vi                                7�#����  �    Status                           �� �  � �    Trigger Source                   p =  �  �    Channel Name                           	                    OExternal NIFGEN_VAL_EXTERNAL Immediate NIFGEN_VAL_IMMEDIATE PFI 0 NIFGEN_VAL_PFI_0 PFI 1 NIFGEN_VAL_PFI_1 PFI 2 NIFGEN_VAL_PFI_2 PFI 3 NIFGEN_VAL_PFI_3 Software Trigger NIFGEN_VAL_SOFTWARE_TRIG TTL0 NIFGEN_VAL_TTL0 TTL1 NIFGEN_VAL_TTL1 TTL2 NIFGEN_VAL_TTL2 TTL3 NIFGEN_VAL_TTL3 TTL4 NIFGEN_VAL_TTL4 TTL5 NIFGEN_VAL_TTL5 TTL6 NIFGEN_VAL_TTL6 TTL7 NIFGEN_VAL_TTL7 PXI STAR NIFGEN_VAL_PXI_STAR RTSI 0 NIFGEN_VAL_RTSI_0 RTSI 1 NIFGEN_VAL_RTSI_1 RTSI 2 NIFGEN_VAL_RTSI_2 RTSI 3 NIFGEN_VAL_RTSI_3 RTSI 4 NIFGEN_VAL_RTSI_4 RTSI 5 NIFGEN_VAL_RTSI_5 RTSI 6 NIFGEN_VAL_RTSI_6 RTSI 7 NIFGEN_VAL_RTSI_7    ""   	    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>[OBSOLETE] niFgen_CreateArbWaveform</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">[OBSOLETE] niFgen_CreateArbWaveform</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_CreateArbWaveform&nbsp;(ViSession&nbsp;vi, ViInt32&nbsp;waveformSize, ViReal64[]&nbsp;waveformDataArray, ViInt32*&nbsp;waveformHandle);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">[OBSOLETE] This function is obsolete.  Use the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_CreateWaveformF64.html')"><span class="monospace">niFgen_CreateWaveformF64</span></a>, <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_CreateWaveformI16.html')"><span class="monospace">niFgen_CreateWaveformI16</span></a>, or <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_CreateWaveformComplexF64.html')"><span class="monospace">niFgen_CreateWaveformComplexF64</span></a> function instead of this function.</p>

<p class="Body">Creates an arbitrary waveform and returns a handle that identifies that waveform. You can pass this handle to the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_ConfigureArbWaveform.html')"><span class="monospace">niFgen_ConfigureArbWaveform</span></a> function to produce that waveform. You can also use the handles this function returns to specify a sequence of arbitrary waveforms with the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_CreateArbSequence.html')"><span class="monospace">niFgen_CreateArbSequence</span></a> function.</p>

<table class="Borderless-Wide">
<tr>
<td class="Icon"><img src="note.gif"></td>
<td>
<strong>Note</strong>&nbsp;&nbsp;You must set the output mode to <span class="monospace">NIFGEN_VAL_OUTPUT_ARB</span> before calling this function.</td></tr></table>

<table class="Borderless-Wide">
<tr>
<td class="Icon"><img src="note.gif"></td>
<td>
<strong>Note</strong>&nbsp;&nbsp;You must scale the data between &#8211;1.00 and +1.00. Use the <strong>arbGain</strong> parameter to generate different output voltages.</td></tr></table>


</body>
</html>

    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Waveform Size</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">waveformSize</td>
<td class="paramDataType">ViInt32</td>
<td>Specifies the size of the arbitrary waveform that you want created.<br><br>The size must meet the following restrictions:<br><br>

<ul><li>The size must be less than or equal to the maximum waveform size that the device allows.</li>
<li>The size must be greater than or equal to the minimum waveform size that the device allows.</li>
<li>The size must be an integer multiple of the device waveform quantum.</li>
</ul>

<br><br>You can obtain these values from the <strong>maximumWaveformSize</strong>, <strong>minimumWaveformSize</strong>, and <strong>waveformQuantum</strong> parameters in the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_QueryArbWfmCapabilities.html')"><span class="monospace">niFgen_QueryArbWfmCapabilities</span></a> function.<br><br><strong><strong>Default Value</strong>:</strong> None<br><br></td>
 </tr></table></body>
</html>    7�%����  �    Status                            ��/   �  �    vi                               � ?  �  �    Waveform Size                    #� ? � �  �    Waveform Data Array              �# ?| �  �    Waveform Handle                 ���� � +��                                            	                       	            [This function has been obsoleted as of NI-FGEN 2.2.  Use niFgen_CreateWaveformF64 instead.   �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>[OBSOLETE] niFgen_CreateBinary16ArbWaveform</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">[OBSOLETE] niFgen_CreateBinary16ArbWaveform</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_CreateBinary16ArbWaveform&nbsp;(ViSession&nbsp;vi, ViInt32&nbsp;waveformSize, ViInt16[]&nbsp;waveformDataArray, ViInt32*&nbsp;waveformHandle);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">[OBSOLETE] This function is obsolete.  Use the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_CreateWaveformI16.html')"><span class="monospace">niFgen_CreateWaveformI16</span></a> function instead of this function.</p>

<p class="Body">Creates an arbitrary waveform from binary data and returns a handle that identifies that waveform. You can pass this handle to the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_ConfigureArbWaveform.html')"><span class="monospace">niFgen_ConfigureArbWaveform</span></a> function to produce that waveform. You can also use the handles this function returns to specify a sequence of arbitrary waveforms with the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_CreateArbSequence.html')"><span class="monospace">niFgen_CreateArbSequence</span></a> function.</p>

<table class="Borderless-Wide">
<tr>
<td class="Icon"><img src="note.gif"></td>
<td>
<strong>Note</strong>&nbsp;&nbsp;You must set the output mode to <span class="monospace">NIFGEN_VAL_OUTPUT_ARB</span> or <span class="monospace">NIFGEN_VAL_OUTPUT_SEQ</span> before calling this function.</td></tr></table>

</body>
</html>

    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Waveform Size</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">waveformSize</td>
<td class="paramDataType">ViInt32</td>
<td>Specifies the size of the arbitrary waveform that you want created.<br><br>The size must meet the following restrictions:

<ul><li> The size must be less than or equal to the maximum waveform size that the device allows.</li>
<li> The size must be greater than or equal to the minimum waveform size that the device allows.</li>
<li> The size must be an integer multiple of the device waveform quantum.</li>
</ul>

<br><br>You can obtain these values from the <strong>maximumWaveformSize</strong>, <strong>minimumWaveformSize</strong>, and <strong>waveformQuantum</strong> parameters in <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'cvinifgen_QueryArbWfmCapabilities.html')"><span class="monospace">niFgen_QueryArbWfmCapabilities</span></a>.<br><br><strong><strong>Default Value</strong>:</strong> None<br><br></td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Waveform Data Array</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">waveformDataArray</td>
<td class="paramDataType">ViInt16[]</td>
<td>Specifies the array of data you want to use for the new arbitrary waveform. The array must have at least as many elements as the value that you specify in <strong>waveformSize</strong>.

<p class="Body">You must normalize the data points in the array to be between &#8211;32768 and 32767.</p>

<p class="Body"><strong>Default Value</strong>: None</p>
</td>
 </tr></table></body>
</html>   " + $ �  �    Waveform Size                    &� + � �  �    Waveform Data Array              �# +� �  �    Waveform Handle                   �� 	  �  �    vi                                7�����  �    Status                          ���� � .��                                                    	                	           [This function has been obsoleted as of NI-FGEN 2.2.  Use niFgen_CreateWaveformI16 instead.   �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>[OBSOLETE] niFgen_ConfigureRefClockSource</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">[OBSOLETE] niFgen_ConfigureRefClockSource</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_ConfigureRefClockSource&nbsp;(ViSession&nbsp;vi, ViInt32&nbsp;referenceClockSource);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Configures the signal generator reference clock source. The signal generator uses the reference clock to derive frequencies and sample rates when generating waveforms.</p>

</body>
</html>

    S    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Reference Clock Source</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">referenceClockSource</td>
<td class="paramDataType">ViInt32</td>
<td>Specifies the reference clock source that you want the signal generator to use. NI-FGEN sets the <a href="javascript:LaunchMergedHelp('SigGenHelp.chm', 'fgencref.chm', 'NIFGEN_ATTR_REF_CLOCK_SOURCE.html')"><span class="monospace">NIFGEN_ATTR_REF_CLOCK_SOURCE</span></a> attribute to this value.

<p class="Body">The signal generator derives the frequencies and sample rates that it uses to generate waveforms from the source you specify.</p>

<p class="Body">For example, when you set this parameter to <span class="monospace">NIFGEN_VAL_REF_CLOCK_EXTERNAL</span>, the signal generator uses the signal it receives at its external clock terminal as the reference clock.</p>

<p class="Body"><strong><strong>Defined Values</strong></strong></p>

<table class="Bordered"><tr><td class="Bordered"><span class="monospace">NIFGEN_VAL_REF_CLOCK_INTERNAL</span></td>
<td class="Bordered">Internal clock source</td></tr>

<tr><td class="Bordered"><span class="monospace">NIFGEN_VAL_REF_CLOCK_EXTERNAL</span></td>
<td class="Bordered">External clock source</td></tr>

<tr><td class="Bordered"><span class="monospace">NIFGEN_VAL_REF_CLOCK_RTSI_CLOCK</span></td>
<td class="Bordered">RTSI clock</td></tr>

<tr><td class="Bordered"><span class="monospace">NIFGEN_VAL_REF_CLOCK_TTL7</span></td>
<td class="Bordered">TTL 7</td></tr>

<tr><td class="Bordered"><span class="monospace">NIFGEN_VAL_PXI_CLK10</span></td>
<td class="Bordered">PXI 10&nbsp;MHz clock</td></tr>

<tr><td class="Bordered"><span class="monospace">NIFGEN_VAL_REF_IN</span></td>
<td class="Bordered">External clock source</td></tr>

<tr><td class="Bordered"><span class="monospace">NIFGEN_VAL_RTSI_0</span></td>
<td class="Bordered">RTSI 0</td></tr>

<tr><td class="Bordered"><span class="monospace">NIFGEN_VAL_RTSI_1</span></td>
<td class="Bordered">RTSI 1</td></tr>

<tr><td class="Bordered"><span class="monospace">NIFGEN_VAL_RTSI_2</span></td>
<td class="Bordered">RTSI 2</td></tr>

<tr><td class="Bordered"><span class="monospace">NIFGEN_VAL_RTSI_3</span></td>
<td class="Bordered">RTSI 3</td></tr>

<tr><td class="Bordered"><span class="monospace">NIFGEN_VAL_RTSI_4</span></td>
<td class="Bordered">RTSI 4</td></tr>

<tr><td class="Bordered"><span class="monospace">NIFGEN_VAL_RTSI_5</span></td>
<td class="Bordered">RTSI 5</td></tr>

<tr><td class="Bordered"><span class="monospace">NIFGEN_VAL_RTSI_6</span></td>
<td class="Bordered">RTSI 6</td></tr>

<tr><td class="Bordered"><span class="monospace">NIFGEN_VAL_RTSI_7</span></td>
<td class="Bordered">RTSI 7</td></tr>

<tr><td class="Bordered"><span class="monospace">NIFGEN_VAL_CLK_IN</span></td>
<td class="Bordered">CLK IN front panel connector</td></tr></table>

<p class="Body"><strong>Default Value</strong>: <span class="monospace">NIFGEN_VAL_REF_CLOCK_INTERNAL</span></p>
</td>
</tr>
</table>
 </tr></table></body>
</html>    7�w���  �    Status                           -� = � � �    Reference Clock Source            ��   �  �    vi                                 	                     Internal NIFGEN_VAL_REF_CLOCK_INTERNAL External NIFGEN_VAL_REF_CLOCK_EXTERNAL RTSI Clock NIFGEN_VAL_REF_CLOCK_RTSI_CLOCK TTL 7 NIFGEN_VAL_REF_CLOCK_TTL7 PXI_CLK10 NIFGEN_VAL_PXI_CLK10 REF IN NIFGEN_VAL_REF_IN RTSI 0 NIFGEN_VAL_RTSI_0 RTSI 1 NIFGEN_VAL_RTSI_1 RTSI 2 NIFGEN_VAL_RTSI_2 RTSI 3 NIFGEN_VAL_RTSI_3 RTSI 4 NIFGEN_VAL_RTSI_4 RTSI 5 NIFGEN_VAL_RTSI_5 RTSI 6 NIFGEN_VAL_RTSI_6 RTSI 7 NIFGEN_VAL_RTSI_7 CLK IN NIFGEN_VAL_CLK_IN DDC CLK IN NIFGEN_VAL_DDC_CLK_IN Onboard Reference Clock NIFGEN_VAL_ONBOARD_REFERENCE_CLOCK       �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>[OBSOLETE] niFgen_ConfigureRefClockFrequency</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">[OBSOLETE] niFgen_ConfigureRefClockFrequency</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_ConfigureRefClockFrequency&nbsp;(ViSession&nbsp;vi, ViReal64&nbsp;referenceClockFrequency);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Configures the signal generator reference clock frequency.  The signal generator uses the reference clock to derive frequencies and sample rates when generating waveforms.</p>

<table class="Borderless-Wide">
<tr>
<td class="Icon"><img src="note.gif"></td>
<td>
<strong>Note</strong>&nbsp;&nbsp;  The signal generator must not be in the Generating state when you call this function.</td></tr></table>

</body>
</html>

    �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Reference Clock Frequency</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">referenceClockFrequency</td>
<td class="paramDataType">ViReal64</td>
<td>The reference clock frequency in Hz.

<p class="Body"><strong>Default Value</strong>: 10000000</p>

</td>
 </tr></table></body>
</html>    7�#����  �    Status                            ��-   �  �    vi                               @� a � �  `    Reference Clock Frequency          	               	10000000   f    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>[OBSOLETE] niFgen_ConfigureUpdateClockSource</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">[OBSOLETE] niFgen_ConfigureUpdateClockSource</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_ConfigureUpdateClockSource&nbsp;(ViSession&nbsp;vi, ViInt32&nbsp;updateClockSource);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Sets the source of the update clock of the signal generator.  The source can be internal or external.</p>
</body>
</html>

    	     <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>Update Clock Source</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">updateClockSource</td>
<td class="paramDataType">ViInt32</td>
<td>Specifies the update clock source.

<p class="Body"><strong><strong>Defined Values</strong></strong></p>

<table class="Bordered"><tr><td class="Bordered"><span class="monospace">NIFGEN_VAL_INTERNAL</span></td>
<td class="Bordered">Internal clock source</td></tr>

<tr><td class="Bordered"><span class="monospace">NIFGEN_VAL_EXTERNAL</span></td>
<td class="Bordered">External clock source</td></tr>

<tr><td class="Bordered"><span class="monospace">NIFGEN_VAL_PXI_STAR</span></td>
<td class="Bordered">PXI star</td></tr>

<tr><td class="Bordered"><span class="monospace">NIFGEN_VAL_RTSI_0</span></td>
<td class="Bordered">RTSI 0 or PXI_Trig 0</td></tr>

<tr><td class="Bordered"><span class="monospace">NIFGEN_VAL_RTSI_1</span></td>
<td class="Bordered">RTSI 1 or PXI_Trig 1</td></tr>

<tr><td class="Bordered"><span class="monospace">NIFGEN_VAL_RTSI_2</span></td>
<td class="Bordered">RTSI 2 or PXI_Trig 2</td></tr>

<tr><td class="Bordered"><span class="monospace">NIFGEN_VAL_RTSI_3</span></td>
<td class="Bordered">RTSI 3 or PXI_Trig 3</td></tr>

<tr><td class="Bordered"><span class="monospace">NIFGEN_VAL_RTSI_4</span></td>
<td class="Bordered">RTSI 4 or PXI_Trig 4</td></tr>

<tr><td class="Bordered"><span class="monospace">NIFGEN_VAL_RTSI_5</span></td>
<td class="Bordered">RTSI 5 or PXI_Trig 5</td></tr>

<tr><td class="Bordered"><span class="monospace">NIFGEN_VAL_RTSI_6</span></td>
<td class="Bordered">RTSI 6 or PXI_Trig 6</td></tr>

<tr><td class="Bordered"><span class="monospace">NIFGEN_VAL_RTSI_7</span></td>
<td class="Bordered">RTSI 7 or PXI_Trig 7</td></tr>

<tr><td class="Bordered"><span class="monospace">NIFGEN_VAL_CLK_IN</span></td>
<td class="Bordered">CLK IN front panel connector</td></tr>

<tr><td class="Bordered"><span class="monospace">NIFGEN_VAL_DDC_CLK_IN</span></td>
<td class="Bordered">Digital Data &amp; Control clock in</td></tr></table>

<p class="Body"><strong>Default Value</strong>: <span class="monospace">NIFGEN_VAL_INTERNAL</span></p>
</td>
</tr>
</table>
 </tr></table></body>
</html>    �� 	  �  �    vi                                7�����  �    Status                           E{ g � � �    Update Clock Source                    	                     �Internal NIFGEN_VAL_INTERNAL External NIFGEN_VAL_EXTERNAL TTL 0 NIFGEN_VAL_TTL0 TTL 1 NIFGEN_VAL_TTL1 TTL 2 NIFGEN_VAL_TTL2 TTL 3 NIFGEN_VAL_TTL3 TTL 4 NIFGEN_VAL_TTL4 TTL 5 NIFGEN_VAL_TTL5 TTL 6 NIFGEN_VAL_TTL6 RTSI 0 NIFGEN_VAL_RTSI_0 RTSI 1 NIFGEN_VAL_RTSI_1 RTSI 2 NIFGEN_VAL_RTSI_2 RTSI 3 NIFGEN_VAL_RTSI_3 RTSI 4 NIFGEN_VAL_RTSI_4 RTSI 5 NIFGEN_VAL_RTSI_5 RTSI 6 NIFGEN_VAL_RTSI_6 RTSI 7 NIFGEN_VAL_RTSI_7 CLK IN NIFGEN_VAL_CLK_IN DDC CLK IN NIFGEN_VAL_DDC_CLK_IN PXI STAR NIFGEN_VAL_PXI_STAR   0    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>[OBSOLETE] niFgen_SendSoftwareTrigger</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">[OBSOLETE] niFgen_SendSoftwareTrigger</h1>

<p class="syntax"><span class="monospace">ViStatus niFgen_SendSoftwareTrigger&nbsp;(ViSession&nbsp;vi);</span></p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Sends a command to trigger the signal generator.</p> 

<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&nbsp;&nbsp;This function can act as an override for an external edge trigger. However, the NI&nbsp;5401/5411/5431 
do not support overriding an external digital edge trigger.</td>
</tr>
</table>

</body>
</html>    7�#����  �    Status                            ��-   �  �    vi                                 	            ����         b  >4             K.        init                                                                                                                                    ����         @  ^Q             K.        InitWithOptions                                                                                                                         ����         `�  z"             K.        InitializeWithChannels                                                                                                                  ����         |H  ��             �.        Commit                                                                                                                                  ����         �  �f             K.        reset                                                                                                                                   ����         ��  �|             K.        close                                                                                                                                   ����         ��  �-             K.        ConfigureOperationMode                                                                                                                  ����         �O  ��             K.        ConfigureOutputMode                                                                                                                     ����         �  �              K.        ConfigureChannels                                                                                                                       ����         ��  ��             K.        ConfigureOutputEnabled                                                                                                                  ����         �   ��             K.        ConfigureOutputImpedance                                                                                                                ����         ��  �{             K.        EnableAnalogFilter                                                                                                                      ����         �i  �             K.        DisableAnalogFilter                                                                                                                     ����         ��  �{             K.        EnableDigitalFilter                                                                                                                     ����         �0  ��             K.        DisableDigitalFilter                                                                                                                    ����         �  �             K.        EnableDigitalPatterning                                                                                                                 ����         �i  �             K.        DisableDigitalPatterning                                                                                                                ����         �5 :             K.        ConfigureStandardWaveform                                                                                                               ����        � (~             K.        DefineUserStandardWaveform                                                                                                              ����        )� .y             K.        ClearUserStandardWaveform                                                                                                               ����        /. 3k             K.        ConfigureFrequency                                                                                                                      ����        4Y 8�             K.        ConfigureAmplitude                                                                                                                      ����        9� N�             K.        CreateFreqList                                                                                                                          ����        Qj d&             K.        ConfigureFreqList                                                                                                                       ����        e� l�             K.        ClearFreqList                                                                                                                           ����        m� ��             K.        QueryFreqListCapabilities                                                                                                               ����        �� �M             K.        ConfigureGain                                                                                                                           ����        �; �b             K.        ConfigureSampleRate                                                                                                                     ����        � �h             K.        QueryArbWfmCapabilities                                                                                                                 ����        �� ��             K.        CreateWaveformF64                                                                                                                       ����        �R �:             K.        CreateWaveformI16                                                                                                                       ����        ̢ ��             K.        CreateWaveformComplexF64                                                                                                                ����        �6 �/             K.        CreateWaveformFromFileI16                                                                                                               ����        �� �7             K.        CreateWaveformFromFileF64                                                                                                               ����        �� �             K.        CreateWaveformFromFileHWS                                                                                                               ����        � &�             K.        ConfigureArbWaveform                                                                                                                    ����        (Z 2]             K.        ClearArbWaveform                                                                                                                        ����        3 C1             K.        QueryArbSeqCapabilities                                                                                                                 ����        D� ^�             K.        CreateArbSequence                                                                                                                       ����        ` x         	    K.        CreateAdvancedArbSequence                                                                                                               ����        z6 ��             K.        ConfigureArbSequence                                                                                                                    ����        �� ��             K.        ClearArbSequence                                                                                                                        ����        �W ��             K.        ClearArbMemory                                                                                                                          ����        � ��             K.        AllocateWaveform                                                                                                                        ����        �� ��             K.        SetWaveformNextWritePosition                                                                                                            ����        �X ��             K.        WriteWaveform                                                                                                                           ����        �N ��             K.        WriteWaveformComplexF64                                                                                                                 ����        �> �)             K.        WriteBinary16Waveform                                                                                                                   ����        � ��             K.        WriteComplexBinary16Waveform                                                                                                            ����        �� �             K.        ConfigureReferenceClock                                                                                                                 ����        0 �             K.        ConfigureSampleClockSource                                                                                                              ����        � !�             K.        ConfigureClockMode                                                                                                                      ����        "� )�             K.        AdjustSampleClockRelativeDelay                                                                                                          ����        *b 95             K.        ConfigureDigitalEdgeStartTrigger                                                                                                        ����        ;� B�             K.        ConfigureP2PEndpointFullnessStartTrigger                                                                                                ����        C� E�             K.        ConfigureSoftwareEdgeStartTrigger                                                                                                       ����        FD H             K.        DisableStartTrigger                                                                                                                     ����        H� N�             K.        ConfigureDigitalEdgeScriptTrigger                                                                                                       ����        Rn X2             K.        ConfigureDigitalLevelScriptTrigger                                                                                                      ����        [� ^             K.        ConfigureSoftwareEdgeScriptTrigger                                                                                                      ����        _S aY             K.        DisableScriptTrigger                                                                                                                    ����        b� r�             K.        ConfigureTriggerMode                                                                                                                    ����        td �             K.        SendSoftwareEdgeTrigger                                                                                                                 ����        �� �F             K.        ConfigureSynchronization                                                                                                                ����        �� �p             C%        ExportSignal                                                                                                                            ����        �� �             J)        RouteSignalOut                                                                                                                          ����        � �             K.        AllocateNamedWaveform                                                                                                                   ����        �> �             K.        SetNamedWaveformNextWritePosition                                                                                                       ����        f 4             K.        WriteNamedWaveformF64                                                                                                                   ����        � s             K.        WriteNamedWaveformI16                                                                                                                   ����        � -�             K.        WriteNamedWaveformComplexF64                                                                                                            ����        /B ?             K.        WriteNamedWaveformComplexI16                                                                                                            ����        @x E�             K.        DeleteNamedWaveform                                                                                                                     ����        F� L�             K.        WriteScript                                                                                                                             ����        M� S�             K.        DeleteScript                                                                                                                            ����        T� _�             K.        ConfigureCustomFIRFilterCoefficients                                                                                                    ����        a n�             K.        GetFIRFilterCoefficients                                                                                                                ����        p= t�             K.        ManualEnableP2PStream                                                                                                                   ����        uw }5             K.        WriteP2PEndpointI16                                                                                                                     ����        ~k ��             K.        GetStreamEndpointHandle                                                                                                                 ����        �� ��             K.        SetAttributeViInt32                                                                                                                     ����              ��   �                                                                                                                                                ����        �' �t             K.        SetAttributeViInt64                                                                                                                     ����              ��   �                                                                                                                                                ����        � �^             K.        SetAttributeViReal64                                                                                                                    ����        �� �H             K.        SetAttributeViString                                                                                                                    ����        �� �8             K.        SetAttributeViBoolean                                                                                                                   ����        �� �'             K.        SetAttributeViSession                                                                                                                   ����        �� ��             K.        GetAttributeViInt32                                                                                                                     ����        � �             K.        GetAttributeViInt64                                                                                                                     ����        �D �g             K.        GetAttributeViReal64                                                                                                                    ����        �� �             K.        GetAttributeViString                                                                                                                    ����        r �             K.        GetAttributeViBoolean                                                                                                                   ����        � %              K.        GetAttributeViSession                                                                                                                   ����        &= -�             K.        CheckAttributeViInt32                                                                                                                   ����        /k 6�             K.        CheckAttributeViInt64                                                                                                                   ����        8� @/             K.        CheckAttributeViReal64                                                                                                                  ����        A� I�             K.        CheckAttributeViString                                                                                                                  ����        K? R�             K.        CheckAttributeViBoolean                                                                                                                 ����        Ty \             K.        CheckAttributeViSession                                                                                                                 ����        ]� bW             K.        ResetAttribute                                                                                                                          ����              ��   �                                                                                                                                                ����        cS {             K.        ImportAttributeConfigurationFile                                                                                                        ����        {� ��             K.        ExportAttributeConfigurationFile                                                                                                        ����        �a ��             K.        ImportAttributeConfigurationBuffer                                                                                                      ����        �� ë             K.        ExportAttributeConfigurationBuffer                                                                                                      ����        Ę �             K.        InitiateGeneration                                                                                                                      ����        �} �X             K.        AbortGeneration                                                                                                                         ����        �� �P             K.        SendSoftwareEdgeTrigger                                                                                                                 ����        �2 �             K.        GetHardwareState                                                                                                                        ����        �� �L             K.        WaitUntilDone                                                                                                                           ����        �� �             K.        IsDone                                                                                                                                  ����        �C �u             K.        ResetWithDefaults                                                                                                                       ����        �� �             K.        ResetDevice                                                                                                                             ����        � �Y             K.        Disable                                                                                                                                 ����        �� ��             K.        self_test                                                                                                                               ����        �� �             K.        revision_query                                                                                                                          ����        � �             K.        GetNextCoercionRecord                                                                                                                   ����        � "y             K.        error_query                                                                                                                             ����        #u ,             K.        ErrorHandler                                                                                                                            ����        -
 3m             K.        error_message                                                                                                                           ����        4i I9             K.        GetError                                                                                                                                ����        Ju Q3             K.        ClearError                                                                                                                              ����        Q� j�             K.        LockSession                                                                                                                             ����        k� ~             K.        UnlockSession                                                                                                                           ����        ~� ��             K.        GetNextInterchangeWarning                                                                                                               ����        �� ��             K.        ClearInterchangeWarnings                                                                                                                ����        �b ��             K.        ResetInterchangeCheck                                                                                                                   ����        �d ��             K.        InitExtCal                                                                                                                              ����        �� ��             K.        CloseExtCal                                                                                                                             ����        �� ��             K.        SelfCal                                                                                                                                 ����        �R ��             K.        InitializeAnalogOutputCalibration                                                                                                       ����        �P ɗ             K.        WriteBinary16AnalogStaticValue                                                                                                          ����        ʆ ڬ             K.        CalAdjustMainPathPreAmpOffset                                                                                                           ����        �� �             K.        CalAdjustMainPathPreAmpGain                                                                                                             ����        �� �             K.        CalAdjustMainPathPostAmpGainAndOffset                                                                                                   ����        �� B             K.        CalAdjustDirectPathGain                                                                                                                 ����        �              K.        CalAdjustMainPathOutputImpedance                                                                                                        ����        � *�             K.        CalAdjustDirectPathOutputImpedance                                                                                                      ����        - 2�             K.        InitializeOscillatorFrequencyCalibration                                                                                                ����        3 <<             K.        CalAdjustOscillatorFrequency                                                                                                            ����        =* B             K.        InitializeCalADCCalibration                                                                                                             ����        B� J�             K.        WriteBinary16AnalogStaticValue                                                                                                          ����        K� V`             K.        CalAdjustADC                                                                                                                            ����        X$ e�             K.        ReadCalADC                                                                                                                              ����        f� k3             K.        InitializeFlatnessCalibration                                                                                                           ����        k� }&             K.        CalAdjustFlatness                                                                                                                       ����        �� ��             K.        GetSelfCalSupported                                                                                                                     ����        �� �             K.        GetSelfCalLastDateAndTime                                                                                                               ����        �� �f             K.        GetExtCalLastDateAndTime                                                                                                                ����        �% �             K.        GetSelfCalLastTemp                                                                                                                      ����        �� ��             K.        GetExtCalLastTemp                                                                                                                       ����        �� �x             K.        GetExtCalRecommendedInterval                                                                                                            ����        �3 ��             K.        ChangeExtCalPassword                                                                                                                    ����        �� ˒             K.        SetCalUserDefinedInfo                                                                                                                   ����        �E ԭ             K.        GetCalUserDefinedInfo                                                                                                                   ����        �` ܏             K.        GetCalUserDefinedInfoMaxSize                                                                                                            ����        �J �1             K.        ReadCurrentTemperature                                                                                                                  ����        �� �Z             K.        RestoreLastExtCalConstants                                                                                                              ����        �� �}             K.        CalAdjustCalADC                                                                                                                         ����        �i W             K.        ConfigureTriggerSource                                                                                                                  ����        � O             K.        CreateArbWaveform                                                                                                                       ����         )U             K.        CreateBinary16ArbWaveform                                                                                                               ����        + :             K.        ConfigureRefClockSource                                                                                                                 ����        <� BR             K.        ConfigureRefClockFrequency                                                                                                              ����        C N�             K.        ConfigureUpdateClockSource                                                                                                              ����        QT T�             K.        SendSoftwareTrigger                                                                                                                           n                                                                                     �Initialize                                                                           �Initialize With Options                                                              �Initialize With Channels                                                             �Commit                                                                               �Reset                                                                                �Close                                                                               MConfiguration Functions                                                              �Configure Operation Mode                                                             �Configure Output Mode                                                                �Configure Channels                                                                   �Configure Output Enabled                                                             �Configure Output Impedance                                                           �Enable Analog Filter                                                                 �Disable Analog Filter                                                                �Enable Digital Filter                                                                �Disable Digital Filter                                                               �Enable Digital Patterning                                                            �Disable Digital Patterning                                                          �Standard Function Output                                                             �Configure Standard Waveform                                                          �Define User Standard Waveform                                                        �Clear User Standard Waveform                                                         �Configure Frequency                                                                  �Configure Amplitude                                                                 vFrequency List Output                                                                �Create Frequency List                                                                �Configure Frequency List                                                             �Clear Frequency List                                                                 �Query Freq List Capabilities                                                        	Arbitrary Waveform Output                                                            �Configure Gain                                                                       �Configure Sample Rate                                                                �Query Arb Waveform Capabilities                                                      �Create Waveform F64                                                                  �Create Waveform I16                                                                  �Create Waveform Complex F64                                                          �Create Waveform From File I16                                                        �Create Waveform From File F64                                                        �Create Waveform From File HWS                                                        �Configure Arbitrary Waveform                                                         �Clear Arbitrary Waveform                                                            	�Arbitrary Sequence Output                                                            �Query Arb Sequence Capabilities                                                      �Create Arbitrary Sequence                                                            �Create Advanced Arb Sequence                                                         �Configure Arbitrary Sequence                                                         �Clear Arbitrary Sequence                                                             �Clear Arbitrary Memory                                                              
WIncremental Waveform Write                                                           �Allocate Waveform                                                                    �Set Waveform Next Write Position                                                     �Write Waveform                                                                       �Write Waveform Complex F64                                                           �Write Binary 16 Waveform                                                             �Write Complex Binary 16 Waveform                                                    @Configure Clock                                                                      �Configure Reference Clock                                                            �Configure Sample Clock Source                                                        �Configure Clock Mode                                                                 �Adjust Sample Clock Relative Delay                                                  �Triggering and Synchronization                                                       �Configure Digital Edge Start Trigger                                                 �Configure P2P Endpoint Fullness Start Trigger                                        �Configure Software Edge Start Trigger                                                �Disable Start Trigger                                                                �Configure Digital Edge Script Trigger                                                �Configure Digital Level Script Trigger                                               �Configure Software Edge Script Trigger                                               �Disable Script Trigger                                                               �Configure Trigger Mode                                                               �Send Software Edge Trigger                                                           �Configure Synchronization                                                            �Export Signal                                                                       5404 Routing                                                                         �Route Signal Out                                                                    �Script Output                                                                        �Allocate Named Waveform                                                              �Set Named Waveform Next Write Position                                               �Write Named Waveform F64                                                             �Write Named Waveform I16                                                             �Write Named Waveform Complex F64                                                     �Write Named Waveform Complex I16                                                     �Delete Named Waveform                                                                �Write Script                                                                         �Delete Script                                                                       Configure Onboard Signal Processing                                                  �Configure Custom FIR Filter Coefficients                                             �Get FIR Filter Coefficients                                                         �Configure Peer-to-Peer (P2P)                                                         �Manual Enable P2P Stream                                                             �Write P2P Endpoint I16                                                               �Get Stream Endpoint Handle                                                          �Set/Get/Check Attribute                                                             6Set Attribute                                                                       dSet Attribute ViInt32                                                               dSet Attribute ViInt64                                                                �Set Attribute ViReal64                                                               �Set Attribute ViString                                                               �Set Attribute ViBoolean                                                              �Set Attribute ViSession                                                             �Get Attribute                                                                        �Get Attribute ViInt32                                                                �Get Attribute ViInt64                                                                �Get Attribute ViReal64                                                               �Get Attribute ViString                                                               �Get Attribute ViBoolean                                                              �Get Attribute ViSession                                                             QCheck Attribute                                                                      �Check Attribute ViInt32                                                              �Check Attribute ViInt64                                                              �Check Attribute ViReal64                                                             �Check Attribute ViString                                                             �Check Attribute ViBoolean                                                            �Check Attribute ViSession                                                           �Reset Attribute                                                                     dReset Attribute                                                                     :Import/Export Attribute Configuration                                                �Import Attribute Configuration File                                                  �Export Attribute Configuration File                                                  �Import Attribute Configuration Buffer                                                �Export Attribute Configuration Buffer                                               �Waveform Control                                                                     �Initiate Generation                                                                  �Abort Generation                                                                     �Send Software Edge Trigger                                                          Utility Functions                                                                    �Get Hardware State                                                                   �Wait Until Done                                                                      �Is Done                                                                              �Reset With Defaults                                                                  �Reset Device                                                                         �Disable                                                                              �Self-Test                                                                            �Revision Query                                                                      ~Coercion Info                                                                        �Get Next Coercion Record                                                            �Error Info                                                                           �Error-Query                                                                          �Error Handler                                                                        �Error Message                                                                        �Get Error                                                                            �Clear Error                                                                         Locking                                                                              �Lock Session                                                                         �Unlock Session                                                                      �Interchangeability Info                                                              �Get Next Interchange Warning                                                         �Clear Interchange Warnings                                                           �Reset Interchange Check                                                             �Calibration                                                                          �Initialize External Calibration                                                      �Close External Calibration                                                           �Self Calibrate                                                                      )Analog Output Calibration                                                            �Initialize Analog Output Calibration                                                 �Write Binary 16 Analog Static Value                                                  �Cal Adjust Main Path Pre Amp Offset                                                  �Cal Adjust Main Path Pre Amp Gain                                                    �Cal Adjust Main Path Post Amp Gain And Offset                                        �Cal Adjust Direct Path Gain                                                          �Cal Adjust Main Path Output Impedance                                                �Cal Adjust Direct Path Output Impedance                                             �Oscillator Calibration                                                               �Initialize Oscillator Frequency Calibration                                          �Cal Adjust Oscillator Frequency                                                      Cal ADC Calibration                                                                  �Initialize Cal ADC Calibration                                                       �Write Binary 16 Analog Static Value                                                  �Cal Adjust ADC                                                                       �Read Cal ADC                                                                        �Flatness Calibration                                                                 �Initialize Flatness Calibration                                                      �Cal Adjust Flatness                                                                 Calibration Utility Functions                                                        �Get Self Cal Supported                                                               �Get Self Cal Last Date And Time                                                      �Get Ext Cal Last Date And Time                                                       �Get Self Cal Last Temp                                                               �Get Ext Cal Last Temp                                                                �Get Ext Cal Recommended Interval                                                     �Change Ext Cal Password                                                              �Set Cal User Defined Info                                                            �Get Cal User Defined Info                                                            �Get Cal User Defined Info Max Size                                                   �Read Current Temperature                                                             �Restore Last Ext Cal Constants                                                      Obsolete Functions                                                                   �Cal Adjust Cal ADC                                                                   �Configure Trigger Source                                                             �Create Arbitrary Waveform                                                            �Create Binary 16 Arb Waveform                                                        �Configure Ref Clock Source                                                           �Configure Ref Clock Frequency                                                        �Configure Update Clock Source                                                        �Send Software Trigger                                                                 
niTClk.fp 