--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
-- Core functionality for this plugin bundle
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
Steam, CharID = nil, nil
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
CreateThread(function()
  if (_Modules.ScriptBundle) then
    while not FrameReady() do Wait(1000) end
    while not UserInGame() do Wait(1000) end
    Online = true
    local PedID  = PedID()
    local Data = TCTCC('DokusCore:Sync:Get:UserData')
    Steam, CharID = Data.SteamID, Data.CharID
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------


























--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
