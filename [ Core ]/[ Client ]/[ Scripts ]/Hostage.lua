--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
local InAni = false
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
TriggerEvent('chat:addSuggestion', '/fear', 'show fear', {})
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterCommand('fear', function()
  local PedID = PedID()
  if (not (InAni)) then return StartAni(PedID) end
  if (InAni) then return EndAni(PedID) end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
function StartAni(PedID)
  local Hash = GetHashKey('WORLD_HUMAN_FLEE')
  ClearPedTasks(PedID)
  TaskStartScenarioInPlace(PedID, Hash, -1, true, false, false, false)
  InAni = true
  TriggerEvent('DokusCore:ScareAni:Stop')
end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
function EndAni(PedID)
  InAni = false
  ClearPedTasks(PedID)
end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterNetEvent('DokusCore:ScareAni:Stop', function()
  local PedID = PedID()
  while (InAni) do Wait(1)
    local Back = IsControlJustPressed(0, _Keys.BACKSPACE)
    local X = IsControlJustPressed(0, _Keys.X)
    if (((Back) or (X)) and (InAni)) then EndAni(PedID) end
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
