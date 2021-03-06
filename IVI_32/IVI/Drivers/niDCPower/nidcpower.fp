s��   	     �   � �  W�   �   ����                                niDCPower                       National Instruments DC Power Supplies      _VI_FUNC                                                  � � ��ViInt16  �  � ��ViInt32  � � ��ViReal64     � ��ViRsrc     	� 	��ViBoolean     	� 	��ViSession     � ��ViStatus     �  ViChar[]     � ��ViChar     � ��ViString     	�  ViInt16[]     	�  ViInt32[]     
�  	ViReal64[]     � 	 
ViBoolean[]     � ��ViConstString     � ��ViAttr     � ��ViUInt32  � � ��ViInt64  � � ��ViUInt16  � � ��ViUInt64     	�  ViInt64[]     � ��ViAddr  �    This instrument driver provides programming support for the National Instruments DC Power Supplies.  The driver contains all the functions that IVI and VXIplug&play require.  In addition, the driver contains high-level functions that configure the device and generate output in a single operation.  The driver also contains lower level functions that configure the device and initiate the output changes in separate operations.   

Note:  This driver requires the VISA and IVI libraries.  
     ?    This class contains functions that configure the source unit.     Z    This class contains functions that configure the DC voltage of a power supply or an SMU.     Z    This class contains functions that configure the DC current of a power supply or an SMU.     ]    This class contains functions that configure the pulse voltage of a power supply or an SMU.     ]    This class contains functions that configure the pulse current of a power supply or an SMU.     �    This class contains functions for configuring the source and measure unit with a series of property or attribute values. You must set the source mode to Sequence.

     Y    This class contains functions that configure the measure unit and acquire measurements.     @    This class contains functions that control programming states.     C    This class contains functions that configure triggers and events.     A    This class contains functions that configure the Start trigger.     B    This class contains functions that configure the Source trigger.     C    This class contains functions that configure the Measure trigger.     L    This class contains functions that configure the Sequence Advance trigger.     A    This class contains functions that configure the Pulse trigger.     T    This class contains sub-classes for the set, get, and check attribute functions.       �    This class contains functions that set an attribute to a new value.  There are typesafe functions for each attribute data type.     �    This class contains functions that obtain the current value of an attribute.  There are typesafe functions for each attribute data type.     ]    This class contains functions that initiate instrument operations and report their status.
     }    This class contains functions and a sub-class that are used to perform an external calibration on a power supply or an SMU.     O    This class contains functions that enable external calibration functionality.     _    This class contains functions that enable optional functionality when performing calibration.    c    This class contains functions and sub-classes that control common instrument operations.  These functions include many of the functions that VXIplug&play require, such as reset, self-test, revision query, error query, and error message.  This class also contains functions that access IVI error infomation, lock the session, and perform instrument I/O.
     c    This class contains functions that transfer attribute configurations between instrument sessions.     B    This class contains functions required by the IVI Specification.     R    This class contains functions that retrieve and clear the IVI error information.     k    This class contains functions that lock and unlock IVI instrument driver sessions for multithread safefy.     )    This class contains obsolete functions.    
|    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_InitializeWithChannels</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_InitializeWithChannels</h1>

<p class="Syntax"> ViStatus niDCPower_InitializeWithChannels(ViRsrc resourceName,
      ViConstString channels,
      ViBoolean reset,
      ViConstString optionString,
      ViSession *vi);</p>

 <h2 class="purpose">Purpose</h2>

<p class="Body">Creates and returns a new NI-DCPower session to the power supply or SMU specified in <strong>resource name</strong> to be used in all subsequent NI-DCPower function calls. With this function, you can optionally set the initial state of the following session attributes:</p>  
<ul>
<li><a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'NIDCPOWER_ATTR_SIMULATE.html')"><span class="Monospace">NIDCPOWER_ATTR_SIMULATE</span></a></li>
<li> <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'NIDCPOWER_ATTR_DRIVER_SETUP.html')"><span class="Monospace">NIDCPOWER_ATTR_DRIVER_SETUP</span></a></li>
</ul>

<p class="Body">After calling this function, the session will be in the Uncommitted state. Refer to the <a href="javascript:LaunchHelp('NI_DC_Power_Supplies_Help.chm::/programmingStates.html')">Programming States</a> topic for details about specific software states.</p>

<p class="Body">To place the device in a known start-up state when creating a new session, set <strong>reset</strong> to <span class="Monospace">VI_TRUE</span>. This action is equivalent to using the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_reset.html')"><span class="Monospace">niDCPower_reset</span></a> function immediately after initializing the session.</p>

<p class="Body">To open a session and leave the device in its existing configuration without passing through a transitional output state, set <strong>reset</strong> to <span class="Monospace">VI_FALSE</span>. Then configure the device as in the previous session, changing only the desired settings, and then call the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_Initiate.html')"><span class="Monospace">niDCPower_Initiate</span></a> function.</p>

<!--Related topics section added by link generator tool-->
<!--12/12/2013 9:52 AM-->
<p class="Body"><strong>Related Topics:</strong></p>
<p class="Body"><a href="javascript:LaunchHelp('NI_DC_Power_Supplies_Help.chm::/programmingStates.html')">Programming States</a></p>
</body>

</html>
    �    <html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_InitializeWithChannels</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">resourceName</td>
<td class="paramDataType">ViRsrc</td>
<td class="Borderless">Specifies the <strong>resourceName</strong> assigned by Measurement &#38; Automation Explorer (MAX), for example &#34;PXI1Slot3&#34; where &#34;PXI1Slot3&#34; is an instrument's <strong>resourceName</strong>. <strong>resourceName</strong> can also be a logical IVI name.</td>
</tr></table></table></body>
</html>
    �    <html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_InitializeWithChannels</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">reset</td>
<td class="paramDataType">ViBoolean</td>
<td class="Borderless">Specifies whether to reset the device during the initialization procedure.</td>
</tr></table></table></body>
</html>
    �    <html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_InitializeWithChannels</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">vi</td>
<td class="paramDataType">ViSession*</td>
<td class="Borderless">Returns a session handle that you use to identify the device in all subsequent NI-DCPower function calls.</td>
</tr></table></table></body>
</html>
    �    <html>
<head>
<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_InitializeWithChannels</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="borderless"><tr> <td class="paramName">Status</td><td class="paramDataType">ViStatus</td><td class="Borderless">Reports the status of this operation. To obtain a text description of the status code, call the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_error_message.html')"><span class="Monospace">niDCPower_error_message</span></a> function. To obtain additional information concerning the error condition, call the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_GetError.html')"><span class="Monospace">niDCPower_GetError</span></a> function.
</td></tr></table></body>
</html>
    �    <html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_InitializeWithChannels</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">optionString</td>
<td class="ParamName">ViString</td>
<td class="Borderless">Specifies the initial value of certain attributes for the session. The syntax for <strong>optionString</strong> is a list of attributes with an assigned value where 1 is <span class="Monospace">VI_TRUE</span> and 0 is <span class="Monospace">VI_FALSE</span>. For example:<p></p> 
&#34;Simulate=0&#34;<p>You do not have to specify a value for all the attributes. If you do not specify a value for an attribute, the default value is used. 
</p>

<p>For more information about simulating a device, refer to <a href="javascript:LaunchHelp('NI_DC_Power_Supplies_Help.chm::/simulate.html')"> Simulating a Power Supply or SMU</a>. </td>
</tr></table></table></body>
</html>
    �    <html>
<head>
<script src="launchhelp.js"></script>
<title>niDCPower_InitializeWithChannels</title>
 <link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body><table class="borderless"><tr>
<td class="paramName">channelName</td>
<td class="paramDataType">ViConstString</td>
<td>Specifies which output channel(s) to include in a new session. Specify multiple channels by using a channel list or a channel range. A channel list is a comma (,) separated sequence of channel names (for example, 0,2 specifies channels 0 and 2). A channel range is a lower bound channel followed by a hyphen (-) or colon (:) followed by an upper bound channel (for example, 0-2 specifies channels 0, 1, and 2). In the Running state, multiple output channel configurations are performed sequentially based on the order specified in this parameter. If you do not specify any channels, by default all channels on the device are included in the session.
</td>
 </tr></table></body>
</html>
    / >   �  �    Resource Name                     � >� �       Reset                             } �� �  �    Instrument Handle                  ]#����  �    Status                            #� �  � �    Option String                     '� > � �  �    Channels                           "Dev1"    Yes VI_TRUE No VI_FALSE    	           	           "Simulate=0"    ""   x    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_close</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_close</h1>


 <p class="Syntax">ViStatus niDCPower_close(ViSession vi);</p>
 <h2 class="purpose">Purpose</h2>
<p class="Body">Closes the session specified in <strong>vi</strong> and deallocates
      the resources that NI-DCPower reserves. If power output is enabled when you call
      this function, the output channels remain in their existing state and continue providing power. Use the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_ConfigureOutputEnabled.html')"><span class="Monospace">niDCPower_ConfigureOutputEnabled</span></a> function to disable power
      output on a per channel basis. Use the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_reset.html')"><span class="Monospace">niDCPower_reset</span></a> function to disable power output on
      all channel(s).</p>
<!--Related topics section added by link generator tool-->
<!--12/12/2013 9:52 AM-->
<p class="Body"><strong>Related Topics:</strong></p>
<p class="Body"><a href="javascript:LaunchHelp('NI_DC_Power_Supplies_Help.chm::/programmingStates.html')">Programming States</a></p>
</body>

</html>
    �    
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_close</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">vi</td>
<td class="paramDataType">ViSession</td>
<td class="Borderless">Identifies a particular instrument session. <strong>vi</strong> is obtained from the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_InitializeWithChannels.html')"><span class="Monospace">niDCPower_InitializeWithChannels</span></a> function.</td>
</tr></table></body>
</html>
     ]#����  �    Status                            2�-   �  �    Instrument Handle                  	              �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_ConfigureVoltageLevel</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_ConfigureVoltageLevel</h1>



 <p class="Syntax">ViStatus niDCPower_ConfigureVoltageLevel(ViSession vi,
                                                ViConstString channelName,
                                                ViReal64 level);</p>
 <h2 class="purpose">Purpose</h2>
<p class="Body">Configures the voltage level the device attempts to generate for the specified channel(s). The channel must be enabled for the specified voltage level to take effect.  Refer to the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm','cviniDCPower_ConfigureOutputEnabled.html')"><span class="Monospace">niDCPower_ConfigureOutputEnabled</span></a> function for more information about enabling the output channel. 
</p>


<p class="Body">The voltage level setting is applicable only if the output function of the channel is set to <span class="Monospace">NIDCPOWER_VAL_DC_VOLTAGE</span>. Use <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cvinidcpower_ConfigureOutputFunction.html')"><span class="Monospace">niDCPower_ConfigureOutputFunction</span></a> to set the output function.</p>

<p class="Body">The device actively regulates the voltage at the specified level unless doing so causes a current output greater than the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'NIDCPOWER_ATTR_CURRENT_LIMIT.html')">current limit</a> across the channels' output terminals.</p>
<!--Related topics section added by link generator tool-->
<!--12/12/2013 9:52 AM-->
<p class="Body"><strong>Related Topics:</strong></p>
<p class="Body"><a href="javascript:LaunchHelp('NI_DC_Power_Supplies_Help.chm::/Constant_Voltage.html')">Constant Voltage Mode</a></p>
</body>

</html>
    y    <html>
<head>
<script src="launchhelp.js"></script>
<title>niDCPower_ConfigureVoltageLevel</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">channelName</td>
<td class="paramDataType">ViConstString</td>
<td>Specifies the output channel(s) to which this configuration value applies. Specify multiple channels by using a channel list or a channel range. A channel list is a comma (,) separated sequence of channel names (for example, 0,2 specifies channels 0 and 2). A channel range is a lower bound channel followed by a hyphen (-) or colon (:) followed by an upper bound channel (for example, 0-2 specifies channels 0, 1, and 2). In the Running state, multiple output channel configurations are performed sequentially based on the order specified in this parameter.
</td>
 </tr></table></body>
</html>    #    <html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_ConfigureVoltageLevel</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">level</td>
<td class="paramDataType">ViReal64</td>
<td class="Borderless"> Specifies the voltage level, in volts, for the output channel generation. <BR><BR>


<strong>Valid Values</strong>:<BR>
The valid values for this parameter are defined by the voltage level range that is selected using the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm','cviniDCPower_ConfigureVoltageLevelRange.html')"><span class="Monospace">niDCPower_ConfigureVoltageLevelRange</span></a> function.

</td></tr></table>
</body>
</html>    2�-   �  �    Instrument Handle                  ]#����  �    Status                            =� 3 
 �  �    Channel Name                      A1 3 � �  �    Level                                  	           ""    0.0   ]    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_ConfigureVoltageLevelRange</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_ConfigureVoltageLevelRange</h1>


 <p class="Syntax">ViStatus niDCPower_ConfigureVoltageLevelRange(ViSession vi,
                                                ViConstString channelName,
                                                ViReal64 range);</p>
 <h2 class="purpose">Purpose</h2>
<p class="Body">Configures the voltage level range for the specified channel(s).  The configured range defines the valid values the voltage level can be set to using the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_ConfigureVoltageLevel.html')"><span class="Monospace">niDCPower_ConfigureVoltageLevel</span></a> function.  

The voltage level range setting is applicable only if the output function of the channel is set to <span 
class="Monospace">NIDCPOWER_VAL_DC_VOLTAGE</span>. Use <a 
href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cvinidcpower_ConfigureOutputFunction.html')"><span 
class="Monospace">niDCPower_ConfigureOutputFunction</span></a> to set the output function.</p>

<p class="body">Use the <a 
href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm','NIDCPOWER_ATTR_VOLTAGE_LEVEL_AUTORANGE.html')"><span 
class="Monospace">NIDCPOWER_ATTR_VOLTAGE_LEVEL_AUTORANGE</span></a> attribute to enable automatic selection of the voltage level range. 
<!--Related topics section added by link generator tool-->
<!--12/12/2013 9:52 AM-->
<p class="Body"><strong>Related Topics:</strong></p>
<p class="Body"><a href="javascript:LaunchHelp('NI_DC_Power_Supplies_Help.chm::/ranges.html')">Ranges</a></p>
</body>

</html>
    ?    
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_ConfigureVoltageLevelRange</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">range</td>
<td class="paramDataType">ViReal64</td>
<td class="Borderless">Specifies the voltage level range, in volts, on the specified channel(s).<BR><BR>



For valid ranges, refer to the <em>Ranges</em> topic for your device in the <em>NI DC Power Supplies and SMUs Help</em>.



</td></tr></table>

</body>
</html>
    2�   �  �    Instrument Handle                 =� %  �  �    Channel Name                      L� % � �  �    Range                              ]����  �    Status                                 ""    0.0    	          �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_ConfigureCurrentLimit</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_ConfigureCurrentLimit</h1>


 <p class="Syntax">ViStatus niDCPower_ConfigureCurrentLimit(ViSession vi,
                                                ViConstString channelName,
                                                ViInt32 behavior,
                                                ViReal64 limit);</p>
 <h2 class="purpose">Purpose</h2>
<p class="Body">Configures the current limit for the specified channel(s).
      The channel must be enabled for the specified current limit to take effect. Refer to
      the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_ConfigureOutputEnabled.html')"><span class="Monospace">niDCPower_ConfigureOutputEnabled</span></a> function for more information about enabling the output channel.<BR><BR>

The current limit is the current that the output should not exceed when generating the desired <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_ConfigureVoltageLevel.html')">voltage level</a>.  The current limit setting is applicable only if the output function of the channel is set to <span class="Monospace">NIDCPOWER_VAL_DC_VOLTAGE</span>. Use <a 
href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cvinidcpower_ConfigureOutputFunction.html')"><span class="Monospace">niDCPower_ConfigureOutputFunction</span></a> to set the output function.</p><!--Related topics section added by link generator tool-->
<!--12/12/2013 9:52 AM-->
<p class="Body"><strong>Related Topics:</strong></p>
<p class="Body"><a href="javascript:LaunchHelp('NI_DC_Power_Supplies_Help.chm::/compliance.html')">Compliance</a></p>
</body>

</html>
    5    <html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_ConfigureCurrentLimit</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">behavior</td>
<td class="paramDataType">ViInt32</td>
<td class="Borderless">Specifies how the output should behave when the current limit is
          reached.<BR><BR>
          <strong>Defined Values:</strong><BR>
          <table class="Bordered"><tr><td class="Bordered"><span class="Monospace">NIDCPOWER_VAL_CURRENT_REGULATE</span></td><td class="Bordered">Controls output current so that it does not exceed the current limit.  Power continues to generate even if the current limit is reached.</td></tr></table>
          
          </td></tr></table></body>
</html>
    �    <html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_ConfigureCurrentLimit</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">limit</td>
<td class="paramDataType">ViReal64</td>
<td class="Borderless">Specifies the current limit, in amps, on the specified channel(s). The limit is specified as a positive value, but symmetric positive and negative limits are enforced simultaneously.<BR><BR>



<strong>Valid Values:</strong><BR>
The valid values for this parameter are defined by the current limit range that is configured using the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm','cviniDCPower_ConfigureCurrentLimitRange.html')"><span class="Monospace">niDCPower_ConfigureCurrentLimitRange</span></a> function.<BR><BR>




</td></tr></table>
</body>
</html>
    2�-   �  �    Instrument Handle                  ]#����  �    Status                            =� 3 
 �  �    Channel Name                      W� 3 � � �    Behavior                          Z� 3� �  �    Limit                                  	           ""               (Regulate NIDCPOWER_VAL_CURRENT_REGULATE    0.0   S    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_ConfigureCurrentLimitRange</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_ConfigureCurrentLimitRange</h1>


 <p class="Syntax">ViStatus niDCPower_ConfigureCurrentLimitRange(ViSession vi,
                                                ViConstString channelName,
                                                ViReal64 range);</p>
 <h2 class="purpose">Purpose</h2>
<p class="Body">Configures the current limit range for the specified channel(s).The configured range defines the valid values  the current limit can be set to using the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_ConfigureCurrentLimit.html')"><span class="Monospace">niDCPower_ConfigureCurrentLimit</span></a> function. The current limit range setting is applicable only if the output function of the channel is set to <span class="Monospace">NIDCPOWER_VAL_DC_VOLTAGE</span>. Use <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cvinidcpower_ConfigureOutputFunction.html')"><span 
class="Monospace">niDCPower_ConfigureOutputFunction</span></a> to set the output function.</p>
<p class="Body">Use the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm','NIDCPOWER_ATTR_CURRENT_LIMIT_AUTORANGE.html')"><span class="Monospace">NIDCPOWER_ATTR_CURRENT_LIMIT_AUTORANGE</span></a> attribute to enable automatic selection of the current limit range.
<!--Related topics section added by link generator tool-->
<!--12/12/2013 9:52 AM-->
<p class="Body"><strong>Related Topics:</strong></p>
<p class="Body"><a href="javascript:LaunchHelp('NI_DC_Power_Supplies_Help.chm::/ranges.html')">Ranges</a></p>
</body>

</html>
    ;    
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_ConfigureCurrentLimitRange</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">range</td>
<td class="paramDataType">ViReal64</td>
<td class="Borderless">Specifies the current limit range, in amps, for the specified channel.<BR><BR>


For valid ranges, refer to the <em>Ranges</em> topic for your device in the <em>NI DC Power Supplies and SMUs Help</em>.


</td></tr></table>


</body>
</html>
    2�   �  �    Instrument Handle                 =� %  �  �    Channel Name                      g& % � �  �    Range                              ]����  �    Status                                 ""    0.0    	          	N    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_ConfigureOutputResistance</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_ConfigureOutputResistance</h1>



 <p class="Syntax">ViStatus niDCPower_ConfigureOutputResistance(ViSession vi, ViConstString channelName, ViReal64 resistance);</p>
 <h2 class="purpose">Purpose</h2>
<p class="Body">Configures the output resistance that the device attempts to generate for the specified channel or channels. The channel must be enabled for the specified output resistance to take effect.</p>

<p class="Body">Refer to the  <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cvinidcpower_ConfigureOutputEnabled.html')"><span class="Monospace">niDCPower_ConfigureOutputEnabled</span></a> function for more information about enabling the output channel. </p>

<p class="Body">For NI&nbsp;PXIe-4141/4143/4145 devices, output resistance is only supported if the output function of the channel is set to <span class="Monospace">NIDCPOWER_VAL_DC_VOLTAGE</span> using the <span class="Monospace">niDCPower_ConfigureOutputFunction</span> function.</p>

<p class="Body">For PXIe-4135, NI&nbsp;PXIe-4137, and NI&nbsp;PXIe-4139 devices, output resistance is supported if the output function of the channel is set to <span class="Monospace">NIDCPOWER_VAL_DC_CURRENT</span> or <span class="Monospace">NIDCPOWER_VAL_DC_VOLTAGE</span> using the <span class="Monospace">niDCPower_ConfigureOutputFunction</span> function.</p>

<p class="Body">The device actively regulates the current and voltage to reach the specified output resistance, although in DC Voltage output mode, the voltage at the output experiences a "virtual drop" that is proportional to its current. In DC Current output mode, the output experiences a "virtual leakage current" that is proportional to the output voltage.</p>

<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&nbsp;&nbsp;This function is not supported on all devices. Refer to <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'supportedFunctions.html')">Supported Functions by Device</a> for more information about supported devices.</td>
</tr>
</table>

</body>
</html>
    �    
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_ConfigureOutputResistance</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">resistance</td>
<td class="paramDataType">ViReal64</td>
<td class="Borderless">Specifies the output resistance, in ohms, for the specified channel. Refer to the <a href="javascript:LaunchHelp('NI_DC_Power_Supplies_Help.chm::/4140_4141_ProgOutputResist.html')">NI PXIe-4141 Programmable Output Resistance</a>, <a href="javascript:LaunchHelp('NI_DC_Power_Supplies_Help.chm::/4142_4143_ProgOutputResist.html')">NI PXIe-4143 Programmable Output Resistance</a>, <a href="javascript:LaunchHelp('NI_DC_Power_Supplies_Help.chm::/4144_4145_ProgOutputResist.html')">NI PXIe-4145 Programmable Output Resistance</a>,or <a href="javascript:LaunchHelp('NI_DC_Power_Supplies_Help.chm::/4154_Prog_Output_Resist.html')">NI PXIe-4154 Programmable Output Resistance</a> topic in the NI DC Power Supplies and SMUs Help for more information about configuring output resistance.<BR><BR>

</td></tr></table>

</body>
</html>
    2�   �  �    Instrument Handle                 =� %  �  �    Channel Name                      s� % � �  �    Resistance                         ]����  �    Status                                 ""    0.0    	          �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_ConfigureCurrentLevel</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>


<body>
<h1 class="function">niDCPower_ConfigureCurrentLevel</h1>


 <p class="Syntax">ViStatus niDCPower_ConfigureCurrentLevel(ViSession vi,
                                                ViConstString channelName,
                                                ViReal64 level);</p>
 <h2 class="purpose">Purpose</h2>
<p class="Body">Configures the current level the device attempts to generate for the specified 
      channel(s). The channel must be enabled for the specified current level to take effect.  Refer to the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_ConfigureOutputEnabled.html')"><span class="Monospace">niDCPower_ConfigureOutputEnabled</span></a> function for more information about enabling the output channel.</p>  <p class="Body">The current level setting is applicable only if the output function of the channel is set to <span class="Monospace">NIDCPOWER_VAL_DC_CURRENT</span>. Use <a 
href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cvinidcpower_ConfigureOutputFunction.html')"><span class="Monospace">niDCPower_ConfigureOutputFunction</span></a> to set the output function. The device actively regulates the current at the specified level unless doing so causes a voltage greater than the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm','cviniDCPower_ConfigureVoltageLimit.html')">voltage limit</a> across the channels' output terminals.
    </p>
<!--Related topics section added by link generator tool-->
<!--12/12/2013 9:52 AM-->
<p class="Body"><strong>Related Topics:</strong></p>
<p class="Body"><a href="javascript:LaunchHelp('NI_DC_Power_Supplies_Help.chm::/Constant_Current.html')">Constant Current Mode</a></p>
</body>

</html>
    3    <html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_ConfigureCurrentLevel</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">level</td>
<td class="paramDataType">ViReal64</td>
<td class="Borderless">Specifies the current level, in amps, to generate for the specified channel(s).<BR><BR>


<strong>Valid Values:</strong><BR>
The valid values for this parameter are defined by the current level range that is configured using the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm','cviniDCPower_ConfigureCurrentLevelRange.html')"><span class="Monospace">niDCPower_ConfigureCurrentLevelRange</span></a> function.<BR><BR>

</td></tr></table>


</body>
</html>    2�% 
  �  �    Instrument Handle                 =� % 
 �  �    Channel Name                      � % � �  �    Level                              ]%����  �    Status                                 ""    0.0    	          W    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_ConfigureCurrentLevelRange</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body><h1 class="function">niDCPower_ConfigureCurrentLevelRange</h1>


 <p class="Syntax">ViStatus niDCPower_ConfigureCurrentLevelRange(ViSession vi,
                                                ViConstString channelName,
                                                ViReal64 range);</p>
 <h2 class="purpose">Purpose</h2>
<p class="Body">Configures the current level range for the specified channel(s).  The configured range defines the valid values the current level can be set to using the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_ConfigureCurrentLevel.html')"><span class="Monospace">niDCPower_ConfigureCurrentLevel</span></a> function.  The current level range setting is applicable only if the output function of the channel is set to <span class="Monospace">NIDCPOWER_VAL_DC_CURRENT</span>. Use <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cvinidcpower_ConfigureOutputFunction.html')"><span 
class="Monospace">niDCPower_ConfigureOutputFunction</span></a> to set the output function. </p>

<p class="Body">Use the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm','NIDCPOWER_ATTR_CURRENT_LEVEL_AUTORANGE.html')"><span class="Monospace">NIDCPOWER_ATTR_CURRENT_LEVEL_AUTORANGE</span></a> attribute to enable automatic selection of the current level range. 
<!--Related topics section added by link generator tool-->
<!--12/12/2013 9:52 AM-->
<p class="Body"><strong>Related Topics:</strong></p>
<p class="Body"><a href="javascript:LaunchHelp('NI_DC_Power_Supplies_Help.chm::/ranges.html')">Ranges</a></p>
</body>

</html>
    8    <html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_ConfigureCurrentLevelRange</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">range</td>
<td class="paramDataType">ViReal64</td>
<td class="Borderless">Specifies the current level range, in amps,  for the specified channel.<BR><BR>

For valid ranges, refer to the <em>Ranges</em> topic for your device in the <em>NI DC Power Supplies and SMUs Help</em>.


</td></tr></table>

</body>
</html>    2�&   �  �    Instrument Handle                 =� %  �  �    Channel Name                      �� % � �  �    Range                              ]����  �    Status                                 ""    0.0    	          b    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_ConfigureVoltageLimit</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>


<body>
<h1 class="function">niDCPower_ConfigureVoltageLimit</h1>


 <p class="Syntax">ViStatus niDCPower_ConfigureVoltageLimit(ViSession vi,
                                                ViConstString channelName,
                                                ViReal64 limit);</p>
 <h2 class="purpose">Purpose</h2>
<p class="Body">Configures the voltage limit for the specified channel(s). The channel must be enabled for the specified voltage limit to take effect.
      Refer to the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_ConfigureOutputEnabled.html')"><span class="Monospace">niDCPower_ConfigureOutputEnabled</span></a> function for more information about enabling the output channel.</p>

<p class="Body">The voltage limit is the voltage that the output should not exceed when generating the desired <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_ConfigureCurrentLevel.html')">current level</a>.   The voltage limit setting is applicable only if the output function of the channel is set to <span 
class="Monospace">NIDCPOWER_VAL_DC_CURRENT</span>. Use <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cvinidcpower_ConfigureOutputFunction.html')"><span 
class="Monospace">niDCPower_ConfigureOutputFunction</span></a> to set the output function.</p>
<!--Related topics section added by link generator tool-->
<!--12/12/2013 9:52 AM-->
<p class="Body"><strong>Related Topics:</strong></p>
<p class="Body"><a href="javascript:LaunchHelp('NI_DC_Power_Supplies_Help.chm::/compliance.html')">Compliance</a></p>
</body>

</html>
    �    <html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_ConfigureVoltageLimit</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">limit</td>
<td class="paramDataType">ViReal64</td>
<td class="Borderless">Specifies the voltage limit, in volts, on the specified output channel(s). The limit is specified as a positive value, but symmetric positive and negative limits are enforced simultaneously.<BR><BR>


<strong>Valid Values:</strong><BR>
The valid values for this parameter are defined by the voltage limit range that is configured using the  <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm','cviniDCPower_ConfigureVoltageLimitRange.html')"><span class="Monospace">niDCPower_ConfigureVoltageLimitRange</span></a> function.<BR><BR>


</td></tr></table></body></html>    2�)   �  �    Instrument Handle                 =� %  �  �    Channel Name                      �, % � �  �    Limit                              ]����  �    Status                                 ""    0.0    	          _    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_ConfigureVoltageLimitRange</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>


<body>
<h1 class="function">niDCPower_ConfigureVoltageLimitRange</h1>


 <p class="Syntax">ViStatus niDCPower_ConfigureVoltageLimitRange(ViSession vi,
                                                ViConstString channelName,
                                                ViReal64 range);</p>
 <h2 class="purpose">Purpose</h2>
<p class="Body">Configures the voltage limit range for the specified
      channel(s). The configured range defines the valid values the voltage limit can be set to using the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_ConfigureVoltageLimit.html')"><span class="Monospace">niDCPower_ConfigureVoltageLimit</span></a> function.
     The voltage limit range setting is applicable only if the output function of the channel is set to <span class="Monospace">NIDCPOWER_VAL_DC_CURRENT</span>. Use <a 
href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cvinidcpower_ConfigureOutputFunction.html')"><span class="Monospace">niDCPower_ConfigureOutputFunction</span></a> to set the output function.</p>
<p class="body">Use the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm','NIDCPOWER_ATTR_VOLTAGE_LIMIT_AUTORANGE.html')"><span class="Monospace">NIDCPOWER_ATTR_VOLTAGE_LIMIT_AUTORANGE</span></a> attribute to enable automatic selection of the voltage limit range.
<!--Related topics section added by link generator tool-->
<!--12/12/2013 9:52 AM-->
<p class="Body"><strong>Related Topics:</strong></p>
<p class="Body"><a href="javascript:LaunchHelp('NI_DC_Power_Supplies_Help.chm::/ranges.html')">Ranges</a></p>
</body>

</html>
    :    <html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_ConfigureVoltageLimitRange</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">range</td>
<td class="paramDataType">ViReal64</td>
<td class="Borderless">Specifies the voltage limit range, in volts, on the specified channel(s).<BR><BR>


For valid ranges, refer to the <em>Ranges</em> topic for your device in the <em>NI DC Power Supplies and SMUs Help</em>.
</td></tr></table>

</body>
</html>
    2�   �  �    Instrument Handle                 =� %  �  �    Channel Name                      �, % � �  �    Range                              ]����  �    Status                                 ""    0.0    	              <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_ConfigureSourceMode</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_ConfigureSourceMode</h1>

<p class="Syntax">ViStatus niDCPower_ConfigureSourceMode(ViSession vi, 
      ViInt32 sourceMode);</p>

<h2 class="purpose">Purpose</h2>

<p class="Body">Configures the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'NIDCPOWER_ATTR_SOURCE_MODE.html')"><span class="Monospace">NIDCPOWER_ATTR_SOURCE_MODE</span></a> attribute. Specifies whether to run a single output point or a sequence. Refer to the 

<a href="javascript:LaunchHelp('NI_DC_Power_Supplies_Help.chm::/Singlept.html')">Single Point Source Mode</a> and <a href="javascript:LaunchHelp('NI_DC_Power_Supplies_Help.chm::/Sequencing.html')">Sequence Source Mode</a> topics in the <em>NI DC Power Supplies and SMUs Help</em> for more information about using this function.</p>

</body>
</html>    N    <html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_ConfigureSourceMode</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">sourceMode</td>
<td class="paramDataType">ViInt32</td>
<td class="Borderless">Specifies the source mode for the NI-DCPower session.<BR><BR>

<strong>Defined Values</strong>:<BR>
<table class="Bordered"><tr><td class="Bordered"><span class="Monospace">NIDCPOWER_VAL_SINGLE_POINT (1020)</span></td><td class="Bordered">Applies a single source configuration.</td></tr>
<tr><td class="Bordered"><span class="Monospace">NIDCPOWER_VAL_SEQUENCE (1021)</span></td><td class="Bordered">Applies a list of voltage or current configurations sequentially.</td></tr>
</table>


</td></tr></table></body>
</html>
    2�-   �  �    Instrument Handle                  ]#����  �    Status                            � %  � �    Source Mode                            	                      HSingle Point NIDCPOWER_VAL_SINGLE_POINT Sequence NIDCPOWER_VAL_SEQUENCE   @    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_ConfigureOutputFunction</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_ConfigureOutputFunction</h1>

 


 <p class="Syntax">ViStatus niDCPower_ConfigureOutputFunction(ViSession vi,
                                                 ViConstString channelName,
                                                 ViInt32 function);</p>
 <h2 class="purpose">Purpose</h2>
<p class="Body">Configures the function the device attempts to generate for the specified channel(s).</p>


<p class="Body">When <span class="Monospace">NIDCPOWER_VAL_DC_VOLTAGE</span> is selected, the device generates the desired voltage level on the output as long as the output current is below the current limit. The following functions can be used to configure the channel when <span class="Monospace">NIDCPOWER_VAL_DC_VOLTAGE</span> is selected:</p>
<ul><li><a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm','cviniDCPower_ConfigureVoltageLevel.html')"><span class="Monospace">niDCPower_ConfigureVoltageLevel</span></a></li>
<li><a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm','cviniDCPower_ConfigureCurrentLimit.html')"><span class="Monospace">niDCPower_ConfigureCurrentLimit</span></a></li>

<li><a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm','cviniDCPower_ConfigureVoltageLevelRange.html')"><span class="Monospace">niDCPower_ConfigureVoltageLevelRange</span></a></li>

<li><a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm','cviniDCPower_ConfigureCurrentLimitRange.html')"><span class="Monospace">niDCPower_ConfigureCurrentLimitRange</span></a></li>
</ul>

<p class="Body">When <span class="Monospace">NIDCPOWER_VAL_DC_CURRENT</span> is selected, the device generates the desired current level on the output as long as the output voltage is below the voltage limit.  The following functions can be used to configure the channel when <span class="Monospace">NIDCPOWER_VAL_DC_CURRENT</span> is selected:</p>
<ul><li><a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm','cviniDCPower_ConfigureCurrentLevel.html')"><span class="Monospace">niDCPower_ConfigureCurrentLevel</span></a></li>

<li><a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm','cviniDCPower_ConfigureVoltageLimit.html')"><span class="Monospace">niDCPower_ConfigureVoltageLimit</span></a></li>

<li><a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm','cviniDCPower_ConfigureCurrentLevelRange.html')"><span class="Monospace">niDCPower_ConfigureCurrentLevelRange</span></a></li>

<li><a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm','cviniDCPower_ConfigureVoltageLimitRange.html')"><span class="Monospace">niDCPower_ConfigureVoltageLimitRange</span></a></li>
</ul>


<p class="Body">When <span class="Monospace">NIDCPOWER_VAL_PULSE_VOLTAGE</span> is selected, the device generates pulses at the desired voltage levels on the output as long as the output current is below the current limit. The following VIs can be used to configure the channel when <span class="Monospace">NIDCPOWER_VAL_PULSE_VOLTAGE</span> is selected:</p>


<ul>
<li><a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm','cviniDCPower_ConfigurePulseVoltageLevel.html')"><span class="Monospace">niDCPower_ConfigurePulseVoltageLevel</span></a></li>

<li><a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm','cviniDCPower_ConfigurePulseBiasVoltageLevel.html')"><span class="Monospace">niDCPower_ConfigurePulseBiasVoltageLevel</span></a></li>

<li><a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm','cviniDCPower_ConfigurePulseCurrentLimit.html')"><span class="Monospace">niDCPower_ConfigurePulseCurrentLimit</span></a></li>

<li><a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm','cviniDCPower_ConfigurePulseBiasCurrentLimit.html')"><span class="Monospace">niDCPower_ConfigurePulseBiasCurrentLimit</span></a></li>

<li><a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm','cviniDCPower_ConfigurePulseVoltageLevelRange.html')"><span class="Monospace">niDCPower_ConfigurePulseVoltageLevelRange</span></a></li>

<li><a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm','cviniDCPower_ConfigurePulseCurrentLimitRange.html')"><span class="Monospace">niDCPower_ConfigurePulseCurrentLimitRange</span></a></li>
</ul>


<p class="Body">When <span class="Monospace">NIDCPOWER_VAL_PULSE_CURRENT</span> is selected, the device generates pulses at the desired current levels on the output as long as the output voltage is below the voltage limit. The following VIs can be used to configure the channel when <span class="Monospace">NIDCPOWER_VAL_PULSE_CURRENT</span> is selected:</p>



<ul>

<li><a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm','cviniDCPower_ConfigurePulseCurrentLevel.html')"><span class="Monospace">niDCPower_ConfigurePulseCurrentLevel</span></a></li>

<li><a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm','cviniDCPower_ConfigurePulseBiasCurrentLevel.html')"><span class="Monospace">niDCPower_ConfigurePulseBiasCurrentLevel</span></a></li>

<li><a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm','cviniDCPower_ConfigurePulseVoltageLimit.html')"><span class="Monospace">niDCPower_ConfigurePulseVoltageLimit</span></a></li>

<li><a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm','cviniDCPower_ConfigurePulseBiasVoltageLimit.html')"><span class="Monospace">niDCPower_ConfigurePulseBiasVoltageLimit</span></a></li>

<li><a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm','cviniDCPower_ConfigurePulseCurrentLevelRange.html')"><span class="Monospace">niDCPower_ConfigurePulseCurrentLevelRange</span></a></li>

<li><a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm','cviniDCPower_ConfigurePulseVoltageLimitRange.html')"><span class="Monospace">niDCPower_ConfigurePulseVoltageLimitRange</span></a></li>
</ul>






<!--Related topics section added by link generator tool-->
<!--12/12/2013 9:52 AM-->
<p class="Body"><strong>Related Topics:</strong></p>
<p class="Body"><a href="javascript:LaunchHelp('NI_DC_Power_Supplies_Help.chm::/Constant_Voltage.html')">Constant Voltage Mode</a></p><p class="Body"><a href="javascript:LaunchHelp('NI_DC_Power_Supplies_Help.chm::/Constant_Current.html')">Constant Current Mode</a></p>
</body>

</html>    �    <html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_ConfigureOutputFunction</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">function</td>
<td class="paramDataType">ViInt32</td>
<td class="Borderless">Configures the function to generate for the specified channel(s).<BR><BR>

