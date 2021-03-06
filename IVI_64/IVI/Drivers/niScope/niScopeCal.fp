s��        �    ��  �   �   ����                               niScope                         NI-Scope Calibration                                                                                     � ��ViConstString  � � ��ViInt16  �  � ��ViInt32  � � ��ViUInt16  � � ��ViUInt32  � � ��ViReal64     	�  ViInt16[]     	�  ViInt32[]     
�  	ViReal64[]     � ��ViRsrc  � 	� 	��ViSession     �  ViChar[]  �  � ��ViStatus  � 	� 	��ViBoolean     � 	 
ViBoolean[]       These functions are used during external calibration procedures to adjust calibration constants stored in the scope's EEPROM.     �    Use these functions to fetch values from the EEPROM that were stored during previous external calibrations.  These functions can use an instrument handle from niScope_init or niScope_CalStart.     Y    Optional functions used during external calibration to store information in the EEPROM.     �    These functions measure the performance of the scope.  They should be used in conjunction with the verification procedures that are listed in the calibration procedure documents (installed at VXIPNP/winnt(win95)/niscope/documents).    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CalChangePassword</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_CalChangePassword</h1>


<h2>C Function Prototype</h2>
<p class="syntax">ViStatus _VI_FUNC niScope_CalChangePassword
(ViSession      sessionHandle,  
   ViConstString  oldPassword,    
   ViConstString  newPassword);
</p>
<h2 class="purpose">Purpose</h2>

<p class="Body">
Verifies the  <strong>old password</strong> against the one stored in the EEPROM. If the two 
match, the function stores  the  <strong>new password </strong>
in the EEPROM.
 
The password is stored as four characters, but shorter strings are acceptable. 
For most digitizers, the default password is the empty string (&#34; &#34;).  For SMC-based digitizers, the default password is &#34;NI&#34;.

 If you forget your password, call National Instruments for assistance.





</p>
</body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CalChangePassword</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">sessionHandle</td>
<td class="paramDataType">ViSession</td>
<td>The session handle you obtain from <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_CalStart.html')"><span class="Monospace">niScope_CalStart</span></a>.</td></tr>
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
</html>    o    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CalChangePassword</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">oldPassword</td>
<td class="paramDataType">ViConstString </td>
<td>The previous password is verified against what is stored in the EEPROM.</td></tr>
</table></body>
</html>    U    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CalChangePassword</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">newPassword</td>
<td class="paramDataType">ViConstString </td>
<td>The new password that is written to the EEPROM.</td></tr></table></body>
</html>    	n(   �  `    Instrument Handle                 U����  `    status                            . $  �  `    Old Password                      � `  �  `    New Password                           	            ""    ""   n    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
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

<p class="Body">Self-calibrates most NI digitizers, including all SMC-based devices.
To verify that your digitizer supports self-calibration, 
refer to  <a href="javascript:LaunchHelp('Digitizers.chm::/Features_Supported_Main.html')">Features Supported by Device</a>. 
</p>

<p class="Body">For SMC-based digitizers,  if the self-calibration is performed successfully in a regular session, the 
calibration constants are 
immediately stored in the self-calibration area of the EEPROM. If the self-calibration is performed in an external 
calibration session, the 
calibration constants take effect immediately for the duration of the session. However, they are not stored in 
the EEPROM until <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_CalEnd.html')"><span class="Monospace">niScope_CalEnd</span></a> is called with <strong>action</strong> set to 
<span class="Monospace">NISCOPE_VAL_ACTION_STORE</span> and no errors occur.</p>



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
<title>niScope_CalSelfCalibrate</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">vi</td>
<td class="paramDataType">ViSession</td>
<td>The instrument handle you obtain from  <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_init.html')"><span class="Monospace">niScope_init</span></a> that identifies a particular instrument session.</td></tr>
</table></body>
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
<table class="Borderless"><tr><td class="paramName">channelList</td>
<td class="paramDataType">ViConstString</td>
<td>The channel to configure. For more information, refer to <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviChannelStringSyntaxforC.html')">Channel String Syntax</a>.</td></tr>
</table></body>
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
</html>    h����  `    status                            $A-   �  `    Instrument Handle                 'H $  �  `    Channel List                      *3 Y  �     Option                             	                VI_NULL               mNone - Do Self Calibration VI_NULL Restore External Calibration NISCOPE_VAL_CAL_RESTORE_EXTERNAL_CALIBRATION   �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CalStart</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_CalStart</h1>


<h2>C Function Prototype</h2>
<p class="syntax">ViStatus _VI_FUNC niScope_CalStart(ViRsrc resourceName, ViConstString password, ViSession* sessionHandle);</p>
<h2 class="purpose">Purpose</h2>

<p class="Body">
Opens an external calibration session and produces a calibration session handle that is 
required by 
the external calibration functions. 
 All other calibration functions, such as verification and fetch VIs, work with both a calibration 
 session and a session handle obtained from <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_init.html')"><span class="Monospace">niScope_init</span></a>. 
 Acceptable session handles are documented for each function in the calibration procedure documents.</p>


<p class="Body">By default, the calibration password for the SMC-based digitizers is &#34;NI&#34. The password is stored in the EEPROM as an array of four characters.
 Nonprintable characters are allowed, but the array is padded with  NULLs after the first  NULL is found. This padding 
 allows strings of less than four characters to be valid passwords. The password is verified against the password stored 
 in the EEPROM. You can change the password from the default by calling <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_CalChangePassword.html')">
 <span class="Monospace">niScope_CalChangePassword</span></a>. </p>


<p class="Body">
Only one session handle can be obtained at a time, and every session started  with niScope_CalStart must be 
closed by calling <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_CalEnd.html')">
<span class="Monospace">niScope_CalEnd</span></a>. If you fail to close the session, you must unload the niScope_32.dll by closing your application or 
application development environment (ADE) before you can open another session. </p>

<p class="Body">
If an error occurs during calibration, call <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_errorHandler.html')"><span class="Monospace">niScope_errorHandler</span></a> to get the 
error message text. You can call <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_CalEnd.html')"><span class="Monospace">niScope_CalEnd</span></a> with <strong>action</strong> set to 

<span class="Monospace">NISCOPE_VAL_CAL_ACTION_ABORT</span> to end the session without updating the EEPROM. For SMC-based digitizers, the EEPROM is also not 
updated if an error occurs.</p>

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
</html>    b    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CalStart</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">resourceName</td>
<td class="paramDataType">ViRsrc</td>
<td>The device number assigned by Measurement &#38; Automation Explorer (MAX).</td></tr>
</table></body>
</html>    m    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CalStart</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">password</td>
<td class="paramDataType">ViConstString</td>
<td>The password you use, which is verified against the password stored in the EEPROM.</td></tr>
</table></body>
</html>    9    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CalStart</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">sessionHandle</td>
<td class="paramDataType">ViSession*</td>
<td>The returned session handle.</td></tr>
</table></body>
</html>    :f����  `    status                            @? $   �  `    Resource Name                     B� `  �  `    Password                          E $� �  `    Instrument Handle                  	            	"DAQ::1"    ""    	           V    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CalAdjustFrequencyResponse</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_CalAdjustFrequencyResponse</h1>


<h2>C Function Prototype</h2>
<p class="syntax">ViStatus _VI_FUNC niScope_CalAdjustFrequencyResponse
(  
   ViSession      sessionHandle,   
   ViConstString  channelName,       
   ViReal64       range,             
   ViReal64       stimulusFreq,       
   ViReal64       stimulusAmp      
);
 </p>

<h2 class="purpose">Purpose</h2>
<p class ="body">
 
For the NI 5622, calibrates the frequency response of the device. The function is called multiple times, one for each frequency point in the sweep. The user must supply the stimulus frequency  (in hertz) and stimulus amplitude (in volts) of the input signal. </p>
</body></html>
    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CalAdjustInternalReference</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">sessionHandle</td>
<td class="paramDataType">ViSession</td>
<td>The session handle returned by <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_CalStart.html')"><span class="Monospace">niScope_CalStart</span></a>.</td></tr>
</table></body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CalAdjustOffset</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">channelName</td>
<td class="paramDataType">ViConstString</td>
<td>The string name of the channel to calibrate. For more information, refer to <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviChannelStringSyntaxforC.html')">Channel String Syntax</a>.</td></tr>
</table></body>
</html>    8    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CalAdjustRange</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">range</td>
<td class="paramDataType">ViReal64</td>
<td>The voltage range to calibrate.</td></tr>
</table></body>
</html>    P    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CalAdjustDCM</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">stimulusFreq</td>
<td class="paramDataType">ViReal64</td>
<td>The frequency of the external stimulus applied to the digitizer.</td></tr></table>
</body>
</html>    R    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CalAdjustRange</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">stimulus</td>
<td class="paramDataType">ViReal64</td>
<td>The peak voltage of the signal applied to the digitizer.</td></tr></table></body>
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
</html>    L� *   �  �    sessionHandle                     O� ( � �  �    channelName                       R� a  �  �    range                             T� a � �  �    stimulusFreq                      W< �  �  �    stimulusAmp                       Y� � ����  �    status                                 "0"                	          �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CalAdjustInternalReference</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_CalAdjustInternalReference</h1>


<h2>C Function Prototype</h2>
<p class="syntax">ViStatus _VI_FUNC niScope_CalAdjustInternalReference
(ViSession sessionHandle,
ViInt32 option,
ViReal64 stimulus);</p>

<h2 class="purpose">Purpose</h2>
<P class="Body">Unsupported.</P>






</body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CalAdjustInternalReference</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">sessionHandle</td>
<td class="paramDataType">ViSession</td>
<td>The session handle returned by <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_CalStart.html')"><span class="Monospace">niScope_CalStart</span></a>.</td></tr>
</table></body>
</html>    1    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CalAdjustInternalReference</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">option</td>
<td class="paramDataType">ViInt32</td>
<td>Unsupported.</td></tr>
</table></body>
</html>    2    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CalAdjustInternalReference</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">stimulus</td>
<td class="paramDataType">ViReal64</td>
<td>Unsupported.</td></tr></table></body>
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
</html>    c�(   �  `    Instrument Handle                 f� $  �  `    Option                            h� j  �  `    Stimulus                          k����  `    status                                 VI_NULL    0.0    	           	�    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CalAdjustRange</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_CalAdjustRange</h1>


<h2>C Function Prototype</h2>
<p class="syntax">ViStatus _VI_FUNC niScope_CalAdjustRange
(ViSession sessionHandle,
ViConstString channelName,
ViReal64&nbsp;range,&nbsp;ViReal64&nbsp;stimulus);
</p>
<h2 class="purpose">Purpose</h2>


<table class="Borderless-Wide">
<tr>
<td class="Icon"><img src="note.gif"></td>
<td>
<strong>Note</strong>&nbsp;&nbsp;

Use this function only when following the device calibration procedure.</td></tr></table>

<p class="Body">
Before calling this function, 
connect an accurate DC reference voltage to one of the digitizer's channels.  Use the function parameters to 
indicate the voltage and channel.</p>
<ul class="List-Diamond">
<li>SMC-Based Digitizers
<p class="Body">For SMC-based digitizers, this function  calibrates the range (that is, gain) 
accuracy of the entire device using the specified channel. The function must be called twice in the same session with two different <strong>stimulus</strong> 
values.  The stimulus values should be several volts apart, but within &#0177;4&nbsp;V;  the recommended values are +4.0&nbsp;V

and 0.0&nbsp;V.  The two calls should use the same channel&#8212;it is not necessary to repeat the procedure on the remaining channel.
 This  function  adjusts the  gain and range calibration constants so that the digitizer 
 reads exactly the correct difference between the two stimulus voltages.  This calibrates the onboard voltage 
 reference against the external voltage reference.  Calibrating with a voltage difference instead of a single 
 reading eliminates any error due to offset.</p>
<p class="Body">
The new calibration constants for the digitizer take effect immediately for the duration of the external calibration session. 
 The constants are written to the EEPROM if you call <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_CalEnd.html')"><span class="Monospace">niScope_CalEnd</span></a> with no errors and with <strong>action
 </strong> set to <span class="Monospace">NISCOPE_VAL_ACTION_STORE</span>.</p></li>
 
</ul>

</body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CalAdjustRange</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">sessionHandle</td>
<td class="paramDataType">ViSession</td>
<td>The session handle you obtain from <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_CalStart.html')"><span class="Monospace">niScope_CalStart</span></a>.</td></tr>
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
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CalAdjustRange</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">channelName</td>
<td class="paramDataType">ViConstString</td>
<td>The string name of the channel to calibrate. For more information, refer to <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviChannelStringSyntaxforC.html')">Channel String Syntax</a></td></tr>
</table></body>
</html>    8    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CalAdjustRange</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">range</td>
<td class="paramDataType">ViReal64</td>
<td>The voltage range to calibrate.</td></tr>
</table></body>
</html>    A    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CalAdjustRange</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">stimulus</td>
<td class="paramDataType">ViReal64</td>
<td>The peak voltage of the applied signal.</td></tr></table></body>
</html>    {�+   �  `    Instrument Handle                 ~�����  `    status                            �� $  �  `    Channel Name                      �� `  �  `    Range                             �� �  �  `    Stimulus                               	            "0"        0.0   �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CalAdjustOffset</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_CalAdjustOffset</h1>


<h2>C Function Prototype</h2>
<p class="syntax">
ViStatus _VI_FUNC niScope_CalAdjustOffset
(
ViSession sessionHandle,
ViConstString channelName,
ViReal64 range        
);
</p>
<h2 class="purpose">Purpose</h2>
<p class="Body">Unsupported.</p>
 



</body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CalAdjustOffset</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">sessionHandle</td>
<td class="paramDataType">ViSession</td>
<td>The session handle you obtain from <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_CalStart.html')"><span class="Monospace">niScope_CalStart</span></a>.</td></tr>
</table></body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CalAdjustOffset</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">channelName</td>
<td class="paramDataType">ViConstString</td>
<td>The string name of the channel to calibrate. For more information, refer to <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviChannelStringSyntaxforC.html')">Channel String Syntax</a>.</td></tr>
</table></body>
</html>    $    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CalAdjustOffset</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">range</td>
<td class="paramDataType">ViReal64</td>
<td>Unsupported.</td></tr></table></body>
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
</html>    �),   �  `    Instrument Handle                 � )  �  `    Channel Name                      � e  �  `    Range                             �7����  `    status                                 "0"        	           �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CalAdjustOffsetRange</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_CalAdjustOffsetRange</h1>


<h2>C Function Prototype</h2>
<p class="syntax">ViStatus _VI_FUNC niScope_CalAdjustOffsetRange (  ViSession sessionHandle, ViConstString  channelName, ViReal64 range, ViReal64 stimulus );

 


</p>
<h2 class="purpose">Purpose</h2>

<p class="Body">For the NI 5132/5133, this function externally calibrates the vertical offset.  Refer to the <em>NI 5132/5133 Calibration Procedure</em> for the appropriate stimulus voltages.
</p>
 



</body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CalAdjustRange</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">sessionHandle</td>
<td class="paramDataType">ViSession</td>
<td>The session handle you obtain from <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_CalStart.html')"><span class="Monospace">niScope_CalStart</span></a>.</td></tr>
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
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CalAdjustRange</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">channelName</td>
<td class="paramDataType">ViConstString</td>
<td>The string name of the channel to calibrate. For more information, refer to <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviChannelStringSyntaxforC.html')">Channel String Syntax.</a></td></tr>
</table></body>
</html>    8    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CalAdjustRange</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">range</td>
<td class="paramDataType">ViReal64</td>
<td>The voltage range to calibrate.</td></tr>
</table></body>
</html>    A    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CalAdjustRange</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">stimulus</td>
<td class="paramDataType">ViReal64</td>
<td>The peak voltage of the applied signal.</td></tr></table></body>
</html>    �� %  �  `    Instrument Handle                 ������  `    status                            �Y % > �  `    Channel Name                      �U g > �  `    Range                             �� � > �  `    Stimulus                               	            "0"        0.0   �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CalAdjustCompensationAttenuator</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_CalAdjustCompensationAttenuator</h1>


<h2>C Function Prototype</h2>
<p class="syntax">ViStatus _VI_FUNC niScope_CalAdjustCompensationAttenuator (ViSession sessionHandle, ViConstString channelName, ViReal64 range);
</p>
<h2 class="purpose">Purpose</h2>

<p class="Body">For the NI 5132/5133, this function externally calibrates the compensation attenuator.  Refer to the <em>NI 5132/5133 Calibration Procedure</em> for more information.
 </p>



</body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CalAdjustOffset</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">sessionHandle</td>
<td class="paramDataType">ViSession</td>
<td>The session handle you obtain from <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_CalStart.html')"><span class="Monospace">niScope_CalStart</span></a>.</td></tr>
</table></body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CalAdjustOffset</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">channelName</td>
<td class="paramDataType">ViConstString</td>
<td>The string name of the channel to calibrate. For more information, refer to <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviChannelStringSyntaxforC.html')">Channel String Syntax</a>.</td></tr>
</table></body>
</html>    7    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CalAdjustOffset</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">range</td>
<td class="paramDataType">ViReal64</td>
<td>The voltage range to calibrate.</td></tr></table></body>
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
</html>    �� %  �  `    Instrument Handle                 �� % > �  `    Channel Name                      �� p > �  `    Range                             ������  `    status                                 "0"        	           �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CalAdjustVCXO</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_CalAdjustVCXO</h1>


<h2>C Function Prototype</h2>
<p class="syntax">ViStatus _VI_FUNC niScope_CalAdjustVCXO 
(ViSession      sessionHandle,     
   ViReal64       stimulusFreq);
</p>
<h2 class="purpose">Purpose</h2>
<table class="Borderless-Wide">
<tr>
<td class="Icon"><img src="note.gif"></td>
<td>
<strong>Note</strong>&nbsp;&nbsp;
Use this function only when following the device calibration procedure.</td></tr></table>

<p class="Body">
For SMC-based digitizers, this function calibrates the sample rate of the digitizer. 
 The function adjusts the frequency of the oscillator (VCXO) that serves as the digitizer's 
 onboard sample rate timebase.  



Check the calibration procedure specific to your device and set the value of the <strong>stimulusFreq</strong> parameter.Before calling this function, connect an accurate, stable reference signal to channel 0. (The channel used is not configurable.) The function adjusts frequency calibration constants until the digitizer exactly measures the frequency of the reference signal.
The new calibration constants take effect immediately for the duration of the external 
calibration session.  The constants are written to the EEPROM if you call <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_CalEnd.html')">
<span class="Monospace">niScope CalEnd</span></a> with no 
errors and with <strong>action</strong> set to <span class="Monospace">NISCOPE_VAL_CAL_ACTION_STORE</span>.
</p>


</body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CalAdjustVCXO</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">sessionHandle</td>
<td class="paramDataType">ViSession</td>
<td>The session handle you obtain from <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_CalStart.html')"><span class="Monospace">niScope_CalStart</span></a>.</td></tr>
</table></body>
</html>    W    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CalAdjustVCXO</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">stimulusFreq</td>
<td class="paramDataType">ViReal64</td>
<td>The frequency of the reference clock present on channel 0.</td></tr></table></body>
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
</html>    �!,   �  `    Instrument Handle                 � e � �  x    Stimulus Freq                     �c����  `    status                                 10000000.00    	           x    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CalAdjustDCM</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_CalAdjustDCM</h1>


<h2>C Function Prototype</h2>
<p class="syntax">ViStatus niScope_CalAdjustDCM (ViSession sessionHandle,
					ViConstString channelName,
					ViReal64 stimulusFreq);
</p>
<h2 class="purpose">Purpose</h2>

<p class="Body">For the NI&nbsp;5104/5105 digitizer, calibrates the external clock digital 
clock managers (DCMs). DCM calibration ensures that data can be sampled  at the correct time in the clock period.

 </p>


</body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CalAdjustDCM</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">sessionHandle</td>
<td class="paramDataType">ViSession</td>
<td>The session handle you obtain from <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_CalStart.html')"><span class="Monospace">niScope_CalStart</span></a>.</td></tr>
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
</html>    <    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CalAdjustDCM</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">channelName</td>
<td class="paramDataType">ViConstString</td>
<td>This parameter is ignored.</td></tr>
</table></body>
</html>    s    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CalAdjustDCM</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">stimulusFreq</td>
<td class="paramDataType">ViReal64</td>
<td>The external stimulus applied to the digitizer.
<p class ="Body">Default value: 0</p> </td></tr></table></body>
</html>    �z(   �  `    Instrument Handle                 �\����  `    status                            �5 %  �  `    Channel Name                      �y p  �  `    Stimulus                               	            "0"    0.0   _    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CalAdjustAccessoryGainAndOffset</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_CalAdjustAccessoryGainAndOffset</h1>


<h2>C Function Prototype</h2>
<p class="syntax">ViStatus _VI_FUNC niScope_CalAdjustAccessoryGainAndOffset ( ViSession sessionHandle, ViConstString channelName, ViReal64 positiveFS,
 ViReal64 ground, ViReal64 negativeFS );
</p>
<h2 class="purpose">Purpose</h2>

<p class="Body">For the NI 5900, this function externally calibrates the gain and offset.
 </p>



</body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CalAdjustInternalReference</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">sessionHandle</td>
<td class="paramDataType">ViSession</td>
<td>The session handle returned by <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_CalStart.html')"><span class="Monospace">niScope_CalStart</span></a>.</td></tr>
</table></body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CalAdjustOffset</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">channelName</td>
<td class="paramDataType">ViConstString</td>
<td>The string name of the channel to calibrate. For more information, refer to <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviChannelStringSyntaxforC.html')">Channel String Syntax</a>.</td></tr>
</table></body>
</html>    a    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CalAdjustRange</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">positiveFS</td>
<td class="paramDataType">ViReal64</td>
<td>This value is calculated during the external calibration procedure.</td></tr>
</table></body>
</html>    ^    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CalAdjustRange</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">ground</td>
<td class="paramDataType">ViReal64</td>
<td>This value is calculated during the external calibration procedure. </td></tr>
</table></body>
</html>    a    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CalAdjustRange</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">negativeFS</td>
<td class="paramDataType">ViReal64</td>
<td>This value is calculated during the external calibration procedure.</td></tr>
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
</html>    �M %   �  �    sessionHandle                     �9 % � �  �    channelName                       �6 p  �  �    positiveFS                        �� p � �  �    ground                            � �  �  �    negativeFS                        �n � ����  �    status                                 "0"                	               <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CalRouteInternalReference</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_CalRouteInternalReference</h1>


<h2>C Function Prototype</h2>
<p class="syntax">ViStatus _VI_FUNC niScope_CalRouteInternalReference
(ViSession      sessionHandle,  
   ViInt32        option,        
   ViInt32        whichReference);
</p>
<h2 class="purpose">Purpose</h2>
<p class="Body">Unsupported.</p>




</body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CalRouteInternalReference</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">sessionHandle</td>
<td class="paramDataType">ViSession</td>
<td>The session handle you obtain from <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_CalStart.html')"><span class="Monospace">niScope_CalStart</span></a>.</td></tr>
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
</html>    6    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CalRouteInternalReference</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">whichReference</td>
<td class="paramDataType">ViInt32</td>
<td>Unsupported.</td></tr></table></body>
</html>    0    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CalRouteInternalReference</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">option</td>
<td class="paramDataType">ViInt32</td>
<td>Unsupported.</td></tr>
</table></body>
</html>   �'   �  `    Instrument Handle                	�����  `    status                           {    � �    Which Reference                  � U  � �    Option                                 	                       '10V, Channel 0 NISCOPE_VAL_CAL_10V_CH0               rUnroute Signal NISCOPE_VAL_CAL_UNROUTE_SIGNAL Positive NISCOPE_VAL_CAL_POSITIVE Negative NISCOPE_VAL_CAL_NEGATIVE       <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CalSetAccessorySource</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_CalSetAccessorySource</h1>


<h2>C Function Prototype</h2>
<p class="syntax">ViStatus _VI_FUNC niScope_CalSetAccessorySource ( ViSession sessionHandle, ViConstString channelName,  ViInt32 calSource );
</p>
<h2 class="purpose">Purpose</h2>

<p class="Body">For the NI 5900, this function sets the calibration source for the device.
 </p>



</body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CalAdjustInternalReference</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">sessionHandle</td>
<td class="paramDataType">ViSession</td>
<td>The session handle returned by <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_CalStart.html')"><span class="Monospace">niScope_CalStart</span></a>.</td></tr>
</table></body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CalAdjustOffset</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">channelName</td>
<td class="paramDataType">ViConstString</td>
<td>The string name of the channel to calibrate. For more information, refer to <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviChannelStringSyntaxforC.html')">Channel String Syntax</a>.</td></tr>
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
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CalAdjustRange</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">calSource</td>
<td class="paramDataType">ViInt32</td>
<td>The calibration signal souce. 
<table class="Borderless">
<tr><td><strong>Defined Values</strong></td></tr>
<tr><td><span class="Monospace">NISCOPE_VAL_CAL_SOURCE_GROUND</span></td></tr>
   <tr><td>
<span class="Monospace">NISCOPE_VAL_CAL_SOURCE_POSITIVEFS</span></td></tr> <tr><td>
 <span class="Monospace">NISCOPE_VAL_CAL_SOURCE_NEGATIVEFS</span>  </td></tr></table></td></tr>


</table></body>
</html>   � %   �  �    sessionHandle                    � % � �  �    channelName                      � p ����  �    status                           $p p  �  �    calSource                              "0"    	               �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CalEnd</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_CalEnd</h1>


<h2>C Function Prototype</h2>
<p class="syntax">ViStatus _VI_FUNC niScope_CalEnd 
(
ViSession sessionHandle,
ViInt32 action
);
</p>
<h2 class="purpose">Purpose</h2>

<p class="Body">
Closes an external calibration session. If  <strong>action</strong>  is set to 
<span class="Monospace">NISCOPE_VAL_ACTION_ABORT</span>, the session is closed and the new calibration constants 
are lost. 

Some devices may write to the EEPROM during calibration, in which case the Abort Calibration 
action restores the EEPROM to its original state. 

It is, therefore,  very important to call
 <span class="Monospace">niScope_CalEnd</span>  each time <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_CalStart.html')"><span class="Monospace">niScope_CalStart</span></a> is called, 
 even if an error occurs during 
 calibration.</p>
 
 


<p class="Body">
If  <strong>action</strong>  is set to  <span class="Monospace">NISCOPE_VAL_ACTION_STORE</span>, the 
new calibration constants are 
stored in the EEPROM. For most digitizers, the current system date and the incremented calibration 
count are also stored; for SMC-based digitizers, the current 
 system date and onboard temperature are  stored.</p>

</body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CalEnd</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">sessionHandle</td>
<td class="paramDataType">ViSession</td>
<td>The  session handle returned by <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_CalStart.html')"><span class="Monospace">niScope_CalStart</span></a>.</td></tr>
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
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CalEnd</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">action</td>
<td class="paramDataType">ViInt32</td>
<td><span class="Monospace">NISCOPE_VAL_CAL_ACTION_STORE</span> or<br>
<span class="Monospace">NISCOPE_VAL_CAL_ACTION_ABORT</span></td></tr></table></body>
</html>   /�)   �  `    Instrument Handle                2x����  `    status                           8Q &  �     Action                                 	                      \Store Constants NISCOPE_VAL_CAL_ACTION_STORE Abort Calibration NISCOPE_VAL_CAL_ACTION_ABORT   4    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CalFetchCount</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_CalFetchCount</h1>


<h2>C Function Prototype</h2>
<p class="syntax">ViStatus _VI_FUNC niScope_CalFetchCount
(
   ViSession    sessionHandle,    
   ViInt32      whichOne,         
   ViInt32*     calibrationCount  
);</p>
<h2 class="purpose">Purpose</h2>

<p class="Body">
Returns the calibration count, which is the number of times the device has been calibrated.</p>

</body>
</html>    n    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CalFetchCount</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">sessionHandle</td>
<td class="paramDataType">ViSession</td>
<td>The session handle you obtain from <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_CalStart.html')"><span class="Monospace">niScope_CalStart</span></a> or  <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_init.html')"><span class="Monospace">niScope_init</span></a>.</td></tr>
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
</html>    s    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CalFetchCount</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">whichOne</td>
<td class="paramDataType">ViInt32</td>
<td>Which type of calibration count to store: self-calibration or external calibration count.</td></tr>
</table></body>
</html>    W    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CalFetchCount</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless">
<tr><td class="paramName">calibrationCount</td>
<td class="paramDataType">ViInt32*</td>
<td>The number of calibrations performed on this device.</td></tr></table></body>
</html>   ?=( 
  �  `    Instrument Handle                B�����  `    status                           H� $  �     Which One                        K $� �  `    Calibration Count                      	                      TExternal Calibration NISCOPE_VAL_CAL_EXTERNAL Self Calibration NISCOPE_VAL_CAL_SELF    	           �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CalFetchTemperature</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_CalFetchTemperature</h1>


<h2>C Function Prototype</h2>
<p class="syntax">ViStatus _VI_FUNC niScope_CalFetchTemperature
(ViSession     sessionHandle,
   ViInt32       	whichOne, 
   ViReal64*     temperature);
</p>
<h2 class="purpose">Purpose</h2>

<p class="Body">
For SMC-based digitizers, returns the onboard temperature of the digitizer at the time of the last 
self-calibration or external calibration, in degrees Celsius. The temperature returned by this function is an onboard 
temperature read from a sensor on the surface of the digitizer. This temperature should not be confused with the 
environmental temperature of the digitizer's surroundings. During operation, the onboard temperature is normally higher 
than the environmental temperature. </p>
<p class="Body">
Temperature-sensitive parameters are calibrated during self-calibration. Therefore, the self-calibration temperature
 is usually the more important one to read. </p>





  


</body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CalFetchTemperature</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">sessionHandle</td>
<td class="paramDataType">ViSession</td>
<td>The session handle you obtain from <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_CalStart.html')"><span class="Monospace">niScope_CalStart</span></a>.</td></tr>
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
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CalFetchTemperature</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">whichOne</td>
<td class="paramDataType">ViInt32</td>
<td>Defined Values
 <p class="Body"><span class="Monospace">NISCOPE_VAL_CAL_SELF</span></p>
  <p class="Body">
<span class="Monospace">NISCOPE_VAL_CAL_EXTERNAL</span></p>
</td></tr>
</table></body>
</html>    _    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CalFetchTemperature</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">temperature</td>
<td class="paramDataType">ViReal64*</td>
<td>The returned temperature of last calibration, in &#0176;C.</td></tr>
</table></body>
</html>   TP( 
  �  `    Instrument Handle                W9����  `    status                           ] $  �     Which One                        _� $� �  `    Temperature                            	                      TExternal Calibration NISCOPE_VAL_CAL_EXTERNAL Self Calibration NISCOPE_VAL_CAL_SELF    	          Y    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CalFetchDate</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_CalFetchDate</h1>


<h2>C Function Prototype</h2>
<p class="syntax">
ViStatus _VI_FUNC niScope_CalFetchDate
(ViSession    sessionHandle,  
   ViInt32      whichOne,         
   ViInt32*     year,              
   ViInt32*     month,            
   ViInt32*     day);
</p>
<h2 class="purpose">Purpose</h2>

<p class="Body">
Returns the last self-calibration, external calibration, or manufacture date. </p>

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
</html>    m    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CalFetchDate</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">sessionHandle</td>
<td class="paramDataType">ViSession</td>
<td>The session handle you obtain from <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_CalStart.html')"><span class="Monospace">niScope_CalStart</span></a> or  <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_init.html')"><span class="Monospace">niScope_init</span></a>.</td></tr>
</table></body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CalFetchDate</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">whichOne</td>
<td class="paramDataType">ViInt32</td>
<td>The type of calibration for which the information is stored: self-calibration, external 
calibration, or manufacture date.</td></tr>
</table></body>
</html>    E    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CalFetchDate</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">year</td>
<td class="paramDataType">ViInt32*</td>
<td>The year of the last calibration, such as 2003.</td></tr>
</table></body>
</html>    F    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CalFetchDate</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">month</td>
<td class="paramDataType">ViInt32*</td>
<td>The month of the last calibration (1&#8211;12).</td></tr>
</table></body>
</html>    @    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CalFetchDate</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">day</td>
<td class="paramDataType">ViInt32*</td>
<td>The day of the last calibration (1&#8211;31).</td></tr></table></body>
</html>   g ����  `    status                           l�* 
  �  `    Instrument Handle                pN %  � �    Which One                        r� %� �  `    Year                             u7 `� �  `    Month                            w� �� �  `    Day                                	                          �External Calibration NISCOPE_VAL_CAL_EXTERNAL Self Calibration NISCOPE_VAL_CAL_SELF Manufacture Date NISCOPE_VAL_CAL_MANUFACTURE    	            	            	               <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CalFetchInternalReference</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_CalFetchInternalReference</h1>


<h2>C Function Prototype</h2>
<p class="syntax">ViStatus _VI_FUNC niScope_CalFetchInternalReference
(
   ViSession      sessionHandle,     
   ViInt32        whichReference,     
   ViReal64*       internalRefValue   
);
</p>
<h2 class="purpose">Purpose</h2>

<p class="Body">
Returns the  value of the internal reference stored with <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_CalStoreInternalReference.html')"><span class="Monospace">niScope_CalStoreInternalReference</span></a>
 during external calibration. This function allows tracking of the internal reference value, although the value is not used during digitizer operation or self-calibration. 
 The internal reference value is stored as a 32-bit floating point number in the EEPROM.</p>

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
</html>    z    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CalFetchInternalReference</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">sessionHandle</td>
<td class="paramDataType">ViSession</td>
<td>The session handle you obtain from <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_CalStart.html')"><span class="Monospace">niScope_CalStart</span></a> or  <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_init.html')"><span class="Monospace">niScope_init</span></a>.</td></tr>
</table></body>
</html>    E    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CalFetchInternalReference</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">whichReference</td>
<td class="paramDataType">ViInt32</td>
<td> The reference to return.</td></tr>
</table></body>
</html>    W    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CalFetchInternalReference</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">internalRefValue</td>
<td class="paramDataType">ViReal64*</td>
<td>The last stored internal reference value.</td></tr></table></body>
</html>   ������  `    status                           ��) 
  �  `    Instrument Handle                �5 &  � �    Which Reference                  �� $� �  `    Internal Ref Value                 	                           '10V, Channel 0 NISCOPE_VAL_CAL_10V_CH0    	          �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CalFetchMiscInfo</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_CalFetchMiscInfo</h1>


<h2>C Function Prototype</h2>
<p class="syntax">
ViStatus _VI_FUNC niScope_CalFetchMiscInfo
(
   ViSession    sessionHandle,  
   ViChar*      miscInfo        
);</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">
Returns the  miscellaneous information stored in  the EEPROM using <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_CalStoreMiscInfo.html')"><span class="Monospace">niScope_CalStoreMiscInfo</span></a>.
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
</html>    q    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CalFetchMiscInfo</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">sessionHandle</td>
<td class="paramDataType">ViSession</td>
<td>The session handle you obtain from <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_CalStart.html')"><span class="Monospace">niScope_CalStart</span></a> or  <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_init.html')"><span class="Monospace">niScope_init</span></a>.</td></tr>
</table></body>
</html>    =    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CalFetchMiscInfo</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">miscInfo</td>
<td class="paramDataType">ViChar*</td>
<td>4 characters stored in the EEPROM.</td></tr></table></body>
</html>   ������  `    status                           ��#   �  `    Instrument Handle                �	 $� �  `    Misc Info                          	                	               <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CalStoreMiscInfo</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_CalStoreMiscInfo</h1>
<h2>C Function Prototype</h2>
<p class="syntax">
ViStatus _VI_FUNC niScope_CalStoreMiscInfo (ViSession 
sessionHandle, ViConstString miscInfo); </p>
<h2 class="purpose">Purpose</h2>
<P class = "Body">Stores miscellaneous information in the 
EEPROM. For example, you can store an operator ID for the person or company 
performing a calibration. </p>

<P class = "Body">Four characters are stored in the EEPROM, and nonprintable 
characters are valid. However,  NULL is treated as an end-of-string marker, and 
all characters following the first  NULL are also set to  NULL. </p>
</body>
</html>    |    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CalStoreMiscInfo</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">sessionHandle</TD>
  <TD class="paramDataType">ViSession</TD>
  <TD>The session handle you obtain from <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_CalStart.html')"><span class="Monospace">niScope_CalStar</span>t</A> 
      or <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_init.html')"><span class="Monospace">niScope_init</span></a>.</TD></tr>
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
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CalStoreMiscInfo</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">miscInfo</TD>
  <TD class="paramDataType">ViConstString</TD>
  <TD>Pointer to 4 characters stored in the EEPROM; can be 
      less than four if NULL terminated.</TD></TR></table></body>
</html>   �+#   �  `    Instrument Handle                ������  `    status                           �� $  �  `    Misc Info                              	            ""       <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CalStoreInternalReference</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_CalStoreInternalReference</h1>


<h2>C Function Prototype</h2>
<p class="syntax">ViStatus _VI_FUNC niScope_CalStoreInternalReference
(
   ViSession      sessionHandle,      
   ViInt32        whichReference,     
   ViReal64       internalRefValue   
);
</p>
<h2 class="purpose">Purpose</h2>

<p class="Body">Unsupported.</p>

</body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CalStoreInternalReference</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">sessionHandle</td>
<td class="paramDataType">ViSession</td>
<td>The session handle you obtain from <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_CalStart.html')"><span class="Monospace">niScope_CalStart</span></a>.</td></tr>
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
</html>    8    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CalStoreInternalReference</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">whichReference</td>
<td class="paramDataType">ViInt32</td>
<td>Unsupported.</td></tr>
</table></body>
</html>    9    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CalStoreInternalReference</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">internalRefValue</td>
<td class="paramDataType">ViReal64</td>
<td>Unsupported.</td></tr></table></body>
</html>   ��# 
  �  `    Instrument Handle                ������  `    status                           ��    � �    Which Reference                  �� j  �  `    Internal Ref Value                     	                       '10V, Channel 0 NISCOPE_VAL_CAL_10V_CH0    0.0   �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CalMeasureRISDistribution</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff"><h1 class="function">niScope_CalMeasureRISDistribution</h1>


<h2>C Function Prototype</h2>
<p class="syntax">ViStatus _VI_FUNC niScope_CalMeasureRISDistribution
(ViSession       sessionHandle,      
   ViConstString   channelName,       
   ViInt32         maxTime,         
   ViReal64*        minBinPercent,     
   ViInt32         distributionSize,  
   ViInt32*        distribution);
</p>
<h2 class="purpose">Purpose</h2>

<p class="Body">
Calls <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_Read.html')"><span class="Monospace"><span class="Monospace">niScope_Read</span></span></a> 2,000 times to take an 
acquisition from the specified channel and retrieve the initial X value, which includes 
the time-to-digital (TDC) conversion. The TDC should be a uniform distribution between two
 sample points because triggers should occur randomly. To test this distribution, the distribution of initial X  values is created. 
 The percentage of triggers in the smallest bin of this distribution is returned for comparison to a 
 specification to determine if RIS is operating correctly.



The <strong>distribution</strong> parameter must be declared as an array of <strong>distributionSize</strong> to return 
the distribution. Optionally, setting <strong>distribution</strong> to <span class="Monospace">VI_NULL</span> specifies that 
the distribution is not returned.</p>


<h2>Related topics:</h2><ul>    <li><a href="digitizers.chm::/RIS.html">Equivalent-Time Sampling and Random Interleaved Sampling</a></li>               </ul>



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
</html>    z    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CalMeasureRISDistribution</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">sessionHandle</td>
<td class="paramDataType">ViSession</td>
<td>The session handle you obtain from <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_CalStart.html')"><span class="Monospace">niScope_CalStart</span></a> or  <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviniScope_init.html')"><span class="Monospace">niScope_init</span></a>.</td></tr>
</table></body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CalMeasureRISDistribution</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">channelName</td>
<td class="paramDataType">ViConstString</td>
<td>The name of the channel to calibrate. For more information, refer to <a href="javascript:LaunchMergedHelp('Digitizers.chm','scopeFunc.chm','cviChannelStringSyntaxforC.html')">Channel String Syntax</a>.</td></tr>
</table></body>
</html>    R    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CalMeasureRISDistribution</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">maxTime</td>
<td class="paramDataType">ViInt32</td>
<td>The maximum time in ms for each acquisition. </td></tr>
</table></body>
</html>    R    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CalMeasureRISDistribution</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">distributionSize</td>
<td class="paramDataType">ViInt32</td>
<td>The number of bins for distribution.</td></tr>
</table></body>
</html>    j    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CalMeasureRISDistribution</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">minBinPercent</td>
<td class="paramDataType">ViReal64*</td>
<td>The percentage (0&#8211;1) of triggers in the least full bin.</td></tr>
</table></body>
</html>    �    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<script type="text/javascript" src="launchhelp.js"></script>
<script type="text/javascript" src="pdf.js"></script>
<title>niScope_CalMeasureRISDistribution</title>
<link rel="STYLESHEET" type="print/css" href="print.css">
<link rel="STYLESHEET" type="text/css" href="styles.css">
</head>
<body bgcolor="#ffffff">
<table class="Borderless"><tr><td class="paramName">distribution</td>
<td class="paramDataType">ViInt32*</td>
<td>The array for distribution; use <span class="Monospace">VI_NULL</span> for do not return.</td></tr>
</table></body>
</html>   �<����  `    status                           �+   �  `    Instrument Handle                ӗ %  �  `    Channel Name                     ֗ V 
 �  `    Max Time                         �� $� �  `    Min Bin Percent                  �K � 
 �  `    Distribution Size                ݽ �� �  `    Distribution                       	                "0"    10000    	            10    	         ����         �               K.        CalChangePassword                                                                                                                       ����         �  -5             K.        CalSelfCalibrate                                                                                                                        ����         .�  G_             K.        CalStart                                                                                                                                ����         H]  _o             K.        CalAdjustFrequencyResponse                                                                                                              ����         `�  p�             K.        CalAdjustInternalReference                                                                                                              ����         q�  �"             K.        CalAdjustRange                                                                                                                          ����         �M  �             K.        CalAdjustOffset                                                                                                                         ����         ��  ��             K.        CalAdjustOffsetRange                                                                                                                    ����         �	  ř             K.        CalAdjustCompensationAttenuator                                                                                                         ����         ƈ  �<             K.        CalAdjustVCXO                                                                                                                           ����         ��  ��             K.        CalAdjustDCM                                                                                                                            ����         �� G             K.        CalAdjustAccessoryGainAndOffset                                                                                                         ����        � �             K.        CalRouteInternalReference                                                                                                               ����        � (             K.        CalSetAccessorySource                                                                                                                   ����        (� :�             K.        CalEnd                                                                                                                                  ����        < Mf             K.        CalFetchCount                                                                                                                           ����        N� bL             K.        CalFetchTemperature                                                                                                                     ����        c� y�             K.        CalFetchDate                                                                                                                            ����        {� ��             K.        CalFetchInternalReference                                                                                                               ����        � �N             K.        CalFetchMiscInfo                                                                                                                        ����        �	 �             K.        CalStoreMiscInfo                                                                                                                        ����        �� �.             K.        CalStoreInternalReference                                                                                                               ����        �O �I             K.        CalMeasureRISDistribution                                                                                                                   ����                                                                                     �Change Password                                                                      �Self Calibration                                                                    External Calibration                                                                 �Start                                                                                �Adjust Frequency Response                                                            �Adjust Internal Reference                                                            �Adjust Range                                                                         �Adjust Offset                                                                        �Adjust Offset Range                                                                  �Adjust Compensation Attenuator                                                       �Adjust VCXO                                                                          �Adjust DCM                                                                           �Adjust Accessory Gain and Offset                                                     �Route Internal Reference                                                             �Set Accessory Source                                                                 �End                                                                                 �Fetch Calibration Info                                                               �Fetch Count                                                                          �Fetch Temperature                                                                    �Fetch Date                                                                           �Fetch Internal Reference                                                             �Fetch Misc. Info                                                                    SStore Calibration Info                                                               �Store Misc. Info                                                                     �Store Internal Reference                                                            �Measure Performance                                                                  �Measure RIS Distribution                                                        