<?xml version="1.0" encoding="UTF-8"?>
<ModuleFile xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
<UiMod name="WarbandPerformanceSetting" version="1" date="2021-03-06" >
	<Author name="Bset" email="-" />
	<VersionSettings gameVersion="1.8.4" windowsVersion="1.0" savedVariablesVersion="1.0" />
	<Description text="Automatically switch between performance settings when in a orvr warband or not." />

	<WARInfo>
	    <Categories>
	    </Categories>
	</WARInfo>

	<Dependencies>
	</Dependencies>

	<Files>
		<File name="WPS.lua"/>		
	</Files>

	<OnInitialize>
		<CallFunction name="WPS.OnInit"/>
	</OnInitialize>

	<OnUpdate>
	</OnUpdate>

	<OnShutdown>
	</OnShutdown>
</UiMod>
</ModuleFile>