<strong>Defined Values</strong>:<BR>
<table class="Bordered"><tr><td class="Bordered"><span class="Monospace">NIDCPOWER_VAL_DC_VOLTAGE (1006)</span></td><td class="Bordered">Sets the output function to DC voltage.</td></tr>
<tr><td class="Bordered"><span class="Monospace">NIDCPOWER_VAL_DC_CURRENT (1007)</span></td><td class="Bordered">Sets the output function to DC current.</td></tr>
<tr><td class="Bordered"><span class="Monospace">NIDCPOWER_VAL_PULSE_VOLTAGE (1049)</span></td><td class="Bordered">Sets the output function to pulse voltage.</td></tr>
<tr><td class="Bordered"><span class="Monospace">NIDCPOWER_VAL_PULSE_CURRENT (1050)</span></td><td class="Bordered">Sets the output function to pulse current.</td></tr>
</table>

</td></tr></table></body>
</html>
    2�-   �  �    Instrument Handle                  ]#����  �    Status                            =� 3 
 �  �    Channel Name                      �# 1 � � �    Function                               	           ""               �DC Voltage NIDCPOWER_VAL_DC_VOLTAGE DC Current NIDCPOWER_VAL_DC_CURRENT Pulse Voltage NIDCPOWER_VAL_PULSE_VOLTAGE Pulse Current NIDCPOWER_VAL_PULSE_CURRENT   �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_SetSequence</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_SetSequence</h1>


 <p class="Syntax">ViStatus niDCPower_SetSequence(ViSession vi,
      ViConstString channelName,
      ViReal64 values[],
      ViReal64 sourceDelays[],
      ViUInt32 size);</p>

 <h2 class="purpose">Purpose</h2>

<p class="Body">Configures a series of voltage or current outputs and corresponding source delays. The source mode must be set to <a href="javascript:LaunchHelp('NI_DC_Power_Supplies_Help.chm::/Sequencing.html')">Sequence</a> for this function to take effect.</p>

<p class="Body">Refer to the <a href="javascript:LaunchHelp('NI_DC_Power_Supplies_Help.chm::/ConfiguringTheSourceUnit.html')">Configuring the Source Unit</a> topic in the <em>NI DC Power Supplies and SMUs Help</em> for more information about how to configure your device.</p>

<p class="Body">Use this function in the Uncommitted or Committed programming states. Refer to the <a href="javascript:LaunchHelp('NI_DC_Power_Supplies_Help.chm::/programmingStates.html')">Programming States</a> topic in the <em>NI DC Power Supplies and SMUs Help</em> for more information about NI-DCPower programming states.</p>

<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&nbsp;&nbsp;This function is not supported on all devices. Refer to <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'supportedFunctions.html')">Supported Functions by Device</a> for more information about supported devices.</td>
</tr>
</table>

</body>
</html>
    �    <html>
<head>
<script src="launchhelp.js"></script>
<title>niDCPower_ConfigureVoltageLevel</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">channelName</td>
<td class="paramDataType">ViConstString</td>
<td>Specifies the output channel to which this configuration value applies. You can only set a sequence for one channel at a time.</td>
 </tr></table></body>
</html>    �    <html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_SetSequence</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">values</td>
<td class="paramDataType">ViReal64[]</td>
<td class="Borderless">Specifies the series of voltage levels or current levels, depending on the configured <a href="javascript:LaunchHelp('NI_DC_Power_Supplies_Help.chm::/Programming_Output.html')">output function</a>.

<BR><BR>

<strong>Valid Values</strong>:<BR>
The valid values for this parameter are defined by the voltage level range or current level range.

</td></tr></table>
</body>
</html>    Z    <html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_SetSequence</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">sourceDelays</td>
<td class="paramDataType">ViReal64[]</td>
<td class="Borderless">Specifies the source delay that follows the configuration of each value in the sequence.
<BR><BR>


<strong>Valid Values</strong>:<BR>
The valid values are between <span class="Monospace">0</span> and <span class="Monospace">167</span> seconds.
</td></tr></table>
</body>
</html>    �    <html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_SetSequence</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">size</td>
<td class="paramDataType">ViUInt32</td>

<td>The number of elements in the Values and the Source Delays arrays. The Values and Source Delays arrays should have the same size.
</td></tr></table>
</body>
</html>    2�-   �  �    Instrument Handle                  ]#����  �    Status                            �+ 3 
 �  �    Channel Name                      �� p  �  �    Values                            ۺ p � �  �    Source Delays                     � pj �  �    Size                                   	           ""               H    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_ConfigureOutputEnabled</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_ConfigureOutputEnabled</h1>




 <p class="Syntax">ViStatus niDCPower_ConfigureOutputEnabled(ViSession vi,
                                                 ViConstString channelName,
                                                 ViBoolean enabled);</p>
 <h2 class="purpose">Purpose</h2>
<p class="Body">Enables or disables generation on the specified  channel(s).  Depending on the selected output function, the voltage level, current level,or output resistance must be set in addition to enabling the output to generate the desired level. 

For more information about configuring the output level, refer to  <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm','cviniDCPower_ConfigureOutputFunction.html')"><span class="Monospace">niDCPower_ConfigureOutputFunction</span></a>.</p>


<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&#160;&#160;If the device is in the <a href="javascript:LaunchHelp('NI_DC_Power_Supplies_Help.chm::/programmingStates.html#uncommitted')">Uncommitted</a> state, enabling the output does not take effect until you call the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm','cviniDCPower_Initiate.html')"><span class="Monospace">niDCPower_Initiate</span></a> function.</td>
</tr>
</table>
</body>
</html>
    �    <html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_ConfigureOutputEnabled</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">enabled</td>
<td class="paramDataType">ViBoolean</td>
<td class="Borderless">Specifies whether the output is enabled or disabled.<BR><BR>

<strong>Defined Values</strong>:<BR>
<table class="Bordered"><tr><td class="Bordered"><span class="Monospace">VI_TRUE</span></td><td class="Bordered">Enables generation on the specified output channel(s).</td></tr>
<tr><td class="Bordered"><span class="Monospace">VI_FALSE</span></td><td class="Bordered">Disables generation on the specified output channel(s). This parameter has no effect on the output disconnect relay. To toggle the relay, use the <span class="Monospace">NIDCPOWER_ATTR_OUTPUT_CONNECTED</span> attribute.</td></tr>
</table>

</td></tr></table>
</body>
</html>    2�-   �  �    Instrument Handle                  ]#����  �    Status                            =� 3 
 �  �    Channel Name                      � 3 � �  �    Enabled                                	           ""   True VI_TRUE False VI_FALSE   z    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_ConfigurePulseVoltageLevel</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_ConfigurePulseVoltageLevel</h1>



 <p class="Syntax">ViStatus niDCPower_ConfigurePulseVoltageLevel(ViSession vi,
                                                ViConstString channelName,
                                                ViReal64 level);</p>
<h2 class="purpose">Purpose</h2>
 
<p>Configures the pulse voltage level that the device attempts to generate for the specified channel(s) during the on phase of a pulse.
         The channel must be enabled for the specified voltage level to take effect.</p>
<p>Refer to the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm','cviniDCPower_ConfigureOutputEnabled.html')"><span class="Monospace">niDCPower_ConfigureOutputEnabled</span></a> function for more information about enabling
         the output channel. The pulse voltage level setting is applicable only if the channel is set to the <span class="Monospace">NIDCPOWER_VAL_PULSE_VOLTAGE</span> output function using the
    <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm','cviniDCPower_ConfigureOutputFunction.html')"><span class="Monospace">niDCPower_ConfigureOutputFunction</span></a> function.</p>
<p> The device actively regulates the voltage at the specified level unless doing so causes a current greater than the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'NIDCPOWER_ATTR_PULSE_cURRENT_lIMIT.html')">pulse current limit</a> through the channels' output terminals.</p>
<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&nbsp;&nbsp;This function is not supported on all devices. Refer to <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'supportedFunctions.html')">Supported Functions by Device</a> for more information about supported devices.</td>
</tr>
</table>
</body>
</html>
    9    <html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_ConfigurePulseVoltageLevel</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">level</td>
<td class="paramDataType">ViReal64</td>
<td class="Borderless"> Specifies the pulse voltage level, in volts, for the output channel generation.
 <BR><BR>


<strong>Valid Values</strong>:<BR>
The valid values for this parameter are defined by the voltage level range that is selected using the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm','cviniDCPower_ConfigurePulseVoltageLevelRange.html')"><span class="Monospace">niDCPower_ConfigurePulseVoltageLevelRange</span></a> function.

</td></tr></table>
</body>
</html>    =� 3 
 �  �    Channel Name                      �� 3 � �  �    Level                             2�-   �  �    Instrument Handle                  ]#����  �    Status                             ""    0.0        	          �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_ConfigurePulseVoltageLevelRange</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_ConfigurePulseVoltageLevelRange</h1>



 <p class="Syntax">ViStatus niDCPower_ConfigurePulseVoltageLevelRange(ViSession vi,
                                                ViConstString channelName,
                                                ViReal64 range);</p>
<h2 class="purpose">Purpose</h2>
<p>Configures the pulse voltage level range for the specified channel(s).</p>
<p>The configured range defines the valid values to which you can set the pulse voltage level and pulse bias voltage level using the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm','NIDCPowerCRef.chm','cviniDCPower_ConfigurePulseVoltageLevel.html')">niDCPower_ConfigurePulseVoltageLevel</a> and <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm','NIDCPowerCRef.chm','cviniDCPower_ConfigurePulseBiasVoltageLevel.html')">niDCPower_ConfigurePulseBiasVoltageLevel</a> functions.  The pulse voltage level range setting is applicable only if the channel is set to the <span class="Monospace">NIDCPOWER_VAL_PULSE_VOLTAGE</span> output function using the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm','cviniDCPower_ConfigureOutputFunction.html')"><span class="Monospace">niDCPower_ConfigureOutputFunction</span></a> function.</p>
<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&nbsp;&nbsp;This function is not supported on all devices. Refer to <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'supportedFunctions.html')">Supported Functions by Device</a> for more information about supported devices.</td>
</tr>
</table>
</body>
</html>
    J    
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_ConfigurePulseVoltageLevelRange</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">range</td>
<td class="paramDataType">ViReal64</td>
<td class="Borderless">Specifies the pulse voltage level range, in volts, on the specified channel(s).<BR><BR>



For valid ranges, refer to the <em>Ranges</em> topic for your device in the <em>NI DC Power Supplies and SMUs Help</em>.



</td></tr></table>

</body>
</html>
    2�   �  �    Instrument Handle                 =� %  �  �    Channel Name                      � % � �  �    Range                              ]����  �    Status                                 ""    0.0    	          �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_ConfigurePulseBiasVoltageLevel</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_ConfigurePulseBiasVoltageLevel</h1>



 <p class="Syntax">ViStatus niDCPower_ConfigurePulseBiasVoltageLevel(ViSession vi,
                                                ViConstString channelName,
                                                ViReal64 level);</p>


<h2 class="purpose">Purpose</h2>
<p>Configures the pulse bias voltage level that the device attempts to generate for the specified channel(s) during the off phase of a pulse.
         The channel must be enabled for the specified voltage level to take effect.</p>
<p>Refer to the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm','cviniDCPower_ConfigureOutputEnabled.html')"><span class="Monospace">niDCPower_ConfigureOutputEnabled</span></a> function for more information about enabling the output channel. The pulse bias voltage level setting is applicable only if the channel is set to the <span class="Monospace">NIDCPOWER_VAL_PULSE_VOLTAGE</span> output function using the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm','cviniDCPower_ConfigureOutputFunction.html')"><span class="Monospace">niDCPower_ConfigureOutputFunction</span></a> function.</p>
<p></p>
<p> The device actively regulates the voltage at the specified level unless doing so causes a current greater than the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'NIDCPOWER_ATTR_PULSE_BIAS_CURRENT_LIMIT.html')">pulse bias current limit</a> through the channels' output terminals.</p>
<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&nbsp;&nbsp;This function is not supported on all devices. Refer to <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'supportedFunctions.html')">Supported Functions by Device</a> for more information about supported devices.</td>
</tr>
</table>


</body>
</html>
    G    <html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_ConfigurePulseBiasVoltageLevel</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">level</td>
<td class="paramDataType">ViReal64</td>
<td class="Borderless"> Specifies the pulse bias voltage level, in volts, for the output channel generation. <BR><BR>


<strong>Valid Values</strong>:<BR>
The valid values for this parameter are defined by the pulse voltage level range that is selected using the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm','cviniDCPower_ConfigurePulseVoltageLevelRange.html')"><span class="Monospace">niDCPower_ConfigurePulseVoltageLevelRange</span></a> function.

</td></tr></table>
</body>
</html>    2�-   �  �    Instrument Handle                  ]#����  �    Status                            =� 3 
 �  �    Channel Name                     � 3 � �  �    Level                                  	           ""    0.0       <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_ConfigurePulseCurrentLimit</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_ConfigurePulseCurrentLimit</h1>


 <p class="Syntax">ViStatus niDCPower_ConfigurePulseCurrentLimit(ViSession vi,
                                                ViConstString channelName,
                                            
                                                ViReal64 limit);</p>
<h2 class="purpose">Purpose</h2>
<p>Configures the pulse current limit for the specified channel(s). The channel must be enabled for
         the specified current limit to take effect.</p>
<p> Refer to the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm','cviniDCPower_ConfigureOutputEnabled.html')"><span class="Monospace">niDCPower_ConfigureOutputEnabled</span></a> function for more information about enabling the output channel. The pulse current limit is the current that the output must not exceed when generating the desired <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'NIDCPOWER_ATTR_PULSE_vOLTAGE_lEVEL.html')">pulse voltage level</a>. The pulse current limit setting is only applicable if the channel is set to the <span class="Monospace">NIDCPOWER_VAL_PULSE_VOLTAGE</span> output function using the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm','cviniDCPower_ConfigureOutputFunction.html')"><span class="Monospace">niDCPower_ConfigureOutputFunction</span></a> function.</p>
<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&nbsp;&nbsp;This function is not supported on all devices. Refer to <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'supportedFunctions.html')">Supported Functions by Device</a> for more information about supported devices.</td>
</tr>
</table>


</body>
</html>
    �    <html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_ConfigurePulseCurrentLimit</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">limit</td>
<td class="paramDataType">ViReal64</td>
<td class="Borderless">Specifies the pulse current limit, in amps, on the specified channel(s). The limit is specified as a positive value, but symmetric positive and negative limits are enforced simultaneously.<BR><BR>



<strong>Valid Values:</strong><BR>
The valid values for this parameter are defined by the pulse current limit range that is configured using the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm','cviniDCPower_ConfigurePulseCurrentLimitRange.html')"><span class="Monospace">niDCPower_ConfigurePulseCurrentLimitRange</span></a> function.<BR><BR>




</td></tr></table>
</body>
</html>
    2�-   �  �    Instrument Handle                  ]#����  �    Status                            =� 3 
 �  �    Channel Name                     	 3� �  �    Limit                                  	           ""    0.0   �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_ConfigurePulseCurrentLimitRange</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_ConfigurePulseCurrentLimitRange</h1>



 <p class="Syntax">ViStatus niDCPower_ConfigurePulseCurrentLimitRange(ViSession vi,
                                                ViConstString channelName,
                                                ViReal64 range);</p>
<h2 class="purpose">Purpose</h2>
<p>Configures the pulse current limit range for the specified channel(s).</p>
<p>The configured range defines the valid values to which you can set the pulse current limit and pulse bias current limit using the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm','NIDCPowerCRef.chm','cviniDCPower_ConfigurePulseCurrentLimit.html')">niDCPower_ConfigurePulseCurrentLimit</a> and <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm','NIDCPowerCRef.chm','cviniDCPower_ConfigurePulseBiasCurrentLimit.html')">niDCPower_ConfigurePulseBiasCurrentLimit</a> functions. The pulse current limit range setting is applicable only if the channel is set to the <span class="Monospace">NIDCPOWER_VAL_PULSE_VOLTAGE</span> output function using the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm','cviniDCPower_ConfigureOutputFunction.html')"><span class="Monospace">niDCPower_ConfigureOutputFunction</span></a> function.</p>
<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&nbsp;&nbsp;This function is not supported on all devices. Refer to <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'supportedFunctions.html')">Supported Functions by Device</a> for more information about supported devices.</td>
</tr>
</table>
</body>
</html>
    H    
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_ConfigurePulseCurrentLimitRange</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">range</td>
<td class="paramDataType">ViReal64</td>
<td class="Borderless">Specifies the pulse current limit range, in amps, on the specified channel(s).<BR><BR>


For valid ranges, refer to the <em>Ranges</em> topic for your device in the <em>NI DC Power Supplies and SMUs Help</em>.


</td></tr></table>


</body>
</html>
    2�   �  �    Instrument Handle                 =� %  �  �    Channel Name                     %S % � �  �    Range                              ]����  �    Status                                 ""    0.0    	              <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_ConfigurePulseBiasCurrentLimit</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_ConfigurePulseBiasCurrentLimit</h1>


 <p class="Syntax">ViStatus niDCPower_ConfigurePulseBiasCurrentLimit(ViSession vi,
                                                ViConstString channelName,

                                                ViReal64 limit);</p>
 

<h2 class="purpose">Purpose</h2>
<p>Configures the pulse bias current limit for the specified channel(s). The channel must be enabled for
         the specified current limit to take effect.</p>
<p> Refer to the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm','cviniDCPower_ConfigureOutputEnabled.html')"><span class="Monospace">niDCPower_ConfigureOutputEnabled</span></a> function for more information about enabling the output channel. The pulse bias current limit is the current that the output must not exceed when generating the desired <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'NIDCPOWER_ATTR_pULSE_bIAS_vOLTAGE_lEVEL.html')">pulse bias voltage level</a>. The pulse bias current limit setting is only applicable if the channel is set to the <span class="Monospace">NIDCPOWER_VAL_PULSE_VOLTAGE</span> output function using the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm','cviniDCPower_ConfigureOutputFunction.html')"><span class="Monospace">niDCPower_ConfigureOutputFunction</span></a> function.</p>
<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&nbsp;&nbsp;This function is not supported on all devices. Refer to <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'supportedFunctions.html')">Supported Functions by Device</a> for more information about supported devices.</td>
</tr>
</table>

</body>
</html>
    �    <html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_ConfigurePulseBiasCurrentLimit</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">limit</td>
<td class="paramDataType">ViReal64</td>
<td class="Borderless">Specifies the pulse bias current limit, in amps, on the specified channel(s). The limit is specified as a positive value, but symmetric positive and negative limits are enforced simultaneously.<BR><BR>



<strong>Valid Values:</strong><BR>
The valid values for this parameter are defined by the pulse current limit range that is configured using the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm','cviniDCPower_ConfigurePulseCurrentLimitRange.html')"><span class="Monospace">niDCPower_ConfigurePulseCurrentLimitRange</span></a> function.<BR><BR>




</td></tr></table>
</body>
</html>
    2�-   �  �    Instrument Handle                  ]#����  �    Status                            =� 3 
 �  �    Channel Name                     0� 3� �  �    Limit                                  	           ""    0.0   d    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_ConfigurePulseCurrentLevel</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>


<body>
<h1 class="function">niDCPower_ConfigurePulseCurrentLevel</h1>


 <p class="Syntax">ViStatus niDCPower_ConfigurePulseCurrentLevel(ViSession vi,
                                                ViConstString channelName,
                                                ViReal64 level);</p>
 <h2 class="purpose">Purpose</h2>
<p>Configures the pulse current level that the device attempts to generate for the specified channel(s) during the on phase of a pulse.
         The channel must be enabled for the specified current level to take effect.</p>
<p>Refer to the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm','NIDCPowerCRef.chm','cviniDCPower_ConfigureOutputEnabled.html')">niDCPower_ConfigureOutputEnabled</a> function for more information about enabling
         the output channel. The pulse current level setting is applicable only if the channel is set to the <span class="Monospace">NIDCPOWER_VAL_PULSE_CURRENT</span> output function using the
    <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm','cviniDCPower_ConfigureOutputEnabled.html')"><span class="Monospace">niDCPower_ConfigureOutputEnabled</span></a> function.</p>
<p></p>
<p> The device actively regulates the current at the specified level unless doing so causes a voltage drop greater than the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'NIDCPOWER_ATTR_PULSE_VOLTAGE_lIMIT.html')">pulse voltage limit</a> across the channels' output terminals.</p>
<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&nbsp;&nbsp;This function is not supported on all devices. Refer to <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'supportedFunctions.html')">Supported Functions by Device</a> for more information about supported devices.</td>
</tr>
</table>

</body>
</html>
    A    <html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_ConfigurePulseCurrentLevel</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">level</td>
<td class="paramDataType">ViReal64</td>
<td class="Borderless">Specifies the pulse current level, in amps, on the specified channel(s).<BR><BR>


<strong>Valid Values:</strong><BR>
The valid values for this parameter are defined by the pulse current level range that is configured using the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm','cviniDCPower_ConfigurePulseCurrentLevelRange.html')"><span class="Monospace">niDCPower_ConfigureCurrentPulseLevelRange</span></a> function.<BR><BR>

</td></tr></table>


</body>
</html>    2�% 
  �  �    Instrument Handle                 =� % 
 �  �    Channel Name                     =� % � �  �    Level                              ]%����  �    Status                                 ""    0.0    	          �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_ConfigurePulseCurrentLevelRange</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body><h1 class="function">niDCPower_ConfigurePulseCurrentLevelRange</h1>

 <p class="Syntax">ViStatus niDCPower_ConfigurePulseCurrentLevelRange(ViSession vi,
                                                ViConstString channelName,
                                                ViReal64 range);</p>
<h2 class="purpose">Purpose</h2>
<p>Configures the pulse current level range for the specified channel(s).</p>
<p>The configured range defines the valid values to which you can set the pulse current level and pulse bias current level using the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm','NIDCPowerCRef.chm','cviniDCPower_ConfigurePulseCurrentLevel.html')">niDCPower_ConfigurePulseCurrentLevel</a> and <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm','NIDCPowerCRef.chm','cviniDCPower_ConfigurePulseBiasCurrentLevel.html')">niDCPower_ConfigurePulseBiasCurrentLevel</a> functions.  The pulse current level range setting is applicable only if the channel is set to the <span class="Monospace">NIDCPOWER_VAL_PULSE_CURRENT</span> output function using the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm','cviniDCPower_ConfigureOutputFunction.html')"><span class="Monospace">niDCPower_ConfigureOutputFunction</span></a> function.</p>
<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&nbsp;&nbsp;This function is not supported on all devices. Refer to <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'supportedFunctions.html')">Supported Functions by Device</a> for more information about supported devices.</td>
</tr>
</table>
</body>
</html>
    D    <html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_ConfigurePulseCurrentLevelRange</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">range</td>
<td class="paramDataType">ViReal64</td>
<td class="Borderless">Specifies the pulse current level range, in amps, on the specified channel(s).<BR><BR>

For valid ranges, refer to the <em>Ranges</em> topic for your device in the <em>NI DC Power Supplies and SMUs Help</em>.


</td></tr></table>

</body>
</html>    2�&   �  �    Instrument Handle                 =� %  �  �    Channel Name                     I� % � �  �    Range                              ]����  �    Status                                 ""    0.0    	          	    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_ConfigurePulseBiasCurrentLevel</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>


<body>
<h1 class="function">niDCPower_ConfigurePulseBiasCurrentLevel</h1>


<p class="Syntax">ViStatus niDCPower_ConfigurePulseBiasCurrentLevel(ViSession vi,
                                                ViConstString channelName,
                                                ViReal64 level);</p>

 <h2 class="purpose">Purpose</h2>
<p>Configures the pulse bias current level that the device attempts to generate for the specified channel(s) during the off phase of a pulse.
                The channel must be enabled for the specified current level to take effect.</p>
                <p>Refer to the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm','cviniDCPower_ConfigureOutputEnabled.html')"><span class="Monospace">niDCPower_ConfigureOutputEnabled</span></a> function for more information about enabling
                    the output channel. The pulse current level setting is applicable only if the channel is set to the <span class="Monospace">NIDCPOWER_VAL_PULSE_CURRENT</span> output function using the
                <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm','cviniDCPower_ConfigureOutputFunction.html')"><span class="Monospace">niDCPower_ConfigureOutputFunction</span></a> function.</p>
                    <p></p>
                    <p> The device actively regulates the current at the specified level unless doing so causes a voltage drop greater than the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'NIDCPOWER_ATTR_PULSE_BIAS_VOLTAGE_LIMIT.html')">pulse bias voltage limit</a> across the channels' output terminals.</p>
                    


<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&nbsp;&nbsp;This function is not supported on all devices. Refer to <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'supportedFunctions.html')">Supported Functions by Device</a> for more information about supported devices.</td>
</tr>
</table>


</body>
</html>
    J    <html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_ConfigurePulseBiasCurrentLevel</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">level</td>
<td class="paramDataType">ViReal64</td>
<td class="Borderless">Specifies the pulse bias current level, in amps, on the specified channel(s).<BR><BR>


<strong>Valid Values:</strong><BR>
The valid values for this parameter are defined by the pulse current level range that is configured using the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm','cviniDCPower_ConfigurePulseCurrentLevelRange.html')"><span class="Monospace">niDCPower_ConfigurePulseCurrentLevelRange</span></a> function.<BR><BR>

</td></tr></table>


</body>
</html>    2�% 
  �  �    Instrument Handle                 =� % 
 �  �    Channel Name                     U� % � �  �    Level                              ]%����  �    Status                                 ""    0.0    	          �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_ConfigurePulseVoltageLimit</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>


<body>
<h1 class="function">niDCPower_ConfigurePulseVoltageLimit</h1>


 <p class="Syntax">ViStatus niDCPower_ConfigurePulseVoltageLimit(ViSession vi,
                                                ViConstString channelName,
                                                ViReal64 limit);</p>
<h2 class="purpose">Purpose</h2>
<p>Configures the pulse voltage limit for the specified channel(s). The channel must be enabled for the specified voltage limit to take effect.</p>
<p> Refer to the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm','cviniDCPower_ConfigureOutputEnabled.html')"><span class="Monospace">niDCPower_ConfigureOutputEnabled</span></a> function for more information about enabling the output channel. The pulse voltage limit is the voltage that the output must not exceed when generating the desired <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'NIDCPOWER_ATTR_PULSE_cURRENT_lEVEL.html')">pulse current level</a>. The pulse voltage limit setting is only applicable if the channel is set to the <span class="Monospace">NIDCPOWER_VAL_PULSE_CURRENT</span> output function using the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm','cviniDCPower_ConfigureOutputFunction.html')"><span class="Monospace">niDCPower_ConfigureOutputFunction</span></a> function.</p>



<table class="Borderless">
<tr><td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>  This function is not supported on all devices. Refer to <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'supportedFunctions.html')">Supported Functions by Device</a> for more information about supported devices.</td>
</tr>
</table>

</body>
</html>
    �    <html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_ConfigurePulseVoltageLimit</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">limit</td>
<td class="paramDataType">ViReal64</td>
<td class="Borderless">Specifies the pulse voltage limit, in volts, on the specified output channel(s). The limit is specified as a positive value, but symmetric positive and negative limits are enforced simultaneously.<BR><BR>


<strong>Valid Values:</strong><BR>
The valid values for this parameter are defined by the pulse voltage limit range that is configured using the  <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm','cviniDCPower_ConfigurePulseVoltageLimitRange.html')"><span class="Monospace">niDCPower_ConfigurePulseVoltageLimitRange</span></a> function.<BR><BR>


</td></tr></table></body></html>    2�)   �  �    Instrument Handle                 =� %  �  �    Channel Name                     b % � �  �    Limit                              ]����  �    Status                                 ""    0.0    	          �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_ConfigurePulseVoltageLimitRange</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>


<body>
<h1 class="function">niDCPower_ConfigurePulseVoltageLimitRange</h1>


 <p class="Syntax">ViStatus niDCPower_ConfigurePulseVoltageLimitRange(ViSession vi,
                                                ViConstString channelName,
                                                ViReal64 range);</p>
 <h2 class="purpose">Purpose</h2>
<p>Configures the pulse voltage limit range for the specified channel(s).</p>
<p>The configured range defines the valid values to which you can set the pulse voltage limit and pulse bias voltage limit using the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm','NIDCPowerCRef.chm','cviniDCPower_ConfigurePulseVoltageLimit.html')">niDCPower_ConfigurePulseVoltageLimit</a> and <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm','NIDCPowerCRef.chm','cviniDCPower_ConfigurePulseBiasVoltageLimit.html')">niDCPower_ConfigurePulseBiasVoltageLimit</a> functions. The pulse voltage limit range setting is applicable only if the channel is set to the <span class="Monospace">NIDCPOWER_VAL_PULSE_CURRENT</span> output function using the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm','cviniDCPower_ConfigureOutputFunction.html')"><span class="Monospace">niDCPower_ConfigureOutputFunction</span></a> function.</p>
<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&nbsp;&nbsp;This function is not supported on all devices. Refer to <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'supportedFunctions.html')">Supported Functions by Device</a> for more information about supported devices.</td>
</tr>
</table>.
</body>
</html>
    E    <html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_ConfigurePulseVoltageLimitRange</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">range</td>
<td class="paramDataType">ViReal64</td>
<td class="Borderless">Specifies the pulse voltage limit range, in volts, on the specified channel(s).<BR><BR>


For valid ranges, refer to the <em>Ranges</em> topic for your device in the <em>NI DC Power Supplies and SMUs Help</em>.
</td></tr></table>

</body>
</html>
    2�   �  �    Instrument Handle                 =� %  �  �    Channel Name                     nm % � �  �    Range                              ]����  �    Status                                 ""    0.0    	              <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_ConfigurePulseBiasVoltageLimit</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>


<body>
<h1 class="function">niDCPower_ConfigurePulseBiasVoltageLimit</h1>

 <p class="Syntax">ViStatus niDCPower_ConfigurePulseBiasVoltageLimit(ViSession vi,
                                                ViConstString channelName,
                                                ViReal64 limit);</p>

<h2 class="purpose">Purpose</h2>
<p>Configures the pulse bias voltage limit for the specified channel(s). The channel must be enabled for
         the specified voltage limit to take effect.</p>
<p> Refer to the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm','cviniDCPower_ConfigureOutputEnabled.html')"><span class="Monospace">niDCPower_ConfigureOutputEnabled</span></a> function for more information about enabling the output channel. The pulse bias voltage limit is the voltage that the output must not exceed when generating the desired <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'NIDCPOWER_ATTR_PULSE_bIAS_cURRENT_lEVEL.html')">pulse bias current level</a>. The pulse bias voltage limit setting is only applicable if the channel is set to the <span class="Monospace">NIDCPOWER_VAL_PULSE_CURRENT</span> output function using the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm','cviniDCPower_ConfigureOutputFunction.html')"><span class="Monospace">niDCPower_ConfigureOutputFunction</span></a> function.</p>
<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&nbsp;&nbsp;This function is not supported on all devices. Refer to <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'supportedFunctions.html')">Supported Functions by Device</a> for more information about supported devices.</td>
</tr>
</table>
</body>
</html>
    �    <html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_ConfigurePulseBiasVoltageLimit</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">limit</td>
<td class="paramDataType">ViReal64</td>
<td class="Borderless">Specifies the pulse bias voltage limit, in volts, on the specified channel(s). The limit is specified as a positive value, but symmetric positive and negative limits are enforced simultaneously.<BR><BR>


<strong>Valid Values:</strong><BR>
The valid values for this parameter are defined by the pulse voltage limit range that is configured using the  <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm','cviniDCPower_ConfigurePulseVoltageLimitRange.html')"><span class="Monospace">niDCPower_ConfigurePulseVoltageLimitRange</span></a> function.<BR><BR>


</td></tr></table></body></html>    2�)   �  �    Instrument Handle                 =� %  �  �    Channel Name                     y� % � �  �    Limit                              ]����  �    Status                                 ""    0.0    	          �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_CreateAdvancedSequence</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_CreateAdvancedSequence</h1>


 <p class="Syntax">ViStatus niDCPower_CreateAdvancedSequence(ViSession vi, ViConstString sequenceName, ViInt32 attributeIDCount,ViInt32 attributeIDs[],  viBoolean setAsActiveSequence);</p>
 
 <h2 class="purpose">Purpose</h2>
<p class="Body">Creates an empty advanced sequence. Call the <span class="Monospace">niDCPower_CreateAdvancedSequenceStep</span> function to add steps to the active advanced sequence.</p>
<p>You can create multiple advanced sequences in a session.</p>
<p> <strong>Support for this function</strong></p>
<p>You must set the source mode to Sequence to use this function.</p>

<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&nbsp;&nbsp;This function is not supported on all devices. Refer to <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'supportedFunctions.html')">Supported Functions by Device</a> for more information about supported devices.</td>
</tr>
</table>
<p>Using the <span class="Monospace">niDCPower_SetSequence</span> function with Advanced Sequence functions is unsupported.</p>

<p>Use this function in the Uncommitted or Committed programming states. Refer to the <a href="javascript:LaunchHelp('NI_DC_Power_Supplies_Help.chm::/programmingStates.html')">Programming States</a> topic in the <em>NI DC Power Supplies and SMUs Help</em> for more information about NI-DCPower programming states.</p>

<p><strong>Related Topics</strong>:</p>
<p><a href="javascript:LaunchHelp('NI_DC_Power_Supplies_Help.chm::/AdvancedSequenceMode.html')">Advanced Sequence Mode</a></p>
<p><a href="javascript:LaunchHelp('NI_DC_Power_Supplies_Help.chm::/programmingStates.html')">Programming States</a></p>
<p><a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_CreateAdvancedSequenceStep.html')">niDCPower_CreateAdvancedSequenceStep</a></p>



</body>
</html>
    z    <html>
<head>
<script src="launchhelp.js"></script>
<title>niDCPower_CreateAdvancedSequence</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">sequenceName</td>
<td class="paramDataType">ViConstString</td>
<td>Specifies the name of the sequence to create.
</td>
 </tr></table></body>
</html>    �    
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_CreateAdvancedSequence</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">attributeIDCount</td>
<td class="paramDataType">ViInt32</td>
<td class="Borderless">Specifies the number of attributes in the attributeIDs array.<BR><BR>
</td></tr>
</table>


</td></tr></table></body>
</html>
    }�    <html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_CreateAdvancedSequence</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body>

 

<table class="Borderless"><tr>
 <td class="paramName">attributeIDs</td>
<td class="paramDataType">ViInt32[]</td>
<td class="Borderless">

 

Specifies the attributes you reconfigure per step in the advanced sequence. The following table lists which attributes can be configured in an advanced sequence for each NI-DCPower device that supports advanced sequencing. A &#10003; indicates that the attribute can be configured in advanced sequencing. An &#10005; indicates that the attribute cannot be configured in advanced sequencing.



 <br><br>
 
 
<table class="Bordered">
    <tr>
      <th class="Bordered">Attribute</th>
      <th class="Bordered">PXIe-4135</th>
      <th class="Bordered">PXIe-4136</th>
      <th class="Bordered">PXIe-4137</th>
      <th class="Bordered">PXIe-4138</th>
      <th class="Bordered">PXIe-4139</th>
      <th class="Bordered">PXIe-4140/4142/4144</th>
      <th class="Bordered">PXIe-4141/4143/4145</th>
      <th class="Bordered">PXIe-4162/4163</th>
    </tr>
    <tr>
          <td class ="Bordered"><a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'NIDCPOWER_ATTR_DC_NOISE_REJECTION.html')"><span class ="Monospace">NIDCPOWER_ATTR_DC_NOISE_REJECTION</span></a></td>

      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10005;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10005;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10005;</td>
      <td class="Bordered">&#10005;</td>
      <td class="Bordered">&#10003;</td>
    </tr>
    <tr>
    
          <td class ="Bordered"><a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'NIDCPOWER_ATTR_APERTURE_TIME.html')"><span class ="Monospace">NIDCPOWER_ATTR_APERTURE_TIME</span></a></td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
    </tr>
    <tr>
          <td class ="Bordered"><a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'NIDCPOWER_ATTR_MEASURE_RECORD_LENGTH.html')"><span class ="Monospace">NIDCPOWER_ATTR_MEASURE_RECORD_LENGTH</span></a></td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
    </tr>
    <tr>
          <td class ="Bordered"><a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'NIDCPOWER_ATTR_SENSE.html')"><span class ="Monospace">NIDCPOWER_ATTR_SENSE</span></a></td>              <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>     
    </tr>
    <tr>
          <td class ="Bordered"><a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'NIDCPOWER_ATTR_OVP_ENABLED.html')"><span class ="Monospace">NIDCPOWER_ATTR_OVP_ENABLED</span></a></td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10005;</td>
      <td class="Bordered">&#10005;</td>
      <td class="Bordered">&#10005;</td>
      <td class="Bordered">&#10005;</td>
      <td class="Bordered">&#10005;</td>       
    </tr>

    <tr>
          <td class ="Bordered"><a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'NIDCPOWER_ATTR_OVP_LIMIT.html')"><span class ="Monospace">NIDCPOWER_ATTR_OVP_LIMIT</span></a></td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10005;</td>
      <td class="Bordered">&#10005;</td>
      <td class="Bordered">&#10005;</td>
      <td class="Bordered">&#10005;</td>
      <td class="Bordered">&#10005;</td>       
    </tr>
    <tr>
          <td class ="Bordered"><a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'NIDCPOWER_ATTR_PULSE_BIAS_DELAY.html')"><span class ="Monospace">NIDCPOWER_ATTR_PULSE_BIAS_DELAY</span></a></td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10005;</td>
      <td class="Bordered">&#10005;</td>
      <td class="Bordered">&#10005;</td> 
    </tr>


    <tr>
          <td class ="Bordered"><a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'NIDCPOWER_ATTR_PULSE_OFF_TIME.html')"><span class ="Monospace">NIDCPOWER_ATTR_PULSE_OFF_TIME</span></a></td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10005;</td>
      <td class="Bordered">&#10005;</td>
      <td class="Bordered">&#10005;</td> 
    </tr>


    <tr>
          <td class ="Bordered"><a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'NIDCPOWER_ATTR_PULSE_ON_TIME.html')"><span class ="Monospace">NIDCPOWER_ATTR_PULSE_ON_TIME</span></a></td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10005;</td>
      <td class="Bordered">&#10005;</td>
      <td class="Bordered">&#10005;</td> 
    </tr>


    <tr>
          <td class ="Bordered"><a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'NIDCPOWER_ATTR_SOURCE_DELAY.html')"><span class ="Monospace">NIDCPOWER_ATTR_SOURCE_DELAY</span></a></td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
    </tr>


    <tr>
          <td class ="Bordered"><a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'NIDCPOWER_ATTR_CURRENT_COMPENSATION_FREQUENCY.html')"><span class ="Monospace">NIDCPOWER_ATTR_CURRENT_COMPENSATION_FREQUENCY</span></a></td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10005;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10005;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10005;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
    </tr>


    <tr>
          <td class ="Bordered"><a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'NIDCPOWER_ATTR_CURRENT_GAIN_BANDWIDTH.html')"><span class ="Monospace">NIDCPOWER_ATTR_CURRENT_GAIN_BANDWIDTH</span></a></td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10005;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10005;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10005;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
    </tr>


    <tr>
          <td class ="Bordered"><a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'NIDCPOWER_ATTR_CURRENT_POLE_ZERO_RATIO.html')"><span class ="Monospace">NIDCPOWER_ATTR_CURRENT_POLE_ZERO_RATIO</span></a></td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10005;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10005;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10005;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
    </tr>


    <tr>
          <td class ="Bordered"><a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'NIDCPOWER_ATTR_VOLTAGE_COMPENSATION_FREQUENCY.html')"><span class ="Monospace">NIDCPOWER_ATTR_VOLTAGE_COMPENSATION_FREQUENCY</span></a></td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10005;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10005;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10005;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
    </tr>


    <tr>
          <td class ="Bordered"><a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'NIDCPOWER_ATTR_VOLTAGE_GAIN_BANDWIDTH.html')"><span class ="Monospace">NIDCPOWER_ATTR_VOLTAGE_GAIN_BANDWIDTH</span></a></td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10005;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10005;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10005;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
    </tr>


    <tr>
          <td class ="Bordered"><a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'NIDCPOWER_ATTR_VOLTAGE_POLE_ZERO_RATIO.html')"><span class ="Monospace">NIDCPOWER_ATTR_VOLTAGE_POLE_ZERO_RATIO</span></a></td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10005;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10005;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10005;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
    </tr>


    <tr>
          <td class ="Bordered"><a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'NIDCPOWER_ATTR_CURRENT_LEVEL.html')"><span class ="Monospace">NIDCPOWER_ATTR_CURRENT_LEVEL</span></a></td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
    </tr>


    <tr>
          <td class ="Bordered"><a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'NIDCPOWER_ATTR_CURRENT_LEVEL_RANGE.html')"><span class ="Monospace">NIDCPOWER_ATTR_CURRENT_LEVEL_RANGE</span></a></td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
    </tr>


    <tr>
          <td class ="Bordered"><a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'NIDCPOWER_ATTR_VOLTAGE_LIMIT.html')"><span class ="Monospace">NIDCPOWER_ATTR_VOLTAGE_LIMIT</span></a></td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
    </tr>

    <tr>
          <td class ="Bordered"><a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'NIDCPOWER_ATTR_VOLTAGE_LIMIT_HIGH.html')"><span class ="Monospace">NIDCPOWER_ATTR_VOLTAGE_LIMIT_HIGH</span></a></td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10005;</td>
    </tr>

    <tr>
          <td class ="Bordered"><a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'NIDCPOWER_ATTR_VOLTAGE_LIMIT_LOW.html')"><span class ="Monospace">NIDCPOWER_ATTR_VOLTAGE_LIMIT_LOW</span></a></td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10005;</td>
    </tr>


    <tr>
          <td class ="Bordered"><a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'NIDCPOWER_ATTR_VOLTAGE_LIMIT_RANGE.html')"><span class ="Monospace">NIDCPOWER_ATTR_VOLTAGE_LIMIT_RANGE</span></a></td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
    </tr>


    <tr>
          <td class ="Bordered"><a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'NIDCPOWER_ATTR_CURRENT_LIMIT.html')"><span class ="Monospace">NIDCPOWER_ATTR_CURRENT_LIMIT</span></a></td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
    </tr>

    <tr>
          <td class ="Bordered"><a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'NIDCPOWER_ATTR_CURRENT_LIMIT_HIGH.html')"><span class ="Monospace">NIDCPOWER_ATTR_CURRENT_LIMIT_HIGH</span></a></td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10005;</td>
    </tr>

    <tr>
          <td class ="Bordered"><a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'NIDCPOWER_ATTR_CURRENT_LIMIT_LOW.html')"><span class ="Monospace">NIDCPOWER_ATTR_CURRENT_LIMIT_LOW</span></a></td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10005;</td>
    </tr>


    <tr>
          <td class ="Bordered"><a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'NIDCPOWER_ATTR_CURRENT_LIMIT_RANGE.html')"><span class ="Monospace">NIDCPOWER_ATTR_CURRENT_LIMIT_RANGE</span></a></td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
    </tr>


    <tr>
          <td class ="Bordered"><a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'NIDCPOWER_ATTR_VOLTAGE_LEVEL.html')"><span class ="Monospace">NIDCPOWER_ATTR_VOLTAGE_LEVEL</span></a></td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
    </tr>

    <tr>
          <td class ="Bordered"><a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'NIDCPOWER_ATTR_VOLTAGE_LEVEL_RANGE.html')"><span class ="Monospace">NIDCPOWER_ATTR_VOLTAGE_LEVEL_RANGE</span></a></td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
    </tr>


    <tr>
          <td class ="Bordered"><a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'NIDCPOWER_ATTR_OUTPUT_ENABLED.html')"><span class ="Monospace">NIDCPOWER_ATTR_OUTPUT_ENABLED</span></a></td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
    </tr>


    <tr>
          <td class ="Bordered"><a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'NIDCPOWER_ATTR_OUTPUT_FUNCTION.html')"><span class ="Monospace">NIDCPOWER_ATTR_OUTPUT_FUNCTION</span></a></td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
    </tr>
    <tr>
          <td class ="Bordered"><a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'NIDCPOWER_ATTR_OUTPUT_RESISTANCE.html')"><span class ="Monospace">NIDCPOWER_ATTR_OUTPUT_RESISTANCE</span></a></td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10005;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10005;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10005;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10005;</td>
    </tr>


    <tr>
          <td class ="Bordered"><a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'NIDCPOWER_ATTR_PULSE_BIAS_CURRENT_LEVEL.html')"><span class ="Monospace">NIDCPOWER_ATTR_PULSE_BIAS_CURRENT_LEVEL</span></a></td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10005;</td>
      <td class="Bordered">&#10005;</td>
      <td class="Bordered">&#10005;</td>
    </tr>


    <tr>
          <td class ="Bordered"><a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'NIDCPOWER_ATTR_PULSE_BIAS_VOLTAGE_LIMIT.html')"><span class ="Monospace">NIDCPOWER_ATTR_PULSE_BIAS_VOLTAGE_LIMIT</span></a></td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10005;</td>
      <td class="Bordered">&#10005;</td>
      <td class="Bordered">&#10005;</td>
    </tr>

    <tr>
          <td class ="Bordered"><a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'NIDCPOWER_ATTR_PULSE_BIAS_VOLTAGE_LIMIT_HIGH.html')"><span class ="Monospace">NIDCPOWER_ATTR_PULSE_BIAS_VOLTAGE_LIMIT_HIGH</span></a></td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10005;</td>
      <td class="Bordered">&#10005;</td>
      <td class="Bordered">&#10005;</td>
    </tr>

    <tr>
          <td class ="Bordered"><a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'NIDCPOWER_ATTR_PULSE_BIAS_VOLTAGE_LIMIT_LOW.html')"><span class ="Monospace">NIDCPOWER_ATTR_PULSE_BIAS_VOLTAGE_LIMIT_LOW</span></a></td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10005;</td>
      <td class="Bordered">&#10005;</td>
      <td class="Bordered">&#10005;</td>
    </tr>


    <tr>
          <td class ="Bordered"><a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'NIDCPOWER_ATTR_PULSE_CURRENT_LEVEL.html')"><span class ="Monospace">NIDCPOWER_ATTR_PULSE_CURRENT_LEVEL</span></a></td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10005;</td>
      <td class="Bordered">&#10005;</td>
      <td class="Bordered">&#10005;</td>
    </tr>


    <tr>
          <td class ="Bordered"><a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'NIDCPOWER_ATTR_PULSE_CURRENT_LEVEL_RANGE.html')"><span class ="Monospace">NIDCPOWER_ATTR_PULSE_CURRENT_LEVEL_RANGE</span></a></td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10005;</td>
      <td class="Bordered">&#10005;</td>
      <td class="Bordered">&#10005;</td>
    </tr>


    <tr>
          <td class ="Bordered"><a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'NIDCPOWER_ATTR_PULSE_VOLTAGE_LIMIT.html')"><span class ="Monospace">NIDCPOWER_ATTR_PULSE_VOLTAGE_LIMIT</span></a></td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10005;</td>
      <td class="Bordered">&#10005;</td>
      <td class="Bordered">&#10005;</td>
    </tr>

    <tr>
          <td class ="Bordered"><a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'NIDCPOWER_ATTR_PULSE_VOLTAGE_LIMIT_HIGH.html')"><span class ="Monospace">NIDCPOWER_ATTR_PULSE_VOLTAGE_LIMIT_HIGH</span></a></td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10005;</td>
      <td class="Bordered">&#10005;</td>
      <td class="Bordered">&#10005;</td>
    </tr>

    <tr>
          <td class ="Bordered"><a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'NIDCPOWER_ATTR_PULSE_VOLTAGE_LIMIT_LOW.html')"><span class ="Monospace">NIDCPOWER_ATTR_PULSE_VOLTAGE_LIMIT_LOW</span></a></td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10005;</td>
      <td class="Bordered">&#10005;</td>
      <td class="Bordered">&#10005;</td>
    </tr>


    <tr>
          <td class ="Bordered"><a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'NIDCPOWER_ATTR_PULSE_VOLTAGE_LIMIT_RANGE.html')"><span class ="Monospace">NIDCPOWER_ATTR_PULSE_VOLTAGE_LIMIT_RANGE</span></a></td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10005;</td>
      <td class="Bordered">&#10005;</td>
      <td class="Bordered">&#10005;</td>
    </tr>


    <tr>
          <td class ="Bordered"><a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'NIDCPOWER_ATTR_PULSE_BIAS_CURRENT_LIMIT.html')"><span class ="Monospace">NIDCPOWER_ATTR_PULSE_BIAS_CURRENT_LIMIT</span></a></td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10005;</td>
      <td class="Bordered">&#10005;</td>
      <td class="Bordered">&#10005;</td>
    </tr>

    <tr>
          <td class ="Bordered"><a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'NIDCPOWER_ATTR_PULSE_BIAS_CURRENT_LIMIT_HIGH.html')"><span class ="Monospace">NIDCPOWER_ATTR_PULSE_BIAS_CURRENT_LIMIT_HIGH</span></a></td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10005;</td>
      <td class="Bordered">&#10005;</td>
      <td class="Bordered">&#10005;</td>
    </tr>

    <tr>
          <td class ="Bordered"><a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'NIDCPOWER_ATTR_PULSE_BIAS_CURRENT_LIMIT_LOW.html')"><span class ="Monospace">NIDCPOWER_ATTR_PULSE_BIAS_CURRENT_LIMIT_LOW</span></a></td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10005;</td>
      <td class="Bordered">&#10005;</td>
      <td class="Bordered">&#10005;</td>
    </tr>


    <tr>
          <td class ="Bordered"><a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'NIDCPOWER_ATTR_PULSE_BIAS_VOLTAGE_LEVEL.html')"><span class ="Monospace">NIDCPOWER_ATTR_PULSE_BIAS_VOLTAGE_LEVEL</span></a></td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10005;</td>
      <td class="Bordered">&#10005;</td>
      <td class="Bordered">&#10005;</td>
    </tr>

    <tr>
          <td class ="Bordered"><a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'NIDCPOWER_ATTR_PULSE_CURRENT_LIMIT.html')"><span class ="Monospace">NIDCPOWER_ATTR_PULSE_CURRENT_LIMIT</span></a></td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10005;</td>
      <td class="Bordered">&#10005;</td>
      <td class="Bordered">&#10005;</td>
    </tr>

    <tr>
          <td class ="Bordered"><a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'NIDCPOWER_ATTR_PULSE_CURRENT_LIMIT_HIGH.html')"><span class ="Monospace">NIDCPOWER_ATTR_PULSE_CURRENT_LIMIT_HIGH</span></a></td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10005;</td>
      <td class="Bordered">&#10005;</td>
      <td class="Bordered">&#10005;</td>
    </tr>

    <tr>
          <td class ="Bordered"><a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'NIDCPOWER_ATTR_PULSE_CURRENT_LIMIT_LOW.html')"><span class ="Monospace">NIDCPOWER_ATTR_PULSE_CURRENT_LIMIT_LOW</span></a></td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10005;</td>
      <td class="Bordered">&#10005;</td>
      <td class="Bordered">&#10005;</td>
    </tr>

    <tr>
          <td class ="Bordered"><a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'NIDCPOWER_ATTR_PULSE_CURRENT_LIMIT_RANGE.html')"><span class ="Monospace">NIDCPOWER_ATTR_PULSE_CURRENT_LIMIT_RANGE</span></a></td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10005;</td>
      <td class="Bordered">&#10005;</td>
      <td class="Bordered">&#10005;</td>
    </tr>

    <tr>
          <td class ="Bordered"><a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'NIDCPOWER_ATTR_PULSE_VOLTAGE_LEVEL.html')"><span class ="Monospace">NIDCPOWER_ATTR_PULSE_VOLTAGE_LEVEL</span></a></td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10005;</td>
      <td class="Bordered">&#10005;</td>
      <td class="Bordered">&#10005;</td>
    </tr>

    <tr>
          <td class ="Bordered"><a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'NIDCPOWER_ATTR_PULSE_VOLTAGE_LEVEL_RANGE.html')"><span class ="Monospace">NIDCPOWER_ATTR_PULSE_VOLTAGE_LEVEL_RANGE</span></a></td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10005;</td>
      <td class="Bordered">&#10005;</td>
      <td class="Bordered">&#10005;</td>
    </tr>

    <tr>
          <td class ="Bordered"><a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'NIDCPOWER_ATTR_TRANSIENT_RESPONSE.html')"><span class ="Monospace">NIDCPOWER_ATTR_TRANSIENT_RESPONSE</span></a></td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
      <td class="Bordered">&#10003;</td>
    </tr>
  </table>
 
 
 
 
 
 <BR><BR>




</td></tr>

</table>


</body>
</html>
    �    <html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_CreateAdvancedSequence</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">setAsActiveSequence</td>
<td class="paramDataType">ViBoolean</td>
<td class="Borderless">Specifies that this current sequence is active.</td>
</tr></table>
</body>
</html>    2�/ 
  �  �    Instrument Handle                  ]����  �    Status                           � >  �  �    Sequence Name                    �� p  �  �    Attribute ID Count               �o �  �  �    Attribute IDs                    � � / �  �    Set As Active Sequence                 	           ""    0    0   True VI_TRUE False VI_FALSE   g    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_CreateAdvancedSequenceStep</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_CreateAdvancedSequenceStep</h1>


 <p class="Syntax">ViStatus niDCPower_CreateAdvancedSequenceStep(ViSession vi, viBoolean setAsActiveSequenceStep);</p>

<h2 class="purpose">Purpose</h2>

 <p>Creates a new advanced sequence step in the advanced sequence specified by the Active advanced sequence. When you create an advanced sequence step, each attribute you passed to the <span class="Monospace">niDCPower_CreateAdvancedSequence</span> function is reset to its default value for that step unless otherwise specified. 
</p>

<p> <strong>Support for this Function</strong></p>
<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&nbsp;&nbsp;This function is not supported on all devices. Refer to <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'supportedFunctions.html')">Supported Functions by Device</a> for more information about supported devices.</td>
</tr>
</table>

<p>You must set the source mode to Sequence to use this function.</p>
<p>Using the <span class="Monospace">niDCPower_SetSequence</span> function with Advanced Sequence functions is unsupported.</p>

<p><strong>Related Topics</strong>:</p>
<p><a href="javascript:LaunchHelp('NI_DC_Power_Supplies_Help.chm::/AdvancedSequenceMode.html')">Advanced Sequence Mode</a></p>
<p><a href="javascript:LaunchHelp('NI_DC_Power_Supplies_Help.chm::/programmingStates.html')">Programming States</a></p>
<p><a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_CreateAdvancedSequence.html')">niDCPower_CreateAdvancedSequence</a></p>



</body>
</html>
    �    <html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_CreateAdvancedSequenceStep</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">setAsActiveStep</td>
<td class="paramDataType">ViBoolean</td>
<td class="Borderless">Specifies that this current step in the active sequence is active.</td>
</tr></table>
</body>
</html>    2�%   �  �    Instrument Handle                  ]����  �    Status                           � % & �  �    Set As Active Step                     	          True VI_TRUE False VI_FALSE   g    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_CreateAdvancedSequenceCommitStepWithChannels</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_CreateAdvancedSequenceCommitStepWithChannels</h1>


 <p class="Syntax">ViStatus niDCPower_CreateAdvancedSequenceCommitStepWithChannels(ViSession vi, ViConstString channelName, viBoolean setAsActiveSequenceStep);</p>

<h2 class="purpose">Purpose</h2>

<p> <strong>Support for this Function</strong></p>
<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&nbsp;&nbsp;This function is not supported on all devices. Refer to <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'supportedFunctions.html')">Supported Functions by Device</a> for more information about supported devices.</td>
</tr>
</table>

<p>You must set the source mode to Sequence to use this function.</p>
<p>Using the <span class="Monospace">niDCPower_SetSequence</span> function with Advanced Sequence functions is unsupported.</p>

<p><strong>Related Topics</strong>:</p>
<p><a href="javascript:LaunchHelp('NI_DC_Power_Supplies_Help.chm::/AdvancedSequenceMode.html')">Advanced Sequence Mode</a></p>
<p><a href="javascript:LaunchHelp('NI_DC_Power_Supplies_Help.chm::/programmingStates.html')">Programming States</a></p>
<p><a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_CreateAdvancedSequence.html')">niDCPower_CreateAdvancedSequence</a></p>



</body>
</html>
    �    <html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_CreateAdvancedSequenceCommitStepWithChannels</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">setAsActiveStep</td>
<td class="paramDataType">ViBoolean</td>
<td class="Borderless">Specifies that this current step in the active sequence is active.</td>
</tr></table>
</body>
</html>    2�%   �  �    Instrument Handle                  ]����  �    Status                           � k # �  �    Set As Active Step                =� %  �  �    Channel Name                           	          True VI_TRUE False VI_FALSE    ""   �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_DeleteAdvancedSequence</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_DeleteAdvancedSequence</h1>



 <p class="Syntax">ViStatus niDCPower_DeleteAdvancedSequence(ViSession vi, viConstString sequenceName);</p>
 
<h2 class="purpose">Purpose</h2>

 <p>Deletes a previously created advanced sequence and all the advanced sequence steps in the advanced sequence. 
</p>

<p> <strong>Support for this Function</strong></p>
<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&nbsp;&nbsp;This function is not supported on all devices. Refer to <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'supportedFunctions.html')">Supported Functions by Device</a> for more information about supported devices.</td>
</tr>
</table>

<p>You must set the source mode to Sequence to use this function.</p>
<p>Using the <span class="Monospace">niDCPower_SetSequence</span> function with Advanced Sequence functions is unsupported.</p>

<p><strong>Related Topics</strong>:</p>
<p><a href="javascript:LaunchHelp('NI_DC_Power_Supplies_Help.chm::/AdvancedSequenceMode.html')">Advanced Sequence Mode</a></p>
<p><a href="javascript:LaunchHelp('NI_DC_Power_Supplies_Help.chm::/ProgrammingStates.html')">Programming States</a></p>
 
 
 
 
 
 
 
 
 
 



</body>
</html>
    {    <html>
<head>
<script src="launchhelp.js"></script>
<title>niDCPower_DeleteAdvancedSequence</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">sequenceName</td>
<td class="paramDataType">ViConstString</td>
<td>specifies the name of the sequence to delete.</td>
 </tr>
</table>
</body>
</html>    2�%   �  �    Instrument Handle                  ]&����  �    Status                           $R >  �  �    Sequence Name                          	           ""   S    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_ConfigureApertureTime</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_ConfigureApertureTime</h1>

<p class="Syntax">ViStatus niDCPower_ConfigureApertureTime(ViSession vi,
      ViConstString channelName,
      ViReal64 apertureTime,
      ViInt32 units);</p>

 <h2 class="purpose">Purpose</h2>

<p class="Body">Configures the aperture time on the specified channel(s).</p>

<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&nbsp;&nbsp;This function is not supported on all devices. Refer to <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'supportedFunctions.html')">Supported Functions by Device</a> for more information about supported devices.</td>
</tr>
</table>

<p class="body">The supported values depend on the <strong>units</strong>. Refer to the <em>Aperture Time</em> topic for your device in the <em>NI DC Power Supplies and SMUs Help</em> for more information. In general, devices support discrete <strong>apertureTime</strong> values, and if you configure <strong>apertureTime</strong> to some unsupported value, NI-DCPower coerces it up to the next supported value.</p>

<p class="Body">Refer to the <em>Measurement Configuration and Timing</em> or <em>DC Noise Rejection</em> topic for your device in the <em>NI DC Power Supplies and SMUs Help</em> for more information about how to configure your measurements.</p>

  
<!--Related topics section added by link generator tool-->
<!--12/12/2013 9:52 AM-->
<p class="Body"><strong>Related Topics:</strong></p>
<p class="Body"><a href="javascript:LaunchHelp('NI_DC_Power_Supplies_Help.chm::/Aperture.html')">Aperture Time</a></p>
</body>

</html>
        
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_ConfigureApertureTime</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">units</td>
<td class="paramDataType">ViInt32</td>
<td class="Borderless">Specifies the units for <strong>apertureTime</strong>.<BR><BR>

<strong>Defined Values</strong>:<BR>
<table class="Bordered"><tr><td class="Bordered"><span class="Monospace">NIDCPOWER_VAL_SECONDS (1028)</span></td><td class="Bordered">Specifies seconds.</td></tr>
<tr><td class="Bordered"><span class="Monospace">NIDCPOWER_VAL_POWER_LINE_CYCLES (1029)</span></td><td class="Bordered">Specifies Power Line Cycles.</td></tr>
</table>


</td></tr></table></body>
</html>
    �    <html>
<head>
<script src="launchhelp.js"></script>
<title>niDCPower_ConfigureApertureTime</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">apertureTime</td>
<td class="paramDataType">ViReal64</td>
<td>Specifies the aperture time. Refer to the <em>Aperture Time</em> topic for your device in the <em>NI DC Power Supplies and SMUs Help</em> for more information.

</td>
 </tr></table></body>
</html>    2�-   �  �    Instrument Handle                  ]#����  �    Status                            =� 3 
 �  �    Channel Name                     -� p � � �    Units                            1 p  �  �    Aperture Time                          	           ""               PSeconds NIDCPOWER_VAL_SECONDS Power Line Cycles NIDCPOWER_VAL_POWER_LINE_CYCLES    	16.66e-3   #    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_ConfigureAutoZero</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_ConfigureAutoZero</h1>


 <p class="Syntax">ViStatus niDCPower_ConfigureAutoZero(ViSession vi,
      ViConstString channelName,
      ViInt32 autoZero);</p>

 <h2 class="purpose">Purpose</h2>

<p class="Body">Configures auto zero for the device.</p>

<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&nbsp;&nbsp;This function is not supported on all devices. Refer to <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'supportedFunctions.html')">Supported Functions by Device</a> for more information about supported devices.</td>
</tr>
</table>


<p class="Body">Refer to the <a href="javascript:LaunchHelp('NI_DC_Power_Supplies_Help.chm::/4132_AutoZero.html')">NI PXI-4132 Auto Zero</a> and <a href="javascript:LaunchHelp('NI_DC_Power_Supplies_Help.chm::/4132_MeasureConfigTiming.html')">NI PXI-4132 Measurement Configuration and Timing
</a> topics in the <em>NI DC Power Supplies and SMUs Help</em> for more information about how to configure your measurements.

</p>

<!--Related topics section added by link generator tool-->
<!--12/12/2013 9:52 AM-->
<p class="Body"><strong>Related Topics:</strong></p>
<p class="Body"><a href="javascript:LaunchHelp('NI_DC_Power_Supplies_Help.chm::/AutoZero.html')">Auto Zero</a></p>
</body>

</html>
         
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_ConfigureAutoZero</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">autoZero</td>
<td class="paramDataType">ViInt32</td>
<td class="Borderless">Specifies the auto-zero setting. Refer to the <em>Measurement Configuration and Timing</em> topic and the <em>Auto Zero</em> topic for your device for more information about how to configure your measurements.<BR><BR>

<strong>Defined Values:</strong><BR>
<table class="Bordered">
<tr><td class="Bordered"><span class="Monospace">NIDCPOWER_VAL_OFF (0)</span></td><td class="Bordered">Disables auto-zero.</td></tr> 
<tr><td class="Bordered"><span class="Monospace">NIDCPOWER_VAL_ONCE (1024)</span></td><td class="Bordered">Makes zero conversions following the first measurement after initiating the device. The device uses these zero conversions for the preceding measurement and future measurements until the device is reinitiated.</td></tr>
<tr><td class="Bordered"><span class="Monospace">NIDCPOWER_VAL_ON (1)</span></td><td class="Bordered">Makes zero conversions for every measurement.
           </td></tr>
</table>


</td></tr></table></body>
</html>
    2�-   �  �    Instrument Handle                  ]#����  �    Status                            =� 3 
 �  �    Channel Name                     :� 2 � � �    Auto Zero                              	           ""              BOff NIDCPOWER_VAL_OFF Once NIDCPOWER_VAL_ONCE On NIDCPOWER_VAL_ON   �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_ConfigurePowerLineFrequency</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_ConfigurePowerLineFrequency</h1>

 <p class="Syntax">ViStatus niDCPower_ConfigurePowerLineFrequency(ViSession vi,
      ViReal64 powerLineFrequency);</p>

 <h2 class="purpose">Purpose</h2>

<p class="Body">Specifies the power line frequency for specified channel(s). NI-DCPower uses this value to select a timebase for setting the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_ConfigureApertureTime.html')"><span class="Monospace">niDCPower_ConfigureApertureTime</span></a> function in power line cycles (PLCs).</p>

<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&nbsp;&nbsp;This function is not supported on all devices. Refer to <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'supportedFunctions.html')">Supported Functions by Device</a> for more information about supported devices.</td>
</tr>
</table>

<p class="Body">Refer to the <em>Measurement Configuration and Timing</em> topic for your device in the <em>NI DC Power Supplies and SMUs Help</em> for more information about how to configure your measurements.</p>

  
<!--Related topics section added by link generator tool-->
<!--12/12/2013 9:52 AM-->
<p class="Body"><strong>Related Topics:</strong></p>
<p class="Body"><a href="javascript:LaunchHelp('NI_DC_Power_Supplies_Help.chm::/NoiseRejectMeasure.html')">Measurement Noise Rejection</a></p>
</body>

</html>
    o    <html>
<head>
<script src="launchhelp.js"></script>
<title>niDCPower_ConfigurePowerLineFrequency</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">powerLineFrequency</td>
<td class="paramDataType">ViReal64</td>
<td class="Borderless">Specifies the power line frequency in hertz for specified channel(s). NI-DCPower uses this value to select a timebase for the 
<a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'NIDCPOWER_ATTR_APERTURE_TIME.html')"><span class="Monospace">NIDCPOWER_ATTR_APERTURE_TIME</span></a> attribute. Refer to the <em>Measurement Configuration and Timing</em> topic for your device for more information about how to configure your measurements.<BR><BR>

<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&nbsp;&nbsp;Set this parameter to the frequency of the AC power line.</td>
</tr>
</table>

<strong>Defined Values</strong>:<BR>
<table class="Bordered"><tr><td class="Bordered"><span class="Monospace">NIDCPOWER_VAL_50_HERTZ (50.0)
</span></td><td class="Bordered">Specifies 50 Hz.</td></tr>
<tr><td class="Bordered"><span class="Monospace">NIDCPOWER_VAL_60_HERTZ (60.0)</span></td><td class="Bordered">Specifies 60 Hz.</td></tr>
</table>

</td>
 </tr></table></body>
</html>    2�-   �  �    Instrument Handle                  ]#����  �    Status                           G� >  � �    Powerline Frequency                    	                     @50 Hertz NIDCPOWER_VAL_50_HERTZ 60 Hertz NIDCPOWER_VAL_60_HERTZ       <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_ConfigureSense</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_ConfigureSense</h1>


 <p class="Syntax">ViStatus niDCPower_ConfigureSense(ViSession vi,
                                                 ViConstString channelName,
                                                 ViInt32 sense);</p>
 <h2 class="purpose">Purpose</h2>
<p class="Body">Specifies whether to use <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm','local_and_remote_sense.html')">local</a> or <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm','local_and_remote_sense.html')">remote</a> sensing of the output voltage on the specified channel(s).  Refer to the <em>Devices</em> topic specific to your device in the <em>NI DC Power Supplies and SMUs</em> Help for more information about sensing voltage on supported channels.  
<!--Related topics section added by link generator tool-->
<!--12/12/2013 9:52 AM-->
<p class="Body"><strong>Related Topics:</strong></p>
<p class="Body"><a href="javascript:LaunchHelp('NI_DC_Power_Supplies_Help.chm::/4112_LocalAndRemoteSense.html')">Local and Remote Sense</a></p>
</body>

</html>
    �    
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_ConfigureSense</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">sense</td>
<td class="paramDataType">ViInt32</td>
<td class="Borderless">Specifies local or remote sensing on the specified channel(s).<BR><BR>

<strong>Defined Values:</strong><BR>
<table class="Bordered"><tr><td class="Bordered"><span class="Monospace">NIDCPOWER_VAL_LOCAL (1008)</span></td><td class="Bordered">Local sensing</td></tr> <tr><td class="Bordered"><span class="Monospace">NIDCPOWER_VAL_REMOTE (1009)</span></td><td class="Bordered">Remote sensing</td></tr></table>
</td></tr>
</table></body>
</html>
    2�-   �  �    Instrument Handle                  ]#����  �    Status                            =� 3 
 �  �    Channel Name                     SA 2 � � �    Sense                                  	           ""               6Local NIDCPOWER_VAL_LOCAL Remote NIDCPOWER_VAL_REMOTE   �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_Measure</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_Measure</h1>


 <p class="Syntax">ViStatus niDCPower_Measure(ViSession vi,
                                  ViConstString channelName,
                                  ViInt32 measurementType,
                                  ViReal64 *measurement)</p>
 <h2 class="purpose">Purpose</h2>
<p class="Body">Returns the measured value of either the voltage or current on the specified output channel. Each call to this function blocks
      other function calls until the hardware returns the <strong>measurement</strong>.
      To measure multiple output channels, use the 
      <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_MeasureMultiple.html')"><span class="Monospace">niDCPower_MeasureMultiple</span></a> function.
</body>
</html>
    %    <html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_Measure</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">measurementType</td>
<td class="paramDataType">ViInt32</td>
<td class="Borderless">Specifies whether a voltage or current value is measured.
<br><br><strong>Defined Values</strong>:<BR>

<table class="Bordered"><tr><td class="Bordered"><span class="Monospace">NIDCPOWER_VAL_MEASURE_VOLTAGE (1)</span></td><td class="Bordered">The device measures voltage.</td></tr> <tr><td class="Bordered"><span class="Monospace">NIDCPOWER_VAL_MEASURE_CURRENT (0)</span></td><td class="Bordered">The device measures current.</td></tr></table>
</td>
</tr></table></table></body>
</html>    �    <html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_Measure</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">measurement</td>
<td class="paramDataType">ViReal64*</td>
<td class="Borderless">Returns the value of the measurement, either in volts for voltage or
          amps for current.</td>
</tr></table></table></body>
</html>
    �    <html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_Measure</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">channelName</td>
<td class="paramDataType">ViConstString</td>
<td class="Borderless">Specifies the output channel to measure.   Only one measurement at a time may be made with the <span class="Monospace">niDCPower_Measure</span> function. Use the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm','cviniDCPower_MeasureMultiple.html')"><span class="Monospace">niDCPower_MeasureMultiple</span></a> function to measure multiple channels.</td>
</tr></table></table></body>
</html>
   [j 5 � � �    Measurement Type                 ^� 3� �  �    Measurement                       2�-   �  �    Instrument Handle                  ]#����  �    Status                           `g 3 
 �  �    Channel Name                                  LVoltage NIDCPOWER_VAL_MEASURE_VOLTAGE Current NIDCPOWER_VAL_MEASURE_CURRENT    	               	           ""   �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_MeasureMultiple</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_MeasureMultiple</h1>


 <p class="Syntax">ViStatus niDCPower_MeasureMultiple(ViSession vi,
                                              ViConstString channelName,
                                              ViReal64 voltageMeasurements[],
                                              ViReal64 currentMeasurements[]);</p>
 <h2 class="purpose">Purpose</h2>
<p class="Body">Returns arrays of the measured voltage and current values
      on the specified output channel(s). Each call to this function
      blocks other function calls until the measurements are returned from the
      device. The order of the measurements returned in the array corresponds to the
      order on the specified output channel(s).
</body>
</html>
    b    <html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_MeasureMultiple</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">voltageMeasurements</td>
<td class="paramDataType">ViReal64[]</td>
<td class="Borderless">Returns an array of voltage measurements. The measurements in the array are returned in the same order as the channels specified in <strong>channelName</strong>. Ensure that sufficient space has been allocated for the returned array.</td>
</tr></table></table></body>
</html>
    F    <html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_MeasureMultiple</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">channelName</td>
<td class="paramDataType">ViConstString</td>
<td class="Borderless">Specifies the output channels to measure. You can specify multiple channels by using a channel list or a channel range. A channel list is a comma (,) separated sequence of channel names (e.g. 0,2 specifies channels 0 and 2). A channel range is a lower bound channel followed by a hyphen (-) or colon (:) followed by an upper bound channel (e.g. 0-2 specifies channels 0, 1, and 2). If you do not specify a channel name, the function uses all channels in the session.</td>
</tr></table></table></body>
</html>
    b    <html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_MeasureMultiple</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">currentMeasurements</td>
<td class="paramDataType">ViReal64[]</td>
<td class="Borderless">Returns an array of current measurements. The measurements in the array are returned in the same order as the channels specified in <strong>channelName</strong>. Ensure that sufficient space has been allocated for the returned array.</td>
</tr></table></table></body>
</html>
   h� %� �  �    Voltage Measurements              2�   �  �    Instrument Handle                  ]����  �    Status                           k %  �  �    Channel Name                     n` p� �  �    Current Measurements               	                	           ""    	           ,    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_FetchMultiple</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_FetchMultiple</h1>

<p class="Syntax">ViStatus niDCPower_FetchMultiple(ViSession vi,
      ViConstString channelName,
      ViReal64 timeout,
      ViInt32 count,
      ViReal64 voltageMeasurements[],
      ViReal64 currentMeasurements[],
      ViBoolean inCompliance[],
      ViInt32* actualCount);</p>

 <h2 class="purpose">Purpose</h2>

<p class="Body">Returns an array of voltage measurements, an array of current measurements, and an array of compliance measurements that were previously taken and are stored in the NI-DCPower buffer. This function should not be used when the 

<a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'NIDCPOWER_ATTR_MEASURE_WHEN.html')"><span class="Monospace">NIDCPOWER_ATTR_MEASURE_WHEN</span></a> attribute is set to <span class="Monospace">NIDCPOWER_VAL_ON_DEMAND</span>. You must first call 
<a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_Initiate.html')"><span class="Monospace">niDCPower_Initiate</span></a> before calling this function.</p>

<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&nbsp;&nbsp;This function is not supported on all devices. Refer to <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'supportedFunctions.html')">Supported Functions by Device</a> for more information about supported devices.</td>
</tr>
</table>
  
<p class="Body">Refer to the <a href="javascript:LaunchHelp('NI_DC_Power_Supplies_Help.chm::/AcquiringMeasurements.html')">Acquiring Measurements</a> and <a href="javascript:LaunchHelp('NI_DC_Power_Supplies_Help.chm::/compliance.html')">Compliance</a> topics in the <em>NI DC Power Supplies and SMUs Help</em> for more information about configuring this function.</p>


</body>
</html>
    �    <html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_FetchMultiple</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">voltageMeasurements</td>
<td class="paramDataType">ViReal64[]</td>
<td class="Borderless">Returns an array of voltage measurements. Ensure that sufficient space has been allocated for the returned array.</td>
</tr></table></table></body>
</html>
    �    <html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_FetchMultiple</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">currentMeasurements</td>
<td class="paramDataType">ViReal64[]</td>
<td class="Borderless">Returns an array of current measurements. Ensure that sufficient space has been allocated for the returned array. </td>
</tr></table></table></body>
</html>
    e    <html>
<head>
<script src="launchhelp.js"></script>
<title>niDCPower_FetchMultiple</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">count</td>
<td class="paramDataType">ViInt32</td>
<td>Specifies the number of measurements to fetch.
</td>
 </tr></table></body>
</html>    
    <html>
<head>
<script src="launchhelp.js"></script>
<title>niDCPower_FetchMultiple</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">timeout</td>
<td class="paramDataType">ViReal64</td>
<td>Specifies the maximum time allowed for this function to complete, in seconds. If the function does not complete within this time interval, NI-DCPower returns an error.<BR><BR>

<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&nbsp;&nbsp;When setting the timeout interval, ensure you take into account any triggers so that the timeout interval is long enough for your application.</td>
</tr>
</table>


</td>
 </tr></table></body>
</html>    3    <html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_FetchMultiple</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">inCompliance</td>
<td class="paramDataType">ViBoolean[]</td>
<td class="Borderless">Returns an array of Boolean values indicating whether the output was in compliance at the time the measurement was taken. Ensure that sufficient space has been allocated for the returned array.
</td>
</tr></table></table></body>
</html>
    �    <html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_FetchMultiple</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">actualCount</td>
<td class="paramDataType">ViInt32*</td>
<td class="Borderless">Indicates the number of measured values actually retrieved from the device.
</td>
</tr></table></table></body>
</html>
   z5 %� �  �    Voltage Measurements              2�Q   �  �    Instrument Handle                  ]Q����  �    Status                            =� %  �  �    Channel Name                     |% p� �  �    Current Measurements             ~ �  �  �    Count                            � W  �  �    Timeout                          �� �� �  �    In Compliance                    ��� �  �    Actual Count                       	                	           ""    	            1    5.0    	            	           	�    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_QueryInCompliance</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_QueryInCompliance</h1>

 <p class="Syntax">ViStatus niDCPower_QueryInCompliance(ViSession vi,
                                           ViConstString channelName,
                                           
                                           ViBoolean *inCompliance);</p>
 <h2 class="purpose">Purpose</h2>
<p class="Body">Queries the specified output device to determine if it is operating at the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'compliance.html')">compliance</a> limit.</p>

<p class="Body">The compliance limit is the current limit when the output function is set to <span class="Monospace">NIDCPOWER_VAL_DC_VOLTAGE</span>.  If the output is operating at the compliance limit, the output reaches the current limit before the desired voltage level.  Refer to the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm','cviniDCPower_ConfigureOutputFunction.html')"><span class="Monospace">niDCPower_ConfigureOutputFunction</span></a> function and the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm','cviniDCPower_ConfigureCurrentLimit.html')"><span class="Monospace">niDCPower_ConfigureCurrentLimit</span></a> function for more information about output function and current limit, respectively. </p>

<p class="Body">The compliance limit is the voltage limit when the output function is set to <span class="Monospace">NIDCPOWER_VAL_DC_CURRENT</span>.  If the output is operating at the compliance limit, the output reaches the voltage limit before the desired current level.  Refer to the <span class="Monospace">niDCPower_ConfigureOutputFunction</span> function and the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm','cviniDCPower_ConfigureVoltageLimit.html')"><span class="Monospace">niDCPower_ConfigureVoltageLimit</span></a> function for more information about output function and voltage limit, respectively.</p>
<!--Related topics section added by link generator tool-->
<!--12/12/2013 9:52 AM-->
<p class="Body"><strong>Related Topics:</strong></p>
<p class="Body"><a href="javascript:LaunchHelp('NI_DC_Power_Supplies_Help.chm::/compliance.html')">Compliance</a></p>
</body>

</html>    �    <html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_QueryInCompliance</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">channelName</td>
<td class="paramDataType">ViConstString</td>
<td class="Borderless">Specifies the output channel to query. Compliance status can only be queried for one channel at a time.</td>
</tr></table></table></body>
</html>
    �    <html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_QueryInCompliance</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">inCompliance</td>
<td class="paramDataType">ViBoolean*</td>
<td class="Borderless">Returns whether the device output channel is in compliance.</td>
</tr></table></table></body>
</html>
    2�-   �  �    Instrument Handle                  ]#����  �    Status                           �{ 3 
 �  �    Channel Name                     �` 3� �  �    In Compliance                          	           ""    	           �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_QueryOutputState</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_QueryOutputState</h1>

 <p class="Syntax">ViStatus niDCPower_QueryOutputState(ViSession vi,
                                           ViConstString channelName,
                                           ViInt32 outputState,
                                           ViBoolean  *inState);</p>
 <h2 class="purpose">Purpose</h2>
<p class="Body">Queries the specified output channel to determine if the output channel is currently in the state specified by <strong>outputState</strong>.</p>
<!--Related topics section added by link generator tool-->
<!--12/12/2013 9:52 AM-->
<p class="Body"><strong>Related Topics:</strong></p>
<p class="Body"><a href="javascript:LaunchHelp('NI_DC_Power_Supplies_Help.chm::/compliance.html')">Compliance</a></p>
</body>

</html>
    �    <html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_QueryOutputState</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">channelName</td>
<td class="paramDataType">ViConstString</td>
<td class="Borderless">Specifies the output channel to query.  The output state may only be queried for one channel at a time.</td>
</tr></table></table></body>
</html>
    �     <html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_QueryOutputState</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">outputState</td>
<td class="paramDataType">ViInt32</td>
<td class="Borderless">Specifies the output state of the output channel that is being queried.
<br><br><strong>Defined Values</strong>:<BR><table class="bordered"><tr><td class="Bordered"><span class="Monospace">NIDCPOWER_VAL_OUTPUT_CONSTANT_VOLTAGE (0)</span></td><td class="Bordered">The device maintains a constant
          voltage by adjusting the current.</td></tr>
 <tr><td class="Bordered"><span class="Monospace">NIDCPOWER_VAL_OUTPUT_CONSTANT_CURRENT (1)</span></td><td class="Bordered">The device maintains a constant
          current by adjusting the voltage.</td></tr></table></td>
</tr></table></body>
</html>    �    <html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_QueryOutputState</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">inState</td>
<td class="paramDataType">ViBoolean*</td>
<td class="Borderless">Returns whether the device output channel is in the specified output state.</td>
</tr></table></table></body>
</html>
    2�-   �  �    Instrument Handle                  ]#����  �    Status                           �� 3 
 �  �    Channel Name                     �� 3 � � �    Output State                     �z 3� �  �    In State                               	           ""               nConstant Voltage NIDCPOWER_VAL_OUTPUT_CONSTANT_VOLTAGE Constant Current NIDCPOWER_VAL_OUTPUT_CONSTANT_CURRENT    	           c    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_Commit</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_Commit</h1>


 <p class="Syntax">ViStatus niDCPower_Commit(ViSession vi);</p>

 <h2 class="purpose">Purpose</h2>

<p class="Body">Applies previously configured settings to the device. Calling this function moves the NI-DCPower session from the Uncommitted state into the Committed state. After calling this function, modifying any attribute reverts the NI-DCPower session to the Uncommitted state. Use the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_Initiate.html')"><span class="Monospace">niDCPower_Initiate</span></a> function to transition to the Running state. Refer to the <a href="javascript:LaunchHelp('NI_DC_Power_Supplies_Help.chm::/programmingStates.html')">Programming States</a> topic in the <em>NI DC Power Supplies and SMUs Help</em> for details about the specific NI-DCPower software states.</p>



<!--Related topics section added by link generator tool-->
<!--12/12/2013 9:52 AM-->
<p class="Body"><strong>Related Topics:</strong></p>
<p class="Body"><a href="javascript:LaunchHelp('NI_DC_Power_Supplies_Help.chm::/programmingStates.html')">Programming States</a></p>
</body>

</html>
     ]����  �    Status                            2�   �  �    Instrument Handle                  	               �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_Initiate</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_Initiate</h1>

 <p class="Syntax">ViStatus niDCPower_Initiate(ViSession vi);</p>

 <h2 class="purpose">Purpose</h2>


<p class="Body">Starts generation or acquisition, causing the NI-DCPower session to leave the Uncommitted state or Committed state and enter the Running state. To return to the Uncommitted state call the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_Abort.html')"><span class="Monospace">niDCPower_Abort</span></a> function. Refer to the <a href="javascript:LaunchHelp('NI_DC_Power_Supplies_Help.chm::/programmingStates.html')">Programming States</a> topic in the <em>NI DC Power Supplies and SMUs Help</em> for information about the specific NI-DCPower software states.</p>


<!--Related topics section added by link generator tool-->
<!--12/12/2013 9:52 AM-->
<p class="Body"><strong>Related Topics:</strong></p>
<p class="Body"><a href="javascript:LaunchHelp('NI_DC_Power_Supplies_Help.chm::/programmingStates.html')">Programming States</a></p>
</body>

</html>
     ]����  �    Status                            2�   �  �    Instrument Handle                  	               �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_Abort</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>


<body>
<h1 class="function">niDCPower_Abort</h1>


 <p class="Syntax">ViStatus niDCPower_Abort(ViSession vi);</p>
 <h2 class="purpose">Purpose</h2>
<p class="Body">Transitions the NI-DCPower session from the Running state to the Uncommitted state. If a sequence is running, it is stopped. Any
      configuration functions called after this function are not
      applied until the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_Initiate.html')"><span class="Monospace">niDCPower_Initiate</span></a> function is called. If power output
      is enabled when you call the <span class="Monospace">niDCPower_Abort</span> function, the output channels remain
      in their current state and continue providing power.</p><p>Use the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_ConfigureOutputEnabled.html')"><span class="Monospace">niDCPower_ConfigureOutputEnabled</span></a> function to disable power output
      on a per channel basis. Use the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_reset.html')"><span class="Monospace">niDCPower_reset</span></a> function to disable
      output on all channels. 
<p class="Body">Refer to the <a href="javascript:LaunchHelp('NI_DC_Power_Supplies_Help.chm::/programmingStates.html')">Programming States</a> topic in the <em>NI DC Power Supplies and SMUs Help</em> for information about the specific NI-DCPower software states.</p>
<!--Related topics section added by link generator tool-->
<!--12/12/2013 9:52 AM-->
<p class="Body"><strong>Related Topics:</strong></p>
<p class="Body"><a href="javascript:LaunchHelp('NI_DC_Power_Supplies_Help.chm::/programmingStates.html')">Programming States</a></p>
</body>

</html>
     ]����  �    Status                            2�   �  �    Instrument Handle                  	               �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_ConfigureDigitalEdgeStartTrigger</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_ConfigureDigitalEdgeStartTrigger</h1>

 <p class="Syntax">ViStatus niDCPower_ConfigureDigitalEdgeStartTrigger(ViSession vi,
      ViConstString inputTerminal,
      ViInt32 edge);</p>

 <h2 class="purpose">Purpose</h2>

<p class="Body">Configures the Start trigger for digital edge triggering.</p>

<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&nbsp;&nbsp;This function is not supported on all devices. Refer to <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'supportedFunctions.html')">Supported Functions by Device</a> for more information about supported devices.</td>
</tr>
</table>

</body>
</html>    �    <html>
<head>
<script src="launchhelp.js"></script>
<title>niDCPower_ConfigureDigitalEdgeStartTrigger</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">inputTerminal</td>
<td class="paramDataType">ViConstString</td>
<td>Specifies the input terminal for the digital edge Start trigger.

<p class="Body">You can specify any valid input terminal for this function. Valid terminals are listed in MAX under the <strong>Device Routes</strong> tab. For PXIe-4162/4163, refer to the Signal Routing topic for the device to determine which routes are available. This information is not available on a Device Routes tab in MAX. 
</p>

<p class="Body">Input terminals can be specified in one of two ways. If the device is named Dev1 and your terminal is PXI_Trig0, you can specify the terminal with the fully qualified terminal name, <span class="Monospace">/Dev1/PXI_Trig0</span>, or with the shortened terminal name, <span class="Monospace">PXI_Trig0</span>. The input terminal can also be a terminal from another device. For example, you can set the input terminal on Dev1 to be <span class="Monospace">/Dev2/SourceCompleteEvent</span>.</p>
</td>
 </tr></table></body>
</html>    a    <html>
<head>
<script src="launchhelp.js"></script>
<title>niDCPower_ConfigureDigitalEdgeStartTrigger</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">edge</td>
<td class="paramDataType">ViInt32</td>
<td>Specifies whether to configure the Start trigger to assert on the rising or falling edge.<BR><BR>

<strong>Defined Values:</strong><BR>
<table class="Bordered">
<tr><td class="Bordered"><span class="Monospace">NIDCPOWER_VAL_RISING (1016)</span></td><td class="Bordered">Asserts the trigger on the rising edge of the digital signal.</td></tr> 
<tr><td class="Bordered"><span class="Monospace">NIDCPOWER_VAL_FALLING (1017)</span></td><td class="Bordered">Asserts the trigger on the falling edge of the digital signal.</td></tr>
</table>


</td>
 </tr></table></body>
</html>    2�-   �  �    Instrument Handle                  ]#����  �    Status                           �V >  �  �    Input Terminal                   �E > � � �    Edge                                   	           ""               :Rising NIDCPOWER_VAL_RISING Falling NIDCPOWER_VAL_FALLING   �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_ConfigureSoftwareEdgeStartTrigger</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_ConfigureSoftwareEdgeStartTrigger</h1>


 <p class="Syntax">ViStatus niDCPower_ConfigureSoftwareEdgeStartTrigger(ViSession vi);</p>

 <h2 class="purpose">Purpose</h2>


<p class="Body">Configures the Start trigger for software triggering. Use the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_SendSoftwareEdgeTrigger.html')"><span class="Monospace">niDCPower_SendSoftwareEdgeTrigger</span></a>  function to assert the trigger condition.</p>

<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&nbsp;&nbsp;This function is not supported on all devices. Refer to <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'supportedFunctions.html')">Supported Functions by Device</a> for more information about supported devices.</td>
</tr>
</table>

</body>
</html>    2�-   �  �    Instrument Handle                  ]#����  �    Status                                 	          �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_DisableStartTrigger</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_DisableStartTrigger</h1>


 <p class="Syntax">ViStatus niDCPower_DisableStartTrigger(ViSession vi);</p>

 <h2 class="purpose">Purpose</h2>

<p class="Body">Disables the Start trigger. The device does not wait for a Start trigger when starting generation or acquisition.</p>

<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&nbsp;&nbsp;This function is not supported on all devices. Refer to <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'supportedFunctions.html')">Supported Functions by Device</a> for more information about supported devices.</td>
</tr>
</table>

</body>
</html>    2�-   �  �    Instrument Handle                  ]#����  �    Status                                 	          �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_ConfigureDigitalEdgeSourceTrigger</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_ConfigureDigitalEdgeSourceTrigger</h1>


 <p class="Syntax">ViStatus niDCPower_ConfigureDigitalEdgeSourceTrigger(ViSession vi,
      ViConstString inputTerminal,
      ViInt32 edge);</p>

 <h2 class="purpose">Purpose</h2>

<p class="Body">Configures the Source trigger for digital edge triggering.</p>

<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&nbsp;&nbsp;This function is not supported on all devices. Refer to <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'supportedFunctions.html')">Supported Functions by Device</a> for more information about supported devices.</td>
</tr>
</table>

</body>
</html>    �    <html>
<head>
<script src="launchhelp.js"></script>
<title>niDCPower_ConfigureDigitalEdgeSourceTrigger</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">inputTerminal</td>
<td class="paramDataType">ViConstString</td>
<td>Specifies the input terminal for the digital edge Source trigger.

<p class="Body">You can specify any valid input terminal for this function. Valid terminals are listed in MAX under the <strong>Device Routes</strong> tab. For PXIe-4162/4163, refer to the Signal Routing topic for the device to determine which routes are available. This information is not available on a Device Routes tab in MAX. 
</p>

<p class="Body">Input terminals can be specified in one of two ways. If the device is named Dev1 and your terminal is PXI_Trig0, you can specify the terminal with the fully qualified terminal name, <span class="Monospace">/Dev1/PXI_Trig0</span>, or with the shortened terminal name, <span class="Monospace">PXI_Trig0</span>. The input terminal can also be a terminal from another device. For example, you can set the input terminal on Dev1 to be <span class="Monospace">/Dev2/SourceCompleteEvent</span>.</p>
</td>
 </tr></table></body>
</html>    _    <html>
<head>
<script src="launchhelp.js"></script>
<title>niDCPower_ConfigureDigitalEdgeSourceTrigger</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">edge</td>
<td class="paramDataType">ViInt32</td>
<td>Specifies whether to configure the Source trigger to assert on the rising or falling edge.<BR>

<strong>Defined Values:</strong><BR>
<table class="Bordered">
<tr><td class="Bordered"><span class="Monospace">NIDCPOWER_VAL_RISING (1016)</span></td><td class="Bordered">Asserts the trigger on the rising edge of the digital signal.</td></tr> 
<tr><td class="Bordered"><span class="Monospace">NIDCPOWER_VAL_FALLING (1017)</span></td><td class="Bordered">Asserts the trigger on the falling edge of the digital signal.</td></tr>
</table>


</td>
 </tr></table></body>
</html>    2�-   �  �    Instrument Handle                  ]#����  �    Status                           �� >  �  �    Input Terminal                   ַ > � � �    Edge                                   	           ""               :Rising NIDCPOWER_VAL_RISING Falling NIDCPOWER_VAL_FALLING   �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_ConfigureSoftwareEdgeSourceTrigger</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_ConfigureSoftwareEdgeSourceTrigger</h1>


 <p class="Syntax">ViStatus niDCPower_ConfigureSoftwareEdgeSourceTrigger(ViSession vi);</p>

 <h2 class="purpose">Purpose</h2>

<p class="Body">Configures the Source trigger for software triggering. Use the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_SendSoftwareEdgeTrigger.html')"><span class="Monospace">niDCPower_SendSoftwareEdgeTrigger</span></a> function to assert the trigger condition.</p>

<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&nbsp;&nbsp;This function is not supported on all devices. Refer to <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'supportedFunctions.html')">Supported Functions by Device</a> for more information about supported devices.</td>
</tr>
</table>

</body>
</html>    2�-   �  �    Instrument Handle                  ]#����  �    Status                                 	          �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_DisableSourceTrigger</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_DisableSourceTrigger</h1>


 <p class="Syntax">ViStatus niDCPower_DisableSourceTrigger(ViSession vi);</p>

 <h2 class="purpose">Purpose</h2>

<p class="Body">Disables the Source trigger. The device does not wait for a source trigger before performing a source operation. Refer to the <a href="javascript:LaunchHelp('NI_DC_Power_Supplies_Help.chm::/Singlept.html')">Single Point Source Mode</a> and <a href="javascript:LaunchHelp('NI_DC_Power_Supplies_Help.chm::/Sequencing.html')">Sequence Source Mode</a> topics for more information about the Source trigger.
      </p>


<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&nbsp;&nbsp;This function is not supported on all devices. Refer to <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'supportedFunctions.html')">Supported Functions by Device</a> for more information about supported devices.</td>
</tr>
</table>

</body>
</html>    2�-   �  �    Instrument Handle                  ]#����  �    Status                                 	          �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_ConfigureDigitalEdgeMeasureTrigger</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_ConfigureDigitalEdgeMeasureTrigger</h1>


 <p class="Syntax">ViStatus niDCPower_ConfigureDigitalEdgeMeasureTrigger(ViSession vi,
      ViConstString inputTerminal,
      ViInt32 edge);</p>

 <h2 class="purpose">Purpose</h2>
<p class="Body">Configures the Measure trigger for digital edge triggering.</p>

<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&nbsp;&nbsp;This function is not supported on all devices. Refer to <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'supportedFunctions.html')">Supported Functions by Device</a> for more information about supported devices.</td>
</tr>
</table>

</body>
</html>    �    <html>
<head>
<script src="launchhelp.js"></script>
<title>niDCPower_ConfigureDigitalEdgeMeasureTrigger</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">inputTerminal</td>
<td class="paramDataType">ViConstString</td>
<td>Specifies the input terminal for the digital edge Measure trigger.

<p class="Body">You can specify any valid input terminal for this function. Valid terminals are listed in MAX under the <strong>Device Routes</strong> tab. For PXIe-4162/4163, refer to the Signal Routing topic for the device to determine which routes are available. This information is not available on a Device Routes tab in MAX. 
</p>

<p class="Body">Input terminals can be specified in one of two ways. If the device is named Dev1 and your terminal is PXI_Trig0, you can specify the terminal with the fully qualified terminal name, <span class="Monospace">/Dev1/PXI_Trig0</span>, or with the shortened terminal name, <span class="Monospace">PXI_Trig0</span>. The input terminal can also be a terminal from another device. For example, you can set the input terminal on Dev1 to be <span class="Monospace">/Dev2/SourceCompleteEvent</span>.</p>
</td>
 </tr></table></body>
</html>    a    <html>
<head>
<script src="launchhelp.js"></script>
<title>niDCPower_ConfigureDigitalEdgeMeasureTrigger</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">edge</td>
<td class="paramDataType">ViInt32</td>
<td>Specifies whether to configure the Measure trigger to assert on the rising or falling edge.<BR>

<strong>Defined Values:</strong><BR>
<table class="Bordered">
<tr><td class="Bordered"><span class="Monospace">NIDCPOWER_VAL_RISING (1016)</span></td><td class="Bordered">Asserts the trigger on the rising edge of the digital signal.</td></tr> 
<tr><td class="Bordered"><span class="Monospace">NIDCPOWER_VAL_FALLING (1017)</span></td><td class="Bordered">Asserts the trigger on the falling edge of the digital signal.</td></tr>
</table>


</td>
 </tr></table></body>
</html>    2�-   �  �    Instrument Handle                  ]#����  �    Status                           �f >  �  �    Input Terminal                   �Y > � � �    Edge                                   	           ""               :Rising NIDCPOWER_VAL_RISING Falling NIDCPOWER_VAL_FALLING   �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_ConfigureSoftwareEdgeMeasureTrigger</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_ConfigureSoftwareEdgeMeasureTrigger</h1>


 <p class="Syntax">ViStatus niDCPower_ConfigureSoftwareEdgeMeasureTrigger(ViSession vi);</p>

 <h2 class="purpose">Purpose</h2>

<p class="Body">Configures the Measure trigger for software triggering. Use the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_SendSoftwareEdgeTrigger.html')"><span class="Monospace">niDCPower_SendSoftwareEdgeTrigger</span></a>
function to assert the trigger condition.</p>

<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&nbsp;&nbsp;This function is not supported on all devices. Refer to <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'supportedFunctions.html')">Supported Functions by Device</a> for more information about supported devices.</td>
</tr>
</table>

</body>
</html>    2�-   �  �    Instrument Handle                  ]#����  �    Status                                 	          �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_ConfigureDigitalEdgeSequenceAdvanceTrigger</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_ConfigureDigitalEdgeSequenceAdvanceTrigger</h1>

 <p class="Syntax">ViStatus niDCPower_ConfigureDigitalEdgeSequenceAdvanceTrigger(ViSession vi,
      ViConstString inputTerminal,
      ViInt32 edge);</p>

 <h2 class="purpose">Purpose</h2>

<p class="Body">Configures the Sequence Advance trigger for digital edge triggering.</p>

<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&nbsp;&nbsp;This function is not supported on all devices. Refer to <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'supportedFunctions.html')">Supported Functions by Device</a> for more information about supported devices.</td>
</tr>
</table>


</body>
</html>    �    <html>
<head>
<script src="launchhelp.js"></script>
<title>niDCPower_ConfigureDigitalEdgeSequenceAdvanceTrigger</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">inputTerminal</td>
<td class="paramDataType">ViConstString</td>
<td>Specifies the input terminal for the digital edge Sequence Advance trigger.

<p class="Body">You can specify any valid input terminal for this function. Valid terminals are listed in MAX under the <strong>Device Routes</strong> tab. For PXIe-4162/4163, refer to the Signal Routing topic for the device to determine which routes are available. This information is not available on a Device Routes tab in MAX. 
</p>

<p class="Body">Input terminals can be specified in one of two ways. If the device is named Dev1 and your terminal is PXI_Trig0, you can specify the terminal with the fully qualified terminal name, <span class="Monospace">/Dev1/PXI_Trig0</span>, or with the shortened terminal name, <span class="Monospace">PXI_Trig0</span>. The input terminal can also be a terminal from another device. For example, you can set the input terminal on Dev1 to be <span class="Monospace">/Dev2/SourceCompleteEvent</span>.</p>
</td>
 </tr></table></body>
</html>    v    <html>
<head>
<script src="launchhelp.js"></script>
<title>niDCPower_ConfigureDigitalEdgeSequenceAdvanceTrigger</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">edge</td>
<td class="paramDataType">ViInt32</td>
<td>Specifies whether to configure the Sequence Advance trigger to assert on the rising or falling edge.<BR><BR>

<strong>Defined Values:</strong><BR>
<table class="Bordered">
<tr><td class="Bordered"><span class="Monospace">NIDCPOWER_VAL_RISING (1016)</span></td><td class="Bordered">Asserts the trigger on the rising edge of the digital signal.</td></tr> 
<tr><td class="Bordered"><span class="Monospace">NIDCPOWER_VAL_FALLING (1017)</span></td><td class="Bordered">Asserts the trigger on the falling edge of the digital signal.</td></tr>
</table>


</td>
 </tr></table></body>
</html>    2�-   �  �    Instrument Handle                  ]#����  �    Status                           �� >  �  �    Input Terminal                    � > � � �    Edge                                   	           ""               :Rising NIDCPOWER_VAL_RISING Falling NIDCPOWER_VAL_FALLING   �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_ConfigureSoftwareEdgeSequenceAdvanceTrigger</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>
<body>
<h1 class="function">niDCPower_ConfigureSoftwareEdgeSequenceAdvanceTrigger</h1>


 <p class="Syntax">ViStatus niDCPower_ConfigureSoftwareEdgeSequenceAdvanceTrigger(ViSession vi);  </p>

 <h2 class="purpose">Purpose</h2>

<p class="Body">Configures the Sequence Advance trigger for software triggering. Use the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_SendSoftwareEdgeTrigger.html')"><span class="Monospace">niDCPower_SendSoftwareEdgeTrigger</span></a>
function to assert the trigger condition.</p>

<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&nbsp;&nbsp;This function is not supported on all devices. Refer to <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'supportedFunctions.html')">Supported Functions by Device</a> for more information about supported devices.</td>
</tr>
</table>

</body>
</html>    2�-   �  �    Instrument Handle                  ]#����  �    Status                                 	          �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_DisableSequenceAdvanceTrigger</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_DisableSequenceAdvanceTrigger</h1>


 <p class="Syntax"> ViStatus niDCPower_DisableSequenceAdvanceTrigger(ViSession vi);</p>

 <h2 class="purpose">Purpose</h2>

<p class="Body">Disables the Sequence Advance trigger. The device does not wait for a Sequence Advance trigger before advancing to the next iteration of the sequence. Refer to the <a href="javascript:LaunchHelp('NI_DC_Power_Supplies_Help.chm::/Sequencing.html')">Sequence Source Mode</a> topic for more information about the Sequence Advance trigger.</p>

<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&nbsp;&nbsp;This function is not supported on all devices. Refer to <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'supportedFunctions.html')">Supported Functions by Device</a> for more information about supported devices.</td>
</tr>
</table>

</body>
</html>    2�-   �  �    Instrument Handle                  ]#����  �    Status                                 	          �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_ConfigureDigitalEdgePulseTrigger</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_ConfigureDigitalEdgePulseTrigger</h1>


 <p class="Syntax">ViStatus niDCPower_ConfigureDigitalEdgePulseTrigger(ViSession vi,
      ViConstString inputTerminal,
      ViInt32 edge);</p>

 <h2 class="purpose">Purpose</h2>


<p class="Body">Configures the Pulse trigger for digital edge triggering.</p>

<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&nbsp;&nbsp;This function is not supported on all devices. Refer to <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'supportedFunctions.html')">Supported Functions by Device</a> for more information about supported devices.</td>
</tr>
</table>

</body>
</html>    7    <html>
<head>
<script src="launchhelp.js"></script>
<title>niDCPower_ConfigureDigitalEdgeStartTrigger</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">inputTerminal</td>
<td class="paramDataType">ViConstString</td>
<td>Specifies the input terminal for the digital edge Pulse trigger.

<p class="Body">You can specify any valid input terminal for this function. Valid terminals are listed in MAX under the <strong>Device Routes</strong> tab.
</p>

<p class="Body">Input terminals can be specified in one of two ways. If the device is named Dev1 and your terminal is PXI_Trig0, you can specify the terminal with the fully qualified terminal name, <span class="Monospace">/Dev1/PXI_Trig0</span>, or with the shortened terminal name, <span class="Monospace">PXI_Trig0</span>. The input terminal can also be a terminal from another device. For example, you can set the input terminal on Dev1 to be <span class="Monospace">/Dev2/SourceCompleteEvent</span>.</p>
</td>
 </tr></table></body>
</html>    f    <html>
<head>
<script src="launchhelp.js"></script>
<title>niDCPower_ConfigureDigitalEdgeStartTrigger</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">edge</td>
<td class="paramDataType">ViInt32</td>
<td>Specifies whether to configure the Pulse trigger to assert on the rising or falling edge. 

 
<BR><BR>

<strong>Defined Values:</strong><BR>
<table class="Bordered">
<tr><td class="Bordered"><span class="Monospace">NIDCPOWER_VAL_RISING (1016)</span></td><td class="Bordered">Asserts the trigger on the rising edge of the digital signal.</td></tr> 
<tr><td class="Bordered"><span class="Monospace">NIDCPOWER_VAL_FALLING (1017)</span></td><td class="Bordered">Asserts the trigger on the falling edge of the digital signal.</td></tr>
</table>


</td>
 </tr></table></body>
</html>    2�-   �  �    Instrument Handle                  ]#����  �    Status                           � >  �  �    Input Terminal                   � > � � �    Edge                                   	           ""               :Rising NIDCPOWER_VAL_RISING Falling NIDCPOWER_VAL_FALLING   �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_ConfigureSoftwareEdgePulseTrigger</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_ConfigureSoftwareEdgePulseTrigger</h1>


 <p class="Syntax">ViStatus niDCPower_ConfigureSoftwareEdgePulseTrigger(ViSession vi);</p>

 <h2 class="purpose">Purpose</h2>

<p class="Body">Configures the Pulse trigger for software triggering. Use the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_SendSoftwareEdgeTrigger.html')"><span class="Monospace">niDCPower_SendSoftwareEdgeTrigger</span></a>  function to assert the trigger condition.</p>

<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&nbsp;&nbsp;This function is not supported on all devices. Refer to <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'supportedFunctions.html')">Supported Functions by Device</a> for more information about supported devices.</td>
</tr>
</table>

</body>
</html>    2�-   �  �    Instrument Handle                  ]#����  �    Status                                 	              <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_DisablePulseTrigger</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_DisablePulseTrigger</h1>


 <p class="Syntax">ViStatus niDCPower_DisablePulseTrigger(ViSession vi);</p>

 <h2 class="purpose">Purpose</h2>

<p>Disables the Pulse trigger. The device does not wait for a pulse trigger before performing a pulse operation. Refer to <a href="javascript:LaunchHelp('NI_DC_Power_Supplies_Help.chm::/PulseMode.html')">Pulse Mode</a> and <a href="javascript:LaunchHelp('NI_DC_Power_Supplies_Help.chm::/Sequencing.html')">Sequence Source Mode</a> for more information about the Pulse trigger.
      </p>
<p>This function is necessary only if you configured a Pulse trigger in the past and now want to disable it. </p>

<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&nbsp;&nbsp;This function is not supported on all devices. Refer to <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'supportedFunctions.html')">Supported Functions by Device</a> for more information about supported devices.</td>
</tr>
</table>

</body>
</html>    2�-   �  �    Instrument Handle                  ]#����  �    Status                                 	          f    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_ExportSignal</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_ExportSignal</h1>


 <p class="Syntax">ViStatus niDCPower_ExportSignal(ViSession vi,
      ViInt32 signal,
      ViConstString signalIdentifier,
      ViConstString outputTerminal);</p>

 <h2 class="purpose">Purpose</h2>


<p class="Body">Routes signals (triggers and events) to the output terminal you specify. The route is created when the session is <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_Commit.html')">committed</a>.</p>


<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&nbsp;&nbsp;This function is not supported on all devices. Refer to <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'supportedFunctions.html')">Supported Functions by Device</a> for more information about supported devices.</td>
</tr>
</table>


<!--Related topics section added by link generator tool-->
<!--12/12/2013 9:52 AM-->
<p class="Body"><strong>Related Topics:</strong></p>
<p class="Body"><a href="javascript:LaunchHelp('NI_DC_Power_Supplies_Help.chm::/Trigger.html')">Triggers</a></p>
</body>

</html>    	�    <html>
<head>
<script src="launchhelp.js"></script>
<title>niDCPower_ExportSignal</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
 <td class="paramName">signal</td>
<td class="paramDataType">ViInt32</td>
<td class="Borderless">Specifies which trigger or event to export.<BR><BR>

<strong>Defined Values:</strong><BR>
<table class="Bordered">
<tr>
<td class="Bordered">
<span class="Monospace">NIDCPOWER_VAL_SOURCE_COMPLETE_EVENT                (1030)</span></td>
<td class="Bordered">Exports the Source Complete event.
</td>
</tr>
<tr>
<td class="Bordered"><span class="Monospace">NIDCPOWER_VAL_MEASURE_COMPLETE_EVENT               (1031)</span></td>
<td class="Bordered">Exports the Measure Complete event.
</td>
</tr>
<tr>
<td class="Bordered"><span class="Monospace">NIDCPOWER_VAL_SEQUENCE_ITERATION_COMPLETE_EVENT (1032)</span></td>
<td class="Bordered">Exports the Sequence Iteration Complete event.
</td>
</tr>


<tr>
<td class="Bordered"><span class="Monospace">NIDCPOWER_VAL_SEQUENCE_ENGINE_DONE_EVENT           (1033)</span></td>
<td class="Bordered">Exports the Sequence Engine Done event.
</td>
</tr>



<tr>
<td class="Bordered"><span class="Monospace">NIDCPOWER_VAL_PULSE_COMPLETE_EVENT       (1051)</span></td>
<td class="Bordered">Exports the Pulse Complete event. 
</td>
</tr>



<tr>
<td class="Bordered"><span class="Monospace">NIDCPOWER_VAL_READY_FOR_PULSE_TRIGGER_EVENT       (1052)</span> </td>
<td class="Bordered">Exports the Ready Pulse Trigger event.
</td>
</tr>



<tr>
<td class="Bordered"><span class="Monospace">NIDCPOWER_VAL_START_TRIGGER                       (1034)</span></td>
<td class="Bordered">Exports the Start trigger.
</td>
</tr>
<tr>
<td class="Bordered"><span class="Monospace">NIDCPOWER_VAL_SOURCE_TRIGGER                      (1035)</span></td>
<td class="Bordered">Exports the Source trigger.
</td>
</tr>
<tr>
<td class="Bordered"><span class="Monospace">NIDCPOWER_VAL_MEASURE_TRIGGER                      (1036)</span></td>
<td class="Bordered">Exports the Measure trigger.
</td>
</tr>
<tr>
<td class="Bordered"><span class="Monospace">NIDCPOWER_VAL_SEQUENCE_ADVANCE_TRIGGER            (1037)</span></td>
<td class="Bordered">Exports the Sequence Advance trigger.
</td>
</tr>

<tr>
<td class="Bordered"><span class="Monospace">NIDCPOWER_VAL_PULSE_TRIGGER (1053)</span></td>
<td class="Bordered">Exports the Pulse trigger.</td>
</tr>

</table>


</td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js"></script>
<title>niDCPower_ExportSignal</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">signalIdentifier</td>
<td class="paramDataType">ViConstString</td>
<td>Reserved for future use. Pass in an empty string for this parameter.
</td>
 </tr></table></body>
</html>    �    <html>
<head>
<script src="launchhelp.js"></script>
<title>niDCPower_ExportSignal</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">outputTerminal</td>
<td class="paramDataType">ViConstString </td>
<td>Specifies where to export the selected signal. <BR><BR>
<strong>Relative Terminals</strong>:<BR>
<table class="bordered">
            <tr>
               <td class="bordered">&quot;&quot;</td>
               <td class="bordered">Do not export signal</td>
            </tr>
                        <tr>
               <td class="bordered">&quot;PXI_Trig0&quot;</td>
               <td class="bordered">PXI trigger line 0</td>
            </tr>
                        <tr>
               <td class="bordered">&quot;PXI_Trig1&quot;</td>
               <td class="bordered">PXI trigger line 1</td>
            </tr>
                        <tr>
               <td class="bordered">&quot;PXI_Trig2&quot;</td>
               <td class="bordered">PXI trigger line 2</td>
            </tr>
                        <tr>
               <td class="bordered">&quot;PXI_Trig3&quot;</td>
               <td class="bordered">PXI trigger line 3</td>
            </tr>
                        <tr>
               <td class="bordered">&quot;PXI_Trig4&quot;</td>
               <td class="bordered">PXI trigger line 4</td>
            </tr>
                        <tr>
               <td class="bordered">&quot;PXI_Trig5&quot;</td>
               <td class="bordered">PXI trigger line 5</td>
            </tr>
                        <tr>
               <td class="bordered">&quot;PXI_Trig6&quot;</td>
               <td class="bordered">PXI trigger line 6</td>
            </tr>
                        <tr>
               <td class="bordered">&quot;PXI_Trig7&quot;</td>
               <td class="bordered">PXI trigger line 7</td>
            </tr>
         </table>

</td>
 </tr></table></body>
</html>    2�-   �  �    Instrument Handle                  ]#����  �    Status                           ,� .  � �    Signal                           6J > � �  �    Signal Identifier                7� >j � �    Output Terminal                        	                     }Source Complete Event NIDCPOWER_VAL_SOURCE_COMPLETE_EVENT Measure Complete Event NIDCPOWER_VAL_MEASURE_COMPLETE_EVENT Sequence Iteration Complete Event NIDCPOWER_VAL_SEQUENCE_ITERATION_COMPLETE_EVENT Sequence Engine Done Event NIDCPOWER_VAL_SEQUENCE_ENGINE_DONE_EVENT Pulse Complete Event NIDCPOWER_VAL_PULSE_COMPLETE_EVENT Ready For  Pulse Trigger Event NIDCPOWER_VAL_READY_FOR_PULSE_TRIGGER_EVENT Start Trigger NIDCPOWER_VAL_START_TRIGGER Source Trigger NIDCPOWER_VAL_SOURCE_TRIGGER Measure Trigger NIDCPOWER_VAL_MEASURE_TRIGGER Sequence Advance Trigger NIDCPOWER_VAL_SEQUENCE_ADVANCE_TRIGGER Pulse Trigger NIDCPOWER_VAL_PULSE_TRIGGER    ""            	   �Do Not Export "" PXI_Trig0 "PXI_Trig0" PXI_Trig1 "PXI_Trig1" PXI_Trig2 "PXI_Trig2" PXI_Trig3 "PXI_Trig3" PXI_Trig4 "PXI_Trig4" PXI_Trig5 "PXI_Trig5" PXI_Trig6 "PXI_Trig6" PXI_Trig7 "PXI_Trig7"   �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_SendSoftwareEdgeTrigger</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_SendSoftwareEdgeTrigger</h1>


 <p class="Syntax">ViStatus niDCPower_SendSoftwareEdgeTrigger(ViSession vi,
      ViInt32 trigger);</p>

 <h2 class="purpose">Purpose</h2>

<p class="Body">Asserts the specified trigger. This function can override an external edge trigger.</p>
   
<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&nbsp;&nbsp;This function is not supported on all devices. Refer to <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'supportedFunctions.html')">Supported Functions by Device</a> for more information about supported devices.</td>
</tr>
</table>



<!--Related topics section added by link generator tool-->
<!--12/12/2013 9:52 AM-->
<p class="Body"><strong>Related Topics:</strong></p>
<p class="Body"><a href="javascript:LaunchHelp('NI_DC_Power_Supplies_Help.chm::/Trigger.html')">Triggers</a></p>
</body>

</html>    :    <html>
<head>
<script src="launchhelp.js"></script>
<title>niDCPower_SendSoftwareEdgeTrigger</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">trigger</td>
<td class="paramDataType">ViInt32</td>
<td>Specifies which trigger to assert.<BR><BR>

<strong>Defined Values:</strong><BR>
<table class="Bordered">
<tr>
<td class="Bordered"><span class="Monospace">NIDCPOWER_VAL_START_TRIGGER                       (1034)</span></td>
<td class="Bordered">Asserts the Start trigger.
</td>
</tr>
<tr>
<td class="Bordered"><span class="Monospace">NIDCPOWER_VAL_SOURCE_TRIGGER                      (1035)</span></td>
<td class="Bordered">Asserts the Source trigger.
</td>
</tr>
<tr>
<td class="Bordered"><span class="Monospace">NIDCPOWER_VAL_MEASURE_TRIGGER                      (1036)</span></td>
<td class="Bordered">Asserts the Measure trigger.
</td>
</tr>
<tr>
<td class="Bordered"><span class="Monospace">NIDCPOWER_VAL_SEQUENCE_ADVANCE_TRIGGER            (1037)</span></td>
<td class="Bordered">Asserts the Sequence Advance trigger.
</td>
</tr>
<tr>
<td class="Bordered"><span class="Monospace">NIDCPOWER_VAL_PULSE_TRIGGER            (1053 </span></td>
<td class="Bordered">Asserts the Pulse trigger.
</td>
</tr>
</table>


</td>
 </tr></table></body>
</html>    2�-   �  �    Instrument Handle                  ]#����  �    Status                           H� 1  � �    Trigger                                	                      �Start Trigger NIDCPOWER_VAL_START_TRIGGER Source Trigger NIDCPOWER_VAL_SOURCE_TRIGGER Measure Trigger NIDCPOWER_VAL_MEASURE_TRIGGER Sequence Advance Trigger NIDCPOWER_VAL_SEQUENCE_ADVANCE_TRIGGER Pulse Trigger NIDCPOWER_VAL_PULSE_TRIGGER   �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_WaitForEvent</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_WaitForEvent</h1>


 <p class="Syntax">ViStatus niDCPower_WaitForEvent(ViSession vi,
      ViInt32 eventId,
      ViReal64 timeout);</p>

 <h2 class="purpose">Purpose</h2>



<p class="Body">Waits until the device has generated the specified event.</p>

<p class="body">The session monitors whether each type of event has occurred at least once since the last time this function or the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_Initiate.html')"><span class="monospace">niDCPower_Initiate</span></a> function were called. If an event has only been generated once and you call this function successively, the function times out. Individual events must be generated between separate calls of this function.</p>

<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&nbsp;&nbsp;This function should only be called in the Running state. Refer to the <a href="javascript:LaunchHelp('NI_DC_Power_Supplies_Help.chm::/programmingStates.html')">Programming States Diagram</a> for more information.</td>
</tr>
</table>

<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&nbsp;&nbsp;Refer to <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'supportedFunctions.html')">Supported Functions by Device</a> for more information about supported devices.</td>
</tr>
</table>

</body>
</html>    9    <html>
<head>
<script src="launchhelp.js"></script>
<title>niDCPower_WaitForEvent</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">eventId</td>
<td class="paramDataType">ViInt32</td>
<td>Specifies which event to wait for.<BR><BR>


<strong>Defined Values:</strong><BR>
<table class="Bordered">
<tr>
<td class="Bordered">
<span class="Monospace">NIDCPOWER_VAL_SOURCE_COMPLETE_EVENT                (1030)</span></td>
<td class="Bordered">Waits for the Source Complete event.
</td>
</tr>
<tr>
<td class="Bordered"><span class="Monospace">NIDCPOWER_VAL_MEASURE_COMPLETE_EVENT               (1031)</span></td>
<td class="Bordered">Waits for the Measure Complete event.
</td>
</tr>
<tr>
<td class="Bordered"><span class="Monospace">NIDCPOWER_VAL_SEQUENCE_ITERATION_COMPLETE_EVENT (1032)</span></td>
<td class="Bordered">Waits for the Sequence Iteration Complete event.
</td>
</tr>
<tr>
<td class="Bordered"><span class="Monospace">NIDCPOWER_VAL_SEQUENCE_ENGINE_DONE_EVENT           (1033)</span></td>
<td class="Bordered">Waits for the Sequence Engine Done event.
</td>
</tr>

<tr>
<td class="Bordered"><span class="Monospace">NIDCPOWER_VAL_PULSE_COMPLETE_EVENT           (1051 )</span></td>
<td class="Bordered">Waits for the Pulse Complete event.
</td>
</tr>

<tr>
<td class="Bordered"><span class="Monospace">NIDCPOWER_VAL_READY_FOR_PULSE_TRIGGER_EVENT           (1052)</span></td>
<td class="Bordered">Waits for the Ready for Pulse Trigger event.
</td>
</tr>

</table>


</td>
 </tr></table></body>
</html>    	    <html>
<head>
<script src="launchhelp.js"></script>
<title>niDCPower_WaitForEvent</title>
 <link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body><table class="borderless"><tr>
<td class="paramName">timeout</td>
<td class="paramDataType">ViReal64</td>
<td>Specifies the maximum time allowed for this function to complete, in seconds. If the function does not complete within this time interval, NI-DCPower returns an error.<BR><BR>

<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&nbsp;&nbsp;When setting the timeout interval, ensure you take into account any triggers so that the timeout interval is long enough for your application.</td>
</tr>
</table>
</td>
 </tr></table></body>
</html>

    2�-   �  �    Instrument Handle                  ]#����  �    Status                           Vh >  � �    Event ID                         \� > � �  �    Timeout                                	                     �Source Complete Event NIDCPOWER_VAL_SOURCE_COMPLETE_EVENT Measure Complete Event NIDCPOWER_VAL_MEASURE_COMPLETE_EVENT Sequence Iteration Complete Event NIDCPOWER_VAL_SEQUENCE_ITERATION_COMPLETE_EVENT Sequence Engine Done Event NIDCPOWER_VAL_SEQUENCE_ENGINE_DONE_EVENT Pulse Complete Event NIDCPOWER_VAL_PULSE_COMPLETE_EVENT Ready For Pulse Trigger Event NIDCPOWER_VAL_READY_FOR_PULSE_TRIGGER_EVENT    0.0   �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_SetAttributeViInt32</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_SetAttributeViInt32</h1>


 <p class="Syntax">ViStatus niDCPower_SetAttributeViInt32(ViSession vi,
      ViConstString channelName,
      ViAttr attribute,
      ViInt32 value);</p>

 <h2 class="purpose">Purpose</h2>

<p class="Body">Sets the value of a ViInt32 attribute.<br><br>This is a low-level function that you can use to set the values of device-specific attributes and inherent IVI attributes. </p>

</body>
</html>
    �    <html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_SetAttributeViInt32</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">value</td>
<td class="paramDataType">ViInt32</td>
<td class="Borderless">Specifies the value to which you want to set the attribute. If the attribute currently showing in the attribute ring control has constants as valid values, you can view a list of the constants by pressing <strong>Enter</strong> on this control. Select a value by double-clicking on it or by selecting it and then pressing <strong>Enter</strong>.
<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif"></td>
<td>
<strong>Note</strong>&#160;&#160;Some of the values might not be valid depending upon the current settings of the device session.</td></tr></table>
</td>
</tr></table></table></body>
</html>
    �    <html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_SetAttributeViInt32</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">attribute</td>
<td class="paramDataType">ViAttr</td>
<td class="Borderless">Specifies the ID of an attribute. From the function panel window, you can use this control as follows.
<ul>
<li>In the function panel window, click on the control or press <strong>Enter</strong> or the spacebar to display a dialog box containing hierarchical list of the available attributes. Attributes whose value cannot be set are dim. Help text is shown for each attribute. Select an attribute by double-clicking on it or by selecting it and then pressing <strong>Enter</strong>.</li>
<li>Read-only attributes appear dim in the list box. If you select a read-only attribute, an error message appears. A ring control at the top of the dialog box allows you to see all IVI attributes or only the attributes of type ViInt32. If you choose to see all IVI attributes, the data types appear to the right of the attribute names in the list box. Attributes with data types other than ViInt32 are dim. If you select an attribute data type that is dim, LabWindows/CVI transfers you to the function panel for the corresponding function that is consistent with the data type.</li>
<li>If you want to enter a variable name, press <strong>Ctrl</strong>+<strong>T</strong> to change this ring control to a manual input box. If the attribute in this ring control has named constants as valid values, you can view the constants by moving to the value control and pressing <strong>Enter</strong>.</li>
</ul>
</td>
</tr></table></table></body>
</html>
    2�-   �  �    Instrument Handle                  ]#����  �    Status                           d� � � �  �    Attribute Value                 ���� � ���                                          h� = � � �    Attribute ID                      =� =  �  �    Channel Name                           	               .Press <ENTER> for a list of 
value constants.                0    ""   �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_SetAttributeViReal64</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_SetAttributeViReal64</h1>


 <p class="Syntax">ViStatus niDCPower_SetAttributeViReal64(ViSession vi,
      ViConstString channelName,
      ViAttr attribute,
      ViReal64 value);</p>

 <h2 class="purpose">Purpose</h2>

<p class="Body">Sets the value of a ViReal64 attribute.<br><br>This is a low-level function that you can use to set the values of device-specific attributes and inherent IVI attributes.</p>

</body>
</html>
    �    <html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_SetAttributeViReal64</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">value</td>
<td class="paramDataType">ViReal64</td>
<td class="Borderless">Specifies the value to which you want to set the attribute. If the attribute currently showing in the attribute ring control has constants as valid values, you can view a list of the constants by pressing <strong>Enter</strong> on this control. Select a value by double-clicking on it or by selecting it and then pressing <strong>Enter</strong>.
<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif"></td>
<td>
<strong>Note</strong>&#160;&#160;Some of the values might not be valid depending upon the current settings of the device session.</td></tr></table>
</td>
</tr></table></table></body>
</html>
    �    <html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_SetAttributeViReal64</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">attribute</td>
<td class="paramDataType">ViAttr</td>
<td class="Borderless">Specifies the ID of an attribute. From the function panel window, you can use this control as follows.
<ul>
<li>In the function panel window, click on the control or press <strong>Enter</strong> or the spacebar to display a dialog box containing hierarchical list of the available attributes. Attributes whose value cannot be set are dim. Help text is shown for each attribute. Select an attribute by double-clicking on it or by selecting it and then pressing <strong>Enter</strong>.</li>
<li>Read-only attributes appear dim in the list box. If you select a read-only attribute, an error message appears. A ring control at the top of the dialog box allows you to see all IVI attributes or only the attributes of type ViReal64. If you choose to see all IVI attributes, the data types appear to the right of the attribute names in the list box. Attributes with data types other than ViReal64 are dim. If you select an attribute data type that is dim, LabWindows/CVI transfers you to the function panel for the corresponding function that is consistent with the data type.</li>
<li>If you want to enter a variable name, press <strong>Ctrl</strong>+<strong>T</strong> to change this ring control to a manual input box. If the attribute in this ring control has named constants as valid values, you can view the constants by moving to the value control and pressing <strong>Enter</strong>.</li>
</ul>
</td>
</tr></table></table></body>
</html>
    2�-   �  �    Instrument Handle                  ]#����  �    Status                           s� � � �  �    Attribute Value                 ���� � ���                                          wZ = � � �    Attribute ID                      =� =  �  �    Channel Name                           	               .Press <ENTER> for a list of 
value constants.                0    ""   �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_SetAttributeViInt64</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_SetAttributeViInt64</h1>


 <p class="Syntax">ViStatus niDCPower_SetAttributeViInt64(ViSession vi,
      ViConstString channelName,
      ViAttr attribute,
      ViInt64 value);</p>

 <h2 class="purpose">Purpose</h2>

<p class="Body">Sets the value of a ViInt64 attribute.<br><br>This is a low-level function that you can use to set the values of device-specific attributes and inherent IVI attributes.</p>

</body>
</html>
    �    <html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_SetAttributeViReal64</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">value</td>
<td class="paramDataType">ViReal64</td>
<td class="Borderless">Specifies the value to which you want to set the attribute. If the attribute currently showing in the attribute ring control has constants as valid values, you can view a list of the constants by pressing <strong>Enter</strong> on this control. Select a value by double-clicking on it or by selecting it and then pressing <strong>Enter</strong>.
<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif"></td>
<td>
<strong>Note</strong>&#160;&#160;Some of the values might not be valid depending upon the current settings of the device session.</td></tr></table>
</td>
</tr></table></table></body>
</html>
    �    <html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_SetAttributeViReal64</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">attribute</td>
<td class="paramDataType">ViAttr</td>
<td class="Borderless">Specifies the ID of an attribute. From the function panel window, you can use this control as follows.
<ul>
<li>In the function panel window, click on the control or press <strong>Enter</strong> or the spacebar to display a dialog box containing hierarchical list of the available attributes. Attributes whose value cannot be set are dim. Help text is shown for each attribute. Select an attribute by double-clicking on it or by selecting it and then pressing <strong>Enter</strong>.</li>
<li>Read-only attributes appear dim in the list box. If you select a read-only attribute, an error message appears. A ring control at the top of the dialog box allows you to see all IVI attributes or only the attributes of type ViReal64. If you choose to see all IVI attributes, the data types appear to the right of the attribute names in the list box. Attributes with data types other than ViReal64 are dim. If you select an attribute data type that is dim, LabWindows/CVI transfers you to the function panel for the corresponding function that is consistent with the data type.</li>
<li>If you want to enter a variable name, press <strong>Ctrl</strong>+<strong>T</strong> to change this ring control to a manual input box. If the attribute in this ring control has named constants as valid values, you can view the constants by moving to the value control and pressing <strong>Enter</strong>.</li>
</ul>
</td>
</tr></table></table></body>
</html>
    2�-   �  �    Instrument Handle                  ]#����  �    Status                           �u � � �  �    Attribute Value                 ���� � ���                                          �) = � � �    Attribute ID                      =� =  �  �    Channel Name                           	               .Press <ENTER> for a list of 
value constants.                0    ""   �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_SetAttributeViString</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_SetAttributeViString</h1>

 <p class="Syntax">ViStatus niDCPower_SetAttributeViString(ViSession vi,
      ViConstString channelName,
      ViAttr attribute,
      ViConstString value);</p>

 <h2 class="purpose">Purpose</h2>

<p class="Body">Sets the value of a ViString attribute.<br><br>This is a low-level function that you can use to set the values of device-specific attributes and inherent IVI attributes.</p>
</body>
</html>
    �    <html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_SetAttributeViString</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">value</td>
<td class="paramDataType">ViConstString</td>
<td class="Borderless">Specifies the value to which you want to set the attribute. If the attribute currently showing in the attribute ring control has constants as valid values, you can view a list of the constants by pressing <strong>Enter</strong> on this control. Select a value by double-clicking on it or by selecting it and then pressing <strong>Enter</strong>.
<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif"></td>
<td>
<strong>Note</strong>&#160;&#160;Some of the values might not be valid depending upon the current settings of the device session.</td></tr></table>
</td>
</tr></table></table></body>
</html>
    �    <html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_SetAttributeViString</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">attribute</td>
<td class="paramDataType">ViAttr</td>
<td class="Borderless">Specifies the ID of an attribute. From the function panel window, you can use this control as follows.
<ul>
<li>In the function panel window, click on the control or press <strong>Enter</strong> or the spacebar to display a dialog box containing hierarchical list of the available attributes. Attributes whose value cannot be set are dim. Help text is shown for each attribute. Select an attribute by double-clicking on it or by selecting it and then pressing <strong>Enter</strong>.</li>
<li>Read-only attributes appear dim in the list box. If you select a read-only attribute, an error message appears. A ring control at the top of the dialog box allows you to see all IVI attributes or only the attributes of type ViString. If you choose to see all IVI attributes, the data types appear to the right of the attribute names in the list box. Attributes with data types other than ViString are dim. If you select an attribute data type that is dim, LabWindows/CVI transfers you to the function panel for the corresponding function that is consistent with the data type.</li>
<li>If you want to enter a variable name, press <strong>Ctrl</strong>+<strong>T</strong> to change this ring control to a manual input box. If the attribute in this ring control has named constants as valid values, you can view the constants by moving to the value control and pressing <strong>Enter</strong>.</li>
</ul>
</td>
</tr></table></table></body>
</html>
    2�-   �  �    Instrument Handle                  ]#����  �    Status                           �L � � �  �    Attribute Value                 ���� � ���                                          � = � � �    Attribute ID                      =� =  �  �    Channel Name                           	               .Press <ENTER> for a list of 
value constants.                0    ""   �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_SetAttributeViBoolean</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_SetAttributeViBoolean</h1>


 <p class="Syntax">ViStatus niDCPower_SetAttributeViBoolean(ViSession vi,
      ViConstString channelName,
      ViAttr attribute,
      ViBoolean value);</p>

 <h2 class="purpose">Purpose</h2>

<p class="Body">Sets the value of a ViBoolean attribute.<br><br>This is a low-level function that you can use to set the values of device-specific attributes and inherent IVI attributes.</p>
</body>
</html>
    �    <html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_SetAttributeViBoolean</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">value</td>
<td class="paramDataType">ViBoolean</td>
<td class="Borderless">Specifies the value to which you want to set the attribute. If the attribute currently showing in the attribute ring control has constants as valid values, you can view a list of the constants by pressing <strong>Enter</strong> on this control. Select a value by double-clicking on it or by selecting it and then pressing <strong>Enter</strong>.
<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif"></td>
<td>
<strong>Note</strong>&#160;&#160;Some of the values might not be valid depending upon the current settings of the device session.</td></tr></table>
</td>
</tr></table></table></body>
</html>
    �    <html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_SetAttributeViBoolean</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">attribute</td>
<td class="paramDataType">ViAttr</td>
<td class="Borderless">Specifies the ID of an attribute. From the function panel window, you can use this control as follows.
<ul>
<li>In the function panel window, click on the control or press <strong>Enter</strong> or the spacebar to display a dialog box containing hierarchical list of the available attributes. Attributes whose value cannot be set are dim. Help text is shown for each attribute. Select an attribute by double-clicking on it or by selecting it and then pressing <strong>Enter</strong>.</li>
<li>Read-only attributes appear dim in the list box. If you select a read-only attribute, an error message appears. A ring control at the top of the dialog box allows you to see all IVI attributes or only the attributes of type ViBoolean. If you choose to see all IVI attributes, the data types appear to the right of the attribute names in the list box. Attributes with data types other than ViBoolean are dim. If you select an attribute data type that is dim, LabWindows/CVI transfers you to the function panel for the corresponding function that is consistent with the data type.</li>
<li>If you want to enter a variable name, press <strong>Ctrl</strong>+<strong>T</strong> to change this ring control to a manual input box. If the attribute in this ring control has named constants as valid values, you can view the constants by moving to the value control and pressing <strong>Enter</strong>.</li>
</ul>
</td>
</tr></table></table></body>
</html>
    2�-   �  �    Instrument Handle                  ]#����  �    Status                           �) � � �  �    Attribute Value                 ���� � ���                                          �� = � � �    Attribute ID                      =� =  �  �    Channel Name                           	               .Press <ENTER> for a list of 
value constants.                0    ""   �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_SetAttributeViSession</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_SetAttributeViSession</h1>


 <p class="Syntax">ViStatus niDCPower_SetAttributeViSession(ViSession vi,
      ViConstString channelName,
      ViAttr attribute,
      ViSession value);</p>

 <h2 class="purpose">Purpose</h2>

<p class="Body">Sets the value of a ViSession attribute.<br><br>This is a low-level function that you can use to set the values of device-specific attributes and inherent IVI attributes.</p>
</body>
</html>
    �    <html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_SetAttributeViSession</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">value</td>
<td class="paramDataType">ViSession</td>
<td class="Borderless">Specifies the value to which you want to set the attribute. If the attribute currently showing in the attribute ring control has constants as valid values, you can view a list of the constants by pressing <strong>Enter</strong> on this control. Select a value by double-clicking on it or by selecting it and then pressing <strong>Enter</strong>.
<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif"></td>
<td>
<strong>Note</strong>&#160;&#160;Some of the values might not be valid depending upon the current settings of the device session.</td></tr></table>
</td>
</tr></table></table></body>
</html>
    �     <html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_SetAttributeViSession</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">attribute</td>
<td class="paramDataType">ViAttr</td>
<td class="Borderless">Specifies the ID of an attribute. From the function panel window, you can use this control as follows.
<ul>
<li>In the function panel window, click on the control or press <strong>Enter</strong> or the spacebar to display a dialog box containing hierarchical list of the available attributes. Attributes whose value cannot be set are dim. Help text is shown for each attribute. Select an attribute by double-clicking on it or by selecting it and then pressing <strong>Enter</strong>.</li>
<li>Read-only attributes appear dim in the list box. If you select a read-only attribute, an error message appears. A ring control at the top of the dialog box allows you to see all IVI attributes or only the attributes of type ViSession. If you choose to see all IVI attributes, the data types appear to the right of the attribute names in the list box. Attributes with data types other than ViSession are dim. If you select an attribute data type that is dim, LabWindows/CVI transfers you to the function panel for the corresponding function that is consistent with the data type.</li>
<li>If you want to enter a variable name, press <strong>Ctrl</strong>+<strong>T</strong> to change this ring control to a manual input box. If the attribute in this ring control has named constants as valid values, you can view the constants by moving to the value control and pressing <strong>Enter</strong>.</li>
</ul>
</td>
</tr></table></table></body>
</html>
    2�-   �  �    Instrument Handle                  ]#����  �    Status                           � � � �  �    Attribute Value                   =� =  �  �    Channel Name                     �� = � � �    Attribute ID                    ���� � ���                                                	               ""                0    .Press <ENTER> for a list of 
value constants.   {    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_GetAttributeViInt32</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_GetAttributeViInt32</h1>


 <p class="Syntax">ViStatus niDCPower_GetAttributeViInt32(ViSession vi,
      ViConstString channelName,
      ViAttr attribute,
      ViInt32 *value);</p>

 <h2 class="purpose">Purpose</h2>

<p class="Body">Queries the value of a ViInt32 attribute.<br><br>You can use this function to get the values of device-specific attributes and inherent IVI attributes.</p>
</body>
</html>
    �    
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_GetAttributeViInt32</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">value</td>
<td class="paramDataType">ViInt32*</td>
<td class="Borderless">Returns the current value of the attribute. Passes the address of a ViInt32 variable.<br><br>If the attribute currently showing in the attribute ring control has constants as valid values, you can view a list of the constants by pressing <strong>Enter</strong> on this control. Select a value by double-clicking on it or by selecting it and then pressing <strong>Enter</strong>.
</td>
</tr></table></body>
</html>
    <    
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_GetAttributeViInt32</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">attribute</td>
<td class="paramDataType">ViAttr</td>
<td class="Borderless">Specifies the ID of an attribute. From the function panel window, you can use this control as follows.
<ul>
<li>In the function panel window, click on the control or press <strong>Enter</strong> or the spacebar to display a dialog box containing hierarchical list of the available attributes. Help text is shown for each attribute. Select an attribute by double-clicking on it or by selecting it and then pressing <strong>Enter</strong>.</li>
<li>A ring control at the top of the dialog box allows you to see all IVI attributes or only the attributes of type ViInt32. If you choose to see all IVI attributes, the data types appear to the right of the attribute names in the list box. Attributes with data types other than ViInt32 are dim. If you select an attribute data type that is dim, LabWindows/CVI transfers you to the function panel for the corresponding function that is consistent with the data type.</li>
<li>If you want to enter a variable name, press <strong>Ctrl</strong>+<strong>T</strong> to change this ring control to a manual input box. If the attribute in this ring control has named constants as valid values, you can view the constants by moving to the value control and pressing <strong>Enter</strong>.</li>
</ul>
</td>
</tr></table></body>
</html>
    2�-   �  �    Instrument Handle                  ]#����  �    Status                           �� � � �  �    Attribute Value                   =� =  �  �    Channel Name                     �� = � � �    Attribute ID                           	           	            ""                0       <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_GetAttributeViReal64</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_GetAttributeViReal64</h1>

 <p class="Syntax">ViStatus niDCPower_GetAttributeViReal64(ViSession vi,
      ViConstString channelName,
      ViAttr attribute,
      ViReal64 *value);</p>

 <h2 class="purpose">Purpose</h2>

<p class="Body">Queries the value of a ViReal64 attribute.<br><br>You can use this function to get the values of device-specific attributes and inherent IVI attributes.</p>
</body>
</html>
    �    
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_GetAttributeViReal64</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">value</td>
<td class="paramDataType">ViReal64*</td>
<td class="Borderless">Returns the current value of the attribute. Passes the address of a ViReal64 variable.<br><br>If the attribute currently showing in the attribute ring control has constants as valid values, you can view a list of the constants by pressing <strong>Enter</strong> on this control. Select a value by double-clicking on it or by selecting it and then pressing <strong>Enter</strong>.
</td>
</tr></table></body>
</html>
    ?    
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_GetAttributeViReal64</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">attribute</td>
<td class="paramDataType">ViAttr</td>
<td class="Borderless">Specifies the ID of an attribute. From the function panel window, you can use this control as follows.
<ul>
<li>In the function panel window, click on the control or press <strong>Enter</strong> or the spacebar to display a dialog box containing hierarchical list of the available attributes. Help text is shown for each attribute. Select an attribute by double-clicking on it or by selecting it and then pressing <strong>Enter</strong>.</li>
<li>A ring control at the top of the dialog box allows you to see all IVI attributes or only the attributes of type ViReal64. If you choose to see all IVI attributes, the data types appear to the right of the attribute names in the list box. Attributes with data types other than ViReal64 are dim. If you select an attribute data type that is dim, LabWindows/CVI transfers you to the function panel for the corresponding function that is consistent with the data type.</li>
<li>If you want to enter a variable name, press <strong>Ctrl</strong>+<strong>T</strong> to change this ring control to a manual input box. If the attribute in this ring control has named constants as valid values, you can view the constants by moving to the value control and pressing <strong>Enter</strong>.</li>
</ul>
</td>
</tr></table></body>
</html>
    2�-   �  �    Instrument Handle                  ]#����  �    Status                           ʻ � � �  �    Attribute Value                   =� =  �  �    Channel Name                     ͧ = � � �    Attribute ID                           	           	           ""                0   z    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_GetAttributeViInt64</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_GetAttributeViInt64</h1>

 <p class="Syntax">ViStatus niDCPower_GetAttributeViInt64(ViSession vi,
      ViConstString channelName,
      ViAttr attribute,
      ViInt64 *value);</p>

 <h2 class="purpose">Purpose</h2>

<p class="Body">Queries the value of a ViInt64 attribute.<br><br>You can use this function to get the values of device-specific attributes and inherent IVI attributes.</p>
</body>
</html>
    �    
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_GetAttributeViReal64</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">value</td>
<td class="paramDataType">ViReal64*</td>
<td class="Borderless">Returns the current value of the attribute. Passes the address of a ViReal64 variable.<br><br>If the attribute currently showing in the attribute ring control has constants as valid values, you can view a list of the constants by pressing <strong>Enter</strong> on this control. Select a value by double-clicking on it or by selecting it and then pressing <strong>Enter</strong>.
</td>
</tr></table></body>
</html>
    ?    
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_GetAttributeViReal64</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">attribute</td>
<td class="paramDataType">ViAttr</td>
<td class="Borderless">Specifies the ID of an attribute. From the function panel window, you can use this control as follows.
<ul>
<li>In the function panel window, click on the control or press <strong>Enter</strong> or the spacebar to display a dialog box containing hierarchical list of the available attributes. Help text is shown for each attribute. Select an attribute by double-clicking on it or by selecting it and then pressing <strong>Enter</strong>.</li>
<li>A ring control at the top of the dialog box allows you to see all IVI attributes or only the attributes of type ViReal64. If you choose to see all IVI attributes, the data types appear to the right of the attribute names in the list box. Attributes with data types other than ViReal64 are dim. If you select an attribute data type that is dim, LabWindows/CVI transfers you to the function panel for the corresponding function that is consistent with the data type.</li>
<li>If you want to enter a variable name, press <strong>Ctrl</strong>+<strong>T</strong> to change this ring control to a manual input box. If the attribute in this ring control has named constants as valid values, you can view the constants by moving to the value control and pressing <strong>Enter</strong>.</li>
</ul>
</td>
</tr></table></body>
</html>
    2�-   �  �    Instrument Handle                  ]#����  �    Status                           ׭ � � �  �    Attribute Value                   =� =  �  �    Channel Name                     ڙ = � � �    Attribute ID                           	           	            ""                0   �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_GetAttributeViString</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>
<body>
<h1 class="function">niDCPower_GetAttributeViString</h1>


 <p class="Syntax">ViStatus niDCPower_GetAttributeViString(ViSession vi,
      ViConstString channelName,
      ViAttr attribute,
      ViInt32 bufSize,
      ViChar value[]);</p>

 <h2 class="purpose">Purpose</h2>

<p class="Body">Queries the value of a ViString attribute.<br><br>You can use this function to get the values of device-specific attributes and inherent IVI attributes.</p>
</body>
</html>
    p    
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_GetAttributeViString</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="borderless"><tr> <td class="paramName">Status</td><td class="paramDataType">ViStatus</td><td>
<p class="Body">Reports the status of this operation. To obtain a text description of the status code, call <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_error_message.html')"><span class="Monospace">niDCPower_error_message</span></a>. To obtain additional information concerning the error condition, call <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_GetError.html')"><span class="Monospace">niDCPower_GetError</span></a>.
</td></tr></table></body>
</html>
    k    
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_GetAttributeViString</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">value</td>
<td class="paramDataType">ViChar[]</td>
<td class="Borderless">The buffer in which the function returns the current value of the attribute. The buffer must be of type ViChar and have at least as many bytes as indicated in <strong>bufSize</strong>.<br><br>If the current value of the attribute, including the terminating NUL byte, contains more bytes that you indicate in this attribute, the function copies (buffer size -1) bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value. For example, if the value is 123456 and the buffer size is 4, the function places 123 into the buffer and returns 7.<br><br>If you specify 0 for <strong>bufSize</strong>, you can pass <span class="Monospace">VI_NULL</span> for this attribute.<br><br>If the attribute currently showing in the attribute ring control has constants as valid values, you can view a list of the constants by pressing &lt;Enter&gt; on this control. Select a value by double-clicking on it or by selecting it and then pressing &lt;Enter&gt;.
</td>
</tr></table></table></body>
</html>
    �    
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_GetAttributeViString</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">bufSize</td>
<td class="paramDataType">ViInt32</td>
<td class="Borderless">Passes the number of bytes in the buffer and specifies the number of bytes in the ViChar array you specify for <strong>value</strong>. If the current value of <strong>value</strong>, including the terminating NUL byte, is larger than the size you indicate in this parameter, the function copies (buffer size - 1) bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value. For example, if the value is 123456 and the buffer size is 4, the function places 123 into the buffer and returns <span class="Monospace-Bold">7</span>.<br><br>To obtain the required buffer size, you can pass 0 for this attribute and <span class="Monospace">VI_NULL</span> for <strong>value</strong>. If you want the function to fill in the buffer regardless of the number of bytes in the value, pass a negative number for this attribute.</td>


</tr></table></table></body>
</html>
        
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_GetAttributeViString</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">attribute</td>
<td class="paramDataType">ViAttr</td>
<td class="Borderless">Specifies the ID of an attribute. From the function panel window, you can use this control as follows.
<ul>
<li>In the function panel window, click on the control or press &lt;Enter&gt; or the spacebar to display a dialog box containing hierarchical list of the available attributes. Help text is shown for each attribute. Select an attribute by double-clicking on it or by selecting it and then pressing &lt;Enter&gt;.</li>

<li>A ring control at the top of the dialog box allows you to see all IVI attributes or only the attributes of type ViString. If you choose to see all IVI attributes, the data types appear to the right of the attribute names in the list box. Attributes with data types other than ViString are dimmed. If you select an attribute data type that is dimmed, LabWindows/CVI transfers you to the function panel for the corresponding function that is consistent with the data type.</li>

<li>If you want to enter a variable name, press &lt;Ctrl-T&gt; to change this ring control to a manual input control. If the attribute in this ring control has named constants as valid values, you can view the constants by moving to the value control and pressing &lt;Enter&gt;.</li>
</ul>
</td>
</tr></table></table></body>
</html>
    2�-   �  �    Instrument Handle                �#����  �    Status or Required Size          �2 � L � �    Attribute Value                   =� =  �  �    Channel Name                     �� =� �  �    Buffer Size                      � = � � �    Attribute ID                           	           	            ""    512                0   �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_GetAttributeViBoolean</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_GetAttributeViBoolean</h1>


 <p class="Syntax">ViStatus niDCPower_GetAttributeViBoolean(ViSession vi,
      ViConstString channelName,
      ViAttr attribute,
      ViBoolean *value);</p>

 <h2 class="purpose">Purpose</h2>

<p class="Body">Queries the value of a ViBoolean attribute.<br><br>You can use this function to get the values of device-specific attributes and inherent IVI attributes.</p>
</body>
</html>
    �    
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_GetAttributeViBoolean</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">value</td>
<td class="paramDataType">ViBoolean*</td>
<td class="Borderless">Returns the current value of the attribute. Passes the address of a ViBoolean variable.<br><br>If the attribute currently showing in the attribute ring control has constants as valid values, you can view a list of the constants by pressing <strong>Enter</strong> on this control. Select a value by double-clicking on it or by selecting it and then pressing <strong>Enter</strong>.
</td>
</tr></table></body>
</html>
    B    
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_GetAttributeViBoolean</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">attribute</td>
<td class="paramDataType">ViAttr</td>
<td class="Borderless">Specifies the ID of an attribute. From the function panel window, you can use this control as follows.
<ul>
<li>In the function panel window, click on the control or press <strong>Enter</strong> or the spacebar to display a dialog box containing hierarchical list of the available attributes. Help text is shown for each attribute. Select an attribute by double-clicking on it or by selecting it and then pressing <strong>Enter</strong>.</li>
<li>A ring control at the top of the dialog box allows you to see all IVI attributes or only the attributes of type ViBoolean. If you choose to see all IVI attributes, the data types appear to the right of the attribute names in the list box. Attributes with data types other than ViBoolean are dim. If you select an attribute data type that is dim, LabWindows/CVI transfers you to the function panel for the corresponding function that is consistent with the data type.</li>
<li>If you want to enter a variable name, press <strong>Ctrl</strong>+<strong>T</strong> to change this ring control to a manual input box. If the attribute in this ring control has named constants as valid values, you can view the constants by moving to the value control and pressing <strong>Enter</strong>.</li>
</ul>
</td>
</tr></table></body>
</html>
    2�-   �  �    Instrument Handle                  ]#����  �    Status                           �� � � �  �    Attribute Value                   =� =  �  �    Channel Name                     �� = � � �    Attribute ID                           	           	            ""                0   �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_GetAttributeViSession</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_GetAttributeViSession</h1>


 <p class="Syntax">ViStatus niDCPower_GetAttributeViSession(ViSession vi,
      ViConstString channelName,
      ViAttr attribute,
      ViSession *value);</p>

 <h2 class="purpose">Purpose</h2>

<p class="Body">Queries the value of a ViSession attribute.<br><br>You can use this function to get the values of device-specific attributes and inherent IVI attributes.</p>
</body>
</html>
    �    
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_GetAttributeViSession</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">value</td>
<td class="paramDataType">ViSession*</td>
<td class="Borderless">Returns the current value of the attribute. Passes the address of a ViSession variable.<br><br>If the attribute currently showing in the attribute ring control has constants as valid values, you can view a list of the constants by pressing <strong>Enter</strong> on this control. Select a value by double-clicking on it or by selecting it and then pressing <strong>Enter</strong>.
</td>
</tr></table></body>
</html>
    B    
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_GetAttributeViSession</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">attribute</td>
<td class="paramDataType">ViAttr</td>
<td class="Borderless">Specifies the ID of an attribute. From the function panel window, you can use this control as follows.
<ul>
<li>In the function panel window, click on the control or press <strong>Enter</strong> or the spacebar to display a dialog box containing hierarchical list of the available attributes. Help text is shown for each attribute. Select an attribute by double-clicking on it or by selecting it and then pressing <strong>Enter</strong>.</li>
<li>A ring control at the top of the dialog box allows you to see all IVI attributes or only the attributes of type ViSession. If you choose to see all IVI attributes, the data types appear to the right of the attribute names in the list box. Attributes with data types other than ViSession are dim. If you select an attribute data type that is dim, LabWindows/CVI transfers you to the function panel for the corresponding function that is consistent with the data type.</li>
<li>If you want to enter a variable name, press <strong>Ctrl</strong>+<strong>T</strong> to change this ring control to a manual input box. If the attribute in this ring control has named constants as valid values, you can view the constants by moving to the value control and pressing <strong>Enter</strong>.</li>
</ul>
</td>
</tr></table></body>
</html>
    2�-   �  �    Instrument Handle                  ]#����  �    Status                           	� � � �  �    Attribute Value                   =� =  �  �    Channel Name                     � = � � �    Attribute ID                           	           	            ""                0   �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_QueryMaxVoltageLevel</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_QueryMaxVoltageLevel</h1>


 <p class="Syntax">ViStatus niDCPower_QueryMaxVoltageLevel(ViSession vi,
                                               ViConstString channelName,
                                               ViReal64 currentLimit,
                                               ViReal64 *maxVoltageLevel);</p>
 <h2 class="purpose">Purpose</h2>
<p class="Body">Queries the maximum voltage level on an output channel if the output channel is set to the specified <strong>currentLimit</strong>.</p>
</body>
</html>
    �    <html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_QueryMaxVoltageLevel</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">channelName</td>
<td class="paramDataType">ViConstString</td>
<td class="Borderless">Specifies the output channel to query.  The maximum voltage level may only be queried for one channel at a time.</td>
</tr></table></table></body>
</html>
    �    <html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_QueryMaxVoltageLevel</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">currentLimit</td>
<td class="paramDataType">ViReal64</td>
<td class="Borderless">Specifies the current limit to use when calculating the <strong>maxVoltageLevel</strong>.</td>
</tr></table></table></body>
</html>
    �    <html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_QueryMaxVoltageLevel</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">maxVoltageLevel</td>
<td class="paramDataType">ViReal64*</td>
<td class="Borderless">Returns the maximum voltage level that can be set on an output channel with the specified
          <strong>currentLimit</strong>.</td>
</tr></table></table></body>
</html>
    2�-   �  �    Instrument Handle                  ]#����  �    Status                           ; 3 
 �  �    Channel Name                     , 3 � �  �    Current Limit                     3� �  �    Max Voltage Level                      	           ""    0.0    	          �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_QueryMinCurrentLimit</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_QueryMinCurrentLimit</h1>


 <p class="Syntax">ViStatus niDCPower_QueryMinCurrentLimit(ViSession vi,
                                               ViConstString channelName,
                                               ViReal64 voltageLevel,
                                               ViReal64 *minCurrentLimit);</p>
 <h2 class="purpose">Purpose</h2>
<p class="Body">Queries the minimum current limit on an output channel if the output channel is set to the specified <strong>voltageLevel</strong>.</p>
</body>
</html>
    �    <html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_QueryMinCurrentLimit</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">channelName</td>
<td class="paramDataType">ViConstString</td>
<td class="Borderless">Specifies the output channel to query. The minimum current limit may only be queried for one channel at a time.</td>
</tr></table></table></body>
</html>
    �    <html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_QueryMinCurrentLimit</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">voltageLevel</td>
<td class="paramDataType">ViReal64</td>
<td class="Borderless">Specifies the voltage level to use when calculating the <strong>minCurrentLimit</strong>.</td>
</tr></table></table></body>
</html>
    �    <html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_QueryMinCurrentLimit</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">minCurrentLimit</td>
<td class="paramDataType">ViReal64*</td>
<td class="Borderless">Returns the minimum current limit that can be set on an output channel with the specified <strong>voltageLevel</strong>.</td>
</tr></table></table></body>
</html>
    2�-   �  �    Instrument Handle                  ]#����  �    Status                           !2 3 
 �  �    Channel Name                     #" 3 � �  �    Voltage Level                    $� 5� �  �    Min Current Limit                      	           ""    0.0    	          �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_QueryMaxCurrentLimit</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_QueryMaxCurrentLimit</h1>


 <p class="Syntax">ViStatus niDCPower_QueryMaxCurrentLimit(ViSession vi,
                                               ViConstString channelName,
                                               ViReal64 voltageLevel,
                                               ViReal64 *maxCurrentLimit);</p>
 <h2 class="purpose">Purpose</h2>
<p class="Body">Queries the maximum current limit on an output channel if the output channel is set to the specified <strong>voltageLevel</strong>.</p>
</body>
</html>
    �    <html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_QueryMaxCurrentLimit</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">channelName</td>
<td class="paramDataType">ViConstString</td>
<td class="Borderless">Specifies the output channel to query.  The maximum current limit may only be queried for one channel at a time.</td>
</tr></table></table></body>
</html>
    �    <html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_QueryMaxCurrentLimit</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">voltageLevel</td>
<td class="paramDataType">ViReal64</td>
<td class="Borderless">Specifies the voltage level to use when calculating the <strong>maxCurrentLimit</strong>.</td>
</tr></table></table></body>
</html>
    �    <html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_QueryMaxCurrentLimit</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">maxCurrentLimit</td>
<td class="paramDataType">ViReal64*</td>
<td class="Borderless">Returns the maximum current limit that can be set with the specified
          <strong>voltageLevel</strong>.</td>
</tr></table></table></body>
</html>
    2�-   �  �    Instrument Handle                  ]#����  �    Status                           + 3 
 �  �    Channel Name                     - 3 � �  �    Voltage Level                    .� 3� �  �    Max Current Limit                      	           ""    0.0    	          	�    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_QueryInCompliance</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_QueryInCompliance</h1>

 <p class="Syntax">ViStatus niDCPower_QueryInCompliance(ViSession vi,
                                           ViConstString channelName,
                                           
                                           ViBoolean *inCompliance);</p>
 <h2 class="purpose">Purpose</h2>
<p class="Body">Queries the specified output device to determine if it is operating at the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'compliance.html')">compliance</a> limit.</p>

<p class="Body">The compliance limit is the current limit when the output function is set to <span class="Monospace">NIDCPOWER_VAL_DC_VOLTAGE</span>.  If the output is operating at the compliance limit, the output reaches the current limit before the desired voltage level.  Refer to the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm','cviniDCPower_ConfigureOutputFunction.html')"><span class="Monospace">niDCPower_ConfigureOutputFunction</span></a> function and the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm','cviniDCPower_ConfigureCurrentLimit.html')"><span class="Monospace">niDCPower_ConfigureCurrentLimit</span></a> function for more information about output function and current limit, respectively. </p>

<p class="Body">The compliance limit is the voltage limit when the output function is set to <span class="Monospace">NIDCPOWER_VAL_DC_CURRENT</span>.  If the output is operating at the compliance limit, the output reaches the voltage limit before the desired current level.  Refer to the <span class="Monospace">niDCPower_ConfigureOutputFunction</span> function and the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm','cviniDCPower_ConfigureVoltageLimit.html')"><span class="Monospace">niDCPower_ConfigureVoltageLimit</span></a> function for more information about output function and voltage limit, respectively.</p>
<!--Related topics section added by link generator tool-->
<!--12/12/2013 9:52 AM-->
<p class="Body"><strong>Related Topics:</strong></p>
<p class="Body"><a href="javascript:LaunchHelp('NI_DC_Power_Supplies_Help.chm::/compliance.html')">Compliance</a></p>
</body>

</html>    �    <html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_QueryInCompliance</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">channelName</td>
<td class="paramDataType">ViConstString</td>
<td class="Borderless">Specifies the output channel to query. Compliance status can only be queried for one channel at a time.</td>
</tr></table></table></body>
</html>
    �    <html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_QueryInCompliance</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">inCompliance</td>
<td class="paramDataType">ViBoolean*</td>
<td class="Borderless">Returns whether the device output channel is in compliance.</td>
</tr></table></table></body>
</html>
    2�-   �  �    Instrument Handle                  ]#����  �    Status                           ;� 3 
 �  �    Channel Name                     =� 3� �  �    In Compliance                          	           ""    	           �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_QueryOutputState</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_QueryOutputState</h1>

 <p class="Syntax">ViStatus niDCPower_QueryOutputState(ViSession vi,
                                           ViConstString channelName,
                                           ViInt32 outputState,
                                           ViBoolean  *inState);</p>
 <h2 class="purpose">Purpose</h2>
<p class="Body">Queries the specified output channel to determine if the output channel is currently in the state specified by <strong>outputState</strong>.</p>
<!--Related topics section added by link generator tool-->
<!--12/12/2013 9:52 AM-->
<p class="Body"><strong>Related Topics:</strong></p>
<p class="Body"><a href="javascript:LaunchHelp('NI_DC_Power_Supplies_Help.chm::/compliance.html')">Compliance</a></p>
</body>

</html>
    �    <html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_QueryOutputState</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">channelName</td>
<td class="paramDataType">ViConstString</td>
<td class="Borderless">Specifies the output channel to query.  The output state may only be queried for one channel at a time.</td>
</tr></table></table></body>
</html>
    �     <html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_QueryOutputState</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">outputState</td>
<td class="paramDataType">ViInt32</td>
<td class="Borderless">Specifies the output state of the output channel that is being queried.
<br><br><strong>Defined Values</strong>:<BR><table class="bordered"><tr><td class="Bordered"><span class="Monospace">NIDCPOWER_VAL_OUTPUT_CONSTANT_VOLTAGE (0)</span></td><td class="Bordered">The device maintains a constant
          voltage by adjusting the current.</td></tr>
 <tr><td class="Bordered"><span class="Monospace">NIDCPOWER_VAL_OUTPUT_CONSTANT_CURRENT (1)</span></td><td class="Bordered">The device maintains a constant
          current by adjusting the voltage.</td></tr></table></td>
</tr></table></body>
</html>    �    <html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_QueryOutputState</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">inState</td>
<td class="paramDataType">ViBoolean*</td>
<td class="Borderless">Returns whether the device output channel is in the specified output state.</td>
</tr></table></table></body>
</html>
    2�-   �  �    Instrument Handle                  ]#����  �    Status                           D6 3 
 �  �    Channel Name                     F 3 � � �    Output State                     I� 3� �  �    In State                               	           ""               nConstant Voltage NIDCPOWER_VAL_OUTPUT_CONSTANT_VOLTAGE Constant Current NIDCPOWER_VAL_OUTPUT_CONSTANT_CURRENT    	           
�    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_CalSelfCalibrate</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_CalSelfCalibrate</h1>

 <p class="Syntax">ViStatus niDCPower_CalSelfCalibrate(ViSession vi, ViConstString channelName);</p>

<h2 class="purpose">Purpose</h2>
<p class="Body">Performs a self-calibration upon the specified channel(s).</p>

<p class="Body">This function disables the output, performs several internal calculations, and updates calibration values. The updated calibration values are written to the device hardware if the <span class="Monospace">NIDCPOWER_ATTR_SELF_CALIBRATION_PERSISTENCE</span> attribute is set to <span class="Monospace">NIDCPOWER_VAL_WRITE_TO_EEPROM</span>. Refer to the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'NIDCPOWER_ATTR_SELF_CALIBRATION_PERSISTENCE.html')"><span class="Monospace">NIDCPOWER_ATTR_SELF_CALIBRATION_PERSISTENCE</span></a> attribute topic for more information about the settings for this attribute.</p>

<p>When calling niDCPower_CalSelfCalibrate with the PXIe-4162/4163, specify all channels of your PXIe-4162/4163 with the <format
            type="bold">channelName</format> input. You cannot self-calibrate a subset of PXIe-4162/4163 channels.</p>

<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&nbsp;&nbsp;This function calls the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_reset.html')"><span class="Monospace">niDCPower_reset</span></a> function, which puts the device configuration into the default state without changing the NIDCPOWER_ATTR_SELF_CALIBRATION_PERSISTENCE
 attribute.</td>
</tr>
</table>

<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&nbsp;&nbsp;This function is not supported on all devices. Refer to <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'supportedFunctions.html')">Supported Functions by Device</a> for more information about supported devices.</td>
</tr>
</table>

<p>Refer to the <a href="javascript:LaunchHelp('NI_DC_Power_Supplies_Help.chm::/SelfCal.html')">Self-Calibration</a> topic for more information about this function.</p>
<!--Related topics section added by link generator tool-->
<!--12/12/2013 9:52 AM-->
<p class="Body"><strong>Related Topics:</strong></p>
<p class="Body"><a href="javascript:LaunchHelp('NI_DC_Power_Supplies_Help.chm::/SelfCal.html')">Self-Calibration</a></p>
</body>

</html>
     ]����  �    Status                            2�   �  �    Instrument Handle                 =� >  �  �    Channel Name                       	                ""   �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_InitExtCal</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_InitExtCal</h1>


 <p class="Syntax">ViStatus niDCPower_InitExtCal(ViRsrc resourceName,
      ViConstString password,
      ViSession *vi);</p>
 <h2 class="purpose">Purpose</h2>
<p class="Body">If <strong>password</strong> is valid, this function creates a new IVI instrument driver
      session to the device specified in <strong>resourceName</strong> and returns an
      instrument handle you use to identify the device in all subsequent
      NI-DCPower function calls. This function also sends initialization
      commands to set the device to the state necessary for the operation
      of NI-DCPower.</p>
      
      <p class="Body">Opening a calibration session always performs a reset. Refer to the calibration procedure for the device 
  you are calibrating for detailed instructions on the appropriate use of this function. This function uses the <a href="javascript:LaunchHelp('NI_DC_Power_Supplies_Help.chm::/initializeDeprecatedModel.html')">deprecated programming state model</a>.</p>
</body>
</html>
    �    <html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_InitExtCal</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">resourceName</td>
<td class="paramDataType">ViRsrc</td>
<td class="Borderless">Specifies the <strong>resourceName</strong> assigned by Measurement &#38; Automation
          Explorer (MAX), for example &#34;PXI1Slot3&#34; where &#34;PXI1Slot3&#34; is an
          instrument's <strong>resourceName</strong>. <strong>resourceName</strong> can also be a logical IVI
          name.</td>     
</tr></table></table></body>
</html>
         <!DOCTYPE html PUBLIC "-//W3C//DTD html 4.01 Transitional//EN">
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_InitExtCal</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">vi</td>
<td class="paramDataType">ViSession*</td>
<td class="Borderless">Returns a handle that you use to identify the session in all subsequent NI-DCPower function calls.</td>
</tr></table></table></body>
</html>
    `    <html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_InitExtCal</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">password</td>
<td class="paramDataType">ViConstString</td>
<td class="Borderless">Specifies the <strong>password</strong> for opening a calibration session. The initial password is factory configured to &quot;<span class="monospace">NI</span>&quot;.  <strong>password</strong> can be a maximum of four alphanumeric characters.</td>
</tr></table></table></body>
</html>
   ]Y >   �  �    Resource Name                    _�  �  �    Instrument Handle                  ]����  �    Status                           b	 > � �  �    Password                           "Dev1"    	           	           ""   �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_CloseExtCal</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_CloseExtCal</h1>


 <p class="Syntax">ViStatus niDCPower_CloseExtCal(ViSession vi,
                                      ViInt32 action);</p>
 <h2 class="purpose">Purpose</h2>
<p class="Body">Closes the session specified in <strong>vi</strong> and deallocates
      the resources that NI-DCPower reserved for calibration. Refer to the calibration
      procedure for the device you are calibrating for detailed instructions on the
      appropriate use of this function.</p>
</body>
</html>
    z    
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_CloseExtCal</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">vi</td>
<td class="paramDataType">ViSession</td>
<td class="Borderless">Identifies a particular instrument calibration session. <strong>vi</strong> is obtained from the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_InitExtCal.html')"><span class="Monospace">niDCPower_InitExtCal</span></a> function.</td>
</tr></table></body>
</html>
    ~    
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_CloseExtCal</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">action</td>
<td class="paramDataType">ViInt32</td>
<td class="Borderless">Specifies how to use the calibration values from this session as the session is closed. 
<p><strong>Defined Values</strong>:
         <table class="Bordered"><tr><td class="Bordered"><span class="Monospace">NIDCPOWER_VAL_COMMIT (1002)</span></td><td class="Bordered">The new calibration constants are stored in the EEPROM.</td></tr>
          <tr><td class="Bordered"><span class="Monospace">NIDCPOWER_VAL_CANCEL (1001)</span></td> <td class="Bordered">The old calibration constants are kept, and the new ones are discarded.</td></tr> </table>

</td>
</tr></table></body>
</html>     ]����  �    Status                           h<   �  �    Instrument Handle                j� >  � �    Action                             	                          8Cancel NIDCPOWER_VAL_CANCEL Commit NIDCPOWER_VAL_COMMIT   N    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_CalAdjustVoltageLevel</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_CalAdjustVoltageLevel</h1>


 <p class="Syntax">ViStatus niDCPower_CalAdjustVoltageLevel(ViSession vi,ViConstString channelName, ViReal64 range,
                                                ViUInt32 numberOfMeasurements,
                                                ViReal64 requestedOutputs[],
                                                ViReal64 measuredOutputs[]);</p>
 <h2 class="purpose">Purpose</h2>
<p class="Body">Calculates the calibration constants for the voltage level for the specified output channel. This function compares the array in
      <strong>requestedOutputs</strong> to the array in <strong>measuredOutputs</strong> and calculates the
      calibration constants for the voltage level of the output channel. Refer to the calibration procedure
      of the device you are calibrating for detailed instructions on the
      appropriate use of this function. This function can be called only in an
      external calibration session.</p>

<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&nbsp;&nbsp;This function is not supported on all devices. Refer to <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'supportedFunctions.html')">Supported Functions by Device</a> for more information about supported devices.</td>
</tr>
</table>
</body>
</html>
    �    
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title> niDCPower_CalAdjustVoltageLevel</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">vi</td>
<td class="paramDataType">ViSession</td>
<td class="Borderless">Identifies a particular instrument calibration session. <strong>vi</strong> is obtained from the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_InitExtCal.html')"><span class="Monospace">niDCPower_InitExtCal</span></a> function.</td>
</tr></table></body>
</html>
    �    
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title> niDCPower_CalAdjustVoltageLevel</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">channelName</td>
<td class="paramDataType">ViConstString</td>
<td class="Borderless">Specifies the output channel to which these calibration settings apply.</td>
</tr></table></body>
</html>
    �    
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title> niDCPower_CalAdjustVoltageLevel</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">numberOfMeasurements</td>
<td class="paramDataType">ViUInt32</td>
<td class="Borderless">Specifies the number of elements in <strong>requestedOutputs</strong> and <strong>measuredOutputs</strong>.</td>
</tr></table></body>
</html>
    �    
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title> niDCPower_CalAdjustVoltageLevel</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">requestedOutputs</td>
<td class="paramDataType">ViReal64[]</td>
<td class="Borderless">Specifies an array of the output values requested in the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_ConfigureVoltageLevel.html')"><span class="Monospace">niDCPower_ConfigureVoltageLevel</span></a> function.</td>
</tr></table></body>
</html>
    �    
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title> niDCPower_CalAdjustVoltageLevel</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">measuredOutputs</td>
<td class="paramDataType">ViReal64[]</td>
<td class="Borderless">Specifies an array of the output values measured by an external precision digital multimeter.</td>
</tr></table></body>
</html>
    �    
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title> niDCPower_CalAdjustVoltageLevel</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">range</td>
<td class="paramDataType">ViReal64</td>
<td class="Borderless">Specifies the range to calibrate with these settings.  Only one channel at a time may be calibrated.</td>
</tr></table></body>
</html>
     ]����  �    Status                           u�   �  �    Instrument Handle                x >  �  �    Channel Name                     y� =w �  �    Number Of Measurements           {� �  �  �    Requested Outputs                ~U � � �  �    Measured Outputs                 �/ = � �  �    Range                              	                ""                   [    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_CalAdjustVoltageMeasurement</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_CalAdjustVoltageMeasurement</h1>


 <p class="Syntax">ViStatus niDCPower_CalAdjustVoltageMeasurement(ViSession vi, ViConstString channelName, ViReal64 range,
                    ViUInt32 numberOfMeasurements, ViReal64 reportedOutputs[],
                    ViReal64 measuredOutputs[]);</p>
 <h2 class="purpose">Purpose</h2>
<p class="Body">Calculates the calibration constants for the voltage measurements returned by the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_Measure.html')"><span class="Monospace">niDCPower_Measure</span></a>
 function for the specified output channel. This function compares the array in <strong>reportedOutputs</strong> to the array in <strong>measuredOutputs</strong>
 and calculates the calibration constants for the voltage measurements returned by the <span class="Monospace">niDCPower_Measure</span> function.
 Refer to the calibration procedure for the device you are calibrating for detailed instructions on the appropriate 
 use of this function. This function can only be called in an external calibration session.</p>
 
</body>
</html>
    �    
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_CalAdjustVoltageMeasurement</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">vi</td>
<td class="paramDataType">ViSession</td>
<td class="Borderless">Identifies a particular instrument calibration session. <strong>vi</strong> is obtained from the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_InitExtCal.html')"><span class="Monospace">niDCPower_InitExtCal</span></a> function.</td>
</tr></table></body>
</html>
    �    
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_CalAdjustVoltageMeasurement</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">channelName</td>
<td class="paramDataType">ViConstString</td>
<td class="Borderless">Specifies the channel name to which these calibration settings apply.</td>
</tr></table></body>
</html>
    �    
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_CalAdjustVoltageMeasurement</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">numberOfMeasurements</td>
<td class="paramDataType">ViUInt32</td>
<td class="Borderless">Specifies the number of elements in <strong>reportedOutputs</strong> and <strong>measuredOutputs</strong>.</td>
</tr></table></body>
</html>
    s    
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_CalAdjustVoltageMeasurement</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">reportedOutputs</td>
<td class="paramDataType">ViReal64[]</td>
<td class="Borderless">Specifies an array of the output values that were returned by the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_Measure.html')"><span class="Monospace">niDCPower_Measure</span></a> function.</td>
</tr></table></body>
</html>
    �    
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_CalAdjustVoltageMeasurement</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">measuredOutputs</td>
<td class="paramDataType">ViReal64[]</td>
<td class="Borderless">Specifies an array of the output values measured by an external precision digital multimeter.</td>
</tr></table></body>
</html>
    �    
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title> niDCPower_CalAdjustVoltageLevel</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">range</td>
<td class="paramDataType">ViReal64</td>
<td class="Borderless">Specifies the range to calibrate with these settings.  Only one channel at a time may be calibrated.</td>
</tr></table></body>
</html>
     ]����  �    Status                           �    �  �    Instrument Handle                �� >  �  �    Channel Name                     �X Ar �  �    Number Of Measurements           �G �  �  �    Reported Outputs                 �� � � �  �    Measured Outputs                 �� A � �  �    Range                              	                ""                   �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_CalAdjustCurrentLimit</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_CalAdjustCurrentLimit</h1>


 <p class="Syntax">ViStatus niDCPower_CalAdjustCurrentLimit(ViSession vi,
                                                ViConstString channelName,
                                                ViReal64 range,
                                                ViUInt32 numberOfMeasurements,
                                                ViReal64 requestedOutputs[],
                                                ViReal64 measuredOutputs[]);</p>
 <h2 class="purpose">Purpose</h2>
<p class="Body">Calculates the calibration constants for the current limit for the specified output channel and range. This function compares the array in <strong>requestedOutputs</strong> 
to the array in <strong>measuredOutputs</strong> and calculates the calibration constants for the current limit returned by the device. Refer to the calibration procedure for the device you are calibrating for detailed instructions on the appropriate use of this function. This function can only be called from an external calibration session.
</p>


<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&nbsp;&nbsp;This function is not supported on all devices. Refer to <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'supportedFunctions.html')">Supported Functions by Device</a> for more information about supported devices.</td>
</tr>
</table>
</body>
</html>
    �    <html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title> niDCPower_CalAdjustCurrentLimit</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">vi</td>
<td class="paramDataType">ViSession</td>
<td class="Borderless">Identifies a particular instrument calibration session. <strong>vi</strong> is obtained from the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_InitExtCal.html')"><span class="Monospace">niDCPower_InitExtCal</span></a> function.</td>
</tr></table></body>
</html>
    �    
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_CalAdjustCurrentLimit</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">channelName</td>
<td class="paramDataType">ViConstString</td>
<td class="Borderless">Specifies the channel name to which these calibration settings apply.</td>
</tr></table></body>
</html>
    �    
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title> niDCPower_CalAdjustVoltageLevel</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">range</td>
<td class="paramDataType">ViReal64</td>
<td class="Borderless">Specifies the range to calibrate with these settings.  Only one channel at a time may be calibrated.</td>
</tr></table></body>
</html>
    �    
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_CalAdjustCurrentLimit</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">numberOfMeasurements</td>
<td class="paramDataType">ViUInt32</td>
<td class="Borderless">Specifies the number of elements in <strong>requestedOutputs</strong> and <strong>measuredOutputs</strong>.</td>
</tr></table></body>
</html>
    �    
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_CalAdjustCurrentLimit</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">requestedOutputs</td>
<td class="paramDataType">ViReal64[]</td>
<td class="Borderless">Specifies an array of the output values that were requested in the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_ConfigureCurrentLimit.html')"><span class="Monospace">niDCPower_ConfigureCurrentLimit</span></a> function.</td>
</tr></table></body>
</html>
    �    
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_CalAdjustCurrentLimit</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">measuredOutputs</td>
<td class="paramDataType">ViReal64[]</td>
<td class="Borderless">Specifies an array of the output values measured by an external precision digital multimeter.</td>
</tr></table></body>
</html>
     ]����  �    Status                           ��   �  �    Instrument Handle                �E >  �  �    Channel Name                     � > � �  �    Range                            �� >j �  �    Number Of Measurements           �� �  �  �    Requested Outputs                �W � � �  �    Measured Outputs                   	                ""                   �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_CalAdjustCurrentMeasurement</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_CalAdjustCurrentMeasurement</h1>


 <p class="Syntax">ViStatus niDCPower_CalAdjustCurrentMeasurement(ViSession vi, ViConstString channelName,
                    ViReal64 range, ViUInt32 numberOfMeasurements,
                    ViReal64 reportedOutputs[], ViReal64 measuredOutputs[]);</p>
 <h2 class="purpose">Purpose</h2>
<p class="Body">Calibrates the current measurements returned by the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_Measure.html')"><span class="Monospace">niDCPower_Measure</span></a> function for the specified output channel. This function calculates new calibration coefficients for the specified current measurement range based on the <strong>reportedOutputs</strong> and <strong>measuredOutputs</strong>. Refer to the calibration procedure for the device you are calibrating for detailed instructions about the appropriate use of this function. This function can only be called in an external calibration session.
</p>
</body>
</html>
    �    
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_CalAdjustCurrentMeasurement</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">vi</td>
<td class="paramDataType">ViSession</td>
<td class="Borderless">Identifies a particular instrument calibration session. <strong>vi</strong> is obtained from the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_InitExtCal.html')"><span class="Monospace">niDCPower_InitExtCal</span></a> function.</td>
</tr></table></body>
</html>
    �    
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_CalAdjustCurrentMeasurement</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">channelName</td>
<td class="paramDataType">ViConstString</td>
<td class="Borderless">Specifies the output channel name to which these calibration settings apply.</td>
</tr></table></body>
</html>
    �    
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title> niDCPower_CalAdjustVoltageLevel</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">range</td>
<td class="paramDataType">ViReal64</td>
<td class="Borderless">Specifies the range to calibrate with these settings.  Only one channel at a time may be calibrated.</td>
</tr></table></body>
</html>
    �    
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_CalAdjustCurrentMeasurement</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">numberOfMeasurements</td>
<td class="paramDataType">ViUInt32</td>
<td class="Borderless">Specifies the number of elements in <strong>reportedOutputs</strong> and <strong>measuredOutputs</strong>.</td>
</tr></table></body>
</html>
    r    
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_CalAdjustCurrentMeasurement</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
<td class="paramName">reportedOutputs</td>
<td class="paramDataType">ViReal64[]</td>
<td class="Borderless">Specifies an array of the output values that were returned by the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_Measure.html')"><span class="Monospace">niDCPower_Measure</span></a> function.</td>
</tr></table></body>
</html>
    �    
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_CalAdjustCurrentMeasurement</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
<td class="paramName">measuredOutputs</td>
<td class="paramDataType">ViReal64[]</td>
<td class="Borderless">Specifies an array of the output values measured by an external precision digital multimeter.</td>
</tr></table></body>
</html>
     ]����  �    Status                           ��   �  �    Instrument Handle                �L >  �  �    Channel Name                     � > � �  �    Range                            �� >j �  �    Number Of Measurements           �� �  �  �    Reported Outputs                 �W � � �  �    Measured Outputs                   	                ""                   �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_CalAdjustResidualVoltageOffset</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_CalAdjustResidualVoltageOffset</h1>


 <p class="Syntax">ViStatus niDCPower_CalAdjustResidualVoltageOffset(ViSession vi, ViConstString channelName);</p>
 <h2 class="purpose">Purpose</h2>
<p class="Body">Calculates the calibration constants for the residual voltage offsets for the specified output channel. Residual offsets account for minor offset effects on the device that lie outside of the self-calibration circuitry. These offsets can include multiplexer input offsets and leakage effects from internal switching.</p>

<p class="Body">This function requires that the output be shorted prior to it being invoked.</p>

<p class="Body">Refer to the calibration procedure for the device you are calibrating for detailed instructions on the appropriate use of this function. This function can be called only in an external calibration session.</p>

<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&nbsp;&nbsp;This function is not supported on all devices. Refer to <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'supportedFunctions.html')">Supported Functions by Device</a> for more information about supported devices.</td>
</tr>
</table>

</body>
</html>
     ]����  �    Status                            2�   �  �    Instrument Handle                 =� >  �  �    Channel Name                       	                ""   �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_CalAdjustResidualCurrentOffset</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_CalAdjustResidualCurrentOffset</h1>


 <p class="Syntax">ViStatus niDCPower_CalAdjustResidualCurrentOffset(ViSession vi, ViConstString channelName);</p>
<h2 class="purpose">Purpose</h2>
<p class="Body">Calculates the calibration constants for the residual current offsets for the specified output channel. Residual offsets account for minor offset effects on the device that lie outside of the self-calibration circuitry. These offsets can include multiplexer input offsets and leakage effects from internal switching.</p>

<p class="Body">This function requires that the output be open prior to it being invoked.</p>

<p class="Body">Refer to the calibration procedure for the device you are calibrating for detailed instructions on the appropriate use of this function. This function can be called only in an external calibration session.</p>

<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&nbsp;&nbsp;This function is not supported on all devices. Refer to <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'supportedFunctions.html')">Supported Functions by Device</a> for more information about supported devices.</td>
</tr>
</table>

</body>
</html>
     ]����  �    Status                            2�   �  �    Instrument Handle                 =� >  �  �    Channel Name                       	                ""   W    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_CalAdjustOutputResistance</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_CalAdjustOutputResistance</h1>


 <p class="Syntax">


 ViStatus niDCPower_CalAdjustOutputResistance(ViSession vi,
      ViConstString channelName,
      ViUInt32 numberOfValues,
      ViReal64 requestedOutputs[],
      ViReal64 measuredOutputs[]);
</p>
 <h2 class="purpose">Purpose</h2>
<p class="Body">Compares the array in <strong>requestedOutputs</strong> 
to the array in <strong>measuredOutputs</strong> and calculates the calibration constants for the output resistance of the specified channel. Refer to the calibration procedure for the device you are calibrating for detailed instructions on the appropriate use of this function. This function can only be called from an external calibration session. 

</p>

<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&nbsp;&nbsp;This function is not supported on all devices. Refer to <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'supportedFunctions.html')">Supported Functions by Device</a> for more information about supported devices.</td>
</tr>
</table>
</body>
</html>
    �    <html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_CalAdjustOutputResistance</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">vi</td>
<td class="paramDataType">ViSession</td>
<td class="Borderless">Identifies a particular instrument calibration session. <strong>vi</strong> is obtained from the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_InitExtCal.html')"><span class="Monospace">niDCPower_InitExtCal</span></a> function.</td>
</tr></table></body>
</html>
    �    
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_CalAdjustOutputResistance</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">channelName</td>
<td class="paramDataType">ViConstString</td>
<td class="Borderless">Specifies the output channel name to which these calibration settings apply. Only one channel at a time can be calibrated.</td>
</tr></table></body>
</html>
    �    
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_CalAdjustOutputResistance</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">numberOfValues</td>
<td class="paramDataType">ViUInt32</td>
<td class="Borderless">Specifies the number of elements in <strong>requestedOutputs</strong> and <strong>measuredOutputs</strong>.</td>
</tr></table></body>
</html>
    �    
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_CalAdjustOutputResistance</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">requestedOutputs</td>
<td class="paramDataType">ViReal64[]</td>
<td class="Borderless">Specifies an array of the output values that were requested in the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_ConfigureOutputResistance.html')"><span class="Monospace">niDCPower_ConfigureOutputResistance</span></a> function.</td>
</tr></table></body>
</html>
    �    
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_CalAdjustOutputResistance</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">measuredOutputs</td>
<td class="paramDataType">ViReal64[]</td>
<td class="Borderless">Specifies an array of the output values measured by an external precision digital multimeter.</td>
</tr></table></body>
</html>
     ]����  �    Status                           �c   �  �    Instrument Handle                �� >  �  �    Channel Name                     �� >j �  �    Number Of Measurements           �� �  �  �    Requested Outputs                �r � � �  �    Measured Outputs                   	                ""               |    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_ConnectInternalReference</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_ConnectInternalReference</h1>


 <p class="Syntax">


 ViStatus niDCPower_ConnectInternalReference(ViSession vi,
      ViInt32 internalReference);
</p>
 <h2 class="purpose">Purpose</h2>
<p class="Body">Routes the internal reference to the calibration pin in preparation for adjustment. Refer to the calibration procedure for the device you are calibrating for detailed instructions on the appropriate use of this function. This function can only be called from an external calibration session. 

</p>

<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&nbsp;&nbsp;This function is not supported on all devices. Refer to <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'supportedFunctions.html')">Supported Functions by Device</a> for more information about supported devices.</td>
</tr>
</table>
</body>
</html>    
    
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_ConnectInternalReference</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">internalReference</td>
<td class="paramDataType">ViInt32</td>
<td class="Borderless">Specifies the internal reference to be connected to the calibration pin.<BR><BR>

<strong>Defined Values</strong>:<BR>
<table class="Bordered"><tr><td class="Bordered"><span class="Monospace">NIDCPOWER_VAL_INTERNAL_REFERENCE_5V (1054)</span></td><td class="Bordered">Calibration pin connected to 5 V internal reference.</td></tr>
<tr><td class="Bordered"><span class="Monospace">NIDCPOWER_VAL_INTERNAL_REFERENCE_100KOHM (1055)</span></td><td class="Bordered">Calibration pin connected to 100 k&#8486; internal reference.</td></tr>
<tr><td class="Bordered"><span class="Monospace">NIDCPOWER_VAL_INTERNAL_REFERENCE_GROUND (1056)</span></td><td class="Bordered">Calibration pin connected to ground reference.</td></tr>
<tr><td class="Bordered"><span class="Monospace">NIDCPOWER_VAL_INTERNAL_REFERENCE_NONE (1057)</span></td><td class="Bordered">Calibration pin disconnected from internal reference.</td></tr>
</table>


</td></tr></table></body>
</html>
     ]����  �    Status                            2�   �  �    Instrument Handle                �3 >  � �    Internal Reference                 	                           l5V Reference NIDCPOWER_VAL_INTERNAL_REFERENCE_5V 100kOhm Reference NIDCPOWER_VAL_INTERNAL_REFERENCE_100KOHM   �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_CalAdjustInternalReference</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_CalAdjustInternalReference</h1>


 <p class="Syntax">


 ViStatus niDCPower_CalAdjustInternalReference(ViSession vi,
      ViInt32 internalReference,
      ViReal64 internalReferenceValue);
</p>
 <h2 class="purpose">Purpose</h2>
<p class="Body">Programs the adjusted reference value to the device. Refer to the calibration procedure for the device you are calibrating for detailed instructions on the appropriate use of this function. This function can only be called from an external calibration session. 

</p>

<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&nbsp;&nbsp;This function is not supported on all devices. Refer to <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'supportedFunctions.html')">Supported Functions by Device</a> for more information about supported devices.</td>
</tr>
</table>
</body>
</html>    �    
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title> niDCPower_CalAdjustInternalReference</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">internalReferenceValue</td>
<td class="paramDataType">ViReal64</td>
<td class="Borderless">Specifies the updated value of the internal reference that will be programmed to the device.</td>
</tr></table></body>
</html>
    }    
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_CalAdjustInternalReference</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">internalReference</td>
<td class="paramDataType">ViInt32</td>
<td class="Borderless">Specifies the internal reference to be adjusted.<BR><BR>

<strong>Defined Values</strong>:<BR>
<table class="Bordered"><tr><td class="Bordered"><span class="Monospace">NIDCPOWER_VAL_INTERNAL_REFERENCE_5V (1054)</span></td><td class="Bordered">Calibration pin connected to 5 V internal reference.</td></tr>
<tr><td class="Bordered"><span class="Monospace">NIDCPOWER_VAL_INTERNAL_REFERENCE_100KOHM (1055)</span></td><td class="Bordered">Calibration pin connected to 100 k&#8486; internal reference.</td></tr>
</table>


</td></tr></table></body>
</html>
     ]����  �    Status                            2�   �  �    Instrument Handle                � �  �  �    Adjusted Internal Reference      �� >  � �    Internal Reference                 	                               l5V Reference NIDCPOWER_VAL_INTERNAL_REFERENCE_5V 100kOhm Reference NIDCPOWER_VAL_INTERNAL_REFERENCE_100KOHM   �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_ChangeExtCalPassword</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_ChangeExtCalPassword</h1>


 <p class="Syntax">ViStatus niDCPower_ChangeExtCalPassword(ViSession vi,
                                               ViConstString oldPassword,
                                               ViConstString newPassword);</p>
 <h2 class="purpose">Purpose</h2>
<p class="Body">Changes the <strong>password</strong> that is required to initialize an external calibration session. The <strong>password</strong> can be a maximum of four alphanumeric characters. If you call this function in a session, <strong>password</strong> is changed immediately. If you call this function in an external calibration session, <strong>password</strong> is changed only after you close the session using the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_CloseExtCal.html')"><span class="Monospace">niDCPower_CloseExtCal</span></a> function with <strong>action</strong> set to <span class="Monospace">NIDCPOWER_VAL_COMMIT</span>.</p>
</body>
</html>
    N    
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_GetCalUserDefinedInfoMaxSize</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">vi</td>
<td class="paramDataType">ViSession</td>
<td class="Borderless">Identifies a particular instrument session. <strong>vi</strong> is obtained from 
the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_InitExtCal.html')"><span class="Monospace">niDCPower_InitExtCal</span></a> or <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_InitializeWithChannels.html')"><span class="Monospace">niDCPower_InitializeWithChannels</span></a> function.</td>
</tr></table></body>
</html>    �    
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_ChangeExtCalPassword</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">oldPassword</td>
<td class="paramDataType">ViConstString</td>
<td class="Borderless">Specifies the previous password used to protect the calibration values.</td>
</tr></table></body>
</html>
    �    
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_ChangeExtCalPassword</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">newPassword</td>
<td class="paramDataType">ViConstString</td>
<td class="Borderless">Specifies the new password to use to protect the calibration values.</td>
</tr></table></body>
</html>
     ]����  �    Status                           ��   �  �    Instrument Handle                �	 >  �  �    Old Password                     �� > � �  �    New Password                       	                       #    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_GetExtCalRecommendedInterval</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_GetExtCalRecommendedInterval</h1>


 <p class="Syntax">ViStatus niDCPower_GetExtCalRecommendedInterval(ViSession vi, ViInt32 *months);</p>
 <h2 class="purpose">Purpose</h2>
<p class="Body">Returns the recommended maximum interval, in <strong>months</strong>, between external calibrations.</p>
</body>
</html>
    N    
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_GetCalUserDefinedInfoMaxSize</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">vi</td>
<td class="paramDataType">ViSession</td>
<td class="Borderless">Identifies a particular instrument session. <strong>vi</strong> is obtained from 
the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_InitExtCal.html')"><span class="Monospace">niDCPower_InitExtCal</span></a> or <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_InitializeWithChannels.html')"><span class="Monospace">niDCPower_InitializeWithChannels</span></a> function.</td>
</tr></table></body>
</html>    �    
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title> niDCPower_GetExtCalRecommendedInterval</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">months</td>
<td class="paramDataType">ViInt32*</td>
<td class="Borderless">Specifies the recommended maximum interval, in <strong>months</strong>, between external calibrations.</td>
</tr></table></body>
</html>
     ]����  �    Status                           �   �  �    Instrument Handle                � >  �  �    Months                             	                	           �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_GetExtCalLastDateAndTime</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_GetExtCalLastDateAndTime</h1>


 <p class="Syntax">ViStatus niDCPower_GetExtCalLastDateAndTime(ViSession vi,
                                                   ViInt32 *year,
                                                   ViInt32 *month,
                                                   ViInt32 *day,
                                                   ViInt32 *hour,
                                                   ViInt32 *minute);</p>
 <h2 class="purpose">Purpose</h2>
<p class="Body">Returns the date and time of the last successful calibration. The time returned is 24-hour (military) local time; for example, if the device was calibrated at 2:30 PM, this function returns 14 for <strong>hours</strong> and 30 for <strong>minutes</strong>.
</body>
</html>
    N    
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_GetCalUserDefinedInfoMaxSize</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">vi</td>
<td class="paramDataType">ViSession</td>
<td class="Borderless">Identifies a particular instrument session. <strong>vi</strong> is obtained from 
the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_InitExtCal.html')"><span class="Monospace">niDCPower_InitExtCal</span></a> or <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_InitializeWithChannels.html')"><span class="Monospace">niDCPower_InitializeWithChannels</span></a> function.</td>
</tr></table></body>
</html>    �    
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_GetExtCalLastDateAndTime</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">year</td>
<td class="paramDataType">ViInt32*</td>
<td class="Borderless">Returns the <strong>year</strong> the device was last calibrated.</td>
</tr></table></body>
</html>
    �    
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_GetExtCalLastDateAndTime</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">month</td>
<td class="paramDataType">ViInt32*</td>
<td class="Borderless">Returns the <strong>month</strong> in which the device was last calibrated.</td>
</tr></table></body>
</html>
    �    
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_GetExtCalLastDateAndTime</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">day</td>
<td class="paramDataType">ViInt32*</td>
<td class="Borderless">Returns the <strong>day</strong> on which the device was last calibrated.</td>
</tr></table></body>
</html>
    �    
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_GetExtCalLastDateAndTime</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">hour</td>
<td class="paramDataType">ViInt32*</td>
<td class="Borderless">Returns the <strong>hour</strong> (in 24-hour time) in which the device was last calibrated.</td>
</tr></table></body>
</html>
    �    
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_GetExtCalLastDateAndTime</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">minute</td>
<td class="paramDataType">ViInt32*</td>
<td class="Borderless">Returns the <strong>minute</strong> in which the device was last calibrated.</td>
</tr></table></body>
</html>
     ]����  �    Status                           �   �  �    Instrument Handle                � >  �  �    Year                             � > � �  �    Month                            H >j �  �    Day                               �  �  �    Hour                             � � � �  �    Minute                             	                	            	            	            	            	           U    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_GetSelfCalLastDateAndTime</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_GetSelfCalLastDateAndTime</h1>


 <p class="Syntax">ViStatus niDCPower_GetSelfCalLastDateAndTime(ViSession vi,
                                                   ViInt32 *year,
                                                   ViInt32 *month,
                                                   ViInt32 *day,
                                                   ViInt32 *hour,
                                                   ViInt32 *minute);</p>
 <h2 class="purpose">Purpose</h2>
<p class="Body">Returns the date and time of the oldest successful self-calibration from among the channels in the session.</p>

<p class="body">The time returned is 24-hour (military) local time; for example, if you have a session using channels 1 and 2, and a self-calibration was performed on channel 1 at 2:30 PM, and a self-calibration was performed on channel 2 at 3:00 PM on the same day, this function returns 14 for <strong>hours</strong> and 30 for <strong>minutes</strong>.</p>


<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&nbsp;&nbsp;This function is not supported on all devices. Refer to <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'supportedFunctions.html')">Supported Functions by Device</a> for more information about supported devices.</td>
</tr>
</table>
</body>
</html>
    7    
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_close</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">vi</td>
<td class="paramDataType">ViSession</td>
<td class="Borderless">Identifies a particular instrument session. <strong>vi</strong> is obtained from the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_InitExtCal.html')"><span class="Monospace">niDCPower_InitExtCal</span></a> or <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_InitializeWithChannels.html')"><span class="Monospace">niDCPower_InitializeWithChannels</span></a> function.</td>
</tr></table></body>
</html>
    �    
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_GetExtCalLastDateAndTime</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">year</td>
<td class="paramDataType">ViInt32*</td>
<td class="Borderless">Returns the <strong>year</strong> the device was last calibrated.</td>
</tr></table></body>
</html>
    �    
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_GetExtCalLastDateAndTime</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">month</td>
<td class="paramDataType">ViInt32*</td>
<td class="Borderless">Returns the <strong>month</strong> in which the device was last calibrated.</td>
</tr></table></body>
</html>
    �    
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_GetExtCalLastDateAndTime</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">day</td>
<td class="paramDataType">ViInt32*</td>
<td class="Borderless">Returns the <strong>day</strong> on which the device was last calibrated.</td>
</tr></table></body>
</html>
    �    
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_GetExtCalLastDateAndTime</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">hour</td>
<td class="paramDataType">ViInt32*</td>
<td class="Borderless">Returns the <strong>hour</strong> (in 24-hour time) in which the device was last calibrated.</td>
</tr></table></body>
</html>
    �    
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_GetExtCalLastDateAndTime</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">minute</td>
<td class="paramDataType">ViInt32*</td>
<td class="Borderless">Returns the <strong>minute</strong> in which the device was last calibrated.</td>
</tr></table></body>
</html>
     ]����  �    Status                            �   �  �    Instrument Handle                #� >  �  �    Year                             %� > � �  �    Month                            '\ >j �  �    Day                              ) �  �  �    Hour                             *� � � �  �    Minute                             	                	            	            	            	            	           9    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_GetCalUserDefinedInfoMaxSize</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_GetCalUserDefinedInfoMaxSize</h1>


 <p class="Syntax">ViStatus niDCPower_GetCalUserDefinedInfoMaxSize(ViSession vi, ViInt32*infoSize);</p>
 <h2 class="purpose">Purpose</h2>
<p class="Body">Returns the maximum number of characters that can be used to store user-defined information in the device onboard EEPROM.</p>
</body>
</html>
    N    
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_GetCalUserDefinedInfoMaxSize</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">vi</td>
<td class="paramDataType">ViSession</td>
<td class="Borderless">Identifies a particular instrument session. <strong>vi</strong> is obtained from 
the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_InitExtCal.html')"><span class="Monospace">niDCPower_InitExtCal</span></a> or <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_InitializeWithChannels.html')"><span class="Monospace">niDCPower_InitializeWithChannels</span></a> function.</td>
</tr></table></body>
</html>    �    
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_GetCalUserDefinedInfoMaxSize</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">infoSize</td>
<td class="paramDataType">ViInt32*</td>
<td class="Borderless">Returns the number of characters that can be stored in the device onboard EEPROM.</td>
</tr></table></body>
</html>
     ]����  �    Status                           0�   �  �    Instrument Handle                3� >  �  �    Info Size                          	                	           �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_SetCalUserDefinedInfo</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_SetCalUserDefinedInfo</h1>


 <p class="Syntax">ViStatus niDCPower_SetCalUserDefinedInfo(ViSession vi,
                                                ViConstString info);</p>
 <h2 class="purpose">Purpose</h2>
<p class="Body">Stores a user-defined string of characters in the device onboard EEPROM. If the string is longer than the maximum allowable size, it is truncated. This function overwrites any existing user-defined information.<p>If you call this function in a session, <strong>info</strong> is immediately changed. If you call this function in an external calibration session, <strong>info</strong> is changed only after you close the session using the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_CloseExtCal.html')"><span class="Monospace">niDCPower_CloseExtCal</span></a> function with <strong>action</strong> set to <span class="Monospace">NIDCPOWER_VAL_COMMIT</span>.</p>
</body>
</html>
    N    
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_GetCalUserDefinedInfoMaxSize</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">vi</td>
<td class="paramDataType">ViSession</td>
<td class="Borderless">Identifies a particular instrument session. <strong>vi</strong> is obtained from 
the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_InitExtCal.html')"><span class="Monospace">niDCPower_InitExtCal</span></a> or <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_InitializeWithChannels.html')"><span class="Monospace">niDCPower_InitializeWithChannels</span></a> function.</td>
</tr></table></body>
</html>    �    <html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_SetCalUserDefinedInfo</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">info</td>
<td class="paramDataType">ViConstString</td>
<td class="Borderless">Specifies the string to store in the device onboard EEPROM.</td>
</tr></table></table></body>
</html>
     ]����  �    Status                           ;1   �  �    Instrument Handle                >� >  �  �    Info                               	                       <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_GetCalUserDefinedInfo</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_GetCalUserDefinedInfo</h1>


 <p class="Syntax">ViStatus niDCPower_GetCalUserDefinedInfo(ViSession vi,
                                                ViString info);</p>
 <h2 class="purpose">Purpose</h2>
<p class="Body">Returns the user-defined information in the device onboard EEPROM.</p>
</body>
</html>
    N    
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_GetCalUserDefinedInfoMaxSize</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">vi</td>
<td class="paramDataType">ViSession</td>
<td class="Borderless">Identifies a particular instrument session. <strong>vi</strong> is obtained from 
the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_InitExtCal.html')"><span class="Monospace">niDCPower_InitExtCal</span></a> or <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_InitializeWithChannels.html')"><span class="Monospace">niDCPower_InitializeWithChannels</span></a> function.</td>
</tr></table></body>
</html>    �    
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_GetCalUserDefinedInfo</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">info</td>
<td class="ParamName">ViString</td>
<td class="Borderless">Returns the user-defined information stored in the device onboard EEPROM.</td>
</tr></table></body>
</html>
     ]����  �    Status                           C   �  �    Instrument Handle                Fh 7  �  �    Info                               	                	           @    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_ReadCurrentTemperature</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_ReadCurrentTemperature</h1>


 <p class="Syntax">ViStatus niDCPower_ReadCurrentTemperature(ViSession vi,
                                                 ViReal64 *temperature);</p>
 <h2 class="purpose">Purpose</h2>
<p class="Body">Returns the current onboard <strong>temperature</strong>, in degrees Celsius, of the device.</p>
</body>
</html>
    N    
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_GetCalUserDefinedInfoMaxSize</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">vi</td>
<td class="paramDataType">ViSession</td>
<td class="Borderless">Identifies a particular instrument session. <strong>vi</strong> is obtained from 
the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_InitExtCal.html')"><span class="Monospace">niDCPower_InitExtCal</span></a> or <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_InitializeWithChannels.html')"><span class="Monospace">niDCPower_InitializeWithChannels</span></a> function.</td>
</tr></table></body>
</html>    �    <html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_ReadCurrentTemperature</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">temperature</td>
<td class="paramDataType">ViReal64*</td>
<td class="Borderless">Returns the onboard <strong>temperature</strong>, in degrees Celsius, of the device.</td>
</tr></table></table></body>
</html>
     ]����  �    Status                           K'   �  �    Instrument Handle                Nu >  �  �    Temperature                        	                	          T    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_GetExtCalLastTemp</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_GetExtCalLastTemp</h1>


 <p class="Syntax">ViStatus niDCPower_GetExtCalLastTemp(ViSession vi,
                                            ViReal64 *temperature);</p>
 <h2 class="purpose">Purpose</h2>
<p class="Body">Returns the onboard <strong>temperature</strong> of the device, in degrees Celsius, during the last successful external calibration.</p>
</body>
</html>
    N    
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_GetCalUserDefinedInfoMaxSize</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">vi</td>
<td class="paramDataType">ViSession</td>
<td class="Borderless">Identifies a particular instrument session. <strong>vi</strong> is obtained from 
the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_InitExtCal.html')"><span class="Monospace">niDCPower_InitExtCal</span></a> or <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_InitializeWithChannels.html')"><span class="Monospace">niDCPower_InitializeWithChannels</span></a> function.</td>
</tr></table></body>
</html>    �    
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_GetExtCalLastTemp</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">temperature</td>
<td class="paramDataType">ViReal64*</td>
<td class="Borderless">Returns the onboard <strong>temperature</strong> of the device, in degrees Celsius, during the last successful external calibration.</td>
</tr></table></body>
</html>
     ]����  �    Status                           S_   �  �    Instrument Handle                V� >  �  �    Temperature                        	                	          _    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_GetSelfCalLastTemp</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_GetSelfCalLastTemp</h1>


 <p class="Syntax">ViStatus niDCPower_GetSelfCalLastTemp(ViSession vi,
                                            ViReal64 *temperature);</p>
 <h2 class="purpose">Purpose</h2>
<p class="Body">Returns the onboard temperature of the device, in degrees Celsius, during the oldest successful self-calibration from among the channels in the session.</p>

<p class="body">For example, if you have a session using channels 1 and 2, and you perform a self-calibration on channel 1 with a device temperature of 25 degrees Celsius at 2:00, and a self-calibration was performed on channel 2 at 27 degrees Celsius at 3:00 on the same day, this function returns 25 for the <strong>temperature</strong> parameter.
</p>

<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&nbsp;&nbsp;This function is not supported on all devices. Refer to <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'supportedFunctions.html')">Supported Functions by Device</a> for more information about supported devices.</td>
</tr>
</table>

</body>
</html>
    D    
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_GetSelfCalLastTemp</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">vi</td>
<td class="paramDataType">ViSession</td>
<td class="Borderless">Identifies a particular instrument session. <strong>vi</strong> is obtained from 
the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_InitExtCal.html')"><span class="Monospace">niDCPower_InitExtCal</span></a> or <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_InitializeWithChannels.html')"><span class="Monospace">niDCPower_InitializeWithChannels</span></a> function.</td>
</tr></table></body>
</html>    �    
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_GetExtCalLastTemp</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">temperature</td>
<td class="paramDataType">ViReal64*</td>
<td class="Borderless">Returns the onboard <strong>temperature</strong> of the device, in degrees Celsius, during the oldest successful calibration.</td>
</tr></table></body>
</html>
     ]����  �    Status                           ^�   �  �    Instrument Handle                b >  �  �    Temperature                        	                	          �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_reset</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_reset</h1>


 <p class="Syntax">ViStatus niDCPower_reset(ViSession vi);</p>
 <h2 class="purpose">Purpose</h2>
<p class="Body">Resets the device to a known state.  This function disables power generation, resets session attributes to their default values, commits the session attributes, and leaves the session in the Uncommitted state. Refer to the <a href="javascript:LaunchHelp('NI_DC_Power_Supplies_Help.chm::/programmingStates.html')">Programming States</a> topic for more information about NI-DCPower software states.</p>
</body>
</html>
     ]#����  �    Status                            2�-   �  �    Instrument Handle                  	              e    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_ResetDevice</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_ResetDevice</h1>


 <p class="Syntax">ViStatus niDCPower_ResetDevice(ViSession vi);</p>
 <h2 class="purpose">Purpose</h2>
<p class="Body">Resets the device to a known state.  The function disables power generation, resets session attributes to their default values, clears errors such as overtemperature and unexpected loss of auxiliary power, commits the session attributes, and leaves the session in the Uncommitted state. This function also performs a hard reset on the device and driver software. This function has the same functionality as using reset in Measurement &amp; Automation Explorer. Refer to the <a href="javascript:LaunchHelp('NI_DC_Power_Supplies_Help.chm::/programmingStates.html')">Programming States</a> topic for more information about NI-DCPower software states.</p>


<p class="Body">This will also open the output relay on devices that have an output relay.</p>


</body>
</html>
     ]����  �    Status                            2�   �  �    Instrument Handle                  	              �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_Disable</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_Disable</h1>


 <p class="Syntax">ViStatus niDCPower_Disable(ViSession vi);</p>
 <h2 class="purpose">Purpose</h2>
<p class="Body">This function performs the same actions as the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_reset.html')"><span class="Monospace">niDCPower_reset</span></a> function, except that this function also immediately sets the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'NIDCPOWER_ATTR_OUTPUT_ENABLED.html')"><span class="Monospace">NIDCPOWER_ATTR_OUTPUT_ENABLED</span></a> attribute to <span class="Monospace">VI_FALSE</span>.</p>

<p class="Body">This function opens the output relay on devices that have an output relay.</p>  
</body>
</html>
     ]#����  �    Status                            2�-   �  �    Instrument Handle                  	              "    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_self_test</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_self_test</h1>


 <p class="Syntax">ViStatus niDCPower_self_test(ViSession vi,
                                    ViInt16 *selfTestResult,
                                    ViChar selfTestMessage[]);</p>
 <h2 class="purpose">Purpose</h2>
<p class="Body">Performs the device self-test routine and returns the test result(s). Calling this function implicitly calls the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_reset.html')"><span class="Monospace">niDCPower_reset</span></a> function.</p>

<p>When calling niDCPower_self_test with the PXIe-4162/4163, specify all channels of your PXIe-4162/4163 with the <format
            type="bold">channels</format> input of niDCPower_InitializeWithChannels. You cannot self test a subset of PXIe-4162/4163 channels.</p>
</body>
</html>
    �    <html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_self_test</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">selfTestResult</td>
<td class="paramDataType">ViInt16*</td>
<td class="Borderless">Returns the value result from the device self-test.<BR><BR>
<table class="Bordered"><tr><th class="Bordered">Self-Test Code</th><th class="Bordered">Description</th></tr><tr><td class="Bordered">0</td><td class="Bordered">Self test passed.</td></tr>
<tr><td class="Bordered">1</td><td class="Bordered">Self test failed.</td></tr>
</table>

</td>
</tr></table></table></body>
</html>    �    <html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_self_test</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">selfTestMessage</td>
<td class="paramDataType">ViChar[]</td>
<td class="Borderless">Returns the self-test result message. The size of this array must be at least 256 bytes.</td>
</tr></table></table></body>
</html>
   u� =  �  �    Self Test Result                 xv = � � ,    Self-Test Message                  ]#����  �    Status                            2�-   �  �    Instrument Handle                  	           	            	              �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDCPower_ImportAttributeConfigurationFile</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_ImportAttributeConfigurationFile</h1>
<p class="syntax">ViStatus niDCPower_ImportAttributeConfigurationFile(ViSession vi, ViConstString filePath);
</p>

<h2 class="purpose">Purpose</h2>
<p class="Body">Imports a configuration to the session from the specified file.</p>
<p class="Body">You can export and import supported configurations only between NI&#8209;DCPower devices with identical model numbers and the same number of configured channels.</p>

<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&nbsp;&nbsp;You cannot call this function while the session is in the <a href="javascript:LaunchHelp('NI_DC_Power_Supplies_Help.chm::/programmingStates.html#running')">Running</a> state.</td>
</tr>
</table>

<p class="Body"><strong>Supported Configurations</strong></p>
<p class="Body">You can export and import the following between NI&#8209;DCPower sessions:</p>
<ul>
<li>Attribute configurations</li>
<li>Advanced sequences</li>
</ul>

<p class="Body"><strong>Support for this Function</strong></p>
<p class="Body">You must set the session source mode to <span class="monospace">NIDCPOWER_VAL_SEQUENCE</span> in order to configure or export and import advanced sequences.</p>
<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&nbsp;&nbsp;Exporting and importing simple sequences in Sequence source mode is unsupported.</td>
</tr>
</table>

<p class="Body"><strong>Channel Mapping Behavior</strong></p>
<p class="Body">When importing and exporting session attribute configurations between NI&#8209;DCPower sessions that were initialized with different channels, the configurations of the exporting channels are mapped to the importing channels in the order you specify in the <strong>channelName</strong> input to the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_InitializeWithChannels.html')"><span class="Monospace">niDCPower_InitializeWithChannels</span></a> function.</p>

<p class="Body">For example, if your entry for <strong>channelName</strong> is <span class="Monospace">0,1</span> for the exporting session and <span class="Monospace">1,2</span> for the importing session:</p>
<ul>
<li>The configuration exported from channel&nbsp;0 is imported into channel&nbsp;1.</li>
<li>The configuration exported from channel&nbsp;1 is imported into channel&nbsp;2.</li>
</ul>
<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&nbsp;&nbsp;NI-DCPower will return an error if the total number of channels initialized for the exporting session is not equal to the total number of channels initialized for the importing session.</td>
</tr>
</table>

<p class="Body"><strong>Related Topics:</strong></p>
<p class="Body"><a href="javascript:LaunchHelp('NI_DC_Power_Supplies_Help.chm::/programmingStates.html')">Programming States</a></p>
<p class="Body"><a href="javascript:LaunchHelp('NI_DC_Power_Supplies_Help.chm::/Using_Properties_And_Attributes.html')">Using Properties and Attributes</a></p>
<p class="Body"><a href="javascript:LaunchHelp('NI_DC_Power_Supplies_Help.chm::/setting_before_reading_attributes.html')">Setting Properties and Attributes Before Reading Them</a></p>

</body>

</html>    "    <html>
<head>
<script src="launchhelp.js"></script>
<title>filePath</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<table class="borderless"><tr>
<td class="paramName">filePath</td>
<td class="paramDataType">ViConstString</td>
<td>The absolute path to the file that contains the configuration to import. If you specify an empty or relative path, this function returns an error.<br><br><strong>Default File Extension: </strong><span class="Monospace">.nidcpowerconfig</span></td>
</tr></table>
</body>

</html>     ]#����  �    Status                            2�-   �  �    Instrument Handle                �C 2  �  �    File Path                          	                  �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_ExportAttributeConfigurationFile</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_ExportAttributeConfigurationFile</h1>

<p class="Syntax">ViStatus niDCPower_ExportAttributeConfigurationFile(ViSession vi, ViConstString filePath);</p>

<h2 class="purpose">Purpose</h2>
<p class="Body">Exports a session configuration to the specified file.</p>

<p class="Body">You can export and import supported configurations only between NI&#8209;DCPower devices with identical model numbers and the same number of configured channels.</p>

<p class="Body">This function verifies that the attributes you have configured for the session are valid. If the configuration is invalid, NI&#8209;DCPower returns an error.</p>

<p class="Body"><strong>Supported Configurations</strong></p>
<p class="Body">You can export and import the following between NI&#8209;DCPower sessions:</p>
<ul>
<li>Attribute configurations</li>
<li>Advanced sequences</li>
</ul>

<p class="Body"><strong>Support for this Function</strong></p>
<p class="Body">You must set the session source mode to <span class="monospace">NIDCPOWER_VAL_SEQUENCE</span> in order to configure or export and import advanced sequences.</p>
<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&nbsp;&nbsp;Exporting and importing simple sequences in Sequence source mode is unsupported.</td>
</tr>
</table>
<p class="Body"><strong>Channel Mapping Behavior</strong></p>
<p class="Body">When importing and exporting session attribute configurations between NI&#8209;DCPower sessions that were initialized with different channels, the configurations of the exporting channels are mapped to the importing channels in the order you specify in the <strong>channelName</strong> input to the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_InitializeWithChannels.html')"><span class="Monospace">niDCPower_InitializeWithChannels</span></a> function.</p>

<p class="Body">For example, if your entry for <strong>channelName</strong> is <span class="Monospace">0,1</span> for the exporting session and <span class="Monospace">1,2</span> for the importing session:</p>
<ul>
<li>The configuration exported from channel&nbsp;0 is imported into channel&nbsp;1.</li>
<li>The configuration exported from channel&nbsp;1 is imported into channel&nbsp;2.</li>
</ul>
<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&nbsp;&nbsp;NI-DCPower will return an error if the total number of channels initialized for the exporting session is not equal to the total number of channels initialized for the importing session.</td>
</tr>
</table>

<p class="Body"><strong>Related Topics:</strong></p>
<p class="Body"><a href="javascript:LaunchHelp('NI_DC_Power_Supplies_Help.chm::/Using_Properties_And_Attributes.html')">Using Properties and Attributes</a></p>
<p class="Body"><a href="javascript:LaunchHelp('NI_DC_Power_Supplies_Help.chm::/setting_before_reading_attributes.html')">Setting Properties and Attributes Before Reading Them</a></p>

</body>
</html>
    B    <html>
<head>
<script src="launchhelp.js"></script>
<title>filePath</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<table class="borderless"><tr>
<td class="paramName">filePath</td>
<td class="paramDataType">ViConstString</td>
<td>The absolute path to a placeholder file you must create to contain the configuration you want to export. If you specify an empty or relative path, this function returns an error.<br><br><strong>Default file extension:</strong> <span class="Monospace">.nidcpowerconfig</span></td>
</tr></table>
</body>

</html>     ]#����  �    Status                            2�-   �  �    Instrument Handle                � 2  �  �    File Path                          	                  1    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDCPower_ImportAttributeConfigurationBuffer</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_ImportAttributeConfigurationBuffer</h1>
<p class="syntax">ViStatus niDCPower_ImportAttributeConfigurationBuffer
             (ViSession vi, ViInt32 size,
              ViAddr configuration);</p>

<h2 class="purpose">Purpose</h2>
<p class="Body">Imports a configuration to the session from the specified buffer.</p>
<p class="Body">You can export and import supported configurations only between NI&#8209;DCPower devices with identical model numbers and the same number of configured channels.</p>

<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&nbsp;&nbsp;You cannot call this function while the session is in the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm::/programmingStates.html#running')">Running</a> state.</td>
</tr>
</table>

<p class="Body"><strong>Supported Configurations</strong></p>
<p class="Body">You can export and import the following between NI&#8209;DCPower sessions:</p>
<ul>
<li>Attribute configurations</li>
<li>Advanced sequences</li>
</ul>

<p class="Body"><strong>Support for this Function</strong></p>
<p class="Body">You must set the session source mode to <span class="monospace">NIDCPOWER_VAL_SEQUENCE</span> in order to configure or export and import advanced sequences.</p>
<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&nbsp;&nbsp;Exporting and importing simple sequences in Sequence source mode is unsupported.</td>
</tr>
</table>

<p class="Body"><strong>Channel Mapping Behavior</strong></p>
<p class="Body">When importing and exporting session attribute configurations between NI&#8209;DCPower sessions that were initialized with different channels, the configurations of the exporting channels are mapped to the importing channels in the order you specify in the <strong>channelName</strong> input to the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_InitializeWithChannels.html')"><span class="Monospace">niDCPower_InitializeWithChannels</span></a> function.</p>

<p class="Body">For example, if your entry for <strong>channelName</strong> is <span class="Monospace">0,1</span> for the exporting session and <span class="Monospace">1,2</span> for the importing session:</p>
<ul>
<li>The configuration exported from channel&nbsp;0 is imported into channel&nbsp;1.</li>
<li>The configuration exported from channel&nbsp;1 is imported into channel&nbsp;2.</li>
</ul>
<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&nbsp;&nbsp;NI-DCPower will return an error if the total number of channels initialized for the exporting session is not equal to the total number of channels initialized for the importing session.</td>
</tr>
</table>

<p class="Body"><strong>Related Topics:</strong></p>
<p class="Body"><a href="javascript:LaunchHelp('NI_DC_Power_Supplies_Help.chm::/programmingStates.html')">Programming States</a></p>
<p class="Body"><a href="javascript:LaunchHelp('NI_DC_Power_Supplies_Help.chm::/Using_Properties_And_Attributes.html')">Using Properties and Attributes</a></p>
<p class="Body"><a href="javascript:LaunchHelp('NI_DC_Power_Supplies_Help.chm::/setting_before_reading_attributes.html')">Setting Properties and Attributes Before Reading Them</a></p>

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
<td>Specifies the byte array buffer that contains the attribute configuration to import.</td>
</tr></table>
</body>

</html>     ]#����  �    Status                            2�-   �  �    Instrument Handle                �A 2  �  �    Size                             �� 2 � �  �    Configuration                      	               0           <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>
<title>niDCPower_ExportAttributeConfigurationBuffer</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_ExportAttributeConfigurationBuffer</h1>
<p class="syntax">ViStatus niDCPower_ExportAttributeConfigurationBuffer
             (ViSession vi, ViInt32 size,
              ViAddr configuration);</p>

<h2 class="purpose">Purpose</h2>
<p class="Body">Exports a session configuration to a buffer.</p>

<p class="Body">You can export and import supported configurations only between NI&#8209;DCPower devices with identical model numbers and the same number of configured channels.</p>

<p class="Body">This function verifies that the attributes you have configured for the session are valid. If the configuration is invalid, NI&#8209;DCPower returns an error.</p>

<p class="Body"><strong>Supported Configurations</strong></p>
<p class="Body">You can export and import the following between NI&#8209;DCPower sessions:</p>
<ul>
<li>Attribute configurations</li>
<li>Advanced sequences</li>
</ul>

<p class="Body"><strong>Support for this Function</strong></p>
<p class="Body">You must set the session source mode to <span class="monospace">NIDCPOWER_VAL_SEQUENCE</span> in order to configure or export and import advanced sequences.</p>
<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&nbsp;&nbsp;Exporting and importing simple sequences in Sequence source mode is unsupported.</td>
</tr>
</table>

<p class="Body"><strong>Channel Mapping Behavior</strong></p>
<p class="Body">When importing and exporting session attribute configurations between NI&#8209;DCPower sessions that were initialized with different channels, the configurations of the exporting channels are mapped to the importing channels in the order you specify in the <strong>channelName</strong> input to the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_InitializeWithChannels.html')"><span class="Monospace">niDCPower_InitializeWithChannels</span></a> function.</p>

<p class="Body">For example, if your entry for <strong>channelName</strong> is <span class="Monospace">0,1</span> for the exporting session and <span class="Monospace">1,2</span> for the importing session:</p>
<ul>
<li>The configuration exported from channel&nbsp;0 is imported into channel&nbsp;1.</li>
<li>The configuration exported from channel&nbsp;1 is imported into channel&nbsp;2.</li>
</ul>
<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&nbsp;&nbsp;NI-DCPower will return an error if the total number of channels initialized for the exporting session is not equal to the total number of channels initialized for the importing session.</td>
</tr>
</table>

<p class="Body"><strong>Related Topics:</strong></p>
<p class="Body"><a href="javascript:LaunchHelp('NI_DC_Power_Supplies_Help.chm::/Using_Properties_And_Attributes.html')">Using Properties and Attributes</a></p>
<p class="Body"><a href="javascript:LaunchHelp('NI_DC_Power_Supplies_Help.chm::/setting_before_reading_attributes.html')">Setting Properties and Attributes Before Reading Them</a></p>


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
<td>Specifies the byte array buffer to be populated with the exported attribute configuration.</td>
</tr></table>
</body>

</html>     ]#����  �    Status                            2�-   �  �    Instrument Handle                �� 2  �  �    Size                             �? 2 � �  �    Configuration                      	               0       [    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_revision_query</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_revision_query</h1>


 <p class="Syntax">ViStatus niDCPower_revision_query(ViSession vi,
                                         ViChar instrumentDriverRevision[],
                                         ViChar firmwareRevision[]);</p>
 <h2 class="purpose">Purpose</h2>
<p class="Body">Returns the revision information of NI-DCPower and the device firmware.</p>
</body>
</html>
    �    <html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_revision_query</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">instrumentDriverRevision</td>
<td class="paramDataType">ViChar[]</td>
<td class="Borderless">Returns the driver revision information for NI-DCPower.</td>
</tr></table></table></body>
</html>
    �    <html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_revision_query</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">firmwareRevision</td>
<td class="paramDataType">ViChar[]</td>
<td class="Borderless">Returns firmware revision information for the device you are using. The size of this array must be at least 256 bytes.</td>
</tr></table></table></body>
</html>
   �$ = 3 �  �    Instrument Driver Revision       �� =6 �  �    Firmware Revision                  ]#����  �    Status                            2�-   �  �    Instrument Handle                  	            	            	                  <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_ResetWithDefaults</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_ResetWithDefaults</h1>

 
 <p class="Syntax">ViStatus niDCPower_ResetWithDefaults(ViSession vi);</p>
 <h2 class="purpose">Purpose</h2>
<p class="Body">Resets the device to a known state. This function disables power generation, resets session attributes to their default values, commits the session attributes, and leaves the session in the <a href="javascript:LaunchHelp('NI_DC_Power_Supplies_Help.chm::/programmingStates.html#running')">Running</a> state. In addition to exhibiting the behavior of the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_reset.html')"><span class="Monospace">niDCPower_reset</span></a> function, this function can assign user-defined default values for configurable attributes from the IVI configuration.</p>
</body>
</html>
     ]#����  �    Status                            2�-   �  �    Instrument Handle                  	              �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_GetChannelName</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_GetChannelName</h1>

 <p class="Syntax">ViStatus niDCPower_GetChannelName(ViSession vi,
                                         ViInt32 index, ViInt32 bufferSize,
                                         ViChar channelName[]);</p>
 <h2 class="purpose">Purpose</h2>
<p class="Body">Retrieves the output <strong>channelName</strong> that corresponds to the requested <strong>index</strong>. Use the 
<a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'NIDCPOWER_ATTR_CHANNEL_COUNT.html')"><span class="Monospace">NIDCPOWER_ATTR_CHANNEL_COUNT</span></a>
 attribute to determine the upper bound of valid values for <strong>index</strong>.
</body>
</html>
    j    
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_GetChannelName</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="borderless"><tr> <td class="paramName">Status</td><td class="paramDataType">ViStatus</td><td>
<p class="Body">Reports the status of this operation. To obtain a text description of the status code, call <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_error_message.html')"><span class="Monospace">niDCPower_error_message</span></a>. To obtain additional information concerning the error condition, call <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_GetError.html')"><span class="Monospace">niDCPower_GetError</span></a>.
</td></tr></table></body>
</html>
    �    
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_GetChannelName</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">index</td>
<td class="paramDataType">ViInt32</td>
<td class="Borderless">Specifies which output channel name to return. The index values begin at 1.<br><br></td>
</tr></table></table></body>
</html>
    �    
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_GetChannelName</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">channelName</td>
<td class="paramDataType">ViChar[]</td>
<td class="Borderless">Returns the output channel name that corresponds to <strong>index</strong>.</td></tr></table></table></body>
</html>
    �    
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_GetChannelName</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">bufferSize</td>
<td class="paramDataType">ViInt32</td>
<td class="Borderless">Specifies the number of bytes in the ViChar array you specify for <strong>channelName</strong>. If the <strong>channelName</strong>, including the terminating NUL byte, contains more bytes than you indicate in this attribute, the function copies (buffer size - 1) bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value. For example, if the value is 123456 and the buffer size is 4, the function places 123 into the buffer and returns 7.<br><br>If you pass 0, you can pass <span class="Monospace">VI_NULL</span> for <strong>channelName</strong>.</td>
</tr></table></table></body>
</html>
    2�-   �  �    Instrument Handle                ��#����  �    Status or Required Size          �i = 0 �  �    Index                            �, �6 �  �    Channel Name                     �� � 1 �  �    Buffer Size                            	           1    	               �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_GetNextCoercionRecord</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_GetNextCoercionRecord</h1>

 <p class="Syntax">ViStatus niDCPower_GetNextCoercionRecord(ViSession vi,
                                                ViInt32 bufferSize,
                                                ViChar coercionRecord[]);</p>
 <h2 class="purpose">Purpose</h2>
<p class="Body">Returns the coercion information associated with the IVI session and clears the earliest instance in which NI-DCPower coerced a value you specified.</p>
</body>
</html>
    q    
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_GetNextCoercionRecord</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="borderless"><tr> <td class="paramName">Status</td><td class="paramDataType">ViStatus</td><td>
<p class="Body">Reports the status of this operation. To obtain a text description of the status code, call <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_error_message.html')"><span class="Monospace">niDCPower_error_message</span></a>. To obtain additional information concerning the error condition, call <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_GetError.html')"><span class="Monospace">niDCPower_GetError</span></a>.
</td></tr></table></body>
</html>
        
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_GetNextCoercionRecord</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">coercionRecord</td>
<td class="paramDataType">ViChar[]</td>
<td class="Borderless">Returns the next <strong>coercionRecord</strong> for the IVI session. If there are no <strong>coercionRecords</strong>, the function returns an empty string.</td></tr></table></table></body>
</html>
    �    
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_GetNextCoercionRecord</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">bufferSize</td>
<td class="paramDataType">ViInt32</td>
<td class="Borderless">Specifies the number of bytes in the ViChar array you specify for <strong>coercionRecord</strong>. If the next coercion record string, including the terminating NUL byte, contains more bytes than you indicate in this attribute, the function copies (buffer size - 1) bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value. For example, if the value is 123456 and the buffer size is 4, the function places 123 into the buffer and returns 7.<br><br>If you pass 0, you can pass <span class="Monospace">VI_NULL</span> for <strong>coercionRecord</strong>.</td>
</tr></table></table></body>
</html>
   ��#����  �    Status or Required Size           2�-   �  �    Instrument Handle                �? � Q � �    Coercion Record                  �\ = � �  �    Buffer Size                        	               	               �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_ClearInterchangeWarnings</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_ClearInterchangeWarnings</h1>


 <p class="Syntax">ViStatus niDCPower_ClearInterchangeWarnings(ViSession vi);</p>
 <h2 class="purpose">Purpose</h2>
<p class="Body">Clears the list of current interchange warnings.</p>
</body>
</html>
    2�-   �  �    Instrument Handle                  ]#����  �    Status                                 	              <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_ResetInterchangeCheck</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_ResetInterchangeCheck</h1>


 <p class="Syntax">ViStatus niDCPower_ResetInterchangeCheck(ViSession vi);</p>
 <h2 class="purpose">Purpose</h2>
<p class="Body">When developing a complex test system that consists of multiple test
      modules, it is generally a good idea to design the test modules so that
      they can run in any order.  To do so requires ensuring that each test
      module completely configures the state of each instrument it uses.  If a
      particular test module does not completely configure the state of an
      instrument, the state of the instrument depends on the configuration from
      a previously executed test module.  If you execute the test modules in a
      different order, the behavior of the instrument and therefore the entire
      test module is likely to change.  This change in behavior is generally
      instrument specific and represents an interchangeability problem.</p>
	  <p>You can use this function to test for such cases.  After you call this
      function, the interchangeability checking algorithms in the specific
      driver ignore all previous configuration operations.  By calling this
      function at the beginning of a test module, you can determine whether the
      test module has dependencies on the operation of previously executed test
      modules.</p><p>This function does not clear the interchangeability warnings from the
      list of previously recorded interchangeability warnings.  If you want to
      guarantee that the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_GetNextInterchangeWarning.html')"><span class="Monospace">niDCPower_GetNextInterchangeWarning</span></a> function only
      returns those interchangeability warnings that are generated after
      calling this function, you must clear the list of interchangeability
      warnings.  You can clear the interchangeability warnings list by
      repeatedly calling the <span class="Monospace">niDCPower_GetNextInterchangeWarning</span> function until
      no more interchangeability warnings are returned.  If you are not
      interested in the content of those warnings, you can call the
      <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_ClearInterchangeWarnings.html')"><span class="Monospace">niDCPower_ClearInterchangeWarnings</span></a> function.</p>

<table class="Borderless">
<tr>
<td class="Icon"><img src="note.gif" alt="Note"></td>
<td><strong>Note</strong>&nbsp;&nbsp;<span class="Monospace">niDCPower_GetNextInterchangeWarning</span> does not mark any attributes for an interchange check.</td>
</tr>
</table>
</body>
</html>
    2�-   �  �    Instrument Handle                  ]#����  �    Status                                 	          �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_GetNextInterchangeWarning</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_GetNextInterchangeWarning</h1>


 <p class="Syntax">ViStatus niDCPower_GetNextInterchangeWarning(ViSession vi,
                                                    ViInt32 bufferSize,
                                                    ViChar interchangeWarning[]);</p>
 <h2 class="purpose">Purpose</h2>
<p class="Body">This function returns the interchangeability warning associated with the IVI session. It retrieves and clears the earliest instance in which the class driver recorded an interchangeability warning. Interchangeability warnings indicate that using your application with a different device may cause a different behavior.</p><p> 
NI-DCPower performs interchangeability checking when the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm','NIDCPOWER_ATTR_INTERCHANGE_CHECK.html')"><span class="Monospace">NIDCPOWER_ATTR_INTERCHANGE_CHECK</span></a> attribute is set to <span class="Monospace">VI_TRUE</span>. This function returns an empty string in warning if no interchangeability warnings remain for the session. In general, NI-DCPower generates interchangeability warnings when an attribute that affects the behavior of the device is in a state that you did not specify.</p>
</body>
</html>
    u    
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_GetNextInterchangeWarning</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="borderless"><tr> <td class="paramName">Status</td><td class="paramDataType">ViStatus</td><td>
<p class="Body">Reports the status of this operation. To obtain a text description of the status code, call <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_error_message.html')"><span class="Monospace">niDCPower_error_message</span></a>. To obtain additional information concerning the error condition, call <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_GetError.html')"><span class="Monospace">niDCPower_GetError</span></a>.
</td></tr></table></body>
</html>
        
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_GetNextInterchangeWarning</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">bufferSize</td>
<td class="paramDataType">ViInt32</td>
<td class="Borderless">Specifies the number of bytes in the ViChar array you specify for <strong>interchangeWarning</strong>. If the next interchangeability warning string, including the terminating NUL byte, contains more bytes than you indicate in this attribute, the function copies (buffer size - 1) bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value. For example, if the value is 123456 and the buffer size is 4, the function places 123 into the buffer and returns 7. <br><br>If you pass 0, you can pass <span class="Monospace">VI_NULL</span> for <strong>interchangeWarning</strong>.</td>
</tr></table></table></body>
</html>
         
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_GetNextInterchangeWarning</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">interchangeWarning</td>
<td class="paramDataType">ViChar[]</td>
<td class="Borderless">Returns the next interchange warning for the IVI session. If there are no interchange warnings, the function returns an empty string.</td></tr></table></table></body>
</html>
   �n#����  �    Status or Required Size           2�-   �  �    Instrument Handle                �� = � �  �    Buffer Size                      � � Q � �    Interchange Warning                	                   	           >    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_GetError</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_GetError</h1>


 <p class="Syntax">ViStatus niDCPower_GetError(ViSession vi, ViStatus *code,
      ViInt32 bufferSize,
      ViChar description[]);</p>

 <h2 class="purpose">Purpose</h2>

<p class="Body">Retrieves and then clears the IVI error information for the session or the current execution thread unless <strong>bufferSize</strong> is 0, in which case the function does not clear the error information. By passing 0 for the buffer size, you can ascertain the buffer size required to get the entire error description string and then call the function again with a sufficiently large buffer size.<br><br>If the user specifies a valid IVI session for <strong>vi</strong>, this function retrieves and then clears the error information for the session. If the user passes <span class="Monospace">VI_NULL</span> for <strong>vi</strong>, this function retrieves and then clears the error information for the current execution thread. If <strong>vi</strong> is an invalid session, the function does nothing and returns an error. Normally, the error information describes the first error that occurred since the user last called <span class="Monospace">niDCPower_GetError</span> or <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_ClearError.html')"><span class="Monospace">niDCPower_ClearError</span></a>.</p>
</body>
</html>
    �    
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_GetError</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="borderless"><tr> <td class="paramName">Status</td><td class="paramDataType">ViStatus</td><td>
<p class="Body">Reports the status of this operation. To obtain a text description of the status code, call <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_error_message.html')"><span class="Monospace">niDCPower_error_message</span></a>. To obtain additional information concerning the error condition, call <span class="Monospace">niDCPower_GetError</span>.
</td></tr></table></body>
</html>
    �    
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_GetError</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">bufferSize</td>
<td class="paramDataType">ViInt32</td>
<td class="Borderless">Specifies the number of bytes in the ViChar array you specify for <strong>description</strong>.<br><br>If the error description, including the terminating NUL byte, contains more bytes than you indicate in this attribute, the function copies (buffer size - 1) bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value. For example, if the value is 123456 and the buffer size is 4, the function places 123 into the buffer and returns 7.<br><br>If you pass 0 for this attribute, you can pass <span class="Monospace">VI_NULL</span> for <strong>description</strong>.<br><br></td>
</tr></table></table></body>
</html>
    �    
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_GetError</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">Code</td>
<td class="paramDataType">ViStatus*</td>
<td class="Borderless">Returns the error code for the session or execution thread.</td>
</tr></table></table></body>
</html>
    �    
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_GetError</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">description</td>
<td class="paramDataType">ViChar[]</td>
<td class="Borderless">Returns the error description for the IVI session or execution thread. If there is no description, the function returns an empty string.<br><br>The buffer must contain at least as many elements as the value you specify with <strong>bufferSize</strong>. If the error description, including the terminating NUL byte, contains more bytes than you indicate with <strong>bufferSize</strong>, the function copies (buffer size - 1) bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value. For example, if the value is 123456 and the buffer size is 4, the function places 123 into the buffer and returns 7.<br><br>If you pass 0 for <strong>bufferSize</strong>, you can pass <span class="Monospace">VI_NULL</span> for this attribute.<br><br></td>
</tr></table></table></body>
</html>
   A#����  �    Status or Required Size           2�-   �  �    Instrument Handle                / 3< �  �    BufferSize                       * 3 P �  �    Code                             � � Q � �    Description                        	                   	           	           r    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_ClearError</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_ClearError</h1>


 <p class="Syntax">ViStatus niDCPower_ClearError(ViSession vi);</p>

 <h2 class="purpose">Purpose</h2>

<p class="Body">Clears the error code and error description for the IVI session. If the user specifies a valid IVI session for <strong>vi</strong>, this function clears the error information for the session. If the user passes <span class="Monospace">VI_NULL</span> for <strong>vi</strong>, this function clears the error information for the current execution thread. If the ViSession parameter is an invalid session, the function does nothing and returns an error.<br>The function clears the error code by setting it to <span class="Monospace">VI_SUCCESS</span>. If the error description string is non-NULL, the function de-allocates the error description string and sets the address to <span class="Monospace">VI_NULL</span>.<br><br>Maintaining the error information separately for each thread is useful if the user does not have a session handle to pass to the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_GetError.html')"><span class="Monospace">niDCPower_GetError</span></a> function, which occurs when a call to <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_InitializeWithChannels.html')"><span class="Monospace">niDCPower_InitializeWithChannels</span></a> fails.</p>
</body>
</html>
     ]#����  �    Status                            2�-   �  �    Instrument Handle                  	                  <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_error_message</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_error_message</h1>


 <p class="Syntax">ViStatus niDCPower_error_message(ViSession vi,
      ViStatus errorCode,
      ViChar errorMessage[256]);</p>

 <h2 class="purpose">Purpose</h2>

<p class="Body">Converts a status code returned by an instrument driver function into a user-readable string.</p>
</body>
</html>
    �    
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_error_message</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">errorCode</td>
<td class="paramDataType">ViStatus</td>
<td class="Borderless">Specifies the <strong>status</strong> parameter that is returned from any of the NI-DCPower functions.</td>
</tr></table></body>
</html>
        
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_error_message</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">error_message</td>
<td class="paramDataType">ViChar[]</td>
<td class="Borderless">Returns the user-readable message string that corresponds to the status code you specify.<br><br>You must pass a ViChar array with at least 256 bytes.<br><br></td>
</tr></table></body>
</html>
   $� =  �  h    Error Code                       &� = � � �    Error Message                      ]#����  �    Status                            2�-   �  �    Instrument Handle                  0    	            	           VI_NULL   	�    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_LockSession</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_LockSession</h1>


 <p class="Syntax">ViStatus niDCPower_LockSession(ViSession vi,
      ViBoolean *callerHasLock);</p>

 <h2 class="purpose">Purpose</h2>

<p class="Body">Obtains a multithread lock on the device session. Before doing so, the software waits until all other execution threads release their locks on the device session.<br><br>Other threads may have obtained a lock on this session for the following reasons:</p>
<ul>
<li>The application called the <span class="Monospace">niDCPower_LockSession</span> function.</li>
<li>A call to NI-DCPower locked the session.</li>
<li>A call to the IVI engine locked the session.</li>
<li>After a call to the <span class="Monospace">niDCPower_LockSession</span> function returns successfully, no other threads can access the device session until you call the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_UnlockSession.html')"><span class="Monospace">niDCPower_UnlockSession</span></a> function.</li>
<li>Use the <span class="Monospace">niDCPower_LockSession</span> function and the <span class="Monospace">niDCPower_UnlockSession</span> function around a sequence of calls to instrument driver functions if you require that the device retain its settings through the end of the sequence.</li>
</ul>
<p class="Body">You can safely make nested calls to the <span class="Monospace">niDCPower_LockSession</span> function within the same thread. To completely unlock the session, you must balance each call to the <span class="Monospace">niDCPower_LockSession</span> function with a call to the <span class="Monospace">niDCPower_UnlockSession</span> function. If, however, you use <strong>Caller_Has_Lock</strong> in all calls to the <span class="Monospace">niDCPower_LockSession</span> and <span class="Monospace">niDCPower_UnlockSession</span> function within a function, the IVI Library locks the session only once within the function regardless of the number of calls you make to the <span class="Monospace">niDCPower_LockSession</span> function. This behavior allows you to call the <span class="Monospace">niDCPower_UnlockSession</span> function just once at the end of the function.</p>
</body>
</html>
    �     <html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_LockSession</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
<td class="paramName">callerHasLock</td>
<td class="paramDataType">ViBoolean*</td>
<td class="Borderless">This parameter is optional. If you do not want to use this parameter, pass <span class="Monospace">VI_NULL</span>. <br><br>Use this parameter in complex functions to keep track of whether you obtain a lock and therefore need to unlock the session. Pass the address of a local ViBoolean variable. In the declaration of the local variable, initialize it to <span class="Monospace">VI_FALSE</span>. Pass the address of the same local variable to any other calls you make to the <span class="Monospace">niDCPower_LockSession</span> function or the <span class="Monospace">niDCPower_UnlockSession</span> function in the same function.<br><br>The parameter is an input/output parameter. The <span class="Monospace">niDCPower_LockSession</span> and <span class="Monospace">niDCPower_UnlockSession</span> functions each inspect the current value and take the following actions.
<ul>
<li>If the value is <span class="Monospace">VI_TRUE</span>, the <span class="Monospace">niDCPower_LockSession</span> function does not lock the session again.</li>
<li>If the value is <span class="Monospace">VI_FALSE</span>, the <span class="Monospace">niDCPower_LockSession</span> function obtains the lock and sets the value of the parameter to <span class="Monospace">VI_TRUE</span>.</li>
<li>If the value is <span class="Monospace">VI_FALSE</span>, the <span class="Monospace">niDCPower_UnlockSession</span> function does not attempt to unlock the session.</li>
<li>If the value is <span class="Monospace">VI_TRUE</span>, the <span class="Monospace">niDCPower_UnlockSession</span> function releases the lock and sets the value of the parameter to <span class="Monospace">VI_FALSE</span>.</li>
</ul>
Thus, you can, call the <span class="Monospace">niDCPower_UnlockSession</span> function at the end of your function without worrying about whether you actually have the lock, as shown in the following example.<br><br><span class="Monospace">ViStatus TestFunc (ViSession vi, ViInt32 flags)<br>{<br>  ViStatus error = VI_SUCCESS;<br>  ViBoolean haveLock = <span class="Monospace">VI_FALSE</span>;<br><br>  if (flags &#38; BIT_1)<br>    {<br>    viCheckErr( <span class="Monospace">niDCPower_LockSession</span>(vi, &#38;haveLock));<br>    viCheckErr( TakeAction1(vi));<br>    if (flags &#38; BIT_2)<br>      {<br>      viCheckErr( <span class="Monospace">niDCPower_UnlockSession</span>(vi, &#38;haveLock));<br>      viCheckErr( TakeAction2(vi));<br>      viCheckErr( <span class="Monospace">niDCPower_LockSession</span>(vi, &#38;haveLock);<br>      } <br>    if (flags &#38; BIT_3)<br>      viCheckErr( TakeAction3(vi));<br>    }<br><br>Error:<br>  /*At this point, you cannot really be sure that you have the lock. Fortunately, the haveLock variable takes care of that for you.*/<br>  <span class="Monospace">niDCPower_UnlockSession</span>(vi, &#38;haveLock);<br>  return error;</span><br>}<br><br></td>
</tr></table></table></body>
</html>
     ]#����  �    Status                            2�-   �  �    Instrument Handle                3$ H � �  �    Caller Has Lock                    	               	                <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_UnlockSession</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_UnlockSession</h1>

 <p class="Syntax">ViStatus niDCPower_UnlockSession(ViSession vi,
      ViBoolean *callerHasLock);</p>

 <h2 class="purpose">Purpose</h2>

<p class="Body">Releases a lock that you acquired on an device session using <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_LockSession.html')"><span class="Monospace">niDCPower_LockSession</span></a>. Refer to <span class="Monospace">niDCPower_LockSession</span> for additional information on session locks.</p>
</body>
</html>
    9    <html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_UnlockSession</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
<td class="paramName">callerHasLock</td>
<td class="paramDataType">ViBoolean*</td>
<td class="Borderless">This attribute is optional. If you do not want to use this attribute, pass <span class="Monospace">VI_NULL</span>. <br><br>Use this attribute in complex functions to keep track of whether you obtain a lock and therefore need to unlock the session.<br><br>Pass the address of a local ViBoolean variable. In the declaration of the local variable, initialize it to <span class="Monospace">VI_FALSE</span>. Pass the address of the same local variable to any other calls you make to <span class="Monospace">niDCPower_LockSession</span> or <span class="Monospace">niDCPower_UnlockSession</span>in the same function.<br><br>The parameter is an input/output parameter. <span class="Monospace">niDCPower_LockSession</span> and <span class="Monospace">niDCPower_UnlockSession</span>each inspect the current value and take the following actions.
<ul>
<li>If the value is <span class="Monospace">VI_TRUE</span>, <span class="Monospace">niDCPower_LockSession</span> does not lock the session again.</li>
<li>If the value is <span class="Monospace">VI_FALSE</span>, <span class="Monospace">niDCPower_LockSession</span> obtains the lock and sets the value of the parameter to <span class="Monospace">VI_TRUE</span>.</li>
<li>If the value is <span class="Monospace">VI_FALSE</span>, <span class="Monospace">niDCPower_UnlockSession</span>does not attempt to unlock the session.</li>
<li>If the value is <span class="Monospace">VI_TRUE</span>, <span class="Monospace">niDCPower_UnlockSession</span>releases the lock and sets the value of the parameter to <span class="Monospace">VI_FALSE</span>.</li>
</ul>
Thus, you can, call <span class="Monospace">niDCPower_UnlockSession</span> at the end of your function without worrying about whether you actually have the lock, as the following example shows.<br><br><span class="Monospace">ViStatus TestFunc (ViSession vi, ViInt32 flags)<br>{<br>  ViStatus error = VI_SUCCESS;<br>  ViBoolean haveLock = <span class="Monospace">VI_FALSE</span>;<br><br>  if (flags &#38; BIT_1)<br>    {<br>    viCheckErr( <span class="Monospace">niDCPower_LockSession</span>(vi, &#38;haveLock));<br>    viCheckErr( TakeAction1(vi));<br>    if (flags &#38; BIT_2)<br>      {<br>      viCheckErr( <span class="Monospace">niDCPower_UnlockSession</span>(vi, &#38;haveLock));<br>      viCheckErr( TakeAction2(vi));<br>      viCheckErr( <span class="Monospace">niDCPower_LockSession</span>(vi, &#38;haveLock);<br>      } <br>    if (flags &#38; BIT_3)<br>      viCheckErr( TakeAction3(vi));<br>    }<br><br>Error:<br>  /*At this point, you cannot really be sure that you have the lock. Fortunately, the haveLock variable takes care of that for you.*/<br>  <span class="Monospace">niDCPower_UnlockSession</span>(vi, &#38;haveLock);<br>  return error;<br>}</span></td>
</tr></table></table></body>
</html>
     ]#����  �    Status                            2�-   �  �    Instrument Handle                C� H � �  �    Caller Has Lock                    	               	           	`    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_init (Obsolete)</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_init (Obsolete)</h1>

 <p class="Syntax">ViStatus niDCPower_init(ViRsrc resourceName,
      ViBoolean IDQuery,
      ViBoolean resetDevice,
      ViSession *vi);</p>
 <h2 class="purpose">Purpose</h2>

<p class="Body">This function is deprecated. Use <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_InitializeWithChannels.html')"><span class="Monospace">niDCPower_InitializeWithChannels</span></a> instead.</p>

<p class="Body">Creates a new IVI instrument driver session to the device specified
      in <strong>resourceName</strong> and returns a session handle you use to identify the
      device in all subsequent NI-DCPower function calls. This function
      also sends initialization commands to set the device to the state
      necessary for the operation of NI-DCPower. </p>
	  
<p class="Body">To place the device in a known start-up state when creating a new session, set <strong>resetDevice</strong> to <span class="Monospace">VI_TRUE</span>. This action is equivalent to using the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_reset.html')"><span class="Monospace">niDCPower_reset</span></a> function.</p>

<p class="Body">To open a session and leave the device in its existing configuration without passing through a transitional output state, set <strong>resetDevice</strong> to <span class="Monospace">VI_FALSE</span>, and immediately call the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_Abort.html')"><span class="Monospace">niDCPower_Abort</span></a> function. Then configure the device as in the previous session, changing only the desired settings, and then call the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_Initiate.html')"><span class="Monospace">niDCPower_Initiate</span></a> function. Refer to the <a href="javascript:LaunchHelp('NI_DC_Power_Supplies_Help.chm::/initializeDeprecatedModel.html')">deprecated programming state model</a> for information about the specific software states.</p>



</body>
</html>
    �    
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_init</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">resourceName</td>
<td class="paramDataType">ViRsrc</td>
<td class="Borderless">Specifies the <strong>resourceName</strong> assigned by Measurement &#38; Automation
          Explorer (MAX), for example &#34;PXI1Slot3&#34; where &#34;PXI1Slot3&#34; is an
          instrument's <strong>resourceName</strong>. <strong>resourceName</strong> can also be a logical IVI
          name.</td>
</tr></table></table></body>
</html>
    �    <html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_init</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">IDQuery</td>
<td class="paramDataType">ViBoolean</td>
<td>Specifies whether the device is queried to determine if the device is a valid instrument for NI-DCPower.<BR><BR>

<strong>Defined Values</strong>:<br>

<table class="Bordered"><tr><td class="Bordered"><span class="Monospace">VI_TRUE</span> (1)</td> <td class="Bordered">Perform ID query.</td></tr><tr><td class="Bordered"><span class="Monospace">VI_FALSE</span> (0)</td><td class="Bordered">Do not perform ID query.</td></tr></table>

</td>
</tr>
</table></body>
</html>
    �     <html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_init</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">resetDevice</td>
<td class="paramDataType">ViBoolean</td>
<td>Specifies whether to reset the device during the initialization procedure.<BR><BR>

<strong>Defined Values</strong>:<br>

<table class="Bordered"><tr><td class="Bordered"><span class="Monospace">VI_TRUE</span> (1)</td> <td class="Bordered">Reset the device.</td></tr><tr><td class="Bordered"><span class="Monospace">VI_FALSE</span> (0)</td><td class="Bordered">Do not reset the device.</td></tr></table>

</td>
</tr>
</table></body>
</html>
    �    <html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_init</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">vi</td>
<td class="paramDataType">ViSession*</td>
<td class="Borderless">Returns a session handle that you use to identify the session in all subsequent NI-DCPower function calls.</td></tr></table></table></body>
</html>
   Y� >   �  �    Resource Name                    \� > �       ID Query                         _� >j �       Reset Device                     b �� �  �    Instrument Handle                  ]#����  �    Status                             "Dev1"   Yes VI_TRUE No VI_FALSE   Yes VI_TRUE No VI_FALSE    	           	          �    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_InitWithOptions (Obsolete)</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_InitWithOptions (Obsolete)</h1>

 <p class="Syntax">ViStatus niDCPower_InitWithOptions(ViRsrc resourceName,
      ViBoolean IDQuery,
      ViBoolean resetDevice,
      ViString optionString,
      ViSession *vi);</p>
 <h2 class="purpose">Purpose</h2>
<p class="Body">This function is deprecated. Use <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_InitializeWithChannels.html')"><span class="Monospace">niDCPower_InitializeWithChannels</span></a> instead.</p>

<p class="Body">Creates a new IVI instrument driver session to the device specified in <strong>resourceName</strong> and returns a session handle you use to identify the device in all subsequent NI-DCPower function calls. With this function, you can optionally set the initial state of the following session attributes: </p>
<ul>
<li><a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'NIDCPOWER_ATTR_SIMULATE.html')"><span class="Monospace">NIDCPOWER_ATTR_SIMULATE</span></a></li>
<li> <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'NIDCPOWER_ATTR_DRIVER_SETUP.html')"><span class="Monospace">NIDCPOWER_ATTR_DRIVER_SETUP</span></a></li>
<li> <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'NIDCPOWER_ATTR_RANGE_CHECK.html')"><span class="Monospace">NIDCPOWER_ATTR_RANGE_CHECK</span></a></li>
<li> <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'NIDCPOWER_ATTR_QUERY_INSTRUMENT_STATUS.html')"><span class="Monospace">NIDCPOWER_ATTR_QUERY_INSTRUMENT_STATUS</span></a></li>
 <li><a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'NIDCPOWER_ATTR_CACHE.html')"><span class="Monospace">NIDCPOWER_ATTR_CACHE</span></a></li>
<li>  <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'NIDCPOWER_ATTR_RECORD_COERCIONS.html')"><span class="Monospace">NIDCPOWER_ATTR_RECORD_COERCIONS</span></a></li></ul>


<p>This function also sends initialization commands to set the device to the state necessary for NI-DCPower to operate.</p>

<p class="Body">To place the device in a known start-up state when creating a new session, set <strong>resetDevice</strong> to <span class="Monospace">VI_TRUE</span>. This action is equivalent to using the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_reset.html')"><span class="Monospace">niDCPower_reset</span></a> function.</p>

<p class="Body">To open a session and leave the device in its existing configuration without passing through a transitional output state, set <strong>resetDevice</strong> to <span class="Monospace">VI_FALSE</span>, and immediately call the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_Abort.html')"><span class="Monospace">niDCPower_Abort</span></a> function. Then configure the device as in the previous session changing only the desired settings, and then call the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_Initiate.html')"><span class="Monospace">niDCPower_Initiate</span></a> function.

<p class="Body">Refer to the <a href="javascript:LaunchHelp('NI_DC_Power_Supplies_Help.chm::/initializeDeprecatedModel.html')">deprecated programming state model</a> for information about the specific software states.</p>


</body>
</html>
    |    <html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_InitWithOptions</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">resourceName</td>
<td class="paramDataType">ViRsrc</td>
<td class="Borderless">Specifies the <strong>resourceName</strong> assigned by Measurement &#38; Automation Explorer (MAX), for example &#34;PXI1Slot3&#34; where &#34;PXI1Slot3&#34; is an instrument's <strong>resourceName</strong>. <strong>resourceName</strong> can also be a logical IVI name.</td>
</tr></table></table></body>
</html>
    �    <html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_InitWithOptions</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">IDQuery</td>
<td class="paramDataType">ViBoolean</td>
<td class="Borderless">Specifies whether the device is queried to determine if the device is a valid instrument for NI-DCPower. </td>
</tr></table></table></body>
</html>
    �    <html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_InitWithOptions</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">resetDevice</td>
<td class="paramDataType">ViBoolean</td>
<td class="Borderless">Specifies whether to reset the device during the initialization procedure.</td>
</tr></table></table></body>
</html>
    �    <html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_InitWithOptions</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">vi</td>
<td class="paramDataType">ViSession*</td>
<td class="Borderless">Returns a handle that you use to identify the device in all subsequent NI-DCPower function calls.</td>
</tr></table></table></body>
</html>
    �    <html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niDCPower_InitWithOptions</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">optionString</td>
<td class="ParamName">ViString</td>
<td class="Borderless">Specifies the initial value of certain attributes for the session. The syntax for <strong>optionString</strong> is a list of attributes with an assigned value where 1 is <span class="Monospace">VI_TRUE</span> and 0 is <span class="Monospace">VI_FALSE</span>. Each attribute/value combination is delimited with a comma, as shown in the following example:<p></p> 
&#34;Simulate=0,RangeCheck=1,QueryInstrStatus=0,Cache=1&#34;<p>If you do not wire this input or pass an empty string, the session assigns the default values, shown in the example, for these attributes. You do not have to specify a value for all the attributes. If you do not specify a value for an attribute, the default value is used. 
</p>

<p>For more information about simulating a device, refer to <a href="javascript:LaunchHelp('NI_DC_Power_Supplies_Help.chm::/simulate.html')">Simulating a Power Supply or SMU</a>. </td>
</tr></table></table></body>
</html>
   tr >   �  �    Resource Name                    v� > � �       ID Query                         x� >Q �       Reset Device                     z� �� �  �    Instrument Handle                  ]#����  �    Status                           |f �  � �    Option String                      "Dev1"   Yes VI_TRUE No VI_FALSE   Yes VI_TRUE No VI_FALSE    	           	           5"Simulate=0,RangeCheck=1,QueryInstrStatus=1,Cache=1"   P    <html>
<head>
<script src="launchhelp.js" type="text/javascript"></script>

<title>niDCPower_ConfigureOutputRange (Obsolete)</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>

<body>
<h1 class="function">niDCPower_ConfigureOutputRange (Obsolete)</h1>

 <p class="Syntax">ViStatus niDCPower_ConfigureOutputRange(ViSession vi,
      ViConstString channelName,
      ViInt32 rangeType,
      ViReal64 range);</p>

 <h2 class="purpose">Purpose</h2>

<p class="Body">Configures either the voltage level range or the current limit range. If <strong>range type</strong> is Voltage, the voltage level range is configured. If <strong>range type</strong> is Current, the current limit range is configured. </p>
<p class="Body">This function does not configure any of the DC Current output function settings. Refer to the <a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_ConfigureOutputFunction.html')"><span class="Monospace">niDCPower_ConfigureOutputFunction</span></a> function for more information.</p>

<p class="Body">This is a deprecated function. You must use the following functions instead of the<span class="Monospace">niDCPower_ConfigureOutputRange</span> function:</p>

<ul>
<li><a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_ConfigureVoltageLevel.html')"><span class="Monospace">niDCPower_ConfigureVoltageLevel</span></a></li>

<li><a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_ConfigureVoltageLimit.html')"><span class="Monospace">niDCPower_ConfigureVoltageLimit</span></a></li>

<li><a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_ConfigureCurrentLevel.html')"><span class="Monospace">niDCPower_ConfigureCurrentLevel</span></a></li>

<li><a href="javascript:LaunchMergedHelp('NI_DC_Power_Supplies_Help.chm', 'NIDCPowerCRef.chm', 'cviniDCPower_ConfigureCurrentLimit.html')"><span class="Monospace">niDCPower_ConfigureCurrentLimit</span></a></li>
</ul>

</body>
</html>    �    
<html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title> niDCPower_CalAdjustVoltageLevel</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">range</td>
<td class="paramDataType">ViReal64</td>
<td class="Borderless">Specifies the range to calibrate with these settings.  Only one channel at a time may be calibrated.</td>
</tr></table></body>
</html>
    6    <html>
<head>

<link rel="STYLESHEET" type="text/css" href="styles.css">
<title>niCDPower_ConfigureOutputRange</title><script src="launchhelp.js" type="text/javascript"></script>
</head>
<body><table class="Borderless"><tr>
 <td class="paramName">rangeType</td>
<td class="paramDataType">ViInt32</td>
<td class="Borderless">Specifies the type of the range: voltage or current.<BR><BR>

<strong>Defined Values</strong>:<BR>
<table class="Bordered"><tr><td class="Bordered"><span class="Monospace">NIDCPOWER_VAL_RANGE_CURRENT (0)</span></td><td class="Bordered">NI-DCPower configures the current range.</td></tr>
<tr><td class="Bordered"><span class="Monospace">NIDCPOWER_VAL_RANGE_VOLTAGE (1)</span></td><td class="Bordered">NI-DCPower configures the voltage range.</td></tr>
</table>

</td></tr></table></body>
</html>

    2�# 
  �  �    Instrument Handle                 =� ) 
 �  �    Channel Name                     �t )� �  �    Range                              ]#����  �    Status                           �I ' � � �    Range Type                             ""    0.0    	                     HVoltage NIDCPOWER_VAL_RANGE_VOLTAGE Current NIDCPOWER_VAL_RANGE_CURRENT ����         �  +�             K.        InitializeWithChannels                                                                                                                  ����         -J  5R             K.        close                                                                                                                                   ����         5�  D\             K.        ConfigureVoltageLevel                                                                                                                   ����         EM  N�             K.        ConfigureVoltageLevelRange                                                                                                              ����         O�  ^n             K.        ConfigureCurrentLimit                                                                                                                   ����         _�  ii             K.        ConfigureCurrentLimitRange                                                                                                              ����         jZ  x=             K.        ConfigureOutputResistance                                                                                                               ����         y.  �A             K.        ConfigureCurrentLevel                                                                                                                   ����         �2  ��             K.        ConfigureCurrentLevelRange                                                                                                              ����         ��  ��             K.        ConfigureVoltageLimit                                                                                                                   ����         ��  �n             K.        ConfigureVoltageLimitRange                                                                                                              ����         �_  ��             K.        ConfigureSourceMode                                                                                                                     ����         ��  ο             K.        ConfigureOutputFunction                                                                                                                 ����         �T  ��             K.        SetSequence                                                                                                                             ����         �O  �p             K.        ConfigureOutputEnabled                                                                                                                  ����         �y  �<             K.        ConfigurePulseVoltageLevel                                                                                                              ����         �-              K.        ConfigurePulseVoltageLevelRange                                                                                                         ����        
 �             K.        ConfigurePulseBiasVoltageLevel                                                                                                          ����        � �             K.        ConfigurePulseCurrentLimit                                                                                                              ����        � '�             K.        ConfigurePulseCurrentLimitRange                                                                                                         ����        (� 4w             K.        ConfigurePulseBiasCurrentLimit                                                                                                          ����        5h A             K.        ConfigurePulseCurrentLevel                                                                                                              ����        B K�             K.        ConfigurePulseCurrentLevelRange                                                                                                         ����        L� YL             K.        ConfigurePulseBiasCurrentLevel                                                                                                          ����        Z= e�             K.        ConfigurePulseVoltageLimit                                                                                                              ����        f� p�             K.        ConfigurePulseVoltageLimitRange                                                                                                         ����        q� }�             K.        ConfigurePulseBiasVoltageLimit                                                                                                          ����        ~w 	�             K.        CreateAdvancedSequence                                                          _VI_FUNC                                                ����        $ T             K.        CreateAdvancedSequenceStep                                                      _VI_FUNC                                                ����        " d             K.        CreateAdvancedSequenceCommitStepWithChannels                                    _VI_FUNC                                                ����        m %�             K.        DeleteAdvancedSequence                                                          _VI_FUNC                                                ����        &� 2�             K.        ConfigureApertureTime                                                                                                                   ����        4~ ?�             K.        ConfigureAutoZero                                                                                                                       ����        @� M+             K.        ConfigurePowerLineFrequency                                                                                                             ����        N) V@             K.        ConfigureSense                                                                                                                          ����        Wo c`             K.        Measure                                                                                                                                 ����        d� p�             K.        MeasureMultiple                                                                                                                         ����        r ��         	    �.        FetchMultiple                                                                                                                           ����        �� �             K.        QueryInCompliance                                                                                                                       ����        � �;             K.        QueryOutputState                                                                                                                        ����        �� �N             K.        Commit                                                                                                                                  ����        �� ��             K.        Initiate                                                                                                                                ����        �5 �             K.        Abort                                                                                                                                   ����        �� î             K.        ConfigureDigitalEdgeStartTrigger                                                                                                        ����        �� �n             K.        ConfigureSoftwareEdgeStartTrigger                                                                                                       ����        �� ͅ             K.        DisableStartTrigger                                                                                                                     ����        �� �             K.        ConfigureDigitalEdgeSourceTrigger                                                                                                       ����        �Q ��             K.        ConfigureSoftwareEdgeSourceTrigger                                                                                                      ����        �Z �"             K.        DisableSourceTrigger                                                                                                                    ����        � ��             K.        ConfigureDigitalEdgeMeasureTrigger                                                                                                      ����        �� ��             K.        ConfigureSoftwareEdgeMeasureTrigger                                                                                                     ����        � p             K.        ConfigureDigitalEdgeSequenceAdvanceTrigger                                                                                              ����        � 
X             K.        ConfigureSoftwareEdgeSequenceAdvanceTrigger                                                                                             ����        
� k             K.        DisableSequenceAdvanceTrigger                                                                                                           ����        � V             K.        ConfigureDigitalEdgePulseTrigger                                                                                                        ����        � !             K.        ConfigureSoftwareEdgePulseTrigger                                                                                                       ����        !� &�             K.        DisablePulseTrigger                                                                                                                     ����        ' ?�             K.        ExportSignal                                                                                                                            ����        D M�             K.        SendSoftwareEdgeTrigger                                                                                                                 ����        O� _�             K.        WaitForEvent                                                                                                                            ����        bB or             K.        SetAttributeViInt32                                                                                                                     ����        q ~F             K.        SetAttributeViReal64                                                                                                                    ����        � �             K.        SetAttributeViInt64                                                                                                                     ����        �� ��             K.        SetAttributeViString                                                                                                                    ����        �� ��             K.        SetAttributeViBoolean                                                                                                                   ����        �i ��             K.        SetAttributeViSession                                                                                                                   ����        �G ��             K.        GetAttributeViInt32                                                                                                                     ����        �4 ��             K.        GetAttributeViReal64                                                                                                                    ����        �+ ��             K.        GetAttributeViInt64                                                                                                                     ����        � ��             K.        GetAttributeViString                                                                                                                    ����        �:               K.        GetAttributeViBoolean                                                                                                                   ����        =              K.        GetAttributeViSession                                                                                                                   ����        @              K.        QueryMaxVoltageLevel                                                                                                                    ����        7 &�             K.        QueryMinCurrentLimit                                                                                                                    ����        (# 0�             K.        QueryMaxCurrentLimit                                                                                                                    ����        2 ?\             K.        QueryInCompliance                                                                                                                       ����        @R K�             K.        QueryOutputState                                                                                                                        ����        M( W�             K/        CalSelfCalibrate                                                                                                                        ����        X{ dq             K.        InitExtCal                                                                                                                              ����        em nD             K.        CloseExtCal                                                                                                                             ����        o: �             K.        CalAdjustVoltageLevel                                                                                                                   ����        �� �v             K.        CalAdjustVoltageMeasurement                                                                                                             ����        � �0             K.        CalAdjustCurrentLimit                                                                                                                   ����        �� �5             K.        CalAdjustCurrentMeasurement                                                                                                             ����        �� Ķ             K.        CalAdjustResidualVoltageOffset                                                                                                          ����        �k �O             K.        CalAdjustResidualCurrentOffset                                                                                                          ����        � �O             K.        CalAdjustOutputResistance                                                                                                               ����        ݯ �E             K.        ConnectInternalReference                                                                                                                ����        �o �i             K.        CalAdjustInternalReference                                                                                                              ����        �� ��             K.        ChangeExtCalPassword                                                                                                                    ����         t �             K.        GetExtCalRecommendedInterval                                                                                                            ����        � �             K.        GetExtCalLastDateAndTime                                                                                                                ����        O ,�             K.        GetSelfCalLastDateAndTime                                                                                                               ����        .c 5�             K.        GetCalUserDefinedInfoMaxSize                                                                                                            ����        6� @=             K.        SetCalUserDefinedInfo                                                                                                                   ����        @� H             K.        GetCalUserDefinedInfo                                                                                                                   ����        H� PH             K.        ReadCurrentTemperature                                                                                                                  ����        Q X�             K.        GetExtCalLastTemp                                                                                                                       ����        Yg d
             K.        GetSelfCalLastTemp                                                                                                                      ����        d� g�             K.        reset                                                                                                                                   ����        h< l�             K.        ResetDevice                                                                                                                             ����        m# q             K.        Disable                                                                                                                                 ����        q� zC             K.        self_test                                                                                                                               ����        {? �m             K.        ImportAttributeConfigurationFile                                                niDCPower                                               ����        �  �U             K.        ExportAttributeConfigurationFile                                                niDCPower                                               ����        � ��             K.        ImportAttributeConfigurationBuffer                                              niDCPower                                               ����        �w ��             K.        ExportAttributeConfigurationBuffer                                              niDCPower                                               ����        �� ��             K.        revision_query                                                                                                                          ����        �� ��             K.        ResetWithDefaults                                                                                                                       ����        �\ ��             K.        GetChannelName                                                                                                                          ����        � �R             K.        GetNextCoercionRecord                                                                                                                   ����        �F �              K.        ClearInterchangeWarnings                                                                                                                ����        � �!             K.        ResetInterchangeCheck                                                                                                                   ����        ��              K.        GetNextInterchangeWarning                                                                                                               ����        � q             K.        GetError                                                                                                                                ����        � "              K.        ClearError                                                                                                                              ����        "� (�             K.        error_message                                                                                                                           ����        )� ?�             K.        LockSession                                                                                                                             ����        @� O�             K.        UnlockSession                                                                                                                           ����        P� dM             K.        init                                                                                                                                    ����        e� �N             K.        InitWithOptions                                                                                                                         ����        � ��             K.        ConfigureOutputRange                                                                                                                          �                                                                                     �Initialize With Channels                                                             �Close                                                                               |Source                                                                              �DC Voltage                                                                           �Configure Voltage Level                                                              �Configure Voltage Level Range                                                        �Configure Current Limit                                                              �Configure Current Limit Range                                                        �Configure Output Resistance                                                         %DC Current                                                                           �Configure Current Level                                                              �Configure Current Level Range                                                        �Configure Voltage Limit                                                              �Configure Voltage Limit Range                                                        �Configure Source Mode                                                                �Configure Output Function                                                            �Set Sequence                                                                         �Configure Output Enabled                                                            �Pulse Voltage                                                                        �Configure Pulse Voltage Level                                                        �Configure Pulse Voltage Level Range                                                  �Configure Pulse Bias Voltage Level                                                   �Configure Pulse Current Limit                                                        �Configure Pulse Current Limit Range                                                  �Configure Pulse Bias Current Limit                                                  �Pulse Current                                                                        �Configure Pulse Current Level                                                        �Configure Pulse Current Level Range                                                  �Configure Pulse Bias Current Level                                                   �Configure Pulse Voltage Limit                                                        �Configure Pulse Voltage Limit Range                                                  �Configure Pulse Bias Voltage Limit                                                  QAdvanced Sequencing                                                                  �Create Advanced Sequence                                                             �Create Advanced Sequence Step                                                        �Create Advanced Sequence Commit Step With Channels                                   �Delete Advanced Sequence                                                            �Measure                                                                              �Configure Aperture Time                                                              �Configure Auto Zero                                                                  �Configure Power Line Frequency                                                       �Configure Sense                                                                      �Measure                                                                              �Measure Multiple                                                                     �Fetch Multiple                                                                       �Query In Compliance                                                                  �Query Output State                                                                  `Control                                                                              �Commit                                                                               �Initiate                                                                             �Abort                                                                               �Triggers and Events                                                                 �Start Trigger                                                                        �Configure Digital Edge Start Trigger                                                 �Configure Software Edge Start Trigger                                                �Disable Start Trigger                                                               <Source Trigger                                                                       �Configure Digital Edge Source Trigger                                                �Configure Software Edge Source Trigger                                               �Disable Source Trigger                                                              �Measure Trigger                                                                      �Configure Digital Edge Measure Trigger                                               �Configure Software Edge Measure Trigger                                             �Sequence Advance Trigger                                                             �Configure Digital Edge Sequence Advance Trigger                                      �Configure Software Edge Sequence Advance Trigger                                     �Disable Sequence Advance Trigger                                                    	%Pulse Trigger                                                                        �Configure Digital Edge Pulse Trigger                                                 �Configure Software Edge Pulse Trigger                                                �Disable Pulse Trigger                                                                �Export Signal                                                                        �Send Software Edge Trigger                                                           �Wait For Event                                                                      	nSet/Get Attribute                                                                   	�Set Attribute                                                                        �Set Attribute ViInt32                                                                �Set Attribute ViReal64                                                               �Set Attribute ViInt64                                                                �Set Attribute ViString                                                               �Set Attribute ViBoolean                                                              �Set Attribute ViSession                                                             
SGet Attribute                                                                        �Get Attribute ViInt32                                                                �Get Attribute ViReal64                                                               �Get Attribute ViInt64                                                                �Get Attribute ViString                                                               �Get Attribute ViBoolean                                                              �Get Attribute ViSession                                                             
�Query                                                                                �Query Max Voltage Level                                                              �Query Min Current Limit                                                              �Query Max Current Limit                                                              �Query In Compliance                                                                  �Query Output State                                                                  JCalibration                                                                          �Cal Self Calibrate                                                                  �External Calibration                                                                 �Initialize External Calibration                                                      �Close External Calibration                                                           �Cal Adjust Voltage Level                                                             �Cal Adjust Voltage Measurement                                                       �Cal Adjust Current Limit                                                             �Cal Adjust Current Measurement                                                       �Cal Adjust Residual Voltage Offset                                                   �Cal Adjust Residual Current Offset                                                   �Cal Adjust Output Resistance                                                         �Connect Internal Reference                                                           �Cal Adjust Internal Reference                                                       &Calibration Utility                                                                  �Change Ext Cal Password                                                              �Get Ext Cal Recommended Interval                                                     �Get Ext Cal Last Date And Time                                                       �Get Self Cal Last Date And Time                                                      �Get Cal User Defined Info Max Size                                                   �Set Cal User Defined Info                                                            �Get Cal User Defined Info                                                            �Read Current Temperature                                                             �Get Ext Cal Last Temperature                                                         �Get Self Cal Last Temperature                                                       �Utility                                                                              �Reset                                                                                �Reset Device                                                                         �Disable                                                                              �Self-Test                                                                           �Import/Export Attribute Configuration                                                �Import Attribute Configuration File                                                  �Export Attribute Configuration File                                                  �Import Attribute Configuration Buffer                                                �Export Attribute Configuration Buffer                                               cOther IVI                                                                            �Revision Query                                                                       �Reset With Defaults                                                                  �Get Channel Name                                                                     �Get Next Coercion Record                                                             �Clear Interchange Warnings                                                           �Reset Interchange Check                                                              �Get Next Interchange Warning                                                        �Error Info                                                                           �Get Error                                                                            �Clear Error                                                                          �Error Message                                                                       Locking                                                                              �Lock Session                                                                         �Unlock Session                                                                      zObsolete                                                                             �Initialize                                                                           �Initialize With Options                                                              �Configure Output Range                                                          