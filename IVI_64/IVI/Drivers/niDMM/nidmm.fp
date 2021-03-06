s��        r�   � 'x  Kx   �   ����                               niDMM                           National Instruments Digital Multimeters                                                                 	�  ViChar[ ]     � ��ViAttr     � ��ViConstString     � ��ViInt16     �  	ViReal64[ ]     � ��ViInt32     � ��ViReal64     	� 	��ViBoolean     � ��ViString     	� 	��ViSession     � ��ViStatus     � ��ViUInt32     � ��ViAddr   Y    Use the NI-DMM Configuration functions for hardware-specific configuration and control.     Z    Use the NI-DMM Measurement Options functions for additional configuration functionality.     t    Use the NI-DMM Capacitance and Inductance functions for controlling the capacitance and inductance on the NI 4072.     b    Use the NI-DMM Trigger functions to customize the triggering functionality for your application.     o    Use the NI-DMM Actual Values functions to return optional values such as aperture time and auto range values.     f    Use the NI-DMM Set/Get/Check attributes to set, query, or verify the validity of an attribute value.     ~    Use the NI-DMM Set Attribute functions to set the value of a ViBoolean, VIInt32, VIReal64, ViSession, or ViString attribute.     �    Use the NI-DMM Get Attribute functions to query the value of a ViBoolean, VIInt32, VIReal64, ViSession, or ViString attribute.     �    Use the NI-DMM Get Attribute functions to check the validity of  the value you specify for a ViBoolean, VIInt32, VIReal64, ViSession, or ViString attribute.     c    This class contains functions that transfer attribute configurations between instrument sessions.     J    Use the NI-DMM Acquisition functions to acquire data from a measurement.     i    Use the NI-DMM Calibration functions to perform a self-calibration or an external calibration on a DMM.     �    Use the NI-DMM External Calibration functions to perform an external calibration on a DMM. Refer to the calibration document for each  device for more information.     f    Use the NI-DMM Calibration Utility functions for optional functionality when performing calibration.     R    Use the NI-DMM Utility functions for optional functionality in your application.     _    Use the NI-DMM Error Handling function to get or clear error information in your application.     W    Use the NI-DMM Locking functions to obtain or release a lock on an intrument session.     }    Use the NI-DMM Interchangeability Info functions to handle the interchangeability warnings associated with the IVI session.     l    Use the NI-DMM Coercion Info functions to handle the coercion information associated with the IVI session.    �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_init</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>

<h1 class="function">niDMM_init</h1>

<p class="syntax">ViStatus = niDMM_init(ViString Resource_Name, ViBoolean ID_Query, ViBoolean Reset_Device, ViSession* Instrument_Handle)</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">This function completes the following tasks:</p>
<UL>
<LI>Creates a new IVI instrument driver session.</LI>
<LI>Opens a session to the device you specify for the <strong>Resource_Name</strong> parameter. </LI></UL>
<UL>
<LI>If the <strong>ID_Query</strong> parameter is set to VI_TRUE (1), this function queries the instrument ID and checks that it is valid for this instrument driver.</LI></UL>
<UL>
<LI>If the <strong>Reset_Device</strong> parameter is set to VI_TRUE (1), this function resets the instrument to a known state. Sends initialization commands to set the instrument to the state necessary for the operation of the instrument driver.</LI></UL>
<UL>
<LI>Returns a ViSession handle that you use to identify the instrument in all subsequent instrument driver function calls.</LI></UL>

</body>
</html>    	    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Status</td>
<td class="paramDataType">ViStatus</td>
<td>Reports the <strong>Status</strong> of this operation. To obtain a text description of the status code, call  
<a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'cviniDMM_GetErrorMessage.html')"><span class="Monospace"> niDMM_GetErrorMessage</span></a>. To obtain additional information concerning the error condition, use 
<a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'cviniDMM_GetError.html')"><span class="Monospace"> niDMM_GetError</span></a>.</td>
</tr>
</table>

</body>
</html>        <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Resource_Name</td>
<td class="paramDataType">ViString</td>
<td>Contains the <strong>Resource_Name</strong> of the device to initialize. The <strong>Resource_Name</strong> is assigned in Measurement &#38; Automation Explorer (MAX). 

Refer to <a href="javascript:LaunchHelp('dmm.chm::/related_documentation.html')"> Related Documentation</a> for the <em>NI&#160;Digital Multimeters Getting Started Guide</em> for more information about configuring and testing the DMM in MAX.<br><br>Valid Syntax:<br><br>

<ul>
<li><span class="Monospace">NI-DAQmx name</span></li>
<li><span class="Monospace">DAQ::NI-DAQmx name[::INSTR]</span></li>
<li><span class="Monospace">DAQ::Traditional NI-DAQ device number[::INSTR]</span></li>
<li><span class="Monospace">IVI logical name</span></li>
</ul>

<table class="Borderless">
<tr>
<td class="Icon"><img src="caution.gif"></td>
<td>
<span class="Dark-Red"><strong>Caution</strong>&#160;&#160;All IVI names for the <strong>Resource_Name</strong>, such as logical names or virtual names, are case-sensitive. If you use logical names, driver session names, or virtual names in your program, you must make sure that the name you use matches the name in the IVI Configuration Store file exactly, without any variations in the case of the characters in the name.
</span>
</td>
</tr>
</table>

</td>
</tr>
</table>
</body>
</html>        <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">ID_Query</td>
<td class="paramDataType">ViBoolean</td>
<td>Verifies that the 
device you initialize is one that the driver supports. NI-DMM 
automatically performs this query, so setting this parameter is not necessary.<br><br>Defined Values:<br><br>

<table class="bordered">
<tr>
<td class="Bordered">VI_TRUE (default)</td>
<td class="Bordered">1</td>
<td class="Bordered">Perform ID Query</td>
</tr>
<tr>
<td class="Bordered">VI_FALSE</td>
<td class="Bordered">0</td>
<td class="Bordered">Skip ID Query</td>
</tr>
</table>
</td>

</tr>
</table>
</body>
</html>
    �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">

</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Reset_Device</td>
<td class="paramDataType">ViBoolean</td>
<td>Specifies whether to reset the instrument during the initialization procedure.<br><br>Defined Values:<br><br>

<table class="bordered">
<tr>
<td class="Bordered">VI_TRUE (default)</td>
<td class="Bordered">1</td>
<td class="Bordered">Reset Device</td>
</tr>
<tr>
<td class="Bordered">VI_FALSE</td>
<td class="Bordered">0</td>
<td class="Bordered">Don't Reset</td>
</tr>
</table>
</td>
</tr>
</table>

</body>
</html>
    �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">

</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Instrument_Handle</td>
<td class="paramDataType">ViSession*</td>
<td>Returns a ViSession handle that you use to identify the instrument in all subsequent instrument driver function calls.</td>
</tr>
</table>

</body>
</html>





    G
����  �    Status                            X -   �  �    Resource Name                     z - � � �    ID  Query                         � -� � �    Reset Device                      < �  �  �    Instrument Handle                  	            "DAQ::1::INSTR"              False VI_FALSE True VI_TRUE              False VI_FALSE True VI_TRUE    	           �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_InitWithOptions</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>

<h1 class="function">niDMM_InitWithOptions</h1>

<p class="syntax">ViStatus = niDMM_InitWithOptions(ViString Resource_Name, ViBoolean ID_Query, ViBoolean Reset_Device, ViString Option_String, ViSession* Instrument_Handle)</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">This function completes the following tasks:</p>
<UL>

<LI>Creates a new IVI instrument driver session and, optionally, sets the initial state of the following session attributes:
<a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'caNIDMM_ATTR_RANGE_CHECK.html')"><span class="Monospace"> RangeCheck</span></a>, <a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'caNIDMM_ATTR_QUERY_INSTR_STATUS.html')"><span class="Monospace"> QueryInstrStatus</span></a>, <a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'caNIDMM_ATTR_CACHE.html')"><span class="Monospace"> Cache</span></a>, <a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'caNIDMM_ATTR_SIMULATE.html')"><span class="Monospace"> Simulate</span></a>, <a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'caNIDMM_ATTR_RECORD_COERCIONS.html')"><span class="Monospace"> Recordcoercions</span></a>.</li>

<LI>Opens a session to the device you specify for the <strong>Resource_Name</strong> parameter. If the <strong>ID_Query</strong> parameter is set to VI_TRUE, this function queries the instrument ID and checks that it is valid for this instrument driver. </li>

<LI>If the <strong>Reset_Device</strong> parameter is set to VI_TRUE, this function resets the instrument to a known state. Sends initialization commands to set the instrument to the state necessary for the operation of the instrument driver. </li>

<LI>Returns a ViSession handle that you use to identify the instrument in all subsequent instrument driver function calls.</LI></UL>

</body>
</html>    	�    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Option_String</td>
<td class="paramDataType">ViString</td>
<td>Sets the initial value of certain attributes for the session. The following table specifies the attribute name, attribute constant, and default value for each attribute that you can use in this parameter:
<br><br>
<table class="Bordered">
<tr>
<td class="Bordered">Check</td>
<td class="Bordered"><span class="Monospace">NIDMM_ATTR_RANGE_CHECK</span></td>
<td class="Bordered">VI_TRUE</td>
<td class="Bordered">1</td>
</tr>
<tr>
<td class="Bordered">QueryInstrStatus</td>
<td class="Bordered"><span class="Monospace">NIDMM_ATTR_QUERY_INSTR_STATUS</span></td>
<td class="Bordered">VI_FALSE</td>
<td class="Bordered">0</td>
</tr>
<tr>
<td class="Bordered">Cache</td>
<td class="Bordered"><span class="Monospace">NIDMM_ATTR_CACHE</span></td>
<td class="Bordered">VI_TRUE</td>
<td class="Bordered">1</td>
</tr>
<tr>
<td class="Bordered">Simulate</td>
<td class="Bordered"><span class="Monospace">NIDMM_ATTR_SIMULATE</span></td>
<td class="Bordered">VI_FALSE</td>
<td class="Bordered">0</td>
</tr>
<tr>
<td class="Bordered">RecordCoercions</td>
<td class="Bordered"><span class="Monospace">NIDMM_ATTR_RECORD_COERCIONS</span></td>
<td class="Bordered">VI_FALSE</td>
<td class="Bordered">0</td>
</tr>
<tr>
<td class="Bordered">DriverSetup</td>
<td class="Bordered"><span class="Monospace">NIDMM_ATTR_DRIVER_SETUP</span></td>
<td class="Bordered">&#34;&#34; (empty string)</td>
<td class="Bordered">&#34;&#34;</td>
</tr>
</table>
<P class="Body">The format of this string is, <span class="Monospace">&#34;AttributeName=Value.&#34;</span> To set multiple attributes, separate their assignments with a comma. </p>
<P class="Body">If you pass NULL or an empty string for this parameter, the session uses the default values for the attributes. You can override the default values by assigning a value explicitly in an <strong>Option_String</strong> parameter. You do not have to specify all of the attributes and may leave any of them out (those left out use the default value).</p>

<p class="Body">Refer to <a href="javascript:LaunchHelp('dmm.chm::/simulation.html')"> Simulating NI&#160;Digital Multimeters</a> for more information.</p>



</td>
</tr>
</table>
</body>
</html>    �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Instrument_Handle</td>
<td class="paramDataType">ViSession*</td>
<td>Returns a ViSession handle that you use to identify the instrument in all subsequent instrument driver function calls.</td>
</tr>
</table>

</body>
</html>





    G
����  �    Status                            X -   �  �    Resource Name                     z - � � �    ID  Query                         � -� � �    Reset Device                      )� �  �  �    Option String                     3 � � �  �    Instrument Handle                  	            "DAQ::1::INSTR"              False VI_FALSE True VI_TRUE              False VI_FALSE True VI_TRUE    5"Simulate=0,RangeCheck=1,QueryInstrStatus=0,Cache=1"    	           �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_close</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>

<h1 class="function">niDMM_close</h1>

<p class="syntax">ViStatus = niDMM_close(ViSession Instrument_Handle)</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Closes the specified session and deallocates resources that it reserved.</body>
</html>    �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Instrument_Handle</td>
<td class="paramDataType">ViSession</td>
<td>Identifies a particular instrument session. You obtain the <strong>Instrument_Handle</strong> parameter from <a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'cviniDMM_init.html')"><span class="Monospace"> niDMM_init</span></a> or <a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'cviniDMM_InitWithOptions.html')"><span class="Monospace"> niDMM_InitWithOptions</span></a>. The default is None.  

</td>
</tr>
</table>
</body>
</html>
    G
����  �    Status                            8�
   �  �    Instrument Handle                  	                   <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_ConfigureMeasurementDigits</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>

<h1 class="function">niDMM_ConfigureMeasurementDigits</h1>

<p class="syntax">
ViStatus = niDMM_ConfigureMeasurementDigits(ViSession Instrument_Handle, ViInt32 Measurement_Function, ViReal64 Range, ViReal64 Resolution_Digits)</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Configures the common attributes of the measurement. These attributes include <a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'caNIDMM_ATTR_FUNCTION.html')"><span class="Monospace"> NIDMM_ATTR_FUNCTION</span></a>, <a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'caNIDMM_ATTR_RANGE.html')"><span class="Monospace"> NIDMM_ATTR_RANGE</span></a>, and <a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'caNIDMM_ATTR_RESOLUTION_DIGITS.html')"><span class="Monospace"> NIDMM_ATTR_RESOLUTION_DIGITS</span></a>.

</body>
</html>    D    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Measurement_Function</td>
<td class="paramDataType">ViInt32</td>
<td>Specifies the <strong>Measurement_Function</strong> used to acquire the measurement. The driver sets <a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'caNIDMM_ATTR_FUNCTION.html')"><span class="Monospace"> NIDMM_ATTR_FUNCTION</span></a> to this value. 

</td>
</tr>
</table>
</body>
</html>
    
c    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>

<td class="paramName">Range</td>

<td class="paramDataType">ViReal64</td>

<td>Specifies the range for the function specified in the <strong>Measurement_Function</strong> parameter. When frequency is specified in the <strong>Measurement_Function</strong> parameter, you must supply the minimum frequency expected in the <strong>Range</strong> parameter. For example, you must type in 100 Hz if you are measuring 101 Hz or higher.

<br><br>For all other functions, you must supply a range that exceeds the value that you are measuring. For example, you must type in 10 V if you are measuring 9 V. Range values are coerced up to the closest input range. Refer to the <a href="javascript:LaunchHelp('dmm.chm::/devices.html')">Devices Overview</a> for a list of valid ranges. The driver sets
<a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'caNIDMM_ATTR_RANGE.html')"><span class="Monospace"> NIDMM_ATTR_RANGE</span></a> to this value. The default is 0.02 V.<br><br> 

<table class="Borderless-Wide">
<tr>
<td class="Icon"><img src="note.gif"></td>
<td>
<strong>Note</strong>&#160;&#160;The NI&#160;4050, NI&#160;4060, and NI&#160;4065 only support Auto Range when the trigger and sample trigger are set to IMMEDIATE.</td></tr></table>
<br>

<table class="Bordered">
<tr>
<td class="Bordered">NIDMM_VAL_AUTO_RANGE_ON</td>
<td class="Bordered"><span class="nobreak">-1.0</span></td>
<td class="Bordered">NI-DMM performs an Auto Range before acquiring the measurement.</td>
</tr>

<tr>
<td class="Bordered">NIDMM_VAL_AUTO_RANGE_OFF</td>
<td class="Bordered"><span class="nobreak">-2.0</span></td>
<td class="Bordered">NI-DMM sets the Range to the current <a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'caNIDMM_ATTR_AUTO_RANGE_VALUE.html')"><span class="Monospace"> NIDMM_ATTR_AUTO_RANGE_VALUE</span></a> and uses this range<br> for all subsequent measurements until the measurement configuration is changed.</td>
</tr>

<tr>
<td class="Bordered">NIDMM_VAL_AUTO_RANGE_ONCE</td>
<td class="Bordered"><span class="nobreak">-3.0</span></td>
<td class="Bordered">NI-DMM performs an Auto Range before acquiring the measurement. The <a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'caNIDMM_ATTR_AUTO_RANGE_VALUE.html')"><span class="Monospace"> NIDMM_ATTR_AUTO_RANGE_VALUE</span></a> is stored and used for all subsequent measurements until the measurement configuration is changed.</td>
</tr>
</table>

</td>
</tr>
</table>
</body>
</html>    �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>

<td class="paramName">Resolution_Digits</td>

<td class="paramDataType">ViReal64</td>

<td>Specifies the resolution of the measurement in digits. The driver sets the <a href="javascript:LaunchHelp('dmm.chm::/devices.html')">Devices Overview</a> for a list of valid ranges. The driver sets
<a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'caNIDMM_ATTR_RESOLUTION_DIGITS.html')"><span class="Monospace"> NIDMM_ATTR_RESOLUTION_DIGITS</span></a> attribute to this value. The PXIe-4080/4081/4082 uses the resolution you specify. The NI 4065 and NI 4070/4071/4072 ignore this parameter when the <strong>Range</strong> parameter is set to NIDMM_VAL_AUTO_RANGE_ON (-1.0) or NIDMM_VAL_AUTO_RANGE_ONCE (-3.0). The default is 5&#189;.<br><br> 

<table class="Borderless-Wide">
<tr>
<td class="Icon"><img src="note.gif"></td>
<td>
<strong>Note</strong>&#160;&#160;NI-DMM ignores this parameter for capacitance and inductance measurements on the NI&#160;4072. To achieve better resolution for such measurements, use the <a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'caNIDMM_ATTR_LC_NUMBER_MEAS_TO_AVERAGE.html')"><span class="Monospace"> NIDMM_ATTR_LC_NUMBER_MEAS_TO_AVERAGE</span></a> attribute.</td></tr></table>

</td>
</tr>
</table>
</body>
</html>    G
����  �    Status                            8�
   �  �    Instrument Handle                 @ -  � �    Measurement Function              BS - � �  �    Range                             L� -� � �    Resolution Digits                  	                          �DC Volts NIDMM_VAL_DC_VOLTS AC Volts NIDMM_VAL_AC_VOLTS DC Current NIDMM_VAL_DC_CURRENT AC Current NIDMM_VAL_AC_CURRENT 2-Wire Resistance NIDMM_VAL_2_WIRE_RES 4-Wire Resistance NIDMM_VAL_4_WIRE_RES Diode NIDMM_VAL_DIODE Frequency NIDMM_VAL_FREQ Period NIDMM_VAL_PERIOD AC Volts DC Coupled NIDMM_VAL_AC_VOLTS_DC_COUPLED Capacitance NIDMM_VAL_CAPACITANCE Inductance NIDMM_VAL_INDUCTANCE Temperature NIDMM_VAL_TEMPERATURE    0.02              (3.5 3.5 4.5 4.5 5.5 5.5 6.5 6.5 7.5 7.5   !    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_ConfigureMeasurementAbsolute</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>

<h1 class="function">niDMM_ConfigureMeasurementAbsolute</h1>

<p class="syntax">
ViStatus = niDMM_ConfigureMeasurementAbsolute(ViSession Instrument_Handle, ViInt32 Measurement_Function, ViReal64 Range, ViReal64 Resolution_Absolute)</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Configures the common attributes of the measurement. These attributes include
<a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'caNIDMM_ATTR_FUNCTION.html')"><span class="Monospace"> NIDMM_ATTR_FUNCTION</span></a>, <a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'caNIDMM_ATTR_RANGE.html')"><span class="Monospace"> NIDMM_ATTR_RANGE</span></a>, and <a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'caNIDMM_ATTR_RESOLUTION_ABSOLUTE.html')"><span class="Monospace"> NIDMM_ATTR_RESOLUTION_ABSOLUTE</span></a>.

</body>
</html>    
�    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>

<td class="paramName">Range</td>

<td class="paramDataType">ViReal64</td>

<td>Specifies the <strong>Range</strong> for the function specified in the <strong>Measurement_Function</strong> parameter. When frequency is specified in the <strong>Measurement_Function</strong> parameter, you must supply the minimum frequency expected in the <strong>Range</strong> parameter. For example, you must type in 100 Hz if you are measuring 101 Hz or higher.

<br><br>For all other functions, you must supply a <strong>Range</strong> that exceeds the value that you are measuring. For example, you must type in 10 V if you are measuring 9 V. <strong>Range</strong> values are coerced up to the closest input <strong>Range</strong>. Refer to the <a href="javascript:LaunchHelp('dmm.chm::/devices.html')">Devices Overview</a> for a list of valid ranges.

The driver sets <a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'caNIDMM_ATTR_RANGE.html')"><span class="Monospace"> NIDMM_ATTR_RANGE</span></a> to this value. The default is 0.02 V.<br><br> 

<table class="Borderless-Wide">
<tr>
<td class="Icon"><img src="note.gif"></td>
<td>
<strong>Note</strong>&#160;&#160;The NI&#160;4050, NI&#160;4060, and NI&#160;4065 only support Auto Range when the trigger and sample trigger are set to IMMEDIATE.</td></tr></table>
<br>

<table class="Bordered">
<tr>
<td class="Bordered">NIDMM_VAL_AUTO_RANGE_ON</td>
<td class="Bordered"><span class="nobreak">-1.0</span></td>
<td class="Bordered">NI-DMM performs an Auto Range before acquiring the measurement.</td>
</tr>

<tr>
<td class="Bordered">NIDMM_VAL_AUTO_RANGE_OFF</td>
<td class="Bordered"><span class="nobreak">-2.0</span></td>
<td class="Bordered">NI-DMM sets the Range to the current <a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'caNIDMM_ATTR_AUTO_RANGE_VALUE.html')"><span class="Monospace"> NIDMM_ATTR_AUTO_RANGE_VALUE</span></a> and uses this range<br> for all subsequent measurements until the measurement configuration is changed.</td>
</tr>

<tr>
<td class="Bordered">NIDMM_VAL_AUTO_RANGE_ONCE</td>
<td class="Bordered"><span class="nobreak">-3.0</span></td>
<td class="Bordered">NI-DMM performs an Auto Range before acquiring the measurement. The <a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'caNIDMM_ATTR_AUTO_RANGE_VALUE.html')"><span class="Monospace"> NIDMM_ATTR_AUTO_RANGE_VALUE</span></a> is stored and used for all subsequent measurements until the measurement configuration is changed.</td>
</tr>
</table>

</td>
</tr>
</table>
</body>
</html>    &    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>

<td class="paramName">Resolution_Absolute</td>

<td class="paramDataType">ViReal64</td>

<td>Specifies the absolute resolution for the measurement. NI-DMM sets <a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'caNIDMM_ATTR_RESOLUTION_ABSOLUTE.html')"><span class="Monospace"> NIDMM_ATTR_RESOLUTION_ABSOLUTE</span></a> to this value. The PXIe-4080/4081/4082 uses the resolution you specify. The NI 4065 and NI 4070/4071/4072 ignore this parameter when the <strong>Range</strong> parameter is set to NIDMM_VAL_AUTO_RANGE_ON (-1.0) or NIDMM_VAL_AUTO_RANGE_ONCE (-3.0). The default is 0.001 V.<br><br> 

<table class="Borderless-Wide">
<tr>
<td class="Icon"><img src="note.gif"></td>
<td>
<strong>Note</strong>&#160;&#160;NI-DMM ignores this parameter for capacitance and inductance measurements on the NI 4072. To achieve better resolution for such measurements, use the <a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'caNIDMM_ATTR_LC_NUMBER_MEAS_TO_AVERAGE.html')"><span class="Monospace"> NIDMM_ATTR_LC_NUMBER_MEAS_TO_AVERAGE</span></a> attribute.</td></tr></table>

</td>
</tr>
</table>
</body>
</html>
    G
����  �    Status                            8�
   �  �    Instrument Handle                 @ -  � �    Measurement Function              Y� - � �  �    Range                             dZ -� � �    Resolution Absolute                	                          �DC Volts NIDMM_VAL_DC_VOLTS AC Volts NIDMM_VAL_AC_VOLTS DC Current NIDMM_VAL_DC_CURRENT AC Current NIDMM_VAL_AC_CURRENT 2-Wire Resistance NIDMM_VAL_2_WIRE_RES 4-Wire Resistance NIDMM_VAL_4_WIRE_RES Diode NIDMM_VAL_DIODE Frequency NIDMM_VAL_FREQ Period NIDMM_VAL_PERIOD AC Volts DC Coupled NIDMM_VAL_AC_VOLTS_DC_COUPLED Capacitance NIDMM_VAL_CAPACITANCE Inductance NIDMM_VAL_INDUCTANCE Temperature NIDMM_VAL_TEMPERATURE    0.02    0.001   k    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_ConfigureMultiPoint</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>

<h1 class="function">niDMM_ConfigureMultiPoint</h1>

<p class="syntax">ViStatus = niDMM_ConfigureMultiPoint(ViSession Instrument_Handle, ViInt32 Trigger_Count, ViInt32 Sample_Count, ViInt32 Sample_Trigger, ViReal64 Sample_Interval)</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Configures the attributes for multipoint measurements. These attributes include 
<a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'caNIDMM_ATTR_TRIGGER_COUNT.html')"><span class="Monospace"> NIDMM_ATTR_TRIGGER_COUNT</span></a>, 
<a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'caNIDMM_ATTR_SAMPLE_COUNT.html')"><span class="Monospace"> NIDMM_ATTR_SAMPLE_COUNT</span></a>, 
<a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'caNIDMM_ATTR_SAMPLE_TRIGGER.html')"><span class="Monospace"> NIDMM_ATTR_SAMPLE_TRIGGER</span></a>, and 
<a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'caNIDMM_ATTR_SAMPLE_INTERVAL.html')"><span class="Monospace"> NIDMM_ATTR_SAMPLE_INTERVAL</span></a>.</p>

<p>For continuous acquisitions, set 
<a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'caNIDMM_ATTR_TRIGGER_COUNT.html')"><span class="Monospace"> NIDMM_ATTR_TRIGGER_COUNT</span></a> or 
<a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'caNIDMM_ATTR_SAMPLE_COUNT.html')"><span class="Monospace"> NIDMM_ATTR_SAMPLE_COUNT</span></a> to zero. For more information, refer to 
<a href="javascript:LaunchHelp('dmm.chm::/multi_point.html')">Multiple Point Acquisitions</a>, 
<a href="javascript:LaunchHelp('dmm.chm::/trigger.html')">Triggering</a>, and 
<a href="javascript:LaunchHelp('dmm.chm::/switch_selection.html')">Using Switches</a>.
</body>
</html>    \    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Trigger_Count</td>
<td class="paramDataType">ViInt32</td>
<td>Sets the number of triggers you want the DMM to receive before returning to the Idle state. The driver sets <a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'caNIDMM_ATTR_TRIGGER_COUNT.html')"><span class="Monospace"> NIDMM_ATTR_TRIGGER_COUNT</span></a> to this value. The default value is 1.

</td>
</tr>
</table>
</body>    _    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Sample_Count</td>
<td class="paramDataType">ViInt32</td>
<td>Sets the number of measurements the DMM makes in each measurement sequence initiated by a trigger. The driver sets <a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'caNIDMM_ATTR_SAMPLE_COUNT.html')"><span class="Monospace"> NIDMM_ATTR_SAMPLE_COUNT</span></a> to this value. The default value is 1.
</td>
</tr>
</table>
</body>    �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Sample_Trigger</td>
<td class="paramDataType">ViInt32</td>
<td>Specifies the <strong>Sample_Trigger</strong> source you want to use. The driver sets 
<a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 
'caNIDMM_ATTR_SAMPLE_TRIGGER.html')"><span class="Monospace"> 
NIDMM_ATTR_SAMPLE_TRIGGER</span></a> to this value. The default is Immediate.<br><br>

<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif"></td>
<td>
<strong>Note</strong>&#160;&#160;To determine which values are supported by each device, refer to the <a href="javascript:LaunchHelp('dmm.chm::/CVItrigger_routing.html')">LabWindows/CVI Trigger Routing</a> section.</td></tr></table>

</td>
</tr>
</table>
</body>    �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Sample_Interval</td>
<td class="paramDataType">ViReal64</td>
<td>Sets the amount of time in seconds the DMM waits between measurement cycles. The driver sets 
<a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 
'caNIDMM_ATTR_SAMPLE_INTERVAL.html')"><span class="Monospace"> 
NIDMM_ATTR_SAMPLE_INTERVAL</span></a> to this value. Specify a sample interval to add settling time between measurement cycles or to decrease the measurement rate. <strong>Sample_Interval</strong> only applies when the <strong>Sample_Trigger</strong> is set to INTERVAL.<p>On the NI&#160;4060, the <strong>Sample_Interval</strong> value is used as the settling time. When sample interval is set to 0, the DMM does not settle between measurement cycles. The NI&#160;4065 and NI&#160;4070/4071/4072 use the value specified in <strong>Sample_Interval</strong> as additional delay. The default value (-1) ensures that the DMM settles for a recommended time. This is the same as using an Immediate trigger.</p>
<table class="Borderless-Wide">

<tr>
<td class="Icon"><img SRC="note.gif"></td>
<td><strong>Note</strong>&#160;&#160;This attribute is not used on the NI&#160;4080/4081/4082 and the NI&#160;4050.</td></tr></table>
</td>
</tr>
</table>



</td>
</tr>
</table>
</body>    G
����  �    Status                            8�
   �  �    Instrument Handle                 s� -  �  �    Trigger Count                     v; - � �  �    Sample Count                      x� -� � �    Sample Trigger                    |: �  �  �    Sample Interval                    	                1    1              >Immediate NIDMM_VAL_IMMEDIATE External NIDMM_VAL_EXTERNAL Software Trigger Function NIDMM_VAL_SOFTWARE_TRIG Interval NIDMM_VAL_INTERVAL PXI Trigger Line 0 NIDMM_VAL_PXI_TRIG0 PXI Trigger Line 1 NIDMM_VAL_PXI_TRIG1 PXI Trigger Line 2 NIDMM_VAL_PXI_TRIG2 PXI Trigger Line 3 NIDMM_VAL_PXI_TRIG3 PXI Trigger Line 4 NIDMM_VAL_PXI_TRIG4 PXI Trigger Line 5 NIDMM_VAL_PXI_TRIG5 PXI Trigger Line 6 NIDMM_VAL_PXI_TRIG6 PXI Trigger Line 7 NIDMM_VAL_PXI_TRIG7 PXI Star Trigger Line NIDMM_VAL_PXI_STAR Local Bus Right Trigger 1 NIDMM_VAL_LBR_TRIG1 Aux Trigger Line 1 NIDMM_VAL_AUX_TRIG1    -1   �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_ConfigureWaveformAcquisition</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>

<h1 class="function">niDMM_ConfigureWaveformAcquisition</h1>

<p class="syntax">ViStatus = niDMM_ConfigureWaveformAcquisition(ViSession Instrument_Handle, ViInt32 Measurement_Function, ViReal64 Range, ViReal64 Rate, ViInt32 Waveform_Points)</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Configures the DMM for waveform acquisitions. This feature is supported on the NI 4080/4081/4082 and the NI 4070/4071/4072.</p>


</body>
</html>    �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Measurement_Function</td>
<td class="paramDataType">ViInt32</td>
<td>Specifies the <strong>Measurement_Function</strong> used in a waveform acquisition. The driver sets 
<a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 
'caNIDMM_ATTR_FUNCTION.html')"><span class="Monospace"> 
NIDMM_ATTR_FUNCTION</span></a> to this value.
<br><br>
<table class="Bordered">
<tr>
<td class="Bordered">NIDMM_VAL_WAVEFORM_VOLTAGE (default)</td>
<td class="Bordered">1003</td>
<td class="Bordered">Voltage Waveform</td>
</tr>
<tr>
<td class="Bordered">NIDMM_VAL_WAVEFORM_CURRENT</td>
<td class="Bordered">1004</td>
<td class="Bordered">Current Waveform</td>
</tr>
</table>

</td>
</tr>
</table>
</body>
</html>    �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Range</td>
<td class="paramDataType">ViReal64</td>
<td>Specifies the expected maximum amplitude of the input signal and sets the <strong>Range</strong> for the <strong>Measurement_Function</strong>. NI-DMM sets 
<a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 
'caNIDMM_ATTR_RANGE.html')"><span class="Monospace"> 
NIDMM_ATTR_RANGE</span></a> to this value. <strong>Range</strong> values are coerced up to the closest input <strong>Range</strong>. The default is 10.0. 

<P class="Body">For valid ranges refer to the topics in 
<a href="javascript:LaunchHelp('dmm.chm::/Devices.html')">Devices</a>.</p>

<P class="Body">Auto-ranging is not supported during waveform acquisitions.</p>


</td>
</tr>
</table>
</body>
</html>        <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Rate</td>
<td class="paramDataType">ViReal64</td>
<td>Specifies the <strong>Rate</strong> of the acquisition in samples per second. NI-DMM sets 
<a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 
'caNIDMM_ATTR_WAVEFORM_RATE.html')"><span class="Monospace"> 
NIDMM_ATTR_WAVEFORM_RATE</span></a> to this value. 

<P class="Body">The valid <strong>Range</strong> is 10.0&#8211;1,800,000 S/s. <strong>Rate</strong> values are coerced to the closest integer divisor of 1,800,000. The default value is 1,800,000.</p>

</td>
</tr>
</table>
</body>
</html>

    c    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Waveform_Points</td>
<td class="paramDataType">ViInt32</td>
<td>Specifies the number of points to acquire before the waveform acquisition completes. NI-DMM sets 
<a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 
'caNIDMM_ATTR_WAVEFORM_POINTS.html')"><span class="Monospace"> 
NIDMM_ATTR_WAVEFORM_POINTS</span></a> to this value. <p class="Body">To calculate the maximum and minimum number of waveform points that you can acquire in one acquisition, refer to the 
<a href="javascript:LaunchHelp('dmm.chm::/waveform_cycle.html')">Waveform Acquisition Measurement Cycle</a>.</p><p>The default value is 500.</p>   
</td>
</tr>
</table>
</body>
</html>    G
����  �    Status                            8�
   �  �    Instrument Handle                 �3 -  � �    Measurement Function              �� - � �  �    Range                             � -� �  �    Rate                              �� �  �  �    Waveform Points                    	                           VWaveform volts NIDMM_VAL_WAVEFORM_VOLTAGE Waveform current NIDMM_VAL_WAVEFORM_CURRENT    0.02    
1800000.0       �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_ConfigureCableCompType</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>

<h1 class="function">niDMM_ConfigureCableCompType</h1>

<p class="syntax">ViStatus = niDMM_ConfigureCableCompType(ViSession Instrument_Handle, ViInt32 Cable_Comp_Type)</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">For the NI&#160;4082 and NI&#160;4072 only, sets the 
<a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 
'caNIDMM_ATTR_CABLE_COMP_TYPE.html')"><span class="Monospace"> NIDMM_ATTR_CABLE_COMPENSATION_TYPE</span></a> attribute for the current capacitance/inductance mode range.</p>

</body>
</html>    ~    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>
<body>

<table class="borderless"><tr>
<td class="paramName">Cable_Comp_Type</td>
<td class="paramDataType">ViInt32</td>
<td>Specifies the type of cable compensation that is used for the current range.
</td>
</tr>
</table>
</body>
</html>    G
����  �    Status                            8�
   �  �    Instrument Handle                 �� -  � �    Cable Comp Type                    	                           �None NIDMM_VAL_CABLE_COMP_NONE Open NIDMM_VAL_CABLE_COMP_OPEN Short NIDMM_VAL_CABLE_COMP_SHORT Open and Short NIDMM_VAL_CABLE_COMP_OPEN_AND_SHORT   �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_ConfigureOpenCableCompValues</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>

<h1 class="function">niDMM_ConfigureOpenCableCompValues</h1>

<p class="syntax">ViStatus = niDMM_ConfigureOpenCableCompValues(ViSession Instrument_Handle, ViReal64 Conductance, ViReal64 Susceptance)</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">For the NI&#160;4082 and NI&#160;4072 only, configures the 
<a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 
'caNIDMM_ATTR_OPEN_CABLE_COMP_CONDUCTANCE.html')"><span class="Monospace"> NIDMM_ATTR_OPEN_CABLE_COMP_CONDUCTANCE</span></a> 
and 
<a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 
'caNIDMM_ATTR_OPEN_CABLE_COMP_SUSCEPTANCE.html')"><span class="Monospace"> NIDMM_ATTR_OPEN_CABLE_COMP_SUSCEPTANCE</span></a> attributes.</p>

</body>
</html>    u    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Conductance</td>
<td class="paramDataType">ViReal64</td>
<td>Specifies the open cable compensation <strong>Conductance</strong>. 

</td>
</tr>
</table>
</body>
</html>    t    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Susceptance</td>
<td class="paramDataType">ViReal64</td>
<td>Specifies the open cable compensation <strong>Susceptance</strong>.

</td>
</tr>
</table>
</body>
</html>    G
����  �    Status                            8�
   �  �    Instrument Handle                 �$ -  �  �    Conductance                       �� - � �  �    Susceptance                        	                -1.0    -1.0   z    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_ConfigureShortCableCompValues</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>

<h1 class="function">niDMM_ConfigureShortCableCompValues</h1>

<p class="syntax">ViStatus = niDMM_ConfigureShortCableCompValues(ViSession Instrument_Handle, ViReal64 Resistance, ViReal64 Reactance)</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">For the NI&#160;4082 and NI&#160;4072 only, configures the 
<a href="javascript:LaunchHelp('dmmcref.chm::/caNIDMM_ATTR_SHORT_CABLE_COMP_RESISTANCE.html')"><span class="Monospace">NIDMM_ATTR_SHORT_CABLE_COMP_RESISTANCE</span></a> and 
<a href="javascript:LaunchHelp('dmmcref.chm::/caNIDMM_ATTR_SHORT_CABLE_COMP_REACTANCE.html')"><span class="Monospace">NIDMM_ATTR_SHORT_CABLE_COMP_REACTANCE</span></a> attributes.</p>

</body>
</html>    �    <html>
<head>
<script src="launchhelp.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Resistance</td>
<td class="paramDataType">ViReal64</td>
<td>Specifies the short cable compensation <strong>Resistance</strong>.

</td>
</tr>
</table>
</body>
</html>    �    <html>
<head>
<script src="launchhelp.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Reactance</td>
<td class="paramDataType">ViReal64</td>
<td>Specifies the short cable compensation <strong>Reactance</strong>.

</td>
</tr>
</table>
</body>
</html>    G
����  �    Status                            8�
   �  �    Instrument Handle                 �� -  �  �    Resistance                        �? - � �  �    Reactance                          	                -1.0    -1.0   �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_PerformOpenCableComp</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>

<h1 class="function">niDMM_PerformOpenCableComp</h1>

<p class="syntax">ViStatus = niDMM_PerformOpenCableComp(ViSession Instrument_Handle, ViReal64 *Conductance, ViReal64 *Susceptance)</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">For the NI&#160;4082 and NI&#160;4072 only, performs the open cable compensation measurements for the current capacitance/inductance range, and returns open cable compensation <strong>Conductance</strong> and <strong>Susceptance</strong> values. You can use the return values of this function as inputs to 
<a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 
'cviniDMM_ConfigureOpenCableCompValues.html')"><span class="Monospace"> 
niDMM_ConfigureOpenCableCompValues</span></a>.</p>

<p>This function returns an error if the value of the 
<a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 
'caNIDMM_ATTR_FUNCTION.html')"><span class="Monospace"> 
NIDMM_ATTR_FUNCTION</span></a> attribute is not set to NIDMM_VAL_CAPACITANCE (1005) or NIDMM_VAL_INDUCTANCE (1006).</p>

</body>
</html>    �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Conductance</td>
<td class="paramDataType">ViReal64*</td>
<td><strong>Conductance</strong> is the measured value of open cable compensation <strong>Conductance</strong>.
</td>
</tr>
</table>
</body>
</html>    �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Susceptance</td>
<td class="paramDataType">ViReal64*</td>
<td><strong>Susceptance</strong> is the measured value of open cable compensation <strong>Susceptance</strong>.

</td>
</tr>
</table>
</body>
</html>    G
����  �    Status                            8�
   �  �    Instrument Handle                 �� -  �  �    Conductance                       �d - � �  �    Susceptance                        	                	           	          �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_PerformShortCableComp</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>

<h1 class="function">niDMM_PerformShortCableComp</h1>

<p class="syntax">ViStatus = niDMM_PerformShortCableComp(ViSession Instrument_Handle, ViReal64 *Resistance, ViReal64 *Reactance)</p>


<h2 class="purpose">Purpose</h2>

<p class="Body">Performs the short cable compensation measurements for the current capacitance/inductance range, and returns short cable compensation <strong>Resistance</strong> and <strong>Reactance</strong> values. You can use the return values of this function as inputs to 
<a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 
'cviniDMM_ConfigureShortCableCompValues.html')"><span class="Monospace"> 
niDMM_ConfigureShortCableCompValues</span></a>.</p>

<p>This function returns an error if the value of the 
<a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 
'caNIDMM_ATTR_FUNCTION.html')"><span class="Monospace"> 
NIDMM_ATTR_FUNCTION</span></a> attribute is not set to NIDMM_VAL_CAPACITANCE (1005) or NIDMM_VAL_INDUCTANCE (1006).</p>

</body>
</html>    �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Resistance</td>
<td class="paramDataType">ViReal64*</td>
<td><strong>Resistance</strong> is the measured value of short cable compensation <strong>Resistance</strong>.

</td>
</tr>
</table>
</body>
</html>    �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Reactance</td>
<td class="paramDataType">ViReal64*</td>
<td><strong>Reactance</strong> is the measured value of short cable compensation <strong>Reactance</strong>.

</td>
</tr>
</table>
</body>
</html>    G
����  �    Status                            8�
   �  �    Instrument Handle                 �� -  �  �    Resistance                        �a - � �  �    Reactance                          	                	           	          �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_ConfigureTransducerType</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>

<h1 class="function">niDMM_ConfigureTransducerType</h1>

<p class="syntax">ViStatus = niDMM_ConfigureTransducerType (ViSession Instrument_Handle, ViInt32 Transducer_Type)</p>


<h2 class="purpose">Purpose</h2>

<p class="Body">Configures the transducer type.</p>

</body>
</html>    ~    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Transducer_Type</td>
<td class="paramDataType">ViInt32</td>
<td>Specifies the type of device used to measure the temperature. NI-DMM uses this value to set the Transducer Type  property. The default is NIDMM_VAL_THERMOCOUPLE.<br><br>
<table class="Bordered">
<tr><td class="Bordered">NIDMM_VAL_2_WIRE_RTD</td>  <td class="Bordered">2-wire RTD</td></tr>
<tr><td class="Bordered">NIDMM_VAL_4_WIRE_RTD</td>  <td class="Bordered">4-wire RTD</td></tr>
<tr><td class="Bordered">NIDMM_VAL_THERMISTOR</td>    <td class="Bordered">Thermistor</td></tr>
<tr><td class="Bordered">NIDMM_VAL_THERMOCOUPLE</td>  <td class="Bordered">Thermocouple</td></tr>
</table>

</td>
</tr>
</table>
</body>
</html>
    G
����  �    Status                            8�
   �  �    Instrument Handle                 �� -  � �    Transducer Type                    	                           �Thermocouple NIDMM_VAL_THERMOCOUPLE 2-Wire RTD NIDMM_VAL_2_WIRE_RTD 4-Wire RTD NIDMM_VAL_4_WIRE_RTD Thermistor NIDMM_VAL_THERMISTOR   1    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_ConfigureThermocouple</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>

<h1 class="function">niDMM_ConfigureThermocouple</h1>

<p class="syntax">ViStatus = niDMM_ConfigureThermocouple(ViSession Instrument_Handle, ViInt32 Thermocouple_Type, ViInt32 Reference_Junction_Type)</p>


<h2 class="purpose">Purpose</h2>

<p class="Body">Configures the thermocouple type and reference junction type for a chosen thermocouple.</p>

</body>
</html>    ?    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Thermocouple_Type</td>
<td class="paramDataType">ViInt32</td>
<td>Specifies the type of thermocouple used to measure the temperature. NI-DMM uses this value to set the Thermocouple Type property. The default is NIDMM_VAL_TEMP_TC_J.
<br>
<br>
<table class="Bordered">
<tr><td class="Bordered">NIDMM_VAL_TEMP_TC_B</td>   <td class="Bordered">Thermocouple type B</td></tr>
<tr><td class="Bordered">NIDMM_VAL_TEMP_TC_E</td>   <td class="Bordered">Thermocouple type E</td></tr>
<tr><td class="Bordered">NIDMM_VAL_TEMP_TC_J</td>   <td class="Bordered">Thermocouple type J</td></tr>
<tr><td class="Bordered">NIDMM_VAL_TEMP_TC_K</td>   <td class="Bordered">Thermocouple type K</td></tr>
<tr><td class="Bordered">NIDMM_VAL_TEMP_TC_N</td>   <td class="Bordered">Thermocouple type N</td></tr>
<tr><td class="Bordered">NIDMM_VAL_TEMP_TC_R</td>   <td class="Bordered">Thermocouple type R</td></tr>
<tr><td class="Bordered">NIDMM_VAL_TEMP_TC_S</td>   <td class="Bordered">Thermocouple type S</td></tr>
<tr><td class="Bordered">NIDMM_VAL_TEMP_TC_T</td>   <td class="Bordered">Thermocouple type T</td></tr>
</table>

</td>
</tr>
</table>
</body>
</html>
    �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Reference_Junction_Type</td>
<td class="paramDataType">ViInt32</td>
<td> Specifies the type of reference junction to be used in the reference junction compensation of a thermocouple measurement. NI-DMM uses this value to set the Reference Junction Type property. The only supported value is NIDMM_VAL_TEMP_REF_JUNC_FIXED.
</td>
</table>
<table class="bordered"><tr>
<td>NIDMM_VAL_TEMP_REF_JUNC_FIXED</td>
</tr>
</table>
</body>
</html>
    G
����  �    Status                            8�
   �  �    Instrument Handle                 �� -  � �    Thermocouple Type                 �* - � � �    Reference Junction Type            	                          �B NIDMM_VAL_TEMP_TC_B E NIDMM_VAL_TEMP_TC_E J NIDMM_VAL_TEMP_TC_J K NIDMM_VAL_TEMP_TC_K N NIDMM_VAL_TEMP_TC_N R NIDMM_VAL_TEMP_TC_R S NIDMM_VAL_TEMP_TC_S T NIDMM_VAL_TEMP_TC_T               $Fixed NIDMM_VAL_TEMP_REF_JUNC_FIXED   9    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_ConfigureFixedRefJunction</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>

<h1 class="function">niDMM_ConfigureFixedRefJunction</h1>

<p class="syntax">ViStatus = niDMM_ConfigureFixedRefJunction(ViSession Instrument_Handle, ViReal64 Fixed_Reference_Junction)</p>


<h2 class="purpose">Purpose</h2>

<p class="Body">Configures the fixed reference junction temperature for a thermocouple with a fixed reference junction type.</p>

</body>
</html>    @    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Fixed_Reference_Junction</td>
<td class="paramDataType">ViReal64</td>
<td> Specifies the reference junction temperature when a fixed reference junction is used to take a thermocouple measurement.  The units are degrees Celsius. NI-DMM uses this value to set the Fixed Reference Junction property. The default is 25.00 (&#176;C). 

</td>
</tr>
</table>


</body>
</html>
    G
����  �    Status                            8�
   �  �    Instrument Handle                 �� -  �  �    Fixed Reference Junction           	                25.0   �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_ConfigureRTDType</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>

<h1 class="function">niDMM_ConfigureRTDType</h1>

<p class="syntax">ViStatus = niDMM_ConfigureRTDType(ViSession Instrument_Handle, ViInt32 RTD_Type, ViReal64 RTD_Resistance)</p>


<h2 class="purpose">Purpose</h2>

<p class="Body">Configures the RTD Type and RTD Resistance parameters for an RTD.</p>

</body>
</html>        <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">RTD_Type</td>
<td class="paramDataType">ViInt32</td>
<td>Specifies the type of RTD used to measure the temperature resistance. NI-DMM uses this value to set the RTD Type property. The default is NIDMM_VAL_TEMP_RTD_PT3851.
<br> 
<br> 
<table class="Bordered">
  <tr>
  <th class="Bordered Left-Align">Enum</th>
  <th class="Bordered Left-Align">Standards</th>
  <th class="Bordered Left-Align">Material</th>
   <th class="Bordered Left-Align">TCR (&#945;)</th>
  <th class="Bordered Left-Align">Typical R<sub>0</sub> (&#0937;) </th>
  <td class="Bordered Left-Align">Callendar-Van Dusen Coefficient</td>
  <th class="Bordered Left-Align">Notes</th>

  </tr>

  <tr>
  <td class="Bordered"> NIDMM_VAL_TEMP_RTD_PT3851 </td>
  <td class="Bordered"> IEC-751<br> DIN 43760 <br> BS 1904 <br> ASTM-E1137 <br> EN-60751 </td>
  <td class="Bordered"> Platinum </td>
  <td class="Bordered"> .003851</td>
  <td class="Bordered"> 100 &#0937; <br> 1000 &#0937;</td>
  <td class="Bordered"> A = 3.9083 &#215; 10<sup>&#8211;3</sup> <br> B = &#8211;5.775&#215;10<sup>&#8211;7</sup> <br> C = &#8211;4.183&#215;10<sup>&#8211;12</sup></td>
  <td class="Bordered"> Most common RTDs</td>
  </tr>

  <tr>
  <td class="Bordered"> NIDMM_VAL_TEMP_RTD_PT3750 </td>
  <td class="Bordered"> Low-cost vendor compliant RTD* </td>
  <td class="Bordered"> Platinum </td>
  <td class="Bordered">.003750 </td>
  <td class="Bordered"> 1000 &#0937;</td>
  <td class="Bordered"> A = 3.81 &#215; 10<sup>&#8211;3</sup> <br> B = &#8211;6.02&#215;10<sup>&#8211;7</sup> <br> C = &#8211;6.0&#215;10<sup>&#8211;12</sup></td>
  <td class="Bordered"> Low-cost RTD</td>
  </tr>

   <tr>
    <td class="Bordered"> NIDMM_VAL_TEMP_RTD_PT3916 </td>
  <td class="Bordered"> JISC 1604 </td>
  <td class="Bordered"> Platinum </td>
  <td class="Bordered">.003916 </td>
  <td class="Bordered"> 100 &#0937;</td>
  <td class="Bordered"> A = 3.9739 &#215; 10<sup>&#8211;3</sup> <br> B = &#8211;5.870&#215;10<sup>&#8211;7</sup> <br> C = &#8211;4.4 &#215;10<sup>&#8211;12</sup></td>
  <td class="Bordered"> Used in primarily in Japan</td>
  </tr>

     <tr>
         <td class="Bordered"> NIDMM_VAL_TEMP_RTD_PT3920 </td>
  <td class="Bordered"> US Industrial Standard D-100 <br> American </td>
  <td class="Bordered"> Platinum </td>
  <td class="Bordered">.003920</td>
  <td class="Bordered"> 100 &#0937;</td>
  <td class="Bordered"> A = 3.9787 &#215; 10<sup>&#8211;3</sup> <br> B = &#8211;5.8686&#215;10<sup>&#8211;7</sup> <br> C = &#8211;4.167 &#215;10<sup>&#8211;12</sup></td>
  <td class="Bordered"> Low-cost RTD</td>
  </tr>

  <tr>
      <td class="Bordered"> NIDMM_VAL_TEMP_RTD_PT3911 </td>
  <td class="Bordered"> US Industrial Standard <br> American </td>
  <td class="Bordered"> Platinum </td>
  <td class="Bordered">.003911</td>
  <td class="Bordered"> 100 &#0937;</td>
  <td class="Bordered"> A = 3.9692 &#215; 10<sup>&#8211;3</sup> <br> B = &#8211;5.8495&#215;10<sup>&#8211;7</sup> <br> C = &#8211;4.233 &#215;10<sup>&#8211;12</sup></td>
  <td class="Bordered"> Low-cost RTD</td>
  </tr>

    <tr>
        <td class="Bordered"> NIDMM_VAL_TEMP_RTD_PT3928 </td>
  <td class="Bordered"> ITS-90 </td>
  <td class="Bordered"> Platinum </td>
  <td class="Bordered">.003928</td>
  <td class="Bordered"> 100 &#0937;</td>
  <td class="Bordered"> A = 3.9888 &#215; 10<sup>&#8211;3</sup> <br> B = &#8211;5.915&#215;10<sup>&#8211;7</sup> <br> C = &#8211;3.85 &#215;10<sup>&#8211;12</sup></td>
  <td class="Bordered"> The definition of temperature</td>
  </tr>

    <tr>
  <td class="Bordered" colspan="6">*No standard. Check the TCR. </td>

  </tr>
  </table>
  </td>
  </tr>
</table>
</body>
</html>
    �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">RTD_Resistance</td>
<td class="paramDataType">ViReal64</td>
<td>Specifies the RTD resistance in ohms at 0 &#176;C. NI-DMM uses this value to set the RTD Resistance property. The default is 100 (&#8486;).


</td>
</tr>
</table>
</body>
</html>
    G
����  �    Status                            8�
   �  �    Instrument Handle                 �� -  � �    RTD Type                          �� - � �  �    RTD Resistance                     	                          �Custom NIDMM_VAL_TEMP_RTD_CUSTOM Pt 3750 NIDMM_VAL_TEMP_RTD_PT3750 Pt 3851 NIDMM_VAL_TEMP_RTD_PT3851 Pt 3911 NIDMM_VAL_TEMP_RTD_PT3911 Pt 3916 NIDMM_VAL_TEMP_RTD_PT3916 Pt 3920 NIDMM_VAL_TEMP_RTD_PT3920 Pt 3928 NIDMM_VAL_TEMP_RTD_PT3928    100.0   �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_ConfigureRTDCustom</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>

<h1 class="function">niDMM_ConfigureRTDCustom</h1>

<p class="syntax">ViStatus = niDMM_ConfigureRTDCustom(ViSession Instrument_Handle, ViReal64 RTD_A, ViReal64 RTD_B, ViReal64 RTD_C)</p>


<h2 class="purpose">Purpose</h2>

<p class="Body">Configures the  A, B, and C parameters for a custom RTD.</p>

</body>
</html>    d    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">RTD_A</td>
<td class="paramDataType">ViReal64</td>
<td>Specifies the Callendar-Van Dusen A coefficient for RTD scaling when RTD Type parameter is set to Custom in the <a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'cviniDMM_ConfigureRTDType.html')"><span class="Monospace"> niDMM_ConfigureRTDType</span></a> function. The default is 3.9083e-3 (Pt3851)

</td>
</tr>
</table>
</body>
</html>
    e    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">RTD_B</td>
<td class="paramDataType">ViReal64</td>
<td>Specifies the Callendar-Van Dusen B coefficient for RTD scaling when RTD Type parameter is set to Custom in the <a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'cviniDMM_ConfigureRTDType.html')"><span class="Monospace"> niDMM_ConfigureRTDType</span></a> function. The default is -5.775e-7 (Pt3851).

</td>
</tr>
</table>
</body>
</html>
    h    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">RTD_C</td>
<td class="paramDataType">ViReal64</td>
<td>Specifies the Callendar-Van Dusen C coefficient for RTD scaling when RTD Type parameter is set to Custom  in the <a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'cviniDMM_ConfigureRTDType.html')"><span class="Monospace"> niDMM_ConfigureRTDType</span></a> function. The default is -4.183e-12 (Pt3851).

</td>
</tr>
</table>
</body>
</html>

    G
����  �    Status                            8�
   �  �    Instrument Handle                 � -  �  �    RTD A                             �� - � �  �    RTD B                             �j -� �  �    RTD C                              	                
3.9083e-3    
-5.775e-7    -4.183e-12   �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_ConfigureThermistorType</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>

<h1 class="function">niDMM_ConfigureThermistorType</h1>

<p class="syntax">ViStatus = niDMM_ConfigureThermistorType(ViSession Instrument_Handle, ViInt32 Thermistor_Type)</p>


<h2 class="purpose">Purpose</h2>

<p class="Body">Configures the thermistor type.</p>

</body>
</html>    �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>
<p class ="body"> Specifies the type of thermistor used to measure the temperature. NI-DMM uses this value to set the Thermistor Type property. The default is NIDMM_VAL_TEMP_THERMISTOR_44006.</p>
<table class="Bordered">
<tr>
<td class="Bordered"><p class="noTopMargin noBottomMargin"><strong>Defined Values</strong></p></td>
<td class="Bordered"><p class="noTopMargin noBottomMargin"><strong>Thermistor Type</strong></p></td>
<td class="Bordered">
<p class="noTopMargin noBottomMargin"><strong>Value</strong></p>
</td>
<td class="Bordered">
<p class="noTopMargin noBottomMargin"><strong>25 &#176;C Resistance</strong></p>
</td>
</tr>
<tr>

        
            <td class="Bordered">NIDMM_VAL_TEMP_THERMISTOR_CUSTOM</td>
<td class="Bordered">Custom</td>
<td class="Bordered">
<p class="noTopMargin noBottomMargin">0</p></td>
<td class="Bordered">
<p class="noTopMargin noBottomMargin">&#8212;
</p>
</td>
</tr>
            <tr>
                <td class="Bordered">NIDMM_VAL_TEMP_THERMISTOR_44004</td>
<td class="Bordered">44004</td>
<td class="Bordered">
<p class="noTopMargin noBottomMargin">1</p></td>
<td class="Bordered">
<p class="noTopMargin noBottomMargin">2.25 k&#0937;</p>
</td>
</tr>
            <tr>
            <td class="Bordered">NIDMM_VAL_TEMP_THERMISTOR_44006</td>
<td class="Bordered">44006</td>
<td class="Bordered">
<p class="noTopMargin noBottomMargin">2</p>
</td>

<td class="Bordered">
<p class="noTopMargin noBottomMargin">10 k&#0937;</p></td>
</tr>
            <tr>
            <td class="Bordered">NIDMM_VAL_TEMP_THERMISTOR_44007</td>
<td class="Bordered">44007</td>
<td class="Bordered">
<p class="noTopMargin noBottomMargin">3</p>
</td>
<td class="Bordered">
<p class="noTopMargin noBottomMargin">5 k&#0937;</p></td>
</tr>
</table>
 


</body>
</html>    G
����  �    Status                            8�
   �  �    Instrument Handle                 �� -  � �    Thermistor Type                    	                          �Custom NIDMM_VAL_TEMP_THERMISTOR_CUSTOM 44004  NIDMM_VAL_TEMP_THERMISTOR_44004 44006  NIDMM_VAL_TEMP_THERMISTOR_44006 44007  NIDMM_VAL_TEMP_THERMISTOR_44007   .    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_ConfigureThermistorCustom</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>

<h1 class="function">niDMM_ConfigureThermistorCustom</h1>

<p class="syntax">ViStatus = niDMM_ConfigureThermistorCustom(ViSession Instrument_Handle, ViReal64 Thermistor_A, ViReal64 Thermistor_B, ViReal64 Thermistor_C)</p>


<h2 class="purpose">Purpose</h2>

<p class="Body">Configures the  A, B, and C parameters for a custom thermistor.</p>

</body>
</html>    |    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Thermistor_A</td>
<td class="paramDataType">ViReal64</td>
<td>
Specifies  the Steinhart-Hart A coefficient for thermistor scaling when Thermistor Type is set to Custom in the  
<a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'cviniDMM_ConfigureThermistorType.html')"><span class="Monospace"> niDMM_ConfigureThermistorType</span></a> function. The default is 1.0295e-3 (44006).
</td>
</tr>
</table>
</body>
</html>

    {    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Thermistor_B</td>
<td class="paramDataType">ViReal64</td>
<td>
Specifies the Steinhart-Hart B coefficient for thermistor scaling when Thermistor Type is set to Custom in the 
<a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'cviniDMM_ConfigureThermistorType.html')"><span class="Monospace"> niDMM_ConfigureThermistorType</span></a> function. The default is 2.391e-4 (44006).

</td>
</tr>
</table>
</body>
</html>


    z    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Thermistor_C</td>
<td class="paramDataType">ViReal64</td>
<td>
Specifies the Steinhart-Hart C coefficient for thermistor scaling when Thermistor Type is set to Custom in the 
<a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'cviniDMM_ConfigureThermistorType.html')"><span class="Monospace"> niDMM_ConfigureThermistorType</span></a> function. The default is 1.568e-7 (44006).
</td>
</tr>
</table>
</body>
</html>


    G
����  �    Status                            8�
   �  �    Instrument Handle                " -  �  �    Thermistor A                     � - � �  �    Thermistor B                     ) -� �  �    Thermistor C                       	                
1.0295e-3    	2.391e-4    	1.568e-7   �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_ConfigurePowerlineFrequency</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>

<h1 class="function">niDMM_ConfigurePowerLineFrequency</h1>

<p class="syntax">ViStatus = niDMM_ConfigurePowerLineFrequency(ViSession Instrument_Handle, ViReal64 Power_Line_Frequency_Hz)</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Specifies the powerline frequency. </p>

</body>
</html>    ;    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless">
 <tr>
  <td class="paramName">Power Line Frequency Hz</td>
  <td class="paramDataType">ViReal64*</td>
  <td><strong>Powerline Frequency</strong> specifies the powerline frequency in hertz.  
   NI-DMM sets the Powerline Frequency property to this value.</td></tr> </table>
  <table class="Bordered">
                <tr>
                    <td class="Bordered">50 HERTZ</td>
                    <td class="Bordered">50 Hz</td>
                </tr>
                <tr>
                    <td class="Bordered">60 HERTZ</td>
                    <td class="Bordered">60 Hz</td>
                </tr>
  </table>
  <table class="Borderless">
   <tr>
    <td class="Icon"><img src="note.gif"></td>
    <td><strong>Note</strong>��You should set this control to the frequency of the AC power line (for 400 Hz power line use the 50 Hz setting).</td>
   </tr>
  </table>
  </td>
 </tr>
</table>
</body>
</html>    G
����  �    Status                            8�
   �  �    Instrument Handle                � -  � �    Power Line Frequency Hz            	                          50 Hz 50.0 60 Hz 60.0   k    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_ConfigureAutoZeroMode</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>

<h1 class="function">niDMM_ConfigureAutoZeroMode</h1>

<p class="syntax">ViStatus = niDMM_ConfigureAutoZeroMode(ViSession Instrument_Handle, ViInt32 Auto_Zero_Mode)</p>


<h2 class="purpose">Purpose</h2>

<p class="Body">Configures the DMM for <strong>Auto_Zero_Mode</strong>. When <strong>Auto_Zero_Mode</strong> is ON, the DMM internally disconnects the input signal and takes a zero reading. It then subtracts the zero reading from the measurement. This prevents offset voltages present on the input circuitry of the DMM from affecting measurement accuracy. When <strong>Auto_Zero_Mode</strong> is OFF, the DMM does not compensate for zero reading offset.</p>

</body>
</html>        <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Auto_Zero_Mode</td>
<td class="paramDataType">ViInt32</td>
<td>Specifies the <strong>Auto_Zero_Mode</strong>. NI-DMM sets the <a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'caNIDMM_ATTR_AUTO_ZERO.html')"><span class="Monospace"> NIDMM_ATTR_AUTO_ZERO</span></a> attribute to this value. 

<P class="Body">ON enables <strong>Auto_Zero_Mode</strong> for each measurement. ONCE enables <strong>Auto_Zero_Mode</strong> before the next measurement. The <strong>Auto_Zero_Mode</strong> value is stored and used in subsequent measurements until the device is reconfigured.</p>

<p>OFF disables <strong>Auto_Zero_Mode</strong>. If you set this parameter to AUTO, NI-DMM determines whether to enable Auto Zero based on the measurement function that you configure. If you configure the NI&#160;4080/4081/4082 or the NI&#160;4070/4071/4072 for a 6&#189;&#8211;digit and greater resolution DC measurement, NI-DMM sets <strong>Auto_Zero_Mode</strong> to ON.</p>

<p>For all other DC measurement configurations on the NI&#160;4080/4081/4082 or the NI&#160;4070/4071/4072, NI-DMM sets <strong>Auto_Zero_Mode</strong> to ONCE. For all AC measurements or waveform acquisitions on the NI&#160;4080/4081/4082 or the NI&#160;4070/4071/4072, NI-DMM sets <strong>Auto_Zero_Mode</strong> to OFF. For NI&#160;4060, <strong>Auto_Zero_Mode</strong> is set to OFF when AUTO is selected.</p>

<p>For NI 4065 devices, <strong>Auto_Zero_Mode</strong> is always ON. <strong>Auto_Zero_Mode</strong> is an integral part of the signal measurement phase and adds no extra time to the overall measurement.</p>

<table class="Bordered" align="center">
<tr>
<td class="Bordered">NIDMM_VAL_AUTO_ZERO_AUTO&#160;(default)</td>
<td class="Bordered"><span class="nobreak">-1</span></td>
<td class="Bordered">NI-DMM chooses the Auto Zero setting based on the configured function and resolution.</td>
</tr>
<tr>
<td class="Bordered">NIDMM_VAL_AUTO_ZERO_OFF</td>
<td class="Bordered">&#160;0</td>
<td class="Bordered">Disables Auto Zero.<table class="Borderless-Wide">
<tr>
<td class="Icon"><img src="note.gif"></td>
<td>
<strong>Note</strong>&#160;&#160;The NI 4065 does <em>not</em> support this setting.</td></tr></table></td>
</tr>
<tr>
<td class="Bordered">NIDMM_VAL_AUTO_ZERO_ON</td>
<td class="Bordered">&#160;1</td>
<td class="Bordered">The DMM internally disconnects the input signal following each measurement and takes a zero reading. It then subtracts the zero reading from the preceding reading.

<table class="Borderless-Wide">
<tr>
<td class="Icon"><img src="note.gif"></td>
<td>
<strong>Note</strong>&#160;&#160;For NI 4065 devices, <strong>Auto_Zero_Mode</strong> is always ON. <strong>Auto_Zero_Mode</strong> is an integral part of the signal measurement phase and adds no extra time to the overall measurement.</td></tr></table>
</td>
</tr>
<tr>
<td class="Bordered">NIDMM_VAL_AUTO_ZERO_ONCE</td>
<td class="Bordered">&#160;2</td>
<td class="Bordered">The DMM internally disconnects the input signal following the first measurement and takes a zero reading. It then subtracts the zero reading from the preceding reading and each measurement that follows.

<table class="Borderless-Wide">
<tr>
<td class="Icon"><img src="note.gif"></td>
<td>
<strong>Note</strong>&#160;&#160;The NI 4060/4065 does <em>not</em> support this setting.</td></tr></table></td>
</tr>
</table>

</td>
</tr>
</table>
</body>
</html>    G
����  �    Status                            8�
   �  �    Instrument Handle                o -  � �    Auto Zero Mode                     	                           rAuto NIDMM_VAL_AUTO_ZERO_AUTO Off NIDMM_VAL_AUTO_ZERO_OFF On NIDMM_VAL_AUTO_ZERO_ON Once NIDMM_VAL_AUTO_ZERO_ONCE   F    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_ConfigureADCCalibration</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>

<h1 class="function">niDMM_ConfigureADCCalibration</h1>

<p class="syntax">ViStatus = niDMM_ConfigureADCCalibration(ViSession Instrument_Handle, ViInt32 ADC_Calibration)</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">For the NI&#160;4080/4081/4082 and NI&#160;4070/4071/4072, allows the DMM to compensate for gain drift since the last external calibration or self-calibration. When <strong>ADC_Calibration</strong> is ON, the DMM measures an internal reference to calculate the correct gain for the measurement. When <strong>ADC_Calibration</strong> is OFF, the DMM does not compensate for changes to the gain.</p>

</body>
</html>
    �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">ADC_Calibration</td>
<td class="paramDataType">ViInt32</td>
<td>Specifies the <strong>ADC_Calibration</strong> setting. The driver sets 
<a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'caNIDMM_ATTR_ADC_CALIBRATION.html')"><span class="Monospace"> NIDMM_ATTR_ADC_CALIBRATION</span></a> to this value. 

<br><br>NIDMM_VAL_ADC_CALIBRATION_ON enables <strong>ADC_Calibration</strong>. 
NIDMM_VAL_ADC_CALIBRATION_OFF disables <strong>ADC_Calibration</strong>.

If you set the value to NIDMM_VAL_ADC_CALIBRATION_AUTO, the driver determines whether to enable <strong>ADC_Calibration</strong> based on the measurement function and resolution that you configure. If you configure the NI&#160;4080/4081/4082 or NI&#160;4070/4071/4072 for a 6&#189;&#8211;digit and greater resolution DC measurement, the driver enables ADC Calibration. For all other measurement configurations, the driver disables <strong>ADC_Calibration</strong>.
<br><br>
<table class="Bordered" align="center">
<tr><th class="Bordered">Name</th><th class="Bordered">Value</th><th class="Bordered">Description</th></tr>
<tr>
<td class="Bordered">NIDMM_VAL_ADC_CALIBRATION_AUTO&#160;(default)</td>
<td class="Bordered"><span class="nobreak">-1.0</span></td>
<td class="Bordered">The DMM enables or disables <strong>ADC_Calibration</strong> based on the configured function and resolution.</td>
</tr>
<tr>
<td class="Bordered">NIDMM_VAL_ADC_CALIBRATION_OFF</td>
<td class="Bordered">&#160;0</td>
<td class="Bordered">The DMM does not compensate for changes to the gain.</td>
</tr>
<tr>
<td class="Bordered">NIDMM_VAL_ADC_CALIBRATION_ON</td>
<td class="Bordered">&#160;1</td>
<td class="Bordered">The DMM measures an internal reference to calculate the correct gain for the measurement.</td>
</tr>
</table>
</td>
</tr>
</table>
</body>
</html>



    G
����  �    Status                            8�
   �  �    Instrument Handle                ) -  � �    ADC  Calibration                   	                           fAuto NIDMM_VAL_ADC_CALIBRATION_AUTO Off NIDMM_VAL_ADC_CALIBRATION_OFF On NIDMM_VAL_ADC_CALIBRATION_ON       <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_ConfigureOffsetCompOhms</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>

<h1 class="function">niDMM_ConfigureOffsetCompOhms</h1>

<p class="syntax">ViStatus = niDMM_ConfigureOffsetCompOhms(ViSession Instrument_Handle, ViInt32 Offset_Comp_Ohms)</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">For NI&#160;4080/4081/4082 and NI&#160;4070/4071/4072, allows the DMM to compensate for voltage offsets in resistance measurements. When <strong>Offset_Comp_Ohms</strong> is enabled, the DMM measures the resistance twice (once with the current source on and again with it turned off). Any voltage offset present in both measurements is cancelled out. <strong>Offset_Comp_Ohms</strong> is useful when measuring resistance values less than 10 K&#937;.</p>

</body>
</html>
    F    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Offset_Comp_Ohms</td>
<td class="paramDataType">ViInt32</td>
<td>Enables or disables <strong>Offset_Comp_Ohms</strong>. The driver sets <a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'caNIDMM_ATTR_OFFSET_COMP_OHMS.html')"><span class="Monospace"> NIDMM_ATTR_OFFSET_COMP_OHMS</span></a> to this value. 
<br><br>
<table class="Bordered" align="center">
<tr><th class="Bordered">Name</th><th class="Bordered">Value</th><th class="Bordered">Description</th>
</tr>
<tr>
<td class="Bordered">NIDMM_VAL_OFFSET_COMP_OHMS_OFF&#160;(default)</td>
<td class="Bordered">0</td>
<td class="Bordered">Off&#160;disables&#160;<strong>Offset_Comp_Ohms</strong>.</td>
</tr>
<tr>
<td class="Bordered">NIDMM_VAL_OFFSET_COMP_OHMS_ON</td>
<td class="Bordered">1</td>
<td class="Bordered">On enables <strong>Offset_Comp_Ohms</strong>.</td>
</tr>
</table>

</td>
</tr>
</table>
</body>
</html>

    G
����  �    Status                            8�
   �  �    Instrument Handle                5� -  � �    Offset Comp Ohms                   	                           DOff NIDMM_VAL_OFFSET_COMP_OHMS_OFF On NIDMM_VAL_OFFSET_COMP_OHMS_ON   b    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_ConfigureACBandwidth</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>

<h1 class="function">niDMM_ConfigureACBandwidth</h1>

<p class="syntax">ViStatus = niDMM_ConfigureACBandwidth(ViSession Instrument_Handle, ViReal64 AC_Minimum_Frequency_Hz, ViReal64 AC_Maximum_Frequency_Hz)</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Configures the 
<a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'caNIDMM_ATTR_AC_MIN_FREQ.html')"><span class="Monospace"> 
NIDMM_ATTR_AC_MIN_FREQ</span></a> 
and 
<a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 
'caNIDMM_ATTR_AC_MAX_FREQ.html')"><span class="Monospace"> 
NIDMM_ATTR_AC_MAX_FREQ</span></a> attributes, which the DMM uses for AC measurements.</p>

</body>
</html>    Y    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">AC_Minimum_Frequency_Hz</td>
<td class="paramDataType">ViReal64</td>
<td>Specifies the minimum expected frequency component of the input signal in hertz. This parameter affects the DMM only when you set the 
<a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'caNIDMM_ATTR_FUNCTION.html')"><span class="Monospace"> NIDMM_ATTR_FUNCTION</span></a> attribute to AC measurements. NI-DMM uses this parameter to calculate the proper aperture for the measurement.<br><br>The driver sets the 
<a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 
'caNIDMM_ATTR_AC_MIN_FREQ.html')"><span class="Monospace"> 
NIDMM_ATTR_AC_MIN_FREQ</span></a> attribute to this value. The valid range is 1 Hz&#8211;300 kHz for the NI 4080/4081/4082 and the NI 4070/4071/4072, 10 Hz&#8211;100 Hz for the NI&#160;4065, and 20 Hz&#8211;25 kHz for the NI 4050 and NI 4060.

</td>
</tr>
</table>
</body>
</html>


    �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">AC_Maximum_Frequency_Hz</td>
<td class="paramDataType">ViReal64</td>
<td>Specifies the maximum expected frequency component of the input signal in hertz within the device limits. This parameter is used only for error checking and verifies that the value of this parameter is less than the maximum frequency of the device. <p>This parameter affects the DMM only when you set the 
<a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 
'caNIDMM_ATTR_FUNCTION.html')"><span class="Monospace"> 
NIDMM_ATTR_FUNCTION</span></a> attribute to AC measurements. The driver sets the 
<a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'caNIDMM_ATTR_AC_MAX_FREQ.html')"><span class="Monospace"> NIDMM_ATTR_AC_MAX_FREQ</span></a> attribute to this value. The valid range is 1 Hz&#8211;300 kHz for the NI 4080/4081/4082 and the NI 4070/4071/4072, 10 Hz&#8211;100 Hz for the NI&#160;4065, and 20 Hz&#8211;25 kHz for the NI 4050 and NI 4060.

</td>
</tr>
</table>
</body>
</html>

    G
����  �    Status                            8�
   �  �    Instrument Handle                >^ -  �  �    AC  Minimum Frequency Hz         B� - � �  �    AC  Maximum Frequency Hz           	                20.0    25000.0   w    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_ConfigureFrequencyVoltageRange</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>

<h1 class="function">niDMM_ConfigureFrequencyVoltageRange</h1>

<p class="syntax">ViStatus = niDMM_ConfigureFrequencyVoltageRange(ViSession Instrument_Handle, ViReal64 Voltage_Range)</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">For the NI&#160;4080/4081/4082 and the NI&#160;4070/4071/4072 only, specifies the expected maximum amplitude of the input signal for frequency and period measurements.</p>

</body>
</html>    �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Voltage_Range</td>
<td class="paramDataType">ViReal64</td>
<td>Sets the expected maximum amplitude of the input signal. Refer to the 

<a href="javascript:LaunchHelp('dmm.chm::/4080_functional_overview.html')">NI&#160;4080</a>, 
<a href="javascript:LaunchHelp('dmm.chm::/4081_functional_overview.html')">NI&#160;4081</a>,
<a href="javascript:LaunchHelp('dmm.chm::/4082.html')">NI&#160;4072</a>,

<a href="javascript:LaunchHelp('dmm.chm::/4070_functional_overview.html')">NI&#160;4070</a>, 
<a href="javascript:LaunchHelp('dmm.chm::/4071_functional_overview.html')">NI&#160;4071</a>, and 
<a href="javascript:LaunchHelp('dmm.chm::/4072.html')">NI&#160;4072</a> sections for a list of valid values. NI-DMM sets 
<a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 
'caNIDMM_ATTR_FREQ_VOLTAGE_RANGE.html')"><span class="Monospace"> NIDMM_ATTR_FREQ_VOLTAGE_RANGE</span></a> to this value. The minimum peak-to-peak signal amplitude that can be detected is 10% of the specified <strong>Voltage_Range</strong>.
<br><br>
<table class="Bordered" align="center">
<tr><th class="Bordered">Name</th><th class="Bordered">Value</th><th class="Bordered">Description</th></tr>
<tr>
<td class="Bordered">NIDMM_VAL_AUTO_RANGE_ON&#160;(default)</td>
<td class="Bordered"><span class="nobreak">-1.0</span></td>
<td class="Bordered">Configures the DMM to take an Auto Range measurement to calculate the voltage range before each frequency or period measurement.</td>
</tr>
<tr>
<td class="Bordered">NIDMM_VAL_AUTO_RANGE_OFF</td>
<td class="Bordered">-2.0</td>
<td class="Bordered">Disables Auto Ranging. The driver sets the voltage range to the last calculated voltage range.</td>
</tr>
</table>

</td>
</tr>
</table>
</body>
</html>    G
����  �    Status                            8�
   �  �    Instrument Handle                J� -  �  �    Voltage Range                      	                NIDMM_VAL_AUTO_RANGE_ON   5    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_ConfigureCurrentSource</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>

<h1 class="function">niDMM_ConfigureCurrentSource</h1>

<p class="syntax">ViStatus = niDMM_ConfigureCurrentSource(ViSession Instrument_Handle, ViReal64 Current_Source)</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">The NI&#160;4050 and NI&#160;4060 are not supported. Configures the <strong>Current_Source</strong> for diode measurements.</p>

</body>
</html>
    J    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Current_Source</td>
<td class="paramDataType">ViReal64</td>
<td>Specifies the <strong>Current_Source</strong> provided during diode measurements. For valid ranges, refer to the 
device sections for your device. The driver sets 
<a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 
'caNIDMM_ATTR_CURRENT_SOURCE.html')"><span class="Monospace"> 
NIDMM_ATTR_CURRENT_SOURCE</span></a> to this value. 
<br><br>
<table class="Bordered">
<tr><td class="Bordered">NIDMM_VAL_1_MICROAMP</td><td class="Bordered">1 &#181;A</td><td class="Bordered">NI 4080/4081/4082 and NI 4070/4071/4072</td></tr>
<tr><td class="Bordered">NIDMM_VAL_10_MICROAMP</td><td class="Bordered">10 &#181;A</td><td class="Bordered">NI 4080/4081/4082 and NI 4070/4071/4072 only</td></tr>
<tr><td class="Bordered">NIDMM_VAL_100_MICROAMP</td><td class="Bordered">100 &#181;A</td><td class="Bordered">NI 4080/4081/4082, NI 4070/4071/4072, and NI 4065</td></tr>
<tr><td class="Bordered">NIDMM_VAL_1_MILLIAMP (default)</td><td class="Bordered">1 mA</td><td class="Bordered">NI 4080/4081/4082, NI 4070/4071/4072, and NI 4065</td></tr>
</table>

</td>
</tr>
</table>
</body>
</html>    G
����  �    Status                            8�
   �  �    Instrument Handle                U -  � �    Current Source                     	                           n1 mA NIDMM_VAL_1_MILLIAMP 100 uA NIDMM_VAL_100_MICROAMP 10 uA NIDMM_VAL_10_MICROAMP 1 uA NIDMM_VAL_1_MICROAMP   ;    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_ConfigureWaveformCoupling</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>


<body>

<h1 class="function">niDMM_ConfigureWaveformCoupling</h1>

<p class="syntax">ViStatus = niDMM_ConfigureWaveformCoupling(ViSession Instrument_Handle, ViInt32 Waveform_Coupling)</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">For the NI&#160;4080/4081/4082 and the  NI&#160;4070/4071/4072, configures instrument coupling for voltage waveforms.</p>

</body>
</html>
    �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Waveform_Coupling</td>
<td class="paramDataType">ViInt32</td>
<td>Selects DC or AC coupling. The driver sets 
<a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 
'caNIDMM_ATTR_WAVEFORM_COUPLING.html')"><span class="Monospace"> 
NIDMM_ATTR_WAVEFORM_COUPLING</span></a> to this value.
<br><br>
<table class="Bordered">
<tr><th class="Bordered">Name</th><th class="Bordered">Value</th><th class="Bordered">Description</th>
</tr><tr>
<td class="Bordered">NIDMM_VAL_WAVEFORM_COUPLING_AC</td>
<td class="Bordered">0</td>   
<td class="Bordered">AC coupling</td>
</tr>
<tr>
<td class="Bordered">NIDMM_VAL_WAVEFORM_COUPLING_DC (default)</td>  
<td class="Bordered">1</td>
<td class="Bordered">DC coupling</td>
</tr>
</table>

</td>
</tr>
</table>
</body>
</html>    G
����  �    Status                            8�
   �  �    Instrument Handle                ^@ -  � �    Waveform Coupling                  	                          VAC Coupling NIDMM_VAL_WAVEFORM_COUPLING_AC DC Coupling NIDMM_VAL_WAVEFORM_COUPLING_DC   �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_ConfigureTrigger</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>

<h1 class="function">niDMM_ConfigureTrigger</h1>

<p class="syntax">ViStatus = niDMM_ConfigureTrigger(ViSession Instrument_Handle, ViInt32 Trigger_Source, ViReal64 Trigger_Delay)</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Configures the DMM <strong>Trigger_Source</strong> and <strong>Trigger_Delay</strong>. Refer to 
<a href="javascript:LaunchHelp('dmm.chm::/trigger.html')">Triggering</a> 

and
 
<a href="javascript:LaunchHelp('dmm.chm::/switch_selection.html')">Using Switches</a> for more information.</p>

</body>
</html>    x    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Trigger_Source</td>
<td class="paramDataType">ViInt32</td>
<td>Specifies the <strong>Trigger_Source</strong> that initiates the acquisition. The driver sets 
<a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 
'caNIDMM_ATTR_TRIGGER_SOURCE.html')"><span class="Monospace"> 
NIDMM_ATTR_TRIGGER_SOURCE</span></a> to this value. Software configures the DMM to wait until 
<a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 
'cviniDMM_SendSoftwareTrigger.html')"><span class="Monospace"> 
niDMM_SendSoftwareTrigger</span></a> is called before triggering the DMM.<br> 
<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif"></td>
<td>
<strong>Note</strong>&#160;&#160;To determine which values are supported by each device, refer to the 
<a href="javascript:LaunchHelp('dmm.chm::/CVItrigger_routing.html')">LabWindows/CVI Trigger Routing</a> section.</td></tr></table>

</td>
</tr>
</table>
</body>
</html>    �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Trigger_Delay</td>
<td class="paramDataType">ViReal64</td>
<td>Specifies the time that the DMM waits after it has received a trigger before taking a measurement. The driver sets the 
<a href="javascript:LaunchHelp('dmmcref.chm::/caNIDMM_ATTR_TRIGGER_DELAY.html')"><span class="Monospace">NIDMM_ATTR_TRIGGER_DELAY</span></a> attribute to this value. By default, <strong>Trigger_Delay</strong> is NIDMM_VAL_AUTO_DELAY (-1), which means the DMM waits an appropriate settling time before taking the measurement. On the NI&#160;4060, if you set <strong>Trigger_Delay</strong> to 0, the DMM does not settle before taking the measurement. The NI&#160;4065 and NI&#160;4070/4071/4072 use the value specified in <strong>Trigger_Delay</strong> as additional settling time.
<table class="Borderless-Wide">
<tr>
<td class="Icon"><img src="note.gif"></td>
<td>
<strong>Note</strong>&#160;&#160;When using the NI&#160;4050, <strong>Trigger_Delay</strong> must be set to NIDMM_VAL_AUTO_DELAY (-1).</td></tr></table>

</td>
</tr>
</table>
</body>
</html>


    G
����  �    Status                            8�
   �  �    Instrument Handle                f -  � �    Trigger Source                   j� - � �  �    Trigger Delay                      	                          "Immediate NIDMM_VAL_IMMEDIATE External NIDMM_VAL_EXTERNAL Software Trigger Function NIDMM_VAL_SOFTWARE_TRIG PXI Trigger Line 0 NIDMM_VAL_PXI_TRIG0 PXI Trigger Line 1 NIDMM_VAL_PXI_TRIG1 PXI Trigger Line 2 NIDMM_VAL_PXI_TRIG2 PXI Trigger Line 3 NIDMM_VAL_PXI_TRIG3 PXI Trigger Line 4 NIDMM_VAL_PXI_TRIG4 PXI Trigger Line 5 NIDMM_VAL_PXI_TRIG5 PXI Trigger Line 6 NIDMM_VAL_PXI_TRIG6 PXI Trigger Line 7 NIDMM_VAL_PXI_TRIG7 PXI Star Trigger Line NIDMM_VAL_PXI_STAR Local Bus Right Trigger 1 NIDMM_VAL_LBR_TRIG1 Aux Trigger Line 1 NIDMM_VAL_AUX_TRIG1    NIDMM_VAL_AUTO_DELAY   u    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_SendSoftwareTrigger</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>

<h1 class="function">niDMM_SendSoftwareTrigger</h1>

<p class="syntax">ViStatus = niDMM_SendSoftwareTrigger(ViSession Instrument_Handle)</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Sends a command to trigger the DMM. Call this function if you have configured either the 
<a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 
'caNIDMM_ATTR_TRIGGER_SOURCE.html')"><span class="Monospace"> 
NIDMM_ATTR_TRIGGER_SOURCE</span></a> or 
<a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 
'caNIDMM_ATTR_SAMPLE_TRIGGER.html')"><span class="Monospace"> 
NIDMM_ATTR_SAMPLE_TRIGGER</span></a> attributes. If the 
<a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 
'caNIDMM_ATTR_TRIGGER_SOURCE.html')"><span class="Monospace"> 
NIDMM_ATTR_TRIGGER_SOURCE</span></a> and/or 
<a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 
'caNIDMM_ATTR_SAMPLE_TRIGGER.html')"><span class="Monospace"> 
NIDMM_ATTR_SAMPLE_TRIGGER</span></a> attributes are set to NIDMM_VAL_EXTERNAL or NIDMM_VAL_TTL<em>n</em>, you can use this function to override the trigger source that you configured and trigger the device. The NI 4050 and NI 4060 are not supported.</p>

</body>
</html>    G
����  �    Status                            8�
   �  �    Instrument Handle                  	               {    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_ConfigureMeasCompleteDest</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>

<h1 class="function">niDMM_ConfigureMeasCompleteDest</h1>

<p class="syntax">ViStatus = niDMM_ConfigureMeasCompleteDest(ViSession Instrument_Handle, ViInt32 Meas_Complete_Destination)</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Specifies the destination of the DMM Measurement Complete (MC) signal. Refer to  <a href="javascript:LaunchHelp('dmm.chm::/trigger.html')">Triggering</a> for more information.</p>

</body>
</html>        <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Meas_Complete_Destination</td>
<td class="paramDataType">ViInt32</td>
<td>Specifies the destination of the Measurement Complete signal. This signal is issued when the DMM completes a single measurement. The driver sets the <a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'caNIDMM_ATTR_MEAS_COMPLETE_DEST.html')"><span class="Monospace"> NIDMM_ATTR_MEAS_COMPLETE_DEST</span></a>
 attribute to this value. This signal is commonly referred to as Voltmeter Complete.
<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif"></td>
<td>
<strong>Note</strong>&#160;&#160;To determine which values are supported by each device, refer to the <a href="javascript:LaunchHelp('dmm.chm::/CVItrigger_routing.html')">LabWindows/CVI Trigger Routing</a> section.</td></tr></table>

</td>
</tr>
</table>
</body>
</html>
    G
����  �    Status                            8�
   �  �    Instrument Handle                { -  � �    Meas Complete Destination          	                          �None NIDMM_VAL_NONE External NIDMM_VAL_EXTERNAL PXI Trigger Line 0 NIDMM_VAL_PXI_TRIG0 PXI Trigger Line 1 NIDMM_VAL_PXI_TRIG1 PXI Trigger Line 2 NIDMM_VAL_PXI_TRIG2 PXI Trigger Line 3 NIDMM_VAL_PXI_TRIG3 PXI Trigger Line 4 NIDMM_VAL_PXI_TRIG4 PXI Trigger Line 5 NIDMM_VAL_PXI_TRIG5 PXI Trigger Line 6 NIDMM_VAL_PXI_TRIG6 PXI Trigger Line 7 NIDMM_VAL_PXI_TRIG7 Local Bus Right Trigger 0 NIDMM_VAL_LBR_TRIG0    �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_ConfigureTriggerSlope</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>

<h1 class="function">niDMM_ConfigureTriggerSlope</h1>

<p class="syntax">ViStatus = niDMM_ConfigureTriggerSlope(ViSession Instrument_Handle, ViInt32 Trigger_Slope)</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Sets the <a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'caNIDMM_ATTR_TRIGGER_SLOPE.html')"><span class="Monospace"> NIDMM_ATTR_TRIGGER_SLOPE</span></a> attribute to either rising edge (positive) or falling edge (negative) polarity.</p>

</body>
</html>    4    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Trigger_Slope</td>
<td class="paramDataType">ViInt32</td>
<td>Specifies the polarity of the trigger signal on which the measurement is triggered for values of either NIDMM_VAL_POSITIVE or NIDMM_VAL_NEGATIVE. The driver sets the <a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'caNIDMM_ATTR_TRIGGER_SLOPE.html')"><span class="Monospace"> NIDMM_ATTR_TRIGGER_SLOPE</span></a> attribute to this value. 
<br><br>
<table class="Bordered" align="center">
<tr>
<td class="Bordered">NIDMM_VAL_POSITIVE</td>
<td class="Bordered">0</td>
<td class="Bordered">The driver triggers on the rising edge of the trigger signal.</td>
</tr>
<tr>
<td class="Bordered">NIDMM_VAL_NEGATIVE&#160;(default)</td>
<td class="Bordered">1</td>
<td class="Bordered">The driver triggers on the falling edge of the trigger signal.</td>
</tr>
</table>

</td>
</tr>
</table>
</body>
</html>
    G
����  �    Status                            8�
   �  �    Instrument Handle                �7 -  � �    Trigger Slope                      	                           8Negative NIDMM_VAL_NEGATIVE Positive NIDMM_VAL_POSITIVE   �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_ConfigureSampleTriggerSlope</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>

<h1 class="function">niDMM_ConfigureSampleTriggerSlope</h1>

<p class="syntax">ViStatus = niDMM_ConfigureSampleTriggerSlope(ViSession Instrument_Handle, ViInt32 Sample_Trigger_Slope)</p>

<h2 class="purpose">Purpose</h2>

<p class="Body"><p class="body">Sets the <a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'caNIDMM_ATTR_SAMPLE_TRIGGER_SLOPE.html')"><span class="Monospace"> NIDMM_ATTR_SAMPLE_TRIGGER_SLOPE</span></a> to either rising edge (positive) or falling edge (negative) polarity.</p>

</body>
</html>    �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Sample_Trigger_Slope</td>
<td class="paramDataType">ViInt32</td>
<td>Specifies the polarity of the Trigger signal on which the measurement is triggered for values of either NIDMM_VAL_POSITIVE or NIDMM_VAL_NEGATIVE. The driver sets <a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'caNIDMM_ATTR_SAMPLE_TRIGGER_SLOPE.html')"><span class="Monospace"> NIDMM_ATTR_SAMPLE_TRIGGER_SLOPE</span></a> to this value. 

<br><br>
<table class="Bordered" align="center">
<tr>
<td class="Bordered">Rising Edge</td>
<td class="Bordered">0</td>
<td class="Bordered">NIDMM_VAL_POSITIVE</td>
<td class="Bordered">The driver triggers on the rising edge of the trigger signal.</td>
</tr>
<tr>
<td class="Bordered">Falling Edge (default)</td>
<td class="Bordered">1</td>
<td class="Bordered">NIDMM_VAL_NEGATIVE</td>
<td class="Bordered">The driver triggers on the falling edge of the trigger signal.</td>
</tr>
</table>

</td>
</tr>
</table>
</body>
</html>


    G
����  �    Status                            8�
   �  �    Instrument Handle                �J -  � �    Sample Trigger Slope               	                           8Negative NIDMM_VAL_NEGATIVE Positive NIDMM_VAL_POSITIVE   3    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_ConfigureMeasCompleteSlope</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>

<h1 class="function">niDMM_ConfigureMeasCompleteSlope</h1>

<p class="syntax">ViStatus = niDMM_ConfigureMeasCompleteSlope(ViSession Instrument_Handle, ViInt32 Meas_Complete_Slope)</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Sets the Measurement Complete signal to either rising edge (positive) or falling edge (negative) polarity.</p>

</body>
</html>        <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Meas_Complete_Slope</td>
<td class="paramDataType">ViInt32</td>
<td>Specifies the polarity of the signal that is generated. The driver sets <a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'caNIDMM_ATTR_MEAS_DEST_SLOPE.html')"><span class="Monospace"> NIDMM_ATTR_MEAS_DEST_SLOPE</span></a> to this value. 
<br><br>
<table class="Bordered" align="center">
<tr>
<td class="Bordered">Rising Edge</td>
<td class="Bordered">0</td>
<td class="Bordered">NIDMM_VAL_POSITIVE</td>
<td class="Bordered">The driver triggers on the rising edge of the trigger signal.</td>
</tr>
<tr>
<td class="Bordered">Falling Edge (default)</td>
<td class="Bordered">1</td>
<td class="Bordered">NIDMM_VAL_NEGATIVE</td>
<td class="Bordered">The driver triggers on the falling edge of the trigger signal.</td>
</tr>
</table>

</td>
</tr>
</table>
</body>
</html>
    G
����  �    Status                            8�
   �  �    Instrument Handle                � -  � �    Meas Complete Slope                	                           8Negative NIDMM_VAL_NEGATIVE Positive NIDMM_VAL_POSITIVE       <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_GetAutoRangeValue</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>

<h1 class="function">niDMM_GetAutoRangeValue</h1>

<p class="syntax">ViStatus = niDMM_GetAutoRangeValue(ViSession Instrument_Handle, ViReal64 *Actual_Range)</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Returns the <strong>Actual_Range</strong> that the DMM is using, even when Auto Range is off.</p>

</body>
</html>    t    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Actual_Range</td>
<td class="paramDataType">ViReal64*</td>
<td>Indicates the <strong>Actual_Range</strong> the DMM is using. Returns the value of the <a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'caNIDMM_ATTR_AUTO_RANGE_VALUE.html')"><span class="Monospace"> NIDMM_ATTR_AUTO_RANGE_VALUE</span></a> attribute. The units of the returned value depend on the function. 

</td>
</tr>
</table>
</body>
</html>
    G
����  �    Status                            8�
   �  �    Instrument Handle                �6 -  �  �    Actual Range                       	                	           &    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_GetApertureTimeInfo</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>

<h1 class="function">niDMM_GetApertureTimeInfo</h1>

<p class="syntax">ViStatus = niDMM_GetApertureTimeInfo(ViSession Instrument_Handle, ViReal64 *Aperture_Time, ViInt32 *Aperture_Time_Units)</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Returns the DMM <strong>Aperture_Time</strong> and <strong>Aperture_Time_Units</strong>.</p>

</body>
</html>    �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Aperture_Time</td>
<td class="paramDataType">ViReal64*</td>
<td>Specifies the amount of time the DMM digitizes the input signal for a single measurement. This parameter does not include settling time. Returns the value of the <a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'caNIDMM_ATTR_APERTURE_TIME.html')"><span class="Monospace"> NIDMM_ATTR_APERTURE_TIME</span></a> attribute. The units of this attribute depend on the value of the <a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'caNIDMM_ATTR_APERTURE_TIME_UNITS.html')"><span class="Monospace"> NIDMM_ATTR_APERTURE_TIME_UNITS</span></a> attribute. 

<br><br>On the NI&#160;4070/4071/4072, the minimum aperture time is 8.89 &#181;s, and the maximum aperture time is 149&#160;s. Any number of powerline cycles (PLCs) within the minimum and maximum ranges is allowed on the NI&#160;4070/4071/4072.<br>
<br>On the NI&#160;4065 the minimum aperture time is 333 &#181;s, and the maximum aperture time is 78.2 s. If setting the number of averages directly, the total measurement time is aperture time X the number of averages, which must be less than 72.8 s. The aperture times allowed are 333 &#181;s, 667 &#181;s, or multiples of 1.11 ms&#8212;for example 1.11 ms, 2.22 ms, 3.33 ms, and so on. If you set an aperture time other than 333 &#181;s, 667 &#181;s, or multiples of 1.11 ms, the value will be coerced up to the next supported aperture time.<br>

<br>On the NI&#160;4060, when the powerline frequency is 60, the PLCs allowed are 1&#160;PLC, 6&#160;PLC, 12&#160;PLC, and 120&#160;PLC. When the powerline frequency is 50, the PLCs allowed are 1&#160;PLC, 5&#160;PLC, 10&#160;PLC, and 100&#160;PLC.

</td>
</tr>
</table>
</body>
</html>        <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Aperture_Time_Units</td>
<td class="paramDataType">ViInt32*</td>
<td>Indicates the units of aperture time as powerline cycles (PLCs) or seconds. Returns the value of the <a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'caNIDMM_ATTR_APERTURE_TIME_UNITS.html')"><span class="Monospace"> NIDMM_ATTR_APERTURE_TIME_UNITS</span></a> attribute. 
<br><br>
<table class="Bordered">
<tr><td class="Bordered">NIDMM_VAL_SECONDS</td>
<td class="Bordered">0</td> 
<td class="Bordered">Seconds</td>
</tr>
<tr><td class="Bordered">NIDMM_VAL_POWER_LINE_CYCLES</td>
<td class="Bordered">1</td>   
<td class="Bordered">Powerline Cycles</td>
</tr>
</table>

</td>
</tr>
</table>
</body>
</html>    G
����  �    Status                            8�
   �  �    Instrument Handle                �� -  �  �    Aperture Time                    �, - � �  �    Aperture Time Units                	                	            	           �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_GetMeasurementPeriod</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>

<h1 class="function">niDMM_GetMeasurementPeriod</h1>

<p class="syntax">ViStatus = niDMM_GetMeasurementPeriod(ViSession Instrument_Handle, ViReal64 *Period)</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Returns the measurement <strong>Period</strong>, which is the amount of time it takes to complete one measurement with the current configuration. Use this function right before you begin acquiring data&#8212;after you have completely configured the measurement and after all configuration functions have been called.</p>

</body>
</html>    �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Period</td>
<td class="paramDataType">ViReal64*</td>
<td>Returns the number of seconds it takes to make one measurement. 

<P class="Body">The first measurement in a multipoint acquisition requires additional settling time. This function does not include this additional time or any <a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'caNIDMM_ATTR_TRIGGER_DELAY.html')"><span class="Monospace"> NIDMM_ATTR_TRIGGER_DELAY</span></a> associated with the first measurement. Time required for internal measurements, such as <a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'caNIDMM_ATTR_AUTO_ZERO.html')"><span class="Monospace"> NIDMM_ATTR_AUTO_ZERO</span></a>, is included.</p>

</td>
</tr>
</table>
</body>
</html>    G
����  �    Status                            8�
   �  �    Instrument Handle                �� -  �  �    Period                             	                	               <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_SetAttributeViBoolean</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>

<h1 class="function">niDMM_SetAttributeViBoolean</h1>

<p class="syntax">ViStatus = niDMM_SetAttributeViBoolean(ViSession Instrument_Handle, ViConstString Channel_Name, ViAttr Attribute_ID, ViBoolean Attribute_Value)</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">This function sets the value of a ViBoolean attribute. </p>

<P class="Body">This is a low-level function that you can use to set the values of instrument-specific attributes and inherent IVI attributes. </p>

<P class="Body">If the attribute represents an instrument state, this function performs instrument I/O in the following cases:</p>

<UL>

<LI>State caching is disabled for the entire session or for the particular attribute. </LI>

<LI>State caching is enabled, and the currently cached value is invalid or is different than the value you specify. </LI></UL>

<P class="Body">This instrument driver contains high-level functions that set most of the instrument attributes. It is best to use the high-level driver functions as much as possible. They handle order dependencies and multithread locking for you. In addition, they perform status checking only after setting all of the attributes. </p>

<P class="Body">In contrast, when you set multiple attributes using the SetAttribute functions, the functions check the instrument status after each call. Also, when state caching is enabled, the high-level functions that configure multiple attributes perform instrument I/O only for the attributes whose value you change. Thus, you can safely call the high-level functions without the penalty of redundant instrument I/O.</p>

</body>
</html>    g    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Channel_Name</td>
<td class="paramDataType">ViConstString</td>
<td>This parameter is ignored. National Instruments DMMs do not support channel names since they only have a single channel. This parameter is included in order to support interchangeability and upgradability to multiple channel DMMs. 

<P class="Body">The default value is &#34; &#34; (an empty string).</p>

</td>
</tr>
</table>
</body>
</html>    L    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Attribute_ID</td>
<td class="paramDataType">ViAttr</td>
<td>Pass the ID of an attribute.

</td>
</tr>
</table>
</body>
</html>    k    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Attribute_Value</td>
<td class="paramDataType">ViBoolean</td>
<td>Pass the value that you want to set the attribute to.

</td>
</tr>
</table>
</body>
</html>    G
����  �    Status                            8�
   �  �    Instrument Handle                �4 -  �  �    Channel Name                     �� - � � �    Attribute ID                     �� -� � �    Attribute Value                    	                ""                0               False VI_FALSE True VI_TRUE       <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_SetAttributeViInt32</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>

<h1 class="function">niDMM_SetAttributeViInt32</h1>

<p class="syntax">ViStatus = niDMM_SetAttributeViInt32(ViSession Instrument_Handle, ViConstString Channel_Name, ViAttr Attribute_ID, ViInt32 Attribute_Value)</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">This function sets the value of a ViInt32 attribute. </p>

<P class="Body">This is a low-level function that you can use to set the values of instrument-specific attributes and inherent IVI attributes. </p>

<P class="Body">If the attribute represents an instrument state, this function performs instrument I/O in the following cases:</p>

<UL>

<LI>State caching is disabled for the entire session or for the particular attribute. </LI>

<LI>State caching is enabled, and the currently cached value is invalid or is different than the value you specify. </LI></UL>

<P class="Body">This instrument driver contains high-level functions that set most of the instrument attributes. It is best to use the high-level driver functions as much as possible. They handle order dependencies and multithread locking for you. In addition, they perform status checking only after setting all of the attributes. </p>

<P class="Body">In contrast, when you set multiple attributes using the SetAttribute functions, the functions check the instrument status after each call. Also, when state caching is enabled, the high-level functions that configure multiple attributes perform instrument I/O only for the attributes whose value you change. Thus, you can safely call the high-level functions without the penalty of redundant instrument I/O.</p>

</body>
</html>    i    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Attribute_Value</td>
<td class="paramDataType">ViInt32</td>
<td>Pass the value that you want to set the attribute to.

</td>
</tr>
</table>
</body>
</html>    G
����  �    Status                            8�
   �  �    Instrument Handle                �4 -  �  �    Channel Name                     �� - � � �    Attribute ID                     �� -� �  �    Attribute Value                 ���� E���                                            	                ""                0        0Press <ENTER> for a list
    of value constants       <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_SetAttributeViReal64</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>

<h1 class="function">niDMM_SetAttributeViReal64</h1>

<p class="syntax">ViStatus = niDMM_SetAttributeViReal64(ViSession Instrument_Handle, ViConstString Channel_Name, ViAttr Attribute_ID, ViReal64 Attribute_Value)</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">This function sets the value of a ViReal64 attribute. </p>

<P class="Body">This is a low-level function that you can use to set the values of instrument-specific attributes and inherent IVI attributes. </p>

<P class="Body">If the attribute represents an instrument state, this function performs instrument I/O in the following cases:</p>

<UL>

<LI>State caching is disabled for the entire session or for the particular attribute. </LI>

<LI>State caching is enabled, and the currently cached value is invalid or is different than the value you specify. </LI></UL>

<P class="Body">This instrument driver contains high-level functions that set most of the instrument attributes. It is best to use the high-level driver functions as much as possible. They handle order dependencies and multithread locking for you. In addition, they perform status checking only after setting all of the attributes. </p>

<P class="Body">In contrast, when you set multiple attributes using the SetAttribute functions, the functions check the instrument status after each call. Also, when state caching is enabled, the high-level functions that configure multiple attributes perform instrument I/O only for the attributes whose value you change. Thus, you can safely call the high-level functions without the penalty of redundant instrument I/O.</p>

</body>
</html>    j    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Attribute_Value</td>
<td class="paramDataType">ViReal64</td>
<td>Pass the value that you want to set the attribute to.

</td>
</tr>
</table>
</body>
</html>    G
����  �    Status                            8�
   �  �    Instrument Handle                �4 -  �  �    Channel Name                     �� - � � �    Attribute ID                     �	 -� �  �    Attribute Value                 ���� E���                                         ���� F���                                            	                ""                0        0Press <ENTER> for a list
    of value constants    0Press <ENTER> for a list
    of value constants       <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_SetAttributeViSession</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>

<h1 class="function">niDMM_SetAttributeViSession</h1>

<p class="syntax">ViStatus = niDMM_SetAttributeViSession(ViSession Instrument_Handle, ViConstString Channel_Name, ViAttr Attribute_ID, ViSession Attribute_Value</p>

<h2 class="purpose">Purpose</h2>

<p class="body">This function sets the value of a ViSession attribute. </p>

<P class="Body">This is a low-level function that you can use to set the values of instrument-specific attributes and inherent IVI attributes. </p>

<P class="Body">If the attribute represents an instrument state, this function performs instrument I/O in the following cases:</p>

<UL>

<LI>State caching is disabled for the entire session or for the particular attribute. </LI>

<LI>State caching is enabled, and the currently cached value is invalid or is different than the value you specify.</LI></UL>

</body>
</html>    k    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Attribute_Value</td>
<td class="paramDataType">ViSession</td>
<td>Pass the value that you want to set the attribute to.

</td>
</tr>
</table>
</body>
</html>    G
����  �    Status                            8�
   �  �    Instrument Handle                �4 -  �  �    Channel Name                     �� - � � �    Attribute ID                     ڢ -� �  �    Attribute Value                    	                ""                0           <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_SetAttributeViString</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>

<h1 class="function">niDMM_SetAttributeViString</h1>

<p class="syntax">ViStatus = niDMM_SetAttributeViString(ViSession Instrument_Handle, ViConstString Channel_Name, ViAttr Attribute_ID, ViString Attribute_Value[])</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">This function sets the value of a ViString attribute. </p>

<P class="Body">This is a low-level function that you can use to set the values of instrument-specific attributes and inherent IVI attributes. </p>

<P class="Body">If the attribute represents an instrument state, this function performs instrument I/O in the following cases:</p>

<UL>

<LI>State caching is disabled for the entire session or for the particular attribute. </LI>

<LI>State caching is enabled, and the currently cached value is invalid or is different than the value you specify. </LI></UL>

<P class="Body">This instrument driver contains high-level functions that set most of the instrument attributes. It is best to use the high-level driver functions as much as possible. They handle order dependencies and multithread locking for you. In addition, they perform status checking only after setting all of the attributes. </p>

<P class="Body">In contrast, when you set multiple attributes using the SetAttribute functions, the functions check the instrument status after each call. Also, when state caching is enabled, the high-level functions that configure multiple attributes perform instrument I/O only for the attributes whose value you change. Thus, you can safely call the high-level functions without the penalty of redundant instrument I/O.</p>

</body>
</html>    j    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Attribute_Value</td>
<td class="paramDataType">ViString</td>
<td>Pass the value that you want to set the attribute to.

</td>
</tr>
</table>
</body>
</html>    G
����  �    Status                            8�
   �  �    Instrument Handle                �4 -  �  �    Channel Name                     �� - � � �    Attribute ID                     �i -� �  �    Attribute Value                    	                ""                0       �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_GetAttributeViBoolean</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>

<h1 class="function">niDMM_GetAttributeViBoolean</h1>

<p class="syntax">ViStatus = niDMM_GetAttributeViBoolean(ViSession Instrument_Handle, ViConstString Channel_Name, ViAttr Attribute_ID, ViBoolean *Attribute_Value)</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Queries the value of a ViBoolean attribute. You can use this function to get the values of instrument-specific attributes and inherent IVI attributes. </p>

<P class="Body">If the attribute represents an instrument state, this function performs instrument I/O in the following cases: </p>

<UL>

<LI>State caching is disabled for the entire session or for the particular attribute. </LI>

<LI>State caching is enabled, and the currently cached value is invalid.</LI></UL>

</body>
</html>    �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Attribute_Value</td>
<td class="paramDataType">ViBoolean*</td>
<td>Returns the current value of the attribute. Pass the address of a ViBoolean variable.

</td>
</tr>
</table>
</body>
</html>    G
����  �    Status                            8�
   �  �    Instrument Handle                �4 -  �  �    Channel Name                     �� - � � �    Attribute ID                     �� -� �  �    Attribute Value                    	                ""                0    	           �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_GetAttributeViInt32</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>

<h1 class="function">niDMM_GetAttributeViInt32</h1>

<p class="syntax">ViStatus = niDMM_GetAttributeViInt32(ViSession Instrument_Handle, ViConstString Channel_Name, ViAttr Attribute_ID, ViInt32 *Attribute_Value)</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Queries the value of a ViInt32 attribute. You can use this function to get the values of instrument-specific attributes and inherent IVI attributes. </p>

<P class="Body">If the attribute represents an instrument state, this function performs instrument I/O in the following cases: </p>

<UL>

<LI>State caching is disabled for the entire session or for the particular attribute. </LI>

<LI>State caching is enabled, and the currently cached value is invalid.</LI></UL>

</body>
</html>    �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Attribute_Value</td>
<td class="paramDataType">ViInt32*</td>
<td>Returns the current value of the attribute. Pass the address of a ViInt32 variable.

</td>
</tr>
</table>
</body>
</html>    G
����  �    Status                            8�
   �  �    Instrument Handle                �4 -  �  �    Channel Name                     �� - � � �    Attribute ID                     �a -� �  �    Attribute Value                    	                ""                0    	           �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_GetAttributeViReal64</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>

<h1 class="function">niDMM_GetAttributeViReal64</h1>

<p class="syntax">ViStatus = niDMM_GetAttributeViReal64(ViSession Instrument_Handle, ViConstString Channel_Name, ViAttr Attribute_ID, ViReal64 *Attribute_Value)</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Queries the value of a ViReal64 attribute. You can use this function to get the values of instrument-specific attributes and inherent IVI attributes. 

</p>

<P class="Body">If the attribute represents an instrument state, this function performs instrument I/O in the following cases: </p>

<UL>

<LI>State caching is disabled for the entire session or for the particular attribute. </LI>

<LI>State caching is enabled, and the currently cached value is invalid.</LI></UL>

</body>
</html>    �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>
<body>

<table class="borderless"><tr>
<td class="paramName">Attribute_Value</td>
<td class="paramDataType">ViReal64*</td>
<td>Returns the current value of the attribute. Pass the address of a ViReal64 variable.

</td>
</tr>
</table>
</body>
</html>
    G
����  �    Status                            8�
   �  �    Instrument Handle                �4 -  �  �    Channel Name                     �� - � � �    Attribute ID                     �� -� �  �    Attribute Value                    	                ""                0    	           �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_GetAttributeViSession</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>

<h1 class="function">niDMM_GetAttributeViSession</h1>

<p class="syntax">ViStatus = niDMM_GetAttributeViSession(ViSession Instrument_Handle, ViConstString Channel_Name, ViAttr Attribute_ID, ViSession *Attribute_Value)</p>

<h2 class="purpose">Purpose</h2>

<p class="body">Queries the value of a ViSession attribute. You can use this function to get the values of instrument-specific attributes and inherent IVI attributes. </p>

<P class="Body">If the attribute represents an instrument state, this function performs instrument I/O in the following cases: </p>

<UL>

<LI>State caching is disabled for the entire session or for the particular attribute. </LI>

<LI>State caching is enabled, and the currently cached value is invalid.</LI></UL>

</body>
</html>    �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Attribute_Value</td>
<td class="paramDataType">ViSession*</td>
<td>Returns the current value of the attribute. Pass the address of a ViSession variable.

</td>
</tr>
</table>
</body>
</html>
    G
����  �    Status                            8�
   �  �    Instrument Handle                �4 -  �  �    Channel Name                     �� - � � �    Attribute ID                     �� -� �  �    Attribute Value                    	                ""                0    	           Y    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_GetAttributeViString</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>

<h1 class="function">niDMM_GetAttributeViString</h1>

<p class="syntax">ViStatus = niDMM_GetAttributeViString(ViSession Instrument_Handle, ViConstString Channel_Name, ViAttr Attribute_ID, ViInt32 Buffer_Size, ViChar Attribute_Value[])</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Queries the value of a ViString attribute. You can use this function to get the values of instrument-specific attributes and inherent IVI attributes. </p>

<P class="Body">If the attribute represents an instrument state, this function performs instrument I/O in the following cases: </p>

<UL>

<LI>State caching is disabled for the entire session or for the particular attribute. </li>

<LI>State caching is enabled, and the currently cached value is invalid. You must provide a ViChar array to serve as a buffer for the value. You pass the number of bytes in the buffer as the Array Size parameter. </LI></UL>

</body>
</html>    �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Buffer_Size</td>
<td class="paramDataType">ViInt32</td>
<td>Pass the number of bytes in the ViChar array you specify for the <strong>Attribute_Value</strong> parameter. 

<P class="Body">If the current value of the attribute, including the terminating NULL byte, contains more bytes that you indicate in this parameter, the function copies <strong>Buffer_Size</strong>&#8212;1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value. For example, if the value is &#34;123456&#34; and the <strong>Buffer_Size</strong> is 4, the function places &#34;123&#34; into the buffer and returns 7. </p>

<P class="Body">If you pass a negative number, the function copies the value to the buffer regardless of the number of bytes in the value. If you pass 0, you can pass VI_NULL for the <strong>Attribute_Value</strong> buffer parameter.</p>

</td>
</tr>
</table>
</body>
</html>    �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Attribute_Value</td>
<td class="paramDataType">ViChar[ ]</td>
<td>The buffer in which the function returns the current value of the attribute. The buffer must be of type ViChar and have at least as many bytes as indicated in the <strong>Buffer_Size</strong> parameter. 

<P class="Body">If you specify 0 for the <strong>Buffer_Size</strong> parameter, you can pass VI_NULL for this parameter.</p>

</td>
</tr>
</table>
</body>
</html>    G
����  �    Status                            8�
   �  �    Instrument Handle                �4 -  �  �    Channel Name                     �� - � � �    Attribute ID                     � -� �  �    Buffer Size                      
F �  �  �    Attribute Value                    	                ""                0        	           D    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_CheckAttributeViBoolean</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>

<h1 class="function">niDMM_CheckAttributeViBoolean</h1>

<p class="syntax">ViStatus = niDMM_CheckAttributeViBoolean(ViSession Instrument_Handle, ViConstString Channel_Name, ViAttr Attribute_ID, ViBoolean 
Attribute_Value)</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">This function checks the validity of a value you specify for a ViBoolean attribute.</p>


</body>
</html>    m    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Attribute_Value</td>
<td class="paramDataType">ViBoolean</td>
<td>Pass the value that you want to set the attribute to.

</td>
</tr>
</table>
</body>
</html>

    G
����  �    Status                            8�
   �  �    Instrument Handle                �4 -  �  �    Channel Name                     �� - � � �    Attribute ID                     � -� � �    Attribute Value                    	                ""                0               False VI_FALSE True VI_TRUE   :    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_CheckAttributeViInt32</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>

<h1 class="function">niDMM_CheckAttributeViInt32</h1>

<p class="syntax">ViStatus = niDMM_CheckAttributeViInt32(ViSession Instrument_Handle, ViConstString Channel_Name, ViAttr Attribute_ID, ViInt32 
Attribute_Value)</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">This function checks the validity of a value you specify for a ViInt32 attribute.</p>


</body>
</html>    i    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Attribute_Value</td>
<td class="paramDataType">ViInt32</td>
<td>Pass the value that you want to set the attribute to.

</td>
</tr>
</table>
</body>
</html>    G
����  �    Status                            8�
   �  �    Instrument Handle                �4 -  �  �    Channel Name                     �� - � � �    Attribute ID                     � -� �  �    Attribute Value                 ���� F���                                            	                ""                0        0Press <ENTER> for a list
    of value constants   ?    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_CheckAttributeViReal64</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>

<h1 class="function">niDMM_CheckAttributeViReal64</h1>

<p class="syntax">ViStatus = niDMM_CheckAttributeViReal64(ViSession Instrument_Handle, ViConstString Channel_Name, ViAttr Attribute_ID, ViReal64 
Attribute_Value)</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">This function checks the validity of a value you specify for a ViReal64 attribute.</p>


</body>
</html>    j    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Attribute_Value</td>
<td class="paramDataType">ViReal64</td>
<td>Pass the value that you want to set the attribute to.

</td>
</tr>
</table>
</body>
</html>    G
����  �    Status                            8�
   �  �    Instrument Handle                �4 -  �  �    Channel Name                     �� - � � �    Attribute ID                     � -� �  �    Attribute Value                 ���� F���                                         ���� F���                                            	                ""                0        0Press <ENTER> for a list
    of value constants    0Press <ENTER> for a list
    of value constants   D    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_CheckAttributeViSession</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>

<h1 class="function">niDMM_CheckAttributeViSession</h1>

<p class="syntax">ViStatus = niDMM_CheckAttributeViSession(ViSession Instrument_Handle, ViConstString Channel_Name, ViAttr Attribute_ID, ViSession 
Attribute_Value)</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">This function checks the validity of a value you specify for a ViSession attribute.</p>


</body>
</html>    k    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Attribute_Value</td>
<td class="paramDataType">ViSession</td>
<td>Pass the value that you want to set the attribute to.

</td>
</tr>
</table>
</body>
</html>    G
����  �    Status                            8�
   �  �    Instrument Handle                �4 -  �  �    Channel Name                     �� - � � �    Attribute ID                      � -� �  �    Attribute Value                    	                ""                0       ?    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_CheckAttributeViString</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>

<h1 class="function">niDMM_CheckAttributeViString</h1>

<p class="syntax">ViStatus = niDMM_CheckAttributeViString(ViSession Instrument_Handle, ViConstString Channel_Name, ViAttr Attribute_ID, ViChar 
Attribute_Value[])</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">This function checks the validity of a value you specify for a ViString attribute.</p>


</body>
</html>    k    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Attribute_Value</td>
<td class="paramDataType">ViChar[]</td>
<td>Pass the value that you want to set the attribute to. 

</td>
</tr>
</table>
</body>
</html>    G
����  �    Status                            8�
   �  �    Instrument Handle                �4 -  �  �    Channel Name                     �� - � � �    Attribute ID                     %� -� �  �    Attribute Value                    	                ""                0       �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_ImportAttributeConfigurationFile</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDMM_ImportAttributeConfigurationFile</h1>
<p class="syntax">ViStatus niDMM_ImportAttributeConfigurationFile
             (ViSession Instrument_Handle,
              ViConstString File_Path);</p>
<h2 class="purpose">Purpose</h2>
<p class="Body">Imports an attribute configuration to the session from the specified file.</p>

<p class="Body">You can export and import session attribute configurations only between NI&#8209;DMM devices with identical bus types and model numbers.</p>

<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&nbsp;&nbsp;You cannot call this function while the session is in a running state, such as while acquiring a waveform.</td>
</tr>
</table>

<p class="Body"><strong>Coercion Behavior for Certain Devices</strong></p>
<p class="Body">Imported and exported attribute configurations contain coerced values for the following NI&#8209;DMM devices:</p>
<ul>
<li>PXI/PCI/PCIe/USB&#8209;4065</li>
<li>PXI/PCI&#8209;4070</li>
<li>PXI&#8209;4071</li>
<li>PXI&#8209;4072</li>
</ul>
<p class="Body">NI&#8209;DMM coerces attribute values when the value you set is within the allowed range for the attribute but is not one of the discrete values the attribute supports. For example, for an attribute that coerces values up, if you choose a value of 4 when the adjacent valid values are 1 and 10, the attribute coerces the value to 10.</p>

<p class="Body"><strong>Related Topics:</strong></p>
<p class="Body"><a href="javascript:LaunchHelp('DMM.chm::/attributes.html')">Using Attributes and Properties with NI&#8209;DMM</a></p>
<p class="Body"><a href="javascript:LaunchHelp('DMM.chm::/setting_before_reading_attributes')">Setting Attributes Before Reading Attributes</a></p>


</body>
</html>    )    <html>
<head>
<script src="launchhelp.js"></script>
<title>filePath</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<table class="borderless"><tr>
<td class="paramName">File_Path</td>
<td class="paramDataType">ViConstString</td>
<td>The absolute path to the file that contains the attribute configuration to import. If you specify an empty or relative path, this function returns an error.<br><br><strong>Default File Extension:</strong><span class="Monospace"> .nidmmconfig</span></td>
</tr></table>
</body>

</html>    G#����  �    Status                            8�-   �  �    Instrument Handle                0( 2  �  �    File Path                          	                  �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_ExportAttributeConfigurationFile</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDMM_ExportAttributeConfigurationFile</h1>
<p class="syntax">ViStatus niDMM_ExportAttributeConfigurationFile
             (ViSession Instrument_Handle,
              ViConstString File_Path);</p>

<h2 class="purpose">Purpose</h2>
<p class="Body">Exports the attribute configuration of the session to the specified file.</p>

<p class="Body">You can export and import session attribute configurations only between NI&#8209;DMM devices with identical bus types and model numbers.</p>

<p class="Body">This function verifies that the attributes you have configured for the session are valid. If the configuration is invalid, NI&#8209;DMM returns an error.</p>

<p class="Body"><strong>Coercion Behavior for Certain Devices</strong></p>
<p class="Body">Imported and exported attribute configurations contain coerced values for the following NI&#8209;DMM devices:</p>
<ul>
<li>PXI/PCI/PCIe/USB&#8209;4065</li>
<li>PXI/PCI&#8209;4070</li>
<li>PXI&#8209;4071</li>
<li>PXI&#8209;4072</li>
</ul>
<p class="Body">NI&#8209;DMM coerces attribute values when the value you set is within the allowed range for the attribute but is not one of the discrete values the attribute supports. For example, for an attribute that coerces values up, if you choose a value of 4 when the adjacent valid values are 1 and 10, the attribute coerces the value to 10.</p>

<p class="Body"><strong>Related Topics:</strong></p>
<p class="Body"><a href="javascript:LaunchHelp('DMM.chm::/attributes.html')">Using Attributes and Properties with NI&#8209;DMM</a></p>
<p class="Body"><a href="javascript:LaunchHelp('DMM.chm::/setting_before_reading_attributes.html')">Setting Attributes Before Reading Attributes</a></p>

</body>

</html>    J    <html>
<head>
<script src="launchhelp.js"></script>
<title>File_Path</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<table class="borderless"><tr>
<td class="paramName">File_Path</td>
<td class="paramDataType">ViConstString</td>
<td>The absolute path to a placeholder file you must create to contain the attribute configuration you want to export. If you specify an empty or relative path, this function returns an error.<br><br><strong>Default file extension:</strong><span class="Monospace"> .nidmmconfig</span></td>
</tr></table>
</body>

</html>    G#����  �    Status                            8�-   �  �    Instrument Handle                :� 2  �  �    File Path                          	                  �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_ImportAttributeConfigurationBuffer</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDMM_ImportAttributeConfigurationBuffer</h1>
<p class="syntax">ViStatus niDMM_ImportAttributeConfigurationBuffer
             (ViSession Instrument_Handle, ViInt32 Size,
              ViAddr Configuration);</p>
<h2 class="purpose">Purpose</h2>
<p class="Body">Imports an attribute configuration to the session from the specified buffer.</p>
<p class="Body">You can export and import session attribute configurations only between NI&#8209;DMM devices with identical bus types and model numbers.</p>

<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&nbsp;&nbsp;You cannot call this function while the session is in a running state, such as while acquiring a waveform.</td>
</tr>
</table>

<p class="Body"><strong>Coercion Behavior for Certain Devices</strong></p>
<p class="Body">Imported and exported attribute configurations contain coerced values for the following NI&#8209;DMM devices:</p>
<ul>
<li>PXI/PCI/PCIe/USB&#8209;4065</li>
<li>PXI/PCI&#8209;4070</li>
<li>PXI&#8209;4071</li>
<li>PXI&#8209;4072</li>
</ul>
<p class="Body">NI&#8209;DMM coerces attribute values when the value you set is within the allowed range for the attribute but is not one of the discrete values the attribute supports. For example, for an attribute that coerces values up, if you choose a value of 4 when the adjacent valid values are 1 and 10, the attribute coerces the value to 10.</p>

<p class="Body"><strong>Related Topics:</strong></p>
<p class="Body"><a href="javascript:LaunchHelp('DMM.chm::/attributes.html')">Using Attributes and Properties with NI&#8209;DMM</a></p>
<p class="Body"><a href="javascript:LaunchHelp('DMM.chm::/setting_before_reading_attributes.html')">Setting Attributes Before Reading Attributes</a></p>

</body>

</html>    �    <html>
<head>
<script src="launchhelp.js"></script>
<title>size</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<table class="borderless"><tr>
<td class="paramName">Size</td>
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
<td class="paramName">Configuration</td>
<td class="paramDataType">ViAddr</td>
<td>Specifies the byte array that contains the attribute configuration to import.</td>
</tr></table>
</body>

</html>    G#����  �    Status                            8�-   �  �    Instrument Handle                E� 2  �  �    Size                             GG 2 � �  �    Configuration                      	               0       �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_ExportAttributeConfigurationBuffer</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDMM_ExportAttributeConfigurationFile</h1>
<p class="syntax">ViStatus niDMM_ExportAttributeConfigurationBuffer
             (ViSession Instrument_Handle, ViInt32 Size,
              ViAddr Configuration);</p>

<h2 class="purpose">Purpose</h2>
<p class="Body">Exports the attribute configuration of the session to a buffer.</p>

<p class="Body">You can export and import session attribute configurations only between NI&#8209;DMM devices with identical bus types and model numbers.</p>

<p class="Body">This function verifies that the attributes you have configured for the session are valid. If the configuration is invalid, NI&#8209;DMM returns an error.</p>

<p class="Body"><strong>Coercion Behavior for Certain Devices</strong></p>
<p class="Body">Imported and exported attribute configurations contain coerced values for the following NI&#8209;DMM devices:</p>
<ul>
<li>PXI/PCI/PCIe/USB&#8209;4065</li>
<li>PXI/PCI&#8209;4070</li>
<li>PXI&#8209;4071</li>
<li>PXI&#8209;4072</li>
</ul>
<p class="Body">NI&#8209;DMM coerces attribute values when the value you set is within the allowed range for the attribute but is not one of the discrete values the attribute supports. For example, for an attribute that coerces values up, if you choose a value of 4 when the adjacent valid values are 1 and 10, the attribute coerces the value to 10.</p>

<p class="Body"><strong>Related Topics:</strong></p>
<p class="Body"><a href="javascript:LaunchHelp('DMM.chm::/attributes.html')">Using Attributes and Properties with NI&#8209;DMM</a></p>
<p class="Body"><a href="javascript:LaunchHelp('DMM.chm::/setting_before_reading_attributes.html')">Setting Attributes Before Reading Attributes</a></p>

</body>

</html>    �    <html>
<head>
<script src="launchhelp.js"></script>
<title>Size</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<table class="borderless"><tr>
<td class="paramName">Size</td>
<td class="paramDataType">ViInt32</td>
<td>Specifies the size, in bytes, of the byte array to export. If you enter <span class="Monospace">0</span>, this function returns the needed size.</td>
</tr></table>
</body>

</html>        <html>
<head>
<script src="launchhelp.js"></script>
<title>Configuration</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<table class="borderless"><tr>
<td class="paramName">Configuration</td>
<td class="paramDataType">ViAddr</td>
<td>Specifies the byte array that contains the exported attribute configuration.</td>
</tr></table>
</body>

</html>    G#����  �    Status                            8�-   �  �    Instrument Handle                QP 2  �  �    Size                             S
 2 � �  �    Configuration                      	               0       �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_Read</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>

<h1 class="function">niDMM_Read</h1>

<p class="syntax">ViStatus = niDMM_Read(ViSession Instrument_Handle, ViInt32 Maximum_Time, ViReal64 *Reading)</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Acquires a single measurement and returns the measured value.</p>

</body>
</html>    /    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Maximum_Time</td>
<td class="paramDataType">ViInt32</td>
<td>Specifies the <strong>Maximum_Time</strong> allowed for this function to complete in milliseconds. If the function does not complete within this time interval, the function returns the NIDMM_ERROR_MAX_TIME_EXCEEDED error code. This may happen if an external trigger has not been received, or if the specified timeout is not long enough for the acquisition to complete.<p>The valid range is 0&#8211;86400000. The default value is NIDMM_VAL_TIME_LIMIT_AUTO (-1). The DMM calculates the timeout automatically.

</td>
</tr>
</table>
</body>
</html>

    W    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Reading</td>
<td class="paramDataType">ViReal64*</td>
<td>The measured value returned from the DMM.

</td>
</tr>
</table>
</body>
</html>    G
����  �    Status                            8�
   �  �    Instrument Handle                WV -  �  �    Maximum Time                     Z� - � �  �    Reading                            	                NIDMM_VAL_TIME_LIMIT_AUTO    	           �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_ReadMultiPoint</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>

<h1 class="function">niDMM_ReadMultiPoint</h1>

<p class="syntax">ViStatus = niDMM_ReadMultiPoint(ViSession Instrument_Handle, ViInt32 Maximum_Time, ViInt32 Array_Size, ViReal64 Reading_Array[], ViInt32 *Actual_Number_Of_Points)</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Acquires multiple measurements and returns an array of measured values. The number of measurements the DMM makes is determined by the values you specify for the <strong>Trigger_Count</strong> and <strong>Sample_Count</strong> parameters in <a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'cviniDMM_ConfigureMultiPoint.html')"><span class="Monospace"> niDMM_ConfigureMultiPoint</span></a>.</p>

</body>
</html>    Y    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Array_Size</td>
<td class="paramDataType">ViInt32</td>
<td>Specifies the number of measurements to acquire. The maximum number of measurements for a finite acquisition is the (<strong>Trigger Count</strong> x <strong>Sample Count</strong>) parameters in <a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'cviniDMM_ConfigureMultiPoint.html')"><span class="Monospace"> niDMM_ConfigureMultiPoint</span></a>. <p>For continuous acquisitions, up to 100,000 points can be returned at once. The number of measurements can be a subset.  The valid range is any positive ViInt32. The default value is 1.</p>

</td>
</tr>
</table>
</body>
</html>

    g    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Reading_Array</td>
<td class="paramDataType">ViReal64[]</td>
<td>An array of measurement values.

<table class="Borderless-Wide">
<tr>
<td class="Icon"><img SRC="note.gif"></td>
<td><strong>Note </strong>&#160;&#160;The size of the <strong>Reading_Array</strong> must be at least the size that you specify for the <strong>Array_Size</strong> parameter.</td></tr></table>


</td>
</tr>
</table>
</body>
</html>    �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Actual_Number_Of_Points</td>
<td class="paramDataType">ViInt32*</td>
<td>Indicates the number of measured values actually retrieved from the DMM.

</td>
</tr>
</table>
</body>
</html>
    G
����  �    Status                            8�
   �  �    Instrument Handle                WV -  �  �    Maximum Time                     `� - � �  �    Array Size                       c� -� �  �    Reading Array                    fR �  �  �    Actual Number Of Points            	                NIDMM_VAL_TIME_LIMIT_AUTO    1    	            	           �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_ReadWaveform</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>

<h1 class="function">niDMM_ReadWaveform</h1>

<p class="syntax">ViStatus = niDMM_ReadWaveform(ViSession Instrument_Handle, ViInt32 Maximum_Time, ViInt32 Array_Size, ViReal64 Waveform_Array[], ViInt32 *Actual_Number_Of_Points)</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">For the NI&#160;4080/4081/4082 and the NI&#160;4070/4071/4072, acquires a waveform and returns data as an array of values or as a waveform data type. The number of elements in the <strong>Waveform_Array</strong> is determined by the values you specify for the <strong>Waveform_Points</strong> parameter in <a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'cviniDMM_ConfigureWaveformAcquisition.html')"><span class="Monospace"> niDMM_ConfigureWaveformAcquisition</span></a>.</p>

</body>
</html>    �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Array_Size</td>
<td class="paramDataType">ViInt32</td>
<td>Specifies the number of waveform points to return. You specify the total number of points that the DMM acquires in the <strong>Waveform Points</strong> parameter of <a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'cviniDMM_ConfigureWaveformAcquisition.html')"><span class="Monospace"> niDMM_ConfigureWaveformAcquisition</span></a>. The default value is 1.

</td>
</tr>
</table>
</body>    h    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>
<table class="borderless"><tr>
<td class="paramName">Waveform_Array</td>
<td class="paramDataType">ViReal64[]</td>
<td>An array of measurement values. 
<table class="Borderless-Wide">
<tr>
<td class="Icon"><img SRC="note.gif"></td>
<td><strong>Note </strong>&#160;&#160;The size of the <strong>Waveform_Array</strong> must be at least the size that you specify for the <strong>Array_Size</strong> parameter.</td></tr></table>


</td>
</tr>
</table>
</body>
</html>    G
����  �    Status                            8�
   �  �    Instrument Handle                WV -  �  �    Maximum Time                     mA - � �  �    Array Size                       o� -� �  �    Waveform Array                   fR �  �  �    Actual Number Of Points            	                NIDMM_VAL_TIME_LIMIT_AUTO    1    	            	           N    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_IsOverRange</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>

<h1 class="function">niDMM_IsOverRange</h1>

<p class="syntax">ViStatus = niDMM_IsOverRange(ViSession Instrument_Handle, ViReal64 Measurement_Value, ViBoolean *Is_Over_Range)</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Takes a <strong>Measurement_Value</strong> and determines if the value is a valid measurement or a value indicating that an overrange condition occurred.</p>

</body>
</html>    d    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>
<table class="borderless"><tr>
<td class="paramName">Measurement_Value</td>
<td class="paramDataType">ViReal64</td>
<td>The measured value returned from the DMM. 
<table class="Borderless-Wide">
<tr>
<td class="Icon"><img SRC="note.gif"></td>
<td><strong>Note </strong>&#160;&#160;If an overrange condition occurs, the <strong>Measurement_Value</strong> contains an IEEE-defined NaN (Not a Number) value.</td></tr></table>

</td>
</tr>
</table>
</body>
</html>    �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Is_Over_Range</td>
<td class="paramDataType">ViBoolean*</td>
<td>Returns whether the measurement value is a valid measurement or an overrange condition. 
<br><br>
<table class="Bordered">
<tr>
<td class="Bordered">VI_TRUE</td>
<td class="Bordered">1</td>
<td class="Bordered">The value indicates that an overrange condition occurred.</td>
</tr>
<tr>
<td class="Bordered">VI_FALSE</td>
<td class="Bordered">0</td>
<td class="Bordered">The value is a valid measurement.</td>
</tr>
</table>

</td>
</tr>
</table>
</body>
</html>    G
����  �    Status                            8�
   �  �    Instrument Handle                v0 -  �  �    Measurement Value                x� - � �  �    Is Over Range                      	                    	           S    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_IsUnderRange</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>

<h1 class="function">niDMM_IsUnderRange</h1>

<p class="syntax">ViStatus = niDMM_IsUnderRange(ViSession Instrument_Handle, ViReal64 Measurement_Value, ViBoolean *Is_Under_Range)</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Takes a <strong>Measurement_Value</strong> and determines if the value is a valid measurement or a value indicating that an underrange condition occurred.</p>

</body>
</html>    �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Is_Under_Range</td>
<td class="paramDataType">ViBoolean*</td>
<td>Returns whether the <strong>Measurement_Value</strong> is a valid measurement or an underrange condition. 
<br><br>
<table class="Bordered">
<tr>
<td class="Bordered">VI_TRUE</td>
<td class="Bordered">1</td>
<td class="Bordered">The value indicates that an underrange condition occurred.</td>
</tr>
<tr>
<td class="Bordered">VI_FALSE</td>
<td class="Bordered">0</td>
<td class="Bordered">The value is a valid measurement.</td>
</tr>
</table>

</td>
</tr>
</table>
</body>
</html>    G
����  �    Status                            8�
   �  �    Instrument Handle                v0 -  �  �    Measurement Value                ~� - � �  �    Is Under Range                     	                    	           0    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_Initiate</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>

<h1 class="function">niDMM_Initiate</h1>

<p class="syntax">ViStatus = niDMM_Initiate(ViSession Instrument_Handle)</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Initiates an acquisition. After you call this function, the DMM leaves the Idle state and enters the Wait-for-Trigger state. If trigger is set to Immediate mode, the DMM begins acquiring measurement data. Use 
<a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 
'cviniDMM_Fetch.html')"><span class="Monospace"> 
niDMM_Fetch</span></a>, 
<a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 
'cviniDMM_FetchMultiPoint.html')"><span class="Monospace"> 
niDMM_FetchMultiPoint</span></a>, or 
<a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 
'cviniDMM_FetchWaveform.html')"><span class="Monospace"> 
niDMM_FetchWaveform</span></a> to retrieve the measurement data. </p>

</body>
</html>    G
����  �    Status                            8�
   �  �    Instrument Handle                  	               �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_Fetch</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>

<h1 class="function">niDMM_Fetch</h1>

<p class="syntax">niDMM_Fetch(ViSession Instrument_Handle, ViInt32 Maximum_Time, ViReal64 *Reading)</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Returns the value from a previously initiated measurement. You must call 
<a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 
'cviniDMM_Initiate.html')"><span class="Monospace"> 
niDMM_Initiate</span></a> before calling this function.</p>

</body>
</html>    G
����  �    Status                            8�
   �  �    Instrument Handle                WV -  �  �    Maximum Time                     Z� - � �  �    Reading                            	                NIDMM_VAL_TIME_LIMIT_AUTO    	           j    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_FetchMultiPoint</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>

<h1 class="function">niDMM_FetchMultiPoint</h1>

<p class="syntax">ViStatus = niDMM_FetchMultiPoint(ViSession Instrument_Handle, ViInt32 Maximum_Time, ViInt32 Array_Size, ViReal64 Reading_Array[], ViInt32 *Actual_Number_Of_Points)</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Returns an array of values from a previously initiated multipoint measurement. The number of measurements the DMM makes is determined by the values you specify for the <strong>Trigger_Count</strong> and <strong>Sample_Count</strong> parameters of 
<a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 
'cviniDMM_ConfigureMultiPoint.html')"><span class="Monospace"> 
niDMM_ConfigureMultiPoint</span></a>. You must first call 
<a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 
'cviniDMM_Initiate.html')"><span class="Monospace"> 
niDMM_Initiate</span></a> to initiate a measurement before calling this function.</p>

</body>
</html>    G
����  �    Status                            8�
   �  �    Instrument Handle                WV -  �  �    Maximum Time                     `� - � �  �    Array Size                       c� -� �  �    Reading Array                    fR �  �  �    Actual Number Of Points            	                NIDMM_VAL_TIME_LIMIT_AUTO    1    	            	           0    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_FetchWaveform</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>

<h1 class="function">niDMM_FetchWaveform</h1>

<p class="syntax">ViStatus = niDMM_FetchWaveform(ViSession Instrument_Handle, ViInt32 Maximum_Time, ViInt32 Array_Size, ViReal64 Waveform_Array[], ViInt32 *Actual_Number_Of_Points)</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">For the NI&#160;4080/4081/4082 and the NI&#160;4070/4071/4072, returns an array of values from a previously initiated waveform acquisition. You must call <a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'cviniDMM_Initiate.html')"><span class="Monospace"> niDMM_Initiate</span></a> before calling this function.</p>

</body>
</html>    �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Array_Size</td>
<td class="paramDataType">ViInt32</td>
<td>Specifies the number of waveform points to return. You specify the total number of points that the DMM acquires in the <strong>Waveform Points</strong> parameter of <a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'cviniDMM_ConfigureWaveformAcquisition.htm')"><span class="Monospace"> niDMM_ConfigureWaveformAcquisition</span></a>. The default value is 1.

</td>
</tr>
</table>
</body>    �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Waveform_Array</td>
<td class="paramDataType">ViReal64 []</td>
<td><strong>Waveform Array</strong> is an array of measurement values stored in waveform data type.

</td>
</tr>
</table>
</body>    G
����  �    Status                            8�
   �  �    Instrument Handle                WV -  �  �    Maximum Time                     �3 - � �  �    Array Size                       �� -� �  �    Waveform Array                   fR �  �  �    Actual Number Of Points            	                NIDMM_VAL_TIME_LIMIT_AUTO    1    	            	           �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_Abort</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>

<h1 class="function">niDMM_Abort</h1>

<p class="syntax">ViStatus = niDMM_Abort(ViSession Instrument_Handle)</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Aborts a previously initiated measurement and returns the DMM to the Idle state.</p>

</body>
</html>    G
����  �    Status                            8�
   �  �    Instrument Handle                  	               �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_ReadStatus</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>

<h1 class="function">niDMM_ReadStatus</h1>

<p class="syntax">ViStatus = niDMM_ReadStatus(ViSession Instrument_Handle, ViInt32 *Acquisition_Backlog, ViInt16 *Acquisition_Status)</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Returns measurement backlog and acquisition status. Use this function to determine how many measurements are available before calling <a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'cviniDMM_Fetch.html')"><span class="Monospace"> niDMM_Fetch</span></a>, <a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'cviniDMM_FetchMultiPoint.html')"><span class="Monospace"> niDMM_FetchMultipoint</span></a>, or <a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'cviniDMM_FetchWaveform.html')"><span class="Monospace"> niDMM_FetchWaveform</span></a>.</p>
<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&#160;&#160;The NI&#160;4050 is not supported.</td>
</tr>
</table>

</body>
</html>    �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Acquisition_Backlog</td>
<td class="paramDataType">ViInt32*</td>
<td>The number of measurements available to be read. If the backlog continues to increase, data is eventually overwritten, resulting in an error. <table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&#160;&#160;On the NI 4060, the <strong>Backlog</strong> does not increase 
when autoranging. On the NI 4065, the <strong>Backlog</strong>
 does not increase when Range is set to AUTO RANGE ON (-1), or before the first point is fetched when Range is set to AUTO RANGE ONCE (-3). These behaviors are due to the autorange model of the devices. </td>

</tr>
</table> 

</td>
</tr>
</table>
</body>
</html>


    Y    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Acquisition_Status</td>
<td class="paramDataType">ViInt16*</td>
<td>Indicates status of the acquisition. The following table shows the acquisition states:
<br><br>
<table class="Bordered">
<tr>
<td class="Bordered">0</td>
<td class="Bordered">Running</td>
</tr>
<tr>
<td class="Bordered">1</td>
<td class="Bordered">Finished with backlog</td>
</tr>
<tr>
<td class="Bordered">2</td>
<td class="Bordered">Finished with no backlog</td>
</tr>
<tr>
<td class="Bordered">3</td>
<td class="Bordered">Paused</td>
</tr>
<tr>
<td class="Bordered">4</td>
<td class="Bordered">No acquisition in progress</td>
</tr>
</table>

</td>
</tr>
</table>
</body>
</html>
    G
����  �    Status                            8�
   �  �    Instrument Handle                �� -  �  �    Acquisition Backlog              �� - � �  �    Acquisition Status                 	                	            	           b    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_Control</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>

<h1 class="function">niDMM_Control</h1>

<p class="syntax">ViStatus = niDMM_Control(ViSession Instrument_Handle, ViInt32 Control_Action)</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Controls the DMM. Use this function if you want a parameter change to be 
immediately reflected in the hardware.  Use this function before calling <a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'cvinidMM_Initiate.html')"><span class="Monospace"> niDMM_Initiate</span></a> 
to make the initiate call as quickly as possible.</p>

<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif"></td>
<td>
<strong>Notes</strong>&#160;&#160;The NI 4050 and NI 4060 are not supported.<br><br>
Calling this function  while the DMM is taking measurements   results in an error.  After the DMM is finished 
taking measurements, calling this function  will make any unfetched data points unavailable.
</td></tr></table>

</body>
</html>    �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>
<body>

<table class="borderless"><tr>
<td class="paramName">Control Action</td>
<td class="paramDataType">ViInt32</td>
<td>The action you want the driver to perform. Only  NIDMM_VAL_CONTROL_COMMIT (0) is supported, which commits to hardware all of the 
configured attributes associated with the session.  

</td>
</tr>
</table>
</body>
</html>


    G����  �    Status                            8�
   �  �    Instrument Handle                �\ -  �  �    Control Action                     	                NIDMM_VAL_CONTROL_COMMIT   �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_SelfCal</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>

<h1 class="function">niDMM_SelfCal</h1>

<p class="syntax">ViStatus = niDMM_SelfCal(ViSession Instrument_Handle)</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">For the NI 4080/4081/4082 and the NI 4070/4071/4072, executes the self-calibration routine to maintain measurement accuracy.</p> 

<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif"></td>
<td>
<strong>Note</strong>&#160;&#160;This function calls <a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'cviniDMM_reset.html')"><span class="Monospace"> niDMM_reset</span></a>, and any configurations previous to the call will be lost.  All attributes will be set to their default values after the call returns.
</td>
</tr>
</table>


</body>
</html>    G
����  �    Status                            8�
   �  �    Instrument Handle                  	               
u    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_InitExtCal</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>

<h1 class="function">niDMM_InitExtCal</h1>

<p class="syntax">ViStatus = niDMM_InitExtCal(ViString Resource_Name, ViChar Calibration_Password[], ViSession *Instrument_Handle)</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">The following operations are performed if the <strong>Calibration_Password</strong> is valid:</p>
<ul>
<li>Creates a new session for external calibration to the device you specify for the <strong>Resource_Name</strong> parameter. </li>
<li>Resets the device and prepares the EEPROM for new calibration coefficients.</li>
<li>Returns a ViSession handle that you use to identify the instrument in all calibration adjustments and post-adjustment verification steps.</li>
</ul>

<table class="Borderless-Wide"><tr><td class="Icon"><img SRC="note.gif"></td><td><strong>Notes</strong> </td><td>The NI&#160;4050 and NI&#160;4060 are not supported.<br><br>Refer to the <em>NI&#160;4065 6&#189; Digit DMM Calibration Procedure</em>, the <em>NI&#160;4070/4072 6&#189; Digit FlexDMM Calibration Procedure</em>, or the <em>NI&#160;4071 7&#189;&#8211;Digit FlexDMM Calibration Procedure</em> before using this function.<br><br>This function creates a new session the first time you invoke it for a device. If you call this function on the same resource, an error is returned. You should use <a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'cviniDMM_CloseExtCal.html')"><span class="Monospace"> niDMM_CloseExtCal</span></a> to close a session obtained using this function.</td></tr></table>

<P class="Body">After opening a calibration session, the device cannot take valid measurements using this session until the device has been properly adjusted. Once the adjustment phase is complete, you can use this session to verify the new calibration constants. After verification, you have the option of saving the new calibration constants or reverting to the previous calibration constants by specifying the <strong>Action</strong> parameter in <a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'cviniDMM_CloseExtCal.html')"><span class="Monospace"> niDMM_CloseExtCal</span></a>.</p>

<p>If you encounter a fatal error such as a power failure or system crash while performing an external calibration, you can call <a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'cviniDMM_RestoreLastExtCalConstants.html')"><span class="Monospace"> niDMM_RestoreLastExtCalConstants</span></a> to return the device to a usable state.</p>

</body>
</html>    *    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Calibration_Password</td>
<td class="paramDataType">ViChar[]</td>
<td>Specifies the password required to enable external calibration functionality. <P class="Body">The maximum password string length is eight characters, excluding the termination character. &#34;NI&#34; is the factory-default password.</p>

</td>
</tr>
</table>
</body>
</html>

    �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Instrument_Handle</td>
<td class="paramDataType">ViSession</td>
<td>The session handle that you obtain from <span class="Monospace">niDMM_InitExtCal</span>. The handle identifies a particular instrument calibration session.

</td>
</tr>
</table>
</body>
</html>

    G
����  �    Status                            X -   �  �    Resource Name                    �� - � �  �    Calibration Password             �� -� �  �    Instrument Handle                  	            "DAQ::1::INSTR"        	           ,    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_CalAdjustLinearization</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>

<h1 class="function">niDMM_CalAdjustLinearization</h1>

<p class="syntax">ViStatus = niDMM_CalAdjustLinearization(ViSession Instrument_Handle, ViInt32 Mode, ViReal64 Range, ViReal64 Input_Resistance, ViReal64 Expected_Value)</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">For the NI 4065 only, compensates for any non-linearities.</p>

</body>
</html>    :    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Instrument_Handle</td>
<td class="paramDataType">ViSession</td>
<td>The session handle that you  obtain from <a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'cviniDMM_InitExtCal.html')"><span class="Monospace"> niDMM_InitExtCal</span></a>. The handle identifies a particular instrument calibration session.

</td>
</tr>
</table>
</body>
</html>

    �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Function</td>
<td class="paramDataType">ViInt32</td>
<td>Specifies the calibration <strong>Function</strong> used to acquire the measurement.<p>For valid modes, refer to the <em>NI&#160;4065 6&#189; Digit DMM Calibration Procedure</em>.</p>

</td>
</tr>
</table>
</body>
</html>    Q    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Range</td>
<td class="paramDataType">ViReal64</td>
<td>Specifies the <strong>Range</strong> to calibrate. 
<strong>Range</strong> values are coerced up to the closest <strong>Range</strong>.<p>For valid ranges, refer to the <em>NI&#160;4065 6&#189; Digit DMM Calibration Procedure</em>. Auto-ranging is not supported for calibration operations.</p>


</td>
</tr>
</table>
</body>
</html>    �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Input_Resistance</td>
<td class="paramDataType">ViReal64</td>
<td>Specifies the <strong>Input_Resistance</strong> that the device should use. <strong>Input_Resistance</strong> values are coerced up to the closest <strong>Input_Resistance</strong>. 

</td>
</tr>
</table>
</body>
</html>    v    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Expected_Value</td>
<td class="paramDataType">ViReal64</td>
<td>Specifies the <strong>Expected_Value</strong> of the measurement. 

</td>
</tr>
</table>
</body>
</html>    G
����  �    Status                           ��
   �  �    Instrument Handle                �A -  � �    Function                         �- - � �  �    Range                            ̆ -� � �    Input Resistance                 �z �  �  �    Expected Value                     	                        
  ?DC Volts NIDMM_VAL_DC_VOLTS AC Volts NIDMM_VAL_AC_VOLTS DC Current NIDMM_VAL_DC_CURRENT AC Current NIDMM_VAL_AC_CURRENT 2-Wire Resistance NIDMM_VAL_2_WIRE_RES 4-Wire Resistance NIDMM_VAL_4_WIRE_RES Diode NIDMM_VAL_DIODE Frequency NIDMM_VAL_FREQ Period NIDMM_VAL_PERIOD AC Volts DC Coupled NIDMM_VAL_AC_VOLTS_DC_COUPLED    0.02              �Not Applicable NIDMM_VAL_RESISTANCE_NA 1 MOhm NIDMM_VAL_1_MEGAOHM 10 MOhm NIDMM_VAL_10_MEGAOHM > 10 GOhm NIDMM_VAL_GREATER_THAN_10_GIGAOHM    0.00   s    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_CalAdjustGain</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>

<h1 class="function">niDMM_CalAdjustGain</h1>

<p class="syntax">ViStatus = niDMM_CalAdjustGain(ViSession Instrument_Handle, ViInt32 Mode, ViReal64 Range, ViReal64 Input_Resistance, ViReal64 Expected_Value)</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Calibrates the gain coefficient for the supplied <strong>Mode</strong>, <strong>Range</strong>, and <strong>Input_Resistance</strong>.</p>
<table class="Borderless-Wide">
<tr>
<td class="Icon"><img src="note.gif"></td>
<td>
<strong>Notes</strong>&#160;&#160;The NI&#160;4050 and NI&#160;4060 are not supported.<br><br>Refer to the calibration procedure for your device before using this function.</td></tr></table>


</body>
</html>
    :    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Instrument_Handle</td>
<td class="paramDataType">ViSession</td>
<td>The session handle that you obtain from <a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'cviniDMM_InitExtCal.html')"><span 
class="Monospace"> niDMM_InitExtCal</span></a>. The handle identifies a particular instrument calibration session.

</td>
</tr>
</table>
</body>
</html>

    �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Mode</td>
<td class="paramDataType">ViInt32</td>
<td>Specifies the calibration <strong>Mode</strong> used to acquire the measurement. 
<P class="Body">For valid modes, refer to the calibration procedure for your device.</p>

</td>
</tr>
</table>
</body>
</html>
    �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>
<body>

<table class="borderless"><tr>
<td class="paramName">Range</td>
<td class="paramDataType">ViReal64</td>
<td>Specifies the <strong>Range</strong> to calibrate. 
<P class="Body">For valid ranges, refer to the calibration procedure for your device. Auto-ranging is not supported for calibration operations.</p>

</td>
</tr>
</table>
</body>
</html>    G
����  �    Status                           ֹ
   �  �    Instrument Handle                �� -  � �    Mode                             �� - � �  �    Range                            ̆ -� � �    Input Resistance                 �z �  �  �    Expected Value                     	                        
  ?DC Volts NIDMM_VAL_DC_VOLTS AC Volts NIDMM_VAL_AC_VOLTS DC Current NIDMM_VAL_DC_CURRENT AC Current NIDMM_VAL_AC_CURRENT 2-Wire Resistance NIDMM_VAL_2_WIRE_RES 4-Wire Resistance NIDMM_VAL_4_WIRE_RES Diode NIDMM_VAL_DIODE Frequency NIDMM_VAL_FREQ Period NIDMM_VAL_PERIOD AC Volts DC Coupled NIDMM_VAL_AC_VOLTS_DC_COUPLED    0.02              �Not Applicable NIDMM_VAL_RESISTANCE_NA 1 MOhm NIDMM_VAL_1_MEGAOHM 10 MOhm NIDMM_VAL_10_MEGAOHM > 10 GOhm NIDMM_VAL_GREATER_THAN_10_GIGAOHM    0.00   i    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_CalAdjustOffset</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>

<h1 class="function">niDMM_CalAdjustOffset</h1>

<p class="syntax">ViStatus = niDMM_CalAdjustOffset(ViSession Instrument_Handle, ViInt32 Mode, ViReal64 Range, ViReal64 Input_Resistance)</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Calibrates the offset and Auto Zero offset for the supplied <strong>Mode</strong>, <strong>Range</strong>, and <strong>Input_Resistance</strong>.</p>
<table class="Borderless-Wide">
<tr>
<td class="Icon"><img src="note.gif"></td>
<td>
<strong>Note</strong>&#160;&#160;The NI&#160;4050 and NI&#160;4060 are not supported.<br><br>Refer to the calibration procedure for your device before using this function.</td></tr></table>


</body>
</html>    :    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Instrument_Handle</td>
<td class="paramDataType">ViSession</td>
<td>The session handle that you obtain from <a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'cviniDMM_InitExtCal.html')"><span 
class="Monospace"> niDMM_InitExtCal</span></a>. The handle identifies a particular instrument calibration session.

</td>
</tr>
</table>
</body>
</html>

    �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>
<body>

<table class="borderless"><tr>
<td class="paramName">Range</td>
<td class="paramDataType">ViReal64</td>
<td>Specifies the <strong>Range</strong> to calibrate. 
<P class="Body">For valid ranges, refer to the calibration procedure for your device. Auto-ranging is not supported for calibration operations.</p>

</td>
</tr>
</table>
</body>
</html>    G
����  �    Status                           �
   �  �    Instrument Handle                �� -  � �    Mode                             �� - � �  �    Range                            ̆ -� � �    Input Resistance                   	                        
  ?DC Volts NIDMM_VAL_DC_VOLTS AC Volts NIDMM_VAL_AC_VOLTS DC Current NIDMM_VAL_DC_CURRENT AC Current NIDMM_VAL_AC_CURRENT 2-Wire Resistance NIDMM_VAL_2_WIRE_RES 4-Wire Resistance NIDMM_VAL_4_WIRE_RES Diode NIDMM_VAL_DIODE Frequency NIDMM_VAL_FREQ Period NIDMM_VAL_PERIOD AC Volts DC Coupled NIDMM_VAL_AC_VOLTS_DC_COUPLED    0.02              �Not Applicable NIDMM_VAL_RESISTANCE_NA 1 MOhm NIDMM_VAL_1_MEGAOHM 10 MOhm NIDMM_VAL_10_MEGAOHM > 10 GOhm NIDMM_VAL_GREATER_THAN_10_GIGAOHM   �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_CalAdjustMisc</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>

<h1 class="function">niDMM_CalAdjustMisc</h1>

<p class="syntax">ViStatus = niDMM_CalAdjustMisc(ViSession Instrument_Handle, ViInt32 Type)</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Performs a specialized calibration step depending on the specified <strong>Type</strong>.</p>
<table class="Borderless-Wide">
<tr>
<td class="Icon"><img src="note.gif"></td>
<td>
<strong>Note</strong>&#160;&#160;The NI&#160;4050 and NI&#160;4060 are not supported.<br><br>Refer to the calibration procedure for your device before using this function.</td></tr></table>

</body>
</html>    :    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Instrument_Handle</td>
<td class="paramDataType">ViSession</td>
<td>The session handle that you obtain from <a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'cviniDMM_InitExtCal.html')"><span 
class="Monospace"> niDMM_InitExtCal</span></a>. The handle identifies a particular instrument calibration session.

</td>
</tr>
</table>
</body>
</html>

    �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Type</td>
<td class="paramDataType">ViInt32</td>
<td>Specifies which of the miscellaneous calibration steps to perform.
<br><br>
<table class="Bordered" align="center">
<tr>
<td class="Bordered">NIDMM_EXTCAL_MISCCAL_VREF (default)</td>
<td class="Bordered">Calibrate the Voltage Reference.</td>
</tr>
<tr>
<td class="Bordered">NIDMM_EXTCAL_MISCCAL_RREF</td>
<td class="Bordered">Calibrate the Resistance Reference.</td>
</tr>
<tr>
<td class="Bordered">NIDMM_EXTCAL_MISCCAL_ZINT</td>
<td class="Bordered">Calibrate the Internal Impedance.</td>
</tr>
<tr>
<td class="Bordered">NIDMM_EXTCAL_MISCCAL_2WIRELEAKAGE</td>
<td class="Bordered">Calibrate the 2-wire Leakage resistance.</td>
</tr>
<tr>
<td class="Bordered">NIDMM_EXTCAL_MISCCAL_4WIRELEAKAGE</td>
<td class="Bordered">Calibrate the 4-wire Leakage resistance.</td>
</tr>
<tr>
<td class="Bordered">NIDMM_EXTCAL_MISCCAL_SECTION</td>
<td class="Bordered">Update calibration information and verify calibration completeness.</td>
</tr>
</table> 

</td>
</tr>
</table>
</body>
</html>
    G
����  �    Status                           ��
   �  �    Instrument Handle                � -  � �    Type                               	                          Voltage Reference NIDMM_EXTCAL_MISCCAL_VREF Resistance Reference NIDMM_EXTCAL_MISCCAL_RREF Internal Impedance NIDMM_EXTCAL_MISCCAL_ZINT 2-wire Leakage NIDMM_EXTCAL_MISCCAL_2WIRELEAKAGE 4-wire Leakage NIDMM_EXTCAL_MISCCAL_4WIRELEAKAGE Section NIDMM_EXTCAL_MISCCAL_SECTION   �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_CalAdjustLC</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>

<h1 class="function">niDMM_CalAdjustLC</h1>

<p class="syntax">ViStatus = niDMM_CalAdjustLC(ViSession Instrument_Handle, ViInt32 Type)</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">For the NI&#160;4082 and NI&#160;4072 only, performs a specialized LC calibration step depending on the specified <strong>Type</strong>.</p>
<table class="Borderless-Wide">
<tr>
<td class="Icon"><img src="note.gif"></td>
<td>
<strong>Note</strong>&#160;&#160;Refer to the calibration procedure for your device before using this function.</td></tr></table>

</body>
</html>    :    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Instrument_Handle</td>
<td class="paramDataType">ViSession</td>
<td>The session handle that you obtain from <a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'cviniDMM_InitExtCal.html')"><span 
class="Monospace"> niDMM_InitExtCal</span></a>. The handle identifies a particular instrument calibration session.

</td>
</tr>
</table>
</body>
</html>

    ]    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Type</td>
<td class="paramDataType">ViInt32</td>
<td>Specifies which of the LC calibration steps to perform.
<br><br>
<table class="Bordered" align="center">
<tr>
<td>L &#38; C Open (default)</td>
<td class="Bordered">Calibrates the open compensation.</td>
</tr>
<tr>
<td class="Bordered">L &#38; C Short</td>
<td class="Bordered">Calibrates the short compensation.</td>
</tr>
<tr>
<td class="Bordered">L &#38; C 25 &#937;</td>
<td class="Bordered">Calibrates the 25 &#937; resistance.</td>
</tr>
<tr>
<td class="Bordered">L &#38; C 1 k&#937;</td>
<td class="Bordered">Calibrates the 1 k&#937; resistance.</td>
</tr>
<tr>
<td class="Bordered">L &#38; C 5 k&#937;</td>
<td class="Bordered">Calibrates the 5 k&#937; resistance.</td>
</tr>
<tr>
<td class="Bordered">L &#38; C 100 k&#937;</td>
<td class="Bordered">Calibrates the 100 k&#937; resistance.</td>
</tr>
</table>  

</td>
</tr>
</table>
</body>
</html>
    G
����  �    Status                           ��
   �  �    Instrument Handle                �� -  � �    Type                               	                           �L & C Open NIDMM_EXTCAL_LC_OPEN L & C Short NIDMM_EXTCAL_LC_SHORT L & C 25 Ohm NIDMM_EXTCAL_LC_25OHM L & C 1K Ohm NIDMM_EXTCAL_LC_1KOHM L & C 5K Ohm NIDMM_EXTCAL_LC_5KOHM L & C 100K Ohm NIDMM_EXTCAL_LC_100KOHM   o    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_CalAdjustACFilter</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>

<h1 class="function">niDMM_CalAdjustACFilter</h1>

<p class="syntax">ViStatus = niDMM_CalAdjustACFilter(ViSession Instrument_Handle, ViInt32 Mode, ViReal64 Range, ViReal64 Frequency, ViReal64 Expected_Value)</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">For the NI&#160;4080/4081/4082 and the NI&#160;4070/4071/4072, calibrates the filter coefficients used for AC measurements of the supplied <strong>Mode</strong> and <strong>Range</strong>.</p>
<table class="Borderless-Wide">
<tr>
<td class="Icon"><img src="note.gif"></td>
<td>
<strong>Note</strong>&#160;&#160;Refer to the calibration procedure for your device before using this function.</td></tr></table>

</body>
</html>    :    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Instrument_Handle</td>
<td class="paramDataType">ViSession</td>
<td>The session handle that you obtain from <a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'cviniDMM_InitExtCal.html')"><span 
class="Monospace"> niDMM_InitExtCal</span></a>. The handle identifies a particular instrument calibration session.

</td>
</tr>
</table>
</body>
</html>

    �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Range</td>
<td class="paramDataType">ViReal64</td>
<td>Specifies the <strong>Range</strong> to calibrate. 
<P class="Body">For valid ranges, refer to the calibration procedure for your device. Auto-ranging is not supported for calibration operations.</p>

</td>
</tr>
</table>
</body>
</html>    q    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Frequency</td>
<td class="paramDataType">ViReal64</td>
<td>Specifies the <strong>Frequency</strong> of the input signal. 

</td>
</tr>
</table>
</body>
</html>

    G
����  �    Status                           c
   �  �    Instrument Handle                �� -  � �    Mode                             � 7 � �  �    Range                            	� -� �  �    Frequency                        �z �  �  �    Expected Value                     	                        
  ?DC Volts NIDMM_VAL_DC_VOLTS AC Volts NIDMM_VAL_AC_VOLTS DC Current NIDMM_VAL_DC_CURRENT AC Current NIDMM_VAL_AC_CURRENT 2-Wire Resistance NIDMM_VAL_2_WIRE_RES 4-Wire Resistance NIDMM_VAL_4_WIRE_RES Diode NIDMM_VAL_DIODE Frequency NIDMM_VAL_FREQ Period NIDMM_VAL_PERIOD AC Volts DC Coupled NIDMM_VAL_AC_VOLTS_DC_COUPLED    0.02    0.00    0.00   �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_CloseExtCal</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>

<h1 class="function">niDMM_CloseExtCal</h1>

<p class="syntax">ViStatus = niDMM_CloseExtCal(ViSession Instrument_Handle, ViInt32 Action)</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Performs the specified <strong>Action</strong>, closes the specified external calibration session obtained from <a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'cviniDMM_InitExtCal.html')"><span 
class="Monospace"> niDMM_InitExtCal</span></a>, and deallocates resources that it reserved.</p>
<table class="Borderless-Wide">
<tr>
<td class="Icon"><img src="note.gif"></td>
<td>
<strong>Note</strong>&#160;&#160;The NI&#160;4050 and NI&#160;4060 are not supported.<br><br>Refer to the calibration procedure for your device before using this function.</td></tr></table>

</body>
</html>    9    html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Instrument_Handle</td>
<td class="paramDataType">ViSession</td>
<td>The session handle that you obtain from <a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'cviniDMM_InitExtCal.html')"><span 
class="Monospace"> niDMM_InitExtCal</span></a>. The handle identifies a particular instrument calibration session.

</td>
</tr>
</table>
</body>
</html>

    �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>
<body>

<table class="borderless"><tr>
<td class="paramName">Action</td>
<td class="paramDataType">ViInt32</td>
<td>Specifies whether the driver saves the updated calibration constants.
<br><br>
<table class="Bordered">
<tr>
<td class="Bordered">NIDMM_EXTCAL_ACTION_ABORT&#160;(default)</td>
<td class="Bordered">Restores the calibration constants to what they were before starting the external calibration procedure.</td>
</tr>
<tr>
<td class="Bordered">NIDMM_EXTCAL_ACTION_SAVE</td>
<td class="Bordered">Saves the new calibration constants to the device.</td>
</tr>
</table> 

</td>
</tr>
</table>
</body>
</html>    G
����  �    Status                           �
   �  �    Instrument Handle                � -  � �    Action                             	                           VAbort Calibration NIDMM_EXTCAL_ACTION_ABORT Save Calibration NIDMM_EXTCAL_ACTION_SAVE   �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_GetCalCount</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>

<h1 class="function">niDMM_GetCalCount</h1>

<p class="syntax">ViStatus = niDMM_GetCalCount(ViSession Instrument_Handle, ViInt32 Cal_Type, ViInt32 *Count)</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Returns the calibration <strong>Count</strong> for the specified type of calibration.</p><table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&#160;&#160;The NI&#160;4050,  NI&#160;4060, and NI&#160;4080/4081/4082 are not supported.</td>
</tr>
</table>

</body>
</html>    �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Cal_Type</td>
<td class="paramDataType">ViInt32</td>
<td>Specifies the type of calibration performed (external or self-calibration).
<br><br>
<table class="Bordered">
<tr>
<td class="Bordered">NIDMM_VAL_INTERNAL_AREA&#160;(default)<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&#160;&#160;The NI&#160;4065 does not support self-calibration.</td>
</tr>
</table></td>
<td class="Bordered">0</td>
<td class="Bordered">Self-Calibration</td>
</tr>
<tr>
<td class="Bordered">NIDMM_VAL_EXTERNAL_AREA</td>
<td class="Bordered">1</td>
<td class="Bordered">External Calibration</td>
</tr>
</table>

</td>
</tr>
</table>
</body>
</html>    ^    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Count</td>
<td class="paramDataType">ViInt32*</td>
<td>The number of times calibration has been performed.

</td>
</tr>
</table>
</body>
</html>    G
����  �    Status                            8�
   �  �    Instrument Handle                � -  � �    Cal Type                         [ - � �  �    Count                              	                          LExternal Area NIDMM_VAL_EXTERNAL_AREA Internal Area NIDMM_VAL_INTERNAL_AREA    	           �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_GetCalDateAndTime</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>

<h1 class="function">niDMM_GetCalDateAndTime</h1>

<p class="syntax">ViStatus = niDMM_GetCalDateAndTime(ViSession Instrument_Handle, ViInt32 Cal_Type, ViInt32 *Month, ViInt32 *Day, ViInt32 *Year, ViInt32 *Hour, ViInt32 *Minute)</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Returns the date and time of the last calibration performed.</p><table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&#160;&#160;The NI&#160;4050 and NI&#160;4060 are not supported.</td>
</tr>
</table>

</body>
</html>    i    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Month</td>
<td class="paramDataType">ViInt32*</td>
<td>Indicates the <strong>Month</strong> of the last calibration. 

</td>
</tr>
</table>
</body>
</html>    d    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Day</td>
<td class="paramDataType">ViInt32*</td>
<td>Indicates the <strong>Day</strong> of the last calibration.

</td>
</tr>
</table>
</body>
</html>    o    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Year</td>
<td class="paramDataType">ViInt32*</td>
<td>Indicates the <strong>Year</strong> of the last calibration. 

</td>
</tr>
</table>
</body>
</html>



    r    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Hour</td>
<td class="paramDataType">ViInt32*</td>
<td>Indicates the <strong>Hour</strong> of the last calibration.  

</td>
</tr>
</table>
</body>
</html>




    w    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Minute</td>
<td class="paramDataType">ViInt32*</td>
<td>Indicates the <strong>Minute</strong> of the last calibration.   

</td>
</tr>
</table>
</body>
</html>




    G
����  �    Status                            8�
   �  �    Instrument Handle                � -  � �    Cal Type                         $ - � �  �    Month                            %t -� �  �    Day                              &� �  �  �    Year                             (W � � �  �    Hour                             )� �� �  �    Minute                             	                          LExternal Area NIDMM_VAL_EXTERNAL_AREA Internal Area NIDMM_VAL_INTERNAL_AREA    	            	            	            	            	           �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_GetDevTemp</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>

<h1 class="function">niDMM_GetDevTemp</h1>

<p class="syntax">ViStatus = niDMM_GetDevTemp(ViSession Instrument_Handle, ViString Options, ViReal64 *Temperature)</p>

<h2 class="purpose">Purpose</h2>

<p class="Body"> Returns the current <strong>Temperature</strong> of the device.</p><table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&#160;&#160;The NI&#160;4050 and NI&#160;4060 are not supported.</td>
</tr>
</table>

</body>
</html>    6    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Options</td>
<td class="paramDataType">ViString</td>
<td>Reserved.

</td>
</tr>
</table>
</body>
</html>    q    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Temperature</td>
<td class="paramDataType">ViReal64*</td>
<td>Returns the current <strong>Temperature</strong> of the device.

</td>
</tr>
</table>
</body>
</html>    G
����  �    Status                            8�
   �  �    Instrument Handle                0O -  �  �    Options                          1� - � �  �    Temperature                        	                ""    	           �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_GetLastCalTemp</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>

<h1 class="function">niDMM_GetLastCalTemp</h1>

<p class="syntax">ViStatus = niDMM_GetLastCalTemp(ViSession Instrument_Handle, ViInt32 Cal_Type, ViReal64 *Temperature)</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Returns the <strong>Temperature</strong> during the last calibration procedure.</p><table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&#160;&#160;The NI&#160;4050 and NI&#160;4060 are not supported.</td>
</tr>
</table>

</body>
</html>    x    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Temperature</td>
<td class="paramDataType">ViReal64*</td>
<td>Returns the <strong>Temperature</strong> during the last calibration. 

</td>
</tr>
</table>
</body>
</html>    G
����  �    Status                            8�
   �  �    Instrument Handle                � -  � �    Cal Type                         6� - � �  �    Temperature                        	                          LExternal Area NIDMM_VAL_EXTERNAL_AREA Internal Area NIDMM_VAL_INTERNAL_AREA    	           �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_GetCalUserDefinedInfoMaxSize</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>

<h1 class="function">niDMM_GetCalUserDefinedInfoMaxSize</h1>

<p class="syntax">ViStatus = niDMM_GetCalUserDefinedInfoMaxSize(ViSession Instrument_Handle, ViInt32 *Info_Size)</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Returns the maximum string length that can be stored in the EEPROM. Use 
<a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'cviniDMM_SetCalUserDefinedInfo.html')"><span 
class="Monospace"> niDMM_SetCalUserDefinedInfo</span></a>
 to store user-defined information.</p><table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&#160;&#160;The NI&#160;4050 and NI&#160;4060 are not supported.</td>
</tr>
</table>

</body>
</html>    �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Info_Size</td>
<td class="paramDataType">ViInt32*</td>
<td>Returns the value of maximum string length that can be stored in the EEPROM using 
<a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'cviniDMM_SetCalUserDefinedInfo.htm')"><span 
class="Monospace"> niDMM_SetCalUserDefinedInfo</span></a>. The <strong>Info_Size</strong> value is given in characters, but it does not include the termination character.

</td>
</tr>
</table>
</body>
</html>    G
����  �    Status                            8�
   �  �    Instrument Handle                =7 -  �  �    Info Size                          	                	           �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_GetCalUserDefinedInfo</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>

<h1 class="function">niDMM_GetCalUserDefinedInfo</h1>

<p class="syntax">ViStatus = niDMM_GetCalUserDefinedInfo(ViSession Instrument_Handle, ViInt32 Buffer_Size, ViChar Info[])</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Returns the user-defined calibration information stored in the EEPROM.</p><table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&#160;&#160;The NI&#160;4050 and NI&#160;4060 are not supported.</td>
</tr>
</table>

</body>
</html>    �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Buffer_Size</td>
<td class="paramDataType">ViInt32</td>
<td><p class="Body">Passes the number of bytes in the ViString you specify for the <strong>Info</strong> parameter.</p> 
<p>If zero is passed for this parameter, the <strong>Buffer_Size</strong> needed to store the information is returned. If the Info parameter, including the terminating NULL byte, contains more bytes than you indicate in this parameter, the function copies <strong>Buffer_Size</strong> - 1 bytes into the buffer, places an ASCII NULL byte at the end of the buffer, and returns the <strong>Buffer_Size</strong> you must pass to get the entire value.</p>

<p>For example, if the value is &#34;123456&#34; and the <strong>Buffer_Size</strong> is 4, the function places &#34;123&#34; into the buffer and returns 7. If you pass a negative number, the function copies the value to the buffer regardless of the number of bytes in the value.</p>

</td>
</tr>
</table>
</body>
</html>
    �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Info</td>
<td class="paramDataType">ViChar[]</td>
<td>Returns the user-defined calibration information stored in the EEPROM. If this is NULL, the <strong>Buffer_Size</strong> needed to store the information is returned.

</td>
</tr>
</table>
</body>
</html>
    G
����  �    Status                            8�
   �  �    Instrument Handle                Ce -  �  �    Buffer Size                      G� - � �  �    Info                               	                0    	           D    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_SetCalUserDefinedInfo</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>

<h1 class="function">niDMM_SetCalUserDefinedInfo</h1>

<p class="syntax">ViStatus = niDMM_SetCalUserDefinedInfo(ViSession Instrument_Handle, ViChar Info[])</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Stores the user-defined information in the EEPROM. Use <a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'cviniDMM_GetCalUserDefinedInfoMaxSize.html')"><span 
class="Monospace"> niDMM_GetCalUserDefinedInfoMaxSize</span></a> to learn the maximum string size that is allowed. If the <strong>Info</strong> string size is larger than the maximum string size, NI-DMM stores as much of the information as possible, truncates the remainder, and returns a warning.</p><table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&#160;&#160;The NI&#160;4050 and NI&#160;4060 are not supported.</td>
</tr>
</table>

</body>
</html>    a    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Info</td>
<td class="paramDataType">ViChar[]</td>
<td>Specifies the user-defined information to be stored in the EEPROM such as the operator who performed the calibration operation or system information. Use <a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'cviniDMM_GetCalUserDefinedInfoMaxSize.html')"><span 
class="Monospace"> niDMM_GetCalUserDefinedInfoMaxSize</span></a> to learn the maximum string size that is allowed. If the <strong>Info</strong> string size is larger than the maximum string size, NI-DMM stores as much of the information as possible, truncates the remainder, and return a warning.

</td>
</tr>
</table>
</body>
</html>    G
����  �    Status                            8�
   �  �    Instrument Handle                O -  �  �    Info                               	                   �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_GetExtCalRecommendedInterval</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>

<h1 class="function">niDMM_GetExtCalRecommendedInterval</h1>

<p class="syntax">ViStatus = niDMM_GetExtCalRecommendedInterval(ViSession Instrument_Handle, ViInt32 *Months)</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Returns the recommended interval between external recalibration in <strong>Months</strong>.</p><table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&#160;&#160;The NI&#160;4050 and NI&#160;4060 are not supported.</td>
</tr>
</table>

</body>
</html>    �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Months</td>
<td class="paramDataType">ViInt32*</td>
<td>Returns the recommended number of <strong>Months</strong> between external calibrations.

</td>
</tr>
</table>
</body>
</html>
    G
����  �    Status                            8�
   �  �    Instrument Handle                V -  �  �    Months                             	                	           $    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_GetSelfCalSupported</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>

<h1 class="function">niDMM_GetSelfCalSupported</h1>

<p class="syntax">ViStatus = niDMM_GetSelfCalSupported(ViSession Instrument_Handle, ViBoolean *Self_Cal_Supported)</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Returns a Boolean value that expresses whether or not the DMM that you are using can perform self-calibration.</p>

</body>
</html>    �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Self_Cal_Supported</td>
<td class="paramDataType">ViBoolean*</td>
<td>Returns whether Self Cal is supported for the device specified by the given session.<br><br>
<table class="Bordered">
<tr>
<td class="Bordered">VI_TRUE </td>
<td class="Bordered">1</td>
<td class="Bordered">The DMM that you are using can perform self-calibration.</td>
</tr>
<tr>
<td class="Bordered">VI_FALSE</td>
<td class="Bordered">0</td>
<td class="Bordered">The DMM that you are using cannot perform self-calibration.</td>
</tr>
</table>

</td>
</tr>
</table>
</body>
</html>    G
����  �    Status                            8�
   �  �    Instrument Handle                Z� -  �  �    Self Cal Supported                 	                	           �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_RestoreLastExtCalConstants</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>

<h1 class="function">niDMM_RestoreLastExtCalConstants</h1>

<p class="syntax">ViStatus = niDMM_RestoreLastExtCalConstants(ViSession Instrument_Handle)</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Reverts the device to the calibration constants from the last complete external calibration. This function recovers the hardware if a fatal system error should occur during an external or self-calibration procedure.</p>

<p>After calling this function, you should call <a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'cviniDMM_SelfCal.html')"><span 
class="Monospace"> niDMM_SelfCal</span></a> before taking measurements with the device to adjust the device for any temperature drifts since the last external calibration.</p><table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&#160;&#160;The NI&#160;4050,  NI&#160;4060, and NI&#160;4080/4081/4082 are not supported.</td>
</tr>
</table>

</body>
</html>    G
����  �    Status                            8�
   �  �    Instrument Handle                  	               �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_SetCalPassword</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>

<h1 class="function">niDMM_SetCalPassword</h1>

<p class="syntax">ViStatus = niDMM_SetCalPassword(ViSession Instrument_Handle, ViChar Old_Password[], ViChar New_Password[])</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Changes the password required to enable external calibration functionality for the specified instrument. The maximum password string length is eight characters, excluding the termination character. &#34;NI&#34; is the default password.</p>

<table class="Borderless-Wide">

<tr>

<td class="Icon"><img SRC="note.gif"></td>

<td><strong>Notes</strong>&#160;&#160;</td>

<td>The NI&#160;4050 and NI&#160;4060 are not supported.<br><br>A password is required for external calibration. Be sure to record the password in a secure location.</td></tr></table>

</body>
</html>    �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Old_Password</td>
<td class="paramDataType">ViChar[]</td>
<td>Specifies the current password required to enable external calibration functionality. The maximum password string length is eight characters, excluding the termination character.

</td>
</tr>
</table>
</body>
</html>    �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">New_Password</td>
<td class="paramDataType">ViChar[]</td>
<td>Specifies the <strong>New_Password</strong> required to enable external calibration functionality. The maximum password string length is eight characters, excluding the termination character.

</td>
</tr>
</table>
</body>
</html>    G
����  �    Status                            8�
   �  �    Instrument Handle                gE -  �  �    Old Password                     i1 - � �  �    New Password                       	                       ?    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_reset</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>

<h1 class="function">niDMM_reset</h1>

<p class="syntax">ViStatus = niDMM_reset(ViSession Instrument_Handle)</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Resets the instrument to a known state and sends initialization commands to the instrument. The initialization commands set instrument settings to the state necessary for the operation of the instrument driver.</p>

</body>
</html>    G
����  �    Status                            8�
   �  �    Instrument Handle                  	               �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_ResetWithDefaults</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>

<h1 class="function">niDMM_ResetWithDefaults</h1>

<p class="syntax">ViStatus = niDMM_ResetWithDefaults(ViSession Instrument_Handle)</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Resets the instrument to a known state and sends initialization commands to the DMM. The initialization commands set the DMM settings to the state necessary for the operation of NI-DMM. All user-defined default values associated with a logical name are applied after setting the DMM.</p>

</body>
</html>    G
����  �    Status                            8�
   �  �    Instrument Handle                  	               �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_self_test</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>

<h1 class="function">niDMM_self_test</h1>

<p class="syntax">ViStatus = niDMM_self_test(ViSession Instrument_Handle, ViInt16 *Self_Test_Result, ViChar Self_-_Test_Message[])</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Performs a self-test on the DMM to ensure that the DMM is functioning properly. Self-test does not calibrate the DMM.</p>

<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif"></td>
<td>
<strong>Note</strong>&#160;&#160;This function calls <a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'cviniDMM_reset.html')"><span class="Monospace"> niDMM_reset</span></a>, and any configurations previous to the call will be lost.  All attributes will be set to their default values after the call returns.
</td>
</tr>
</table>


</body>
</html>    l    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Self_Test_Result</td>
<td class="paramDataType">ViInt16*</td>
<td>Contains the value returned from the instrument self-test. Zero indicates success. 

<p class="Body">On the NI&#160;4080/4082 and NI&#160;4070/4072, the error code 1013 indicates that you should check the fuse and replace it, if necessary.</p>

<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&#160;&#160;Self-test does not check the fuse on the NI&#160;4065, NI&#160;4071, and NI&#160;4081. Hence, even if the fuse is blown on the device, self-test does not return error code 1013.</td>
</tr>
</table>


</td>
</tr>
</table>
</body>
</html>    �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Self_-_Test_Message</td>
<td class="paramDataType">ViChar[ ]</td>
<td>This parameter contains the string returned from the instrument self-test. The array must contain at least 256 elements. 
<p class="Body">For the NI&#160;4050 and NI&#160;4060, the error codes returned for self-test failures include the following:</p>
<ul>
<li>NIDMM_ERROR_AC_TEST_FAILURE</li>
<li>NIDMM_ERROR_DC_TEST_FAILURE</li>
<li>NIDMM_ERROR_RESISTANCE_TEST_FAILURE</li>
</ul>
<p class="Body">These error codes indicate that the DMM should be repaired.</p>

<p class="Body">For the NI&#160;4080/4081/4082 and the NI&#160;4070/4071/4072, the error code returned for a self-test failure is NIDMM_ERROR_SELF_TEST_FAILURE. This error code indicates that the DMM should be repaired.</p>

</td>
</tr>
</table>
</body>
</html>    G
����  �    Status                            8�
   �  �    Instrument Handle                u� -  �  �    Self Test Result                 yR - � �  �    Self - Test Message                	                	            	               <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_revision_query</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>

<h1 class="function">niDMM_revision_query</h1>

<p class="syntax">ViStatus = niDMM_revision_query(ViSession Instrument_Handle, ViChar Instrument_Driver_Revision[], ViChar Firmware_Revision[])</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Returns the revision numbers of the instrument driver and instrument firmware.</p>

</body>
</html>    X    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Instrument_Driver_Revision</td>
<td class="paramDataType">ViChar[]</td>
<td>Returns a string containing the instrument driver software revision numbers.

<table class="Borderless-Wide">
<tr>
<td class="Icon"><img SRC="note.gif"></td>
<td><strong>Note </strong>&#160;&#160;The array must contain at least 256 elements ViChar[256]. </td></tr></table>

</td>
</tr>
</table>
</body>
</html>



    R    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Firmware_Revision</td>
<td class="paramDataType">ViChar[]</td>
<td>Returns a string containing the instrument <strong>Firmware_Revision</strong> numbers. 

<table class="Borderless-Wide">
<tr>
<td class="Icon"><img SRC="note.gif"></td>
<td><strong>Note </strong>&#160;&#160;The array must contain at least 256 elements ViChar[256]. </td></tr></table>

</td>
</tr>
</table>
</body>
</html>    G
����  �    Status                            8�
   �  �    Instrument Handle                �] -  �  �    Instrument Driver Revision       �� - � �  �    Firmware Revision                  	                	            	           
    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_FormatMeasAbsolute</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>

<h1 class="function">niDMM_FormatMeasAbsolute</h1>

<p class="syntax">ViStatus = niDMM_FormatMeasAbsolute(ViInt32 Measurement_Function, ViReal64 Range, ViReal64 Resolution, ViReal64 Measurement, ViChar Mode_String[], ViChar Range_String[], ViChar Data_String[])</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Formats the <strong>Measurement</strong> to the proper number of displayed digits according to the <strong>Measurement_Function</strong>, <strong>Range</strong>, and <strong>Resolution</strong>. Returns the formatted data, range, and mode strings.</p>

</body>
</html>    �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Range</td>
<td class="paramDataType">ViReal64</td>
<td>Specifies the <a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'caNIDMM_ATTR_RANGE.html')"><span class="Monospace"> NIDMM_ATTR_RANGE</span></a> used to acquire the <strong>Measurement</strong>. 

</td>
</tr>
</table>
</body>
</html>        <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Resolution</td>
<td class="paramDataType">ViReal64</td>
<td>Specifies the <a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'caNIDMM_ATTR_RESOLUTION_ABSOLUTE.html')"><span class="Monospace"> NIDMM_ATTR_RESOLUTION_ABSOLUTE</span></a> of the <strong>Measurement</strong>. 

</td>
</tr>
</table>
</body>
</html>



    e    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Measurement</td>
<td class="paramDataType">ViReal64</td>
<td>Specifies the measured value returned from the DMM. 

</td>
</tr>
</table>
</body>
</html>        <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>
<body>

<table class="borderless"><tr>
<td class="paramName">Mode_String</td>
<td class="paramDataType">ViChar[]</td>
<td>Returns a string containing the units of the <strong>Measurement</strong> mode.

</td>
</tr>
</table>
</body>
</html>    5    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Range_String</td>
<td class="paramDataType">ViChar[]</td>
<td>Returns the <a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'caNIDMM_ATTR_RANGE.html')"><span class="Monospace"> NIDMM_ATTR_RANGE</span></a> of the <strong>Measurement</strong>, formatted into a string with the correct number of display digits.

</td>
</tr>
</table>
</body>
</html>    O    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Data_String</td>
<td class="paramDataType">ViChar[]</td>
<td>Returns the <strong>Measurement</strong>, formatted according to the <a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'caNIDMM_ATTR_FUNCTION.html')"><span class="Monospace"> NIDMM_ATTR_FUNCTION</span></a>, <a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'caNIDMM_ATTR_RANGE.html')"><span class="Monospace"> NIDMM_ATTR_RANGE</span></a>, and <a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'caNIDMM_ATTR_RESOLUTION_ABSOLUTE.html')"><span class="Monospace"> NIDMM_ATTR_RESOLUTION_ABSOLUTE</span></a>. 

</td>
</tr>
</table>
</body>
</html>    G
����  �    Status                           �% - � �  �    Range                            �( -� �  �    Resolution                       �G �  �  �    Measurement                      �� � � �  �    Mode String                      �; �� �  �    Range String                     �x �  �  �    Data String                       @ ,   � �    Measurement Function               	                        	            	            	                      �DC Volts NIDMM_VAL_DC_VOLTS AC Volts NIDMM_VAL_AC_VOLTS DC Current NIDMM_VAL_DC_CURRENT AC Current NIDMM_VAL_AC_CURRENT 2-Wire Resistance NIDMM_VAL_2_WIRE_RES 4-Wire Resistance NIDMM_VAL_4_WIRE_RES Diode NIDMM_VAL_DIODE Frequency NIDMM_VAL_FREQ Period NIDMM_VAL_PERIOD AC Volts DC Coupled NIDMM_VAL_AC_VOLTS_DC_COUPLED Capacitance NIDMM_VAL_CAPACITANCE Inductance NIDMM_VAL_INDUCTANCE   A    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_Disable</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>

<h1 class="function">niDMM_Disable</h1>

<p class="syntax">ViStatus = niDMM_Disable(ViSession Instrument_Handle)</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Places the instrument in a quiescent state where it has minimal or no impact on the system to which it is connected. If a measurement is in progress when this function is called, the measurement is aborted.</p>

</body>
</html>    G
����  �    Status                            8�
   �  �    Instrument Handle                  	               �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_GetChannelName</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>

<h1 class="function">niDMM_GetChannelName</h1>

<p class="syntax">ViStatus = niDMM_GetChannelName(ViSession Instrument_Handle, ViInt32 Index, ViInt32 Buffer_Size, ViChar Channel_String[])</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Returns the <strong>Channel_String</strong> that is in the channel table at an <strong>Index</strong> you specify. Not applicable to National Instruments DMMs. Included for compliance with the <EM>IviDmm Class Specification</EM>.</p>


</body>
</html>    h    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Index</td>
<td class="paramDataType">ViInt32</td>
<td>A 1&#8211;based <strong>Index</strong> into the channel table.

</td>
</tr>
</table>
</body>
</html>    �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>

<td class="paramName">Buffer_Size</td>

<td class="paramDataType">ViInt32</td>

<td>Passes the number of bytes in the ViChar array you specify for the <strong>Channel_String</strong> parameter. If the next <strong>Channel_String</strong>, including the terminating NULL byte, contains more bytes than you indicate in this parameter, the function copies <strong>Buffer_Size</strong>&#160;&#8211;1&#160;bytes into the buffer, places an ASCII NULL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.
<p class="Body">For example, if the value is &#34;123456&#34; and the <strong>Buffer_Size</strong> is 4, the function places &#34;123&#34; into the buffer and returns 7. If you pass a negative number, the function copies the value to the buffer regardless of the number of bytes in the value. If you pass 0, you can pass VI_NULL for the <strong>Channel_String</strong> buffer parameter. The default value is None.</p>


</td>
</tr>
</table>
</body>
</html>    �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Channel_String</td>
<td class="paramDataType">ViChar[ ]</td>
<td>Returns the <strong>Channel_String</strong> that is in the channel table at the <strong>Index</strong> you specify. Do not modify the contents of the <strong>Channel_String</strong>. 

</td>
</tr>
</table>
</body>
</html>    G
����  �    Status                            8�
   �  �    Instrument Handle                �� -  �  �    Index                            �) - � �  �    Buffer Size                      �� -� �  �    Channel String                     	                    0    	           v    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_ClearError</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>

<h1 class="function">niDMM_ClearError</h1>

<p class="syntax">ViStatus = niDMM_ClearError(ViSession Instrument_Handle)</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Clears the error information for the current execution thread and the IVI session you specify. If you pass VI_NULL for the <strong>Instrument_Handle</strong> parameter, this function clears the error information only for the current execution thread.</p>

</body>
</html>    G
����  �    Status                            8�
   �  �    Instrument Handle                  	               �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_GetError</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>

<h1 class="function">niDMM_GetError</h1>

<p class="syntax">ViStatus = niDMM_GetError(ViSession Instrument_Handle, ViStatus *Error Code, ViInt32 Buffer_Size, ViChar Description[])</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Returns the error information associated with the <strong>Instrument_Handle</strong>. This function retrieves and then clears the error information for the session. If you leave the <strong>Instrument_Handle</strong> unwired, this function retrieves and then clears the error information for the process.</p>

</body>
</html>    �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Error_Code</td>
<td class="paramDataType">ViStatus*</td>
<td>Returns the <strong>Error_Code</strong> for the session or execution thread. If you pass 0 for the <strong>Buffer_Size</strong>, you can pass VI_NULL for this parameter. 

</td>
</tr>
</table>
</body>
</html>
    �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Buffer_Size</td>
<td class="paramDataType">ViInt32</td>
<td>Passes the number of bytes in the ViChar array you specify for the <strong>Description</strong> parameter. If the error description, including the terminating NULL byte, contains more bytes than you indicate in this parameter, the function copies <strong>Buffer_Size</strong> &#8211;1 bytes into the buffer, places an ASCII NULL byte at the end of the buffer, and returns the <strong>Buffer_Size</strong> you must pass to get the entire value. 

<p class="Body">For example, if the value is &#34;123456&#34; and the <strong>Buffer_Size</strong> is 4, the function places &#34;123&#34; into the buffer and returns 7. If you pass a negative number, the function copies the value to the buffer regardless of the number of bytes in the value. If you pass 0, you can pass VI_NULL for the <strong>Description</strong> buffer parameter. The default value is None.</p> 

</td>
</tr>
</table>
</body>
</html>



    �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Description</td>
<td class="paramDataType">ViChar[]</td>
<td>Returns the error <strong>Description</strong> for the IVI session or execution thread. If there is no <strong>Description</strong>, the function returns an empty string. The buffer must contain at least as many elements as the value you specify with the <strong>Buffer_Size</strong> parameter. If you pass 0 for the <strong>Buffer_Size</strong>, you can pass VI_NULL for this parameter.

</td>
</tr>
</table>
</body>
</html>    G
����  �    Status                            8�
   �  �    Instrument Handle                �� -  �  �    Error Code                       �� - � �  �    Buffer Size                      �\ -� �  �    Description                        	                	            0    	           (    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<meta http-equiv="Content-Type" content="text/html; charset=IS0-8859-1">
<title>niDMM_GetErrorMessage</title>
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<h1 class="function">niDMM_GetErrorMessage</h1>

<p class="syntax">ViStatus = niDMM_GetErrorMessage (ViSession Instrument_Handle, ViStatus Error_Code, ViInt32 Buffer_Size, ViChar Error_Message[])</p>

<h2 class="purpose">Purpose</h2>

<p class ="body">
Returns the <strong>Error_Message</strong> as a user-readable string for the provided <strong>Error_Code</strong>.
Calling this function with a <strong>Buffer_Size</strong> of <span class="monospace">0</span> returns the size needed for the <strong>Error_Message</strong>.</p>
</body>
</html>    �    <html>
<head>
<script src="launchhelp.js"></script>
<title>niDMM_GetErrorMessage</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Error_Code</td>
<td class="paramDataType">ViStatus</td>
<td>The error code returned from the instrument for which you want to get a user-readable string.

</td>
</tr>
</table>
</body>
</html>
    �    <html>
<head>
<script src="launchhelp.js"></script>
<title>niDMM_GetErrorMessage</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Error_Message</td>
<td class="paramDataType">ViChar[]</td>
<td>Contains the error information formatted into a user-readable string. The buffer must contain at least as many elements as the value you specify with the <strong>Buffer_Size</strong> parameter. If you pass <span class="monospace">0</span> for <strong>Buffer_Size</strong>, you can pass <span class="monospace">VI_NULL</span> for this parameter.

</td>
</tr>
</table>
</body>
</html>
    N    <html>
<head>
<script src="launchhelp.js"></script>
<title>niDMM_GetErrorMessage</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">Instrument_Handle</td>
<td class="paramDataType">ViSession</td>
<td>Identifies a particular instrument session.  You obtain the <strong>Instrument_Handle</strong> parameter from <a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'cviniDMM_init.html')"><span class="Monospace"> niDMM_init</span></a> or <a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'cviniDMM_InitWithOptions.html')"><span class="Monospace"> niDMM_InitWithOptions</span></a>. You can also use <span class="monospace">VI_NULL</span> if you do not have a valid <strong>Instrument_Handle</strong>.</td>
 </tr></table></body>
</html>

        <html>
<head>
<script src="launchhelp.js"></script>
<title>niDMM_GetErrorMessage</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">Status</td>
<td class="paramDataType">ViStatus</td>
<td>Reports the <strong>Status</strong> of this operation. If the <strong>Buffer_Size</strong> parameter is <span class="monospace">0</span>, the buffer size needed for <strong>Error_Message</strong> is returned.</td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js"></script>
<title>niDMM_GetErrorMessage</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">Buffer_Size</td>
<td class="paramDataType">ViInt32</td>
<td>Specifies the number of bytes allocated for the <strong>Error_Message</strong> ViChar array. If the error description that this function returns (including terminating NULL byte) is larger than you indicated in <strong>Buffer_Size</strong>, the error description will be truncated to fit. If you pass <span class="monospace">0</span> for <strong>Buffer_Size</strong>, the function returns the buffer size needed for <strong>Error_Message</strong>.</td>
 </tr></table></body>
</html>   �~ -  �  �    Error Code                       �# -� �  �    Error Message                    ��
   �  �    Instrument Handle                �	v���  �    Status                           �+ - � �  �    Buffer_Size                        0    	                	            0   �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_error_query</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>

<h1 class="function">niDMM_error_query</h1>

<p class="syntax">ViStatus = niDMM_error_query(ViSession Instrument_Handle, ViStatus *Error_Code, ViChar Error_Message[])</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Reads an <strong>Error_Code</strong> and message from the DMM error queue. National Instruments DMMs do not contain an error queue. Errors are reported as they occur. Therefore, this function does not detect errors; it is included for compliance with the <EM>IviDmm Class Specification</EM>.</p>

</body>
</html>    �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Error_Code</td>
<td class="paramDataType">ViStatus*</td>
<td>The <strong>Error_Code</strong> returned from the instrument. 

<P class="Body">The default value is VI_SUCCESS (0).</p>

</td>
</tr>
</table>
</body>
</html>    B    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>
<body>

<table class="borderless"><tr>
<td class="paramName">Error_Message</td>
<td class="paramDataType">ViChar[]</td>
<td>Formats the <strong>Error_Code</strong> into a user-readable message string. 

<table class="Borderless-Wide">
<tr>
<td class="Icon"><img SRC="note.gif"></td>
<td><strong>Note </strong>&#160;&#160;The array must contain at least 256 elements ViChar[256].</td></tr></table>

</td>
</tr>
</table>
</body>
</html>    G
����  �    Status                            8�
   �  �    Instrument Handle                �3 -  �  �    Error Code                       �� - � �  �    Error Message                      	                	            	           	�    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_LockSession</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>

<h1 class="function">niDMM_LockSession</h1>

<p class="syntax">ViStatus = niDMM_LockSession(ViSession Instrument_Handle, ViBoolean *Caller_Has_Lock)</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">This function obtains a multithread lock on the instrument session. Before it does so, it waits until all other execution threads have released their locks on the instrument session.</p>

<P class="Body">Other threads might have obtained a lock on this session in the following ways: </p>

<UL>

<LI>The user application called this function.</LI>

<LI>A call to the instrument driver locked the session.</LI>

<LI>A call to the IVI Library locked the session.</LI></UL>

<P class="Body">After your call to this function returns successfully, no other threads can access the instrument session until you call <a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'cviniDMM_UnlockSession.html')"><span class="Monospace"> niDMM_UnlockSession</span></a>. </p>

<P class="Body">Use this function and <a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'cviniDMM_UnlockSession.html')"><span class="Monospace"> niDMM_UnlockSession</span></a> around a sequence of calls to instrument driver functions if you require that the instrument retain its settings through the end of the sequence. You can safely make nested calls to this function within the same thread.</p>

<P class="Body">To completely unlock the session, you must balance each call to this function with a call to <a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'cviniDMM_UnlockSession.html')"><span class="Monospace"> niDMM_UnlockSession</span></a>. If, however, you use the <strong>Caller_Has_Lock</strong> parameter in all calls to this function and <a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'cviniDMM_UnlockSession.html')"><span class="Monospace"> niDMM_UnlockSession</span></a> within a function, the IVI Library locks the session only once within the function regardless of the number of calls you make to this function. This feature allows you to call <a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'cviniDMM_UnlockSession.html')"><span class="Monospace"> niDMM_UnlockSession</span></a> just once at the end of the function.</p>

</body>
</html>    �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Caller_Has_Lock</td>
<td class="paramDataType">ViBoolean*</td>
<td>This parameter serves as a convenience. If you do not want to use this parameter, pass VI_NULL. Use this parameter in complex functions to keep track of whether you obtain a lock and, therefore, need to unlock the session. To use this parameter, complete the following steps:

<ol><li>Pass the address of a local ViBoolean variable. </li>
<li>In the declaration of the local variable, initialize it to VI_FALSE (0). </li>
<li>Pass the address of the same local variable to any other calls you make to this function or <a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'cviniDMM_UnlockSession.html')"><span class="Monospace"> niDMM_UnlockSession</span></a> in the same function. </li>
</ol>

<P class="Body">The parameter is an input/output parameter. This function and <a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'cviniDMM_UnlockSession.html')"><span class="Monospace"> niDMM_UnlockSession</span></a> each inspect the current value and take the following actions:</p>

<P class="Body">If the value is VI_TRUE (1), this function does not lock the session again. If the value is VI_FALSE, this function obtains the lock and sets the value of the parameter to VI_TRUE. </p>

<P class="Body">If the value is VI_FALSE, <a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'cviniDMM_UnlockSession.html')"><span class="Monospace"> niDMM_UnlockSession</span></a> does not attempt to unlock the session. If the value is VI_TRUE, <a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'cviniDMM_UnlockSession.html')"><span class="Monospace"> niDMM_UnlockSession</span></a> releases the lock and sets the value of the parameter to VI_FALSE. Thus, you can, call <a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'cviniDMM_UnlockSession.html')"><span class="Monospace"> niDMM_UnlockSession</span></a> at the end of your function without worrying about whether you actually have the lock.</p>

<P class="Body"><strong>Example</strong></p>

<P class="Code">ViStatus TestFunc (ViSession vi, ViInt32 flags)</p>

<P class="Code1">{</p>

    <P class="Code2">ViStatus error = VI_SUCCESS; <br>
    ViBoolean haveLock = VI_FALSE; <br>
    if (flags &#38; BIT_1)</p>

        <P class="Code3">{<br>
        viCheckErr( NIDMM_LockSession(vi, &#38;haveLock)); <br>
        viCheckErr( TakeAction1(vi)); <br>
        if (flags &#38; BIT_2) </p>

            <P class="Code3">{ </p>
            
            <P class="Code3">viCheckErr( NIDMM_UnlockSession(vi, &#38;haveLock)); </p>

            <P class="Code3">viCheckErr( TakeAction2(vi)); </p>

            <P class="Code3">viCheckErr( NIDMM_LockSession(vi, &#38;haveLock); </p>

            <P class="Code3">} </p>

        <P class="Code3">if (flags &#38; BIT_3) </p>

            <P class="Code3">viCheckErr( TakeAction3(vi)); </p>

        <P class="Code3">} </p>

<P class="Code">Error: </p>

    <P class="Code1">/* </p>

        <P class="Code2">At this point, you cannot really be sure that you have the lock. Fortunately, the haveLock variable takes care of that for you. </p>

    <P class="Code1">*/ </p>

    <P class="Code1">niDMM_UnlockSession(vi, &#38;haveLock); </p>

<P class="Code1">return error; </p>

<P class="Code">}</p>
</td>
</tr>
</table>
</body>
</html>
    G
����  �    Status                            8�
   �  �    Instrument Handle                �� -  �  �    Caller Has Lock                    	                	           �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_UnlockSession</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>

<h1 class="function">niDMM_UnlockSession</h1>

<p class="syntax">ViStatus = niDMM_UnlockSession(ViSession Instrument_Handle, ViBoolean *Caller_Has_Lock)</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">This function releases a lock that you acquired on an instrument session using niDMM_LockSession. Refer to <a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'cviniDMM_LockSession.html')"><span class="Monospace"> niDMM_LockSession</span></a> for additional information on session locks.</p>

</body>
</html>    �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Caller_Has_Lock</td>
<td class="paramDataType">ViBoolean*</td>
<td>This parameter serves as a convenience. If you do not want to use this parameter, pass VI_NULL. 


<P class="Body">Use this parameter in complex functions to keep track of whether you obtain a lock and, therefore, need to unlock the session. </p>

<P class="Body">To use this parameter, complete the following steps:</p>
<ol>
<li>Pass the address of a local ViBoolean variable. </li>
<li>In the declaration of the local variable, initialize it to VI_FALSE (0). </li>
<li>Pass the address of the same local variable to any other calls you make to <a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'cviniDMM_LockSession.html')"><span class="Monospace"> niDMM_LockSession</span></a> or this function in the same function. </li>
</ol>
<P class="Body">The parameter is an input/output parameter. <a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'cviniDMM_LockSession.html')"><span class="Monospace"> niDMM_LockSession</span></a> and this function each inspect the current value and take the following actions:</p>

<P class="Body">If the value is VI_TRUE (1), <a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'cviniDMM_LockSession.html')"><span class="Monospace"> niDMM_LockSession</span></a> does not lock the session again. If the value is VI_FALSE, <a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'cviniDMM_LockSession.html')"><span class="Monospace"> niDMM_LockSession</span></a> obtains the lock and sets the value of the parameter to VI_TRUE. </p>

<P class="Body">If the value is VI_FALSE, this function does not attempt to unlock the session. If the value is VI_TRUE, this function releases the lock and sets the value of the parameter to VI_FALSE. Thus, you can, call this function at the end of your function without worrying about whether you actually have the lock. </p>

<P class="Body"><strong>Example</strong></p>

<P class="Code">ViStatus TestFunc (ViSession vi, ViInt32 flags)</p>

<P class="Code1">{</p>

    <P class="Code2">ViStatus error = VI_SUCCESS;</p>

    <P class="Code2">ViBoolean haveLock = VI_FALSE; </p>

    

    <P class="Code2">if (flags &#38; BIT_1)</p>

        <P class="Code3">{</p>

        <P class="Code3">viCheckErr( NIDMM_LockSession(vi, &#38;haveLock)); </p>

        <P class="Code3">viCheckErr( TakeAction1(vi)); </p>

        <P class="Code3">if (flags &#38; BIT_2) </p>

            <P class="Code3">{ </p>

            <P class="Code3">viCheckErr( NIDMM_UnlockSession(vi, &#38;haveLock)); </p>

            <P class="Code3">viCheckErr( TakeAction2(vi)); </p>

            <P class="Code3">viCheckErr( NIDMM_LockSession(vi, &#38;haveLock); </p>

            <P class="Code3">} </p>

        <P class="Code3">if (flags &#38; BIT_3) </p>

            <P class="Code3">viCheckErr( TakeAction3(vi)); </p>

        <P class="Code3">} </p>

<P class="Code">Error: </p>

    <P class="Code1">/* </p>

        <P class="Code2">At this point, you cannot really be sure that you have the lock. Fortunately, the haveLock variable takes care of that for you. </p>

    <P class="Code1">*/ </p>

    <P class="Code1">niDMM_UnlockSession(vi, &#38;haveLock); </p>

<P class="Code1">return error; </p>

<P class="Code">}</p>
</td>
</tr>
</table>
</body>
</html>
    G
����  �    Status                            8�
   �  �    Instrument Handle                �F -  �  �    Caller Has Lock                    	                	           y    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_GetNextInterchangeWarning</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>

<h1 class="function">niDMM_GetNextInterchangeWarning</h1>

<p class="syntax">ViStatus = niDMM_GetNextInterchangeWarning(ViSession Instrument_Handle, ViInt32 Buffer_Size, ViChar Interchange_Warning[])</p>

<h2 class="purpose">Purpose</h2>

<p class="Body"><p class="body">This function returns the interchangeability warnings associated with the IVI session. It retrieves and clears the oldest instance in which the class driver recorded an interchangeability warning. Interchangeability warnings indicate that using your application with a different instrument might cause different behavior.</p> 
<p class="Body">The driver performs interchangeability checking when <a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'caNIDMM_ATTR_INTERCHANGE_CHECK.html')"><span class="Monospace"> NIDMM_ATTR_INTERCHANGE_CHECK</span></a> is set to VI_TRUE (1). The function returns an empty string in the <strong>Interchange_Warning</strong> parameter if no interchangeability warnings remain for the session. In general, the instrument driver generates interchangeability warnings when an attribute that affects the behavior of the instrument is in a state that you did not specify.</p>

</body>
</html>    �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Buffer_Size</td>
<td class="paramDataType">ViInt32</td>
<td>Passes the number of bytes in the ViChar array you specify for the <strong>Interchange_Warning</strong> parameter. If the next interchangeability warning string, including the terminating NULL byte, contains more bytes than you indicate in this parameter, the function copies <strong>Buffer_Size</strong>&#160;&#8211;1&#160;bytes into the buffer, places an ASCII NULL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value. 

<P class="Body">For example, if the value is &#34;123456&#34; and the <strong>Buffer_Size</strong> is 4, the function places &#34;123&#34; into the buffer and returns 7. If you pass a negative number, the function copies the value to the buffer regardless of the number of bytes in the value. If you pass 0, you can pass VI_NULL for the <strong>Interchange_Warning</strong> buffer parameter. The default value is None.</p>

</td>
</tr>
</table>
</body>
</html>    =    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Interchange_Warning</td>
<td class="paramDataType">ViChar[]</td>
<td>Returns the next interchange warning for the IVI session. If there are no interchange warnings, the function returns an empty string. The buffer must contain at least as many elements as the value you specify with the <strong>Buffer_Size</strong> parameter. 

</td>
</tr>
</table>
</body>
</html>
    G
����  �    Status                            8�
   �  �    Instrument Handle                 I -  �  �    Buffer Size                      � - � �  �    Interchange Warning                	                0    	           �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_ClearInterchangeWarnings</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>

<h1 class="function">niDMM_ClearInterchangeWarnings</h1>

<p class="syntax">ViStatus = niDMM_ClearInterchangeWarnings(ViSession Instrument_Handle)</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Clears the list of current interchange warnings.</p>

</body>
</html>    G
����  �    Status                            8�
   �  �    Instrument Handle                  	               	�    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_ResetInterchangeCheck</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>

<h1 class="function">niDMM_ResetInterchangeCheck</h1>

<p class="syntax">ViStatus = niDMM_ResetInterchangeCheck(ViSession Instrument_Handle)</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">When developing a complex test system that consists of multiple test modules, it is generally a good idea to design the test modules so that they can run in any order. To do so requires ensuring that each test module completely configures the state of each instrument it uses.</p>

<p>If a particular test module does not completely configure the state of an instrument, the state of the instrument depends on the configuration from a previously executed test module. If you execute the test modules in a different order, the behavior of the instrument and therefore the entire test module is likely to change. This change in behavior is generally instrument specific and represents an interchangeability problem. You can use this function to test for such cases. After you call this function, the interchangeability checking algorithms in NI-DMM ignore all previous configuration operations. By calling this function at the beginning of a test module, you can determine whether the test module has dependencies on the operation of previously executed test modules.</p>

<P class="Body">This function does not clear the interchangeability warnings from the list of previously recorded interchangeability warnings. If you want to guarantee that <a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'cviniDMM_GetNextInterchangeWarning.html')"><span class="Monospace"> niDMM_GetNextInterchangeWarning</span></a> only returns those interchangeability warnings that are generated after calling this function, you must clear the list of interchangeability warnings. You can clear the interchangeability warnings list by repeatedly calling <a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'cviniDMM_GetNextInterchangeWarning.html')"><span class="Monospace"> niDMM_GetNextInterchangeWarning</span></a> until no more interchangeability warnings are returned. If you are not interested in the content of those warnings, you can call <a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'cviniDMM_ClearInterchangeWarnings.html')"><span class="Monospace"> niDMM_ClearInterchangeWarnings</span></a>.</p>

</body>
</html>    G
����  �    Status                            8�
   �  �    Instrument Handle                  	                   <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_GetNextCoercionRecord</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>

<h1 class="function">niDMM_GetNextCoercionRecord</h1>

<p class="syntax">ViStatus = niDMM_GetNextCoercionRecord(ViSession Instrument_Handle, ViInt32 Buffer_Size, ViChar Coercion_Record[])</p>

<h2 class="purpose">Purpose</h2>

<p class="Body"><p class="body">This function returns the coercion information associated with the IVI session, and it retrieves and clears the oldest instance in which NI-DMM coerced a value you specified to another value.</p>

<P class="Body">If you set <a href="javascript:LaunchMergedHelp('dmm.chm', 'dmmcref.chm', 'caNIDMM_ATTR_RECORD_COERCIONS.html')"><span class="Monospace"> NIDMM_ATTR_RECORD_COERCIONS</span></a> to VI_TRUE (1), NI-DMM keeps a list of all coercions it makes on ViInt32 or ViReal64 values that you pass to NI-DMM functions. Use this function to retrieve information from that list.</p>

</body>
</html>    �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Buffer_Size</td>
<td class="paramDataType">ViInt32</td>
<td>Passes the number of bytes in the ViChar array you specify for the <strong>Coercion_Record</strong> parameter. If the next coercion record string, including the terminating NULL byte, contains more bytes than you indicate in this parameter, the function copies <strong>Buffer_Size</strong> &#8211; 1 bytes into the buffer, places an ASCII NULL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value. 

<P class="Body">For example, if the value is &#34;123456&#34; and the <strong>Buffer_Size</strong> is 4, the function places &#34;123&#34; into the buffer and returns 7. If you pass a negative number, the function copies the value to the buffer regardless of the number of bytes in the value. </p>

<P class="Body">If you pass 0, you can pass VI_NULL for the <strong>Coercion_Record</strong> buffer parameter.</p>

<P class="Body">The default value is None.</p>

</td>
</tr>
</table>
</body>
</html>    V    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Coercion_Record</td>
<td class="paramDataType">ViChar[]</td>
<td>Returns the next <strong>Coercion_Record</strong> for the IVI session. 

<P class="Body">If there are no coercions records, the function returns an empty string. The buffer must contain at least as many elements as the value you specify with the <strong>Buffer_Size</strong> parameter.</p>

</td>
</tr>
</table>
</body>
</html>    G
����  �    Status                            8�
   �  �    Instrument Handle                 -  �  �    Buffer Size                      � - � �  �    Coercion Record                    	                0    	           H    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDMM_error_message</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>

<h1 class="function">[OBSOLETE] niDMM_error_message</h1>

<p class="syntax">ViStatus = niDMM_error_message(ViSession Instrument_Handle, ViStatus Error_Code, ViChar Error_Message[])</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Takes the <strong>Error_Code</strong> returned by the instrument driver functions, interprets it, and returns it as a user-readable string.</p>

</body>
</html>    �    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Error_Code</td>
<td class="paramDataType">ViStatus</td>
<td>The <strong>Error_Code</strong> returned from the instrument. The default is 0, indicating VI_SUCCESS.

</td>
</tr>
</table>
</body>
</html>    c    <html>

<head>
<script src="launchhelp.js" type="text/javascript"></script>
<link rel="StyleSheet" href="styles.css" type="text/css">
</head>

<body>

<table class="borderless"><tr>
<td class="paramName">Error_Message</td>
<td class="paramDataType">ViChar[]</td>
<td>The error information formatted into a string.

</td>
</tr>
</table>
</body>
</html>
    G
����  �    Status                            8�
   �  �    Instrument Handle                #z -  �  �    Error Code                       % - � �  �    Error Message                      	                0    	         ����         
y  �             K.        init                                                                                                                                    ����         !�  4�             K.        InitWithOptions                                                                                                                         ����         6�  ;p             K.        close                                                                                                                                   ����         ;�  Rw             K.        ConfigureMeasurementDigits                                                                                                              ����         U�  i�             K.        ConfigureMeasurementAbsolute                                                                                                            ����         ld  ��             K.        ConfigureMultiPoint                                                                                                                     ����         ��  ��             K.        ConfigureWaveformAcquisition                                                                                                            ����         ��  �'             K.        ConfigureCableCompType                                                                                                                  ����         �w  �             K.        ConfigureOpenCableCompValues                                                                                                            ����         �  ��             K.        ConfigureShortCableCompValues                                                                                                           ����         ��  �	             K.        PerformOpenCableComp                                                                                                                    ����         �  �             K.        PerformShortCableComp                                                                                                                   ����         ��  �h             K.        ConfigureTransducerType                                                                                                                 ����         Ū  ϴ             K.        ConfigureThermocouple                                                                                                                   ����         ъ  �             K.        ConfigureFixedRefJunction                                                                                                               ����         ��  �             K.        ConfigureRTDType                                                                                                                        ����         �  ��             K.        ConfigureRTDCustom                                                                                                                      ����         �  ��             K.        ConfigureThermistorType                                                                                                                 ����         � 
�             K.        ConfigureThermistorCustom                                                                                                               ����        � (             K.        ConfigurePowerLineFrequency                                                                                                             ����        � $�             K.        ConfigureAutoZeroMode                                                                                                                   ����        %� 0�             K.        ConfigureADCCalibration                                                                                                                 ����        2 9�             K.        ConfigureOffsetCompOhms                                                                                                                 ����        :� Gq             K.        ConfigureACBandwidth                                                                                                                    ����        Hh Rx             K.        ConfigureFrequencyVoltageRange                                                                                                          ����        SB Z�             K.        ConfigureCurrentSource                                                                                                                  ����        [� b             K.        ConfigureWaveformCoupling                                                                                                               ����        c( ot             K.        ConfigureTrigger                                                                                                                        ����        r� x             K.        SendSoftwareTrigger                                                                                                                     ����        x� .             K.        ConfigureMeasCompleteDest                                                                                                               ����        �� �s             K.        ConfigureTriggerSlope                                                                                                                   ����        �i ��             K.        ConfigureSampleTriggerSlope                                                                                                             ����        �� �2             K.        ConfigureMeasCompleteSlope                                                                                                              ����        �( ��             K.        GetAutoRangeValue                                                                                                                       ����        �m ��             K.        GetApertureTimeInfo                                                                                                                     ����        �� �W             K.        GetMeasurementPeriod                                                                                                                    ����        � �j             K.        SetAttributeViBoolean                                                                                                                   ����        �� �O             K.        SetAttributeViInt32                                                                                                                     ����        �� �{             K.        SetAttributeViReal64                                                                                                                    ����        ր �             K.        SetAttributeViSession                                                                                                                   ����        �J ��             K.        SetAttributeViString                                                                                                                    ����        � �i             K.        GetAttributeViBoolean                                                                                                                   ����        �� ��             K.        GetAttributeViInt32                                                                                                                     ����        �. ��             K.        GetAttributeViReal64                                                                                                                    ����        ��               K.        GetAttributeViSession                                                                                                                   ����        V �             K.        GetAttributeViString                                                                                                                    ����        D              K.        CheckAttributeViBoolean                                                                                                                 ����        a              K.        CheckAttributeViInt32                                                                                                                   ����        � j             K.        CheckAttributeViReal64                                                                                                                  ����        o ".             K.        CheckAttributeViSession                                                                                                                 ����        #c '             K.        CheckAttributeViString                                                                                                                  ����        (R 2Y             K.        ImportAttributeConfigurationFile                                                niDMM                                                   ����        3 <�             K.        ExportAttributeConfigurationFile                                                niDMM                                                   ����        =� H�             K.        ImportAttributeConfigurationBuffer                                              niDMM                                                   ����        I� T�             K.        ExportAttributeConfigurationBuffer                                              niDMM                                                   ����        U~ [�             K.        Read                                                                                                                                    ����        \� g�             K.        ReadMultiPoint                                                                                                                          ����        ii rR             K.        ReadWaveform                                                                                                                            ����        s� {             K.        IsOverRange                                                                                                                             ����        |s ��             K.        IsUnderRange                                                                                                                            ����        �� ��             K.        Initiate                                                                                                                                ����        �k ��             K.        Fetch                                                                                                                                   ����        � �s             K.        FetchMultiPoint                                                                                                                         ����        �� �i             K.        FetchWaveform                                                                                                                           ����        �� ��             K.        Abort                                                                                                                                   ����        �0 ��             K.        ReadStatus                                                                                                                              ����        �� �R             K.        Control                                                                                                                                 ����        � ��             K.        SelfCal                                                                                                                                 ����        �9 ��             K.        InitExtCal                                                                                                                              ����        �� ��             K.        CalAdjustLinearization                                                                                                                  ����        �> ��             K.        CalAdjustGain                                                                                                                           ����        � ��             K.        CalAdjustOffset                                                                                                                         ����        �� ��             K.        CalAdjustMisc                                                                                                                           ����        ��  \             K.        CalAdjustLC                                                                                                                             ����        �              K.        CalAdjustACFilter                                                                                                                       ����        � �             K.        CloseExtCal                                                                                                                             ����        � �             K.        GetCalCount                                                                                                                             ����        ! +P             K.        GetCalDateAndTime                                                                                                                       ����        -� 3             K.        GetDevTemp                                                                                                                              ����        3� 8G             K.        GetLastCalTemp                                                                                                                          ����        9� ?�             K.        GetCalUserDefinedInfoMaxSize                                                                                                            ����        @� I�             K.        GetCalUserDefinedInfo                                                                                                                   ����        J� Rw             K.        SetCalUserDefinedInfo                                                                                                                   ����        S* W�             K.        GetExtCalRecommendedInterval                                                                                                            ����        X\ ]�             K.        GetSelfCalSupported                                                                                                                     ����        ^@ b�             K.        RestoreLastExtCalConstants                                                                                                              ����        cc k*             K.        SetCalPassword                                                                                                                          ����        l n]             K.        reset                                                                                                                                   ����        n� q�             K.        ResetWithDefaults                                                                                                                       ����        r }B             K.        self_test                                                                                                                               ����        ~> �             K.        revision_query                                                                                                                          ����        � ��             K.        FormatMeasAbsolute                                                                                                                      ����        �C ��             K.        Disable                                                                                                                                 ����        � ��             K.        GetChannelName                                                                                                                          ����        �� �q             K.        ClearError                                                                                                                              ����        �� �             K.        GetError                                                                                                                                ����        �N �,             K.        GetErrorMessage                                                                                                                         ����        �[ �.             K.        error_query                                                                                                                             ����        �* �             K.        LockSession                                                                                                                             ����        �s �             K.        UnlockSession                                                                                                                           ����        �� @             K.        GetNextInterchangeWarning                                                                                                               ����        5 
             K.        ClearInterchangeWarnings                                                                                                                ����        
� z             K.        ResetInterchangeCheck                                                                                                                   ����        �  5             K.        GetNextCoercionRecord                                                                                                                   ����        !* &�             K.        error_message                                                                                                                               ����                                                                                     �Initialize                                                                           �Initialize With Options                                                              �Close                                                                               �Configuration                                                                        �Configure Measurement Digits                                                         �Configure Measurement Absolute                                                       �Configure Multi Point                                                                �Configure Waveform Acquisition                                                      6Measurement Options                                                                 �Capacitance and Inductance                                                           �Configure Cable Comp Type                                                            �Configure Open Cable Comp Values                                                     �Configure Short Cable Comp Values                                                    �Perform Open Cable Comp                                                              �Perform Short Cable Comp                                                          ����Temperature                                                                          �Configure Transducer Type                                                            �Configure Thermocouple                                                               �Configure Fixed Reference Junction                                                   �Configure RTD Type                                                                   �Configure RTD Custom                                                                 �Configure Thermistor Type                                                            �Configure Thermistor Custom                                                          �Configure Power Line Frequency                                                       �Configure Auto Zero Mode                                                             �Configure ADC Calibration                                                            �Configure Offset Comp Ohms                                                           �Configure AC Bandwidth                                                               �Configure Freq Voltage Range                                                         �Configure Current Source                                                             �Configure Waveform Coupling                                                         Trigger                                                                              �Configure Trigger                                                                    �Send Software Trigger                                                                �Configure Measurement Complete Dest                                                  �Configure Trigger Slope                                                              �Configure Sample Trigger Slope                                                       �Configure Meas Complete Slope                                                       ~Actual Values                                                                        �Get Auto Range Value                                                                 �Get Aperture Time Info                                                               �Get Measurement Period                                                              �Set/Get/Check Attribute                                                             cSet Attribute                                                                        �Set Attribute ViBoolean                                                              �Set Attribute ViInt32                                                                �Set Attribute ViReal64                                                               �Set Attribute ViSession                                                              �Set Attribute ViString                                                              �Get Attribute                                                                        �Get Attribute ViBoolean                                                              �Get Attribute ViInt32                                                                �Get Attribute ViReal64                                                               �Get Attribute ViSession                                                              �Get Attribute ViString                                                              qCheck Attribute                                                                      �Check Attribute ViBoolean                                                            �Check Attribute ViInt32                                                              �Check Attribute ViReal64                                                             �Check Attribute ViSession                                                            �Check Attribute ViString                                                            Import/Export Attribute Configuration                                                �Import Attribute Configuration File                                                  �Export Attribute Configuration File                                                  �Import Attribute Configuration Buffer                                                �Export Attribute Configuration Buffer                                               �Acquisition                                                                          �Read                                                                                 �Read Multi Point                                                                     �Read Waveform                                                                        �Is Over Range                                                                        �Is Under Range                                                                    ����Low-Level Acquisition                                                                �Initiate                                                                             �Fetch                                                                                �Fetch Multi Point                                                                    �Fetch Waveform                                                                       �Abort                                                                                �Read Status                                                                          �Control                                                                             �Calibration                                                                          �Self Cal                                                                            EExternal Calibration                                                                 �Initialize External Cal                                                              �Cal Adjust Linearization                                                             �Cal Adjust Gain                                                                      �Cal Adjust Offset                                                                    �Cal Adjust Miscellaneous                                                             �Cal Adjust LC                                                                        �Cal Adjust AC Filter                                                                 �Close External Cal                                                                  �Calibration Utility                                                                  �Get Cal Count                                                                        �Get Cal Date and Time                                                                �Get Dev Temp                                                                         �Get Last Cal Temp                                                                    �Get Cal User Defined Info Max Size                                                   �Get Cal User Defined Info                                                            �Set Cal User Defined Info                                                            �Get External Cal Recommended Interval                                                �Get Self Cal Supported                                                               �Restore Last External Cal Constants                                                  �Set Cal Password                                                                    `Utility                                                                              �Reset                                                                                �Reset With Defaults                                                                  �Self-Test                                                                            �Revision Query                                                                       �Format Meas Absolute                                                                 �Disable                                                                              �Get Channel Name                                                                    �Error Handling                                                                       �Clear Error                                                                          �Get Error                                                                            �Get Error Message                                                                    �Error Query                                                                         	!Locking                                                                              �Lock Session                                                                         �Unlock Session                                                                      	�Interchangeability Info                                                              �Get Next Interchange Warning                                                         �Clear Interchange Warning                                                            �Reset Interchange Check                                                             
Coercion Info                                                                        �Get Next Coercion Record                                                          ����Obsolete                                                                             �Error Message                                                                   