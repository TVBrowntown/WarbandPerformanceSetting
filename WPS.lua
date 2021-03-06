--[[

 Setup your Custom 1 and Custom 2 Settings for WPS
 Custom 1 = Not in a Warband
 Low = In a Warband

]]-- 

WPS = {}
SoloSetting = SystemData.Settings.Performance.PERF_LEVEL_CUSTOM1
WarbandSetting = SystemData.Settings.Performance.PERF_LEVEL_LOW


function WPS.OnInit()
  RegisterEventHandler(SystemData.Events.GROUP_ACCEPT_INVITATION, "WPS.Join")
  RegisterEventHandler(SystemData.Events.GROUP_ACCEPT_REFERRAL, "WPS.Join")
  RegisterEventHandler(SystemData.Events.GROUP_LEAVE, "WPS.Leave")
  RegisterEventHandler(SystemData.Events.BATTLEGROUP_UPDATED, "WPS.Join")
  RegisterEventHandler(SystemData.Events.BATTLEGROUP_MEMBER_UPDATED, "WPS.Join")
end

function WPS.Join()
  if SystemData.Settings.Performance.perfLevel ~= WarbandSetting and IsWarBandActive() == true and GameData.Player.isInScenario == false then
    SystemData.Settings.Performance.perfLevel = WarbandSetting
    BroadcastEvent(SystemData.Events.USER_SETTINGS_CHANGED)
    d("WarbandSetting (PERF_LEVEL_LOW) applied!")
  end
end

function WPS.Leave()
  if SystemData.Settings.Performance.perfLevel ~= SoloSetting then
    SystemData.Settings.Performance.perfLevel = SoloSetting
    BroadcastEvent(SystemData.Events.USER_SETTINGS_CHANGED)
    d("SoloSetting (PERF_LEVEL_CUSTOM1) applied!")
  end
end

function WPS.Toggle()
  if SystemData.Settings.Performance.perfLevel ~= WarbandSetting then
    SystemData.Settings.Performance.perfLevel = WarbandSetting
    BroadcastEvent(SystemData.Events.USER_SETTINGS_CHANGED)
    d("WarbandSetting (PERF_LEVEL_LOW) applied!")
  else
    SystemData.Settings.Performance.perfLevel = SoloSetting
    BroadcastEvent(SystemData.Events.USER_SETTINGS_CHANGED)
    d("SoloSetting (PERF_LEVEL_CUSTOM1) applied!")
  end
end