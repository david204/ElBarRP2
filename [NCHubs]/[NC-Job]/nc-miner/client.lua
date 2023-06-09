  local QBCore = exports['qb-core']:GetCoreObject()
  local PlayerData = QBCore.Functions.GetPlayerData()
  local showCheck = false
  display = false
  mine = false
  pedspawned = false

 Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1000)
		for k, v in pairs(Config.Pedlocation) do
			local pos = GetEntityCoords(PlayerPedId())	
			local dist = #(v.Cords - pos)
			
			if dist < 40 and pedspawned == false then
				TriggerEvent('nc-miner:spawnped',v.Cords,v.h)
				pedspawned = true
			end
			if dist >= 35 then
				pedspawned = false
				DeletePed(npc)
			end
		end
	end
end)

blips = {
  [1] = {daccablip = 'minerblip', coords = vector3(144.98, -2203.68, 4.69), width = 2, length = 2},
  [2] = {daccablip = 'minegold', coords = vector3(2922.33, 2799.54, 41.32), width = 2, length = 2},
}


Citizen.CreateThread(function()
  for k, v in pairs (blips) do
      if blips[k].daccablip == "minerblip" then
          local sell = AddBlipForCoord(blips[k].coords)
          SetBlipSprite(sell, 527)
          SetBlipColour(sell, 5)
          SetBlipScale  (sell, 0.7)
          SetBlipAsShortRange(sell, true)
          BeginTextCommandSetBlipName("STRING")
          AddTextComponentString("Sell Miner Stuff")
          EndTextCommandSetBlipName(sell)
      end

      if blips[k].daccablip == "minegold" then
          local minegold = AddBlipForCoord(blips[k].coords)
          SetBlipSprite(minegold, 527)
          SetBlipColour(minegold, 5)
          SetBlipScale  (minegold, 0.7)
          SetBlipAsShortRange(minegold, true)
          BeginTextCommandSetBlipName("STRING")
          AddTextComponentString("Miner Job")
          EndTextCommandSetBlipName(minegold)
      end
  end
end)



RegisterNetEvent('nc-miner:spawnped')
AddEventHandler('nc-miner:spawnped',function(coords,heading)
	local hash = GetHashKey('cs_russiandrunk')
	if not HasModelLoaded(hash) then
		RequestModel(hash)
		Wait(10)
	end
	while not HasModelLoaded(hash) do 
		Wait(10)
	end

    pedspawned = true
	npc = CreatePed(5, hash, coords, heading, false, false)
	FreezeEntityPosition(npc, true)
    SetBlockingOfNonTemporaryEvents(npc, true)
    SetEntityInvincible(npc, true) --Don't let the ped die.

    local rodHandle = CreateObject(`p_cs_clipboard`, pedPos, true)
    AttachEntityToEntity(rodHandle, npc, GetPedBoneIndex(npc, 18905), 0.27, 0.100, 0.010, 1050.0, 140.0, 0.0, true, true, false, true, 1, true)
	loadAnimDict("amb@world_human_clipboard@male@base") 
	while not TaskPlayAnim(npc, "amb@world_human_clipboard@male@base", "base", 8.0, 1.0, -1, 17, 0, 0, 0, 0) do
	Wait(1000)
	end
end)

function loadAnimDict( dict )
    while ( not HasAnimDictLoaded( dict ) ) do
        RequestAnimDict( dict )
        Citizen.Wait( 5 )
    end
end


function startpro()
  QBCore.Functions.Progressbar('dacca', 'Lest do it...', 19000, false, true, { -- Name | Label | Time | useWhileDead | canCancel
      disableMovement = true,
      disableCarMovement = true,
      disableMouse = false,
      disableCombat = true,
  }, {}, {}, function() -- Play When Done
      --Stuff goes here
  end, function() -- Play When Cancel
      --Stuff goes here
  end)
end

RegisterNetEvent('nc-miner:mine', function()
  local playerPed = PlayerPedId()
  local pedPos = GetEntityCoords(playerPed)

  if mine == true then
    QBCore.Functions.Notify('Hey! - you just mined it', 'error')
    else 

      mine = true
      startpro()
  RequestAnimDict('anim@gangops@facility@servers@bodysearch@')
  RequestAnimDict("melee@hatchet@streamed_core")

	    while (not HasAnimDictLoaded("melee@hatchet@streamed_core")) do
        Wait(7)
      end
      while (not HasAnimDictLoaded("anim@gangops@facility@servers@bodysearch@")) do
        Wait(7)
      end
      while (not HasAnimDictLoaded("anim@gangops@facility@servers@bodysearch@")) do
        Wait(7)
      end
      local rodHandle = CreateObject(`prop_tool_pickaxe`, pedPos, true)

      AttachEntityToEntity(rodHandle, playerPed, GetPedBoneIndex(playerPed, 28422), 0.1, 0.05, 0, 80.0, 10.0, 90.0, true, true, false, true, 1, true)

      FreezeEntityPosition(playerPed, true)

      TaskPlayAnim(PlayerPedId(), "melee@hatchet@streamed_core" ,"plyr_front_takedown", 5.0, -1, -1, 50, 0, false, false, false)
      TriggerServerEvent('nc-miner:givegold', RandomItem(), RandomNumber())
      Wait(1000)
      TriggerServerEvent('nc-miner:givegold', RandomItem(), RandomNumber())
      TaskPlayAnim(PlayerPedId(), "melee@hatchet@streamed_core" ,"plyr_front_takedown", 5.0, -1, -1, 50, 0, false, false, false)
      Wait(4000)
      TriggerServerEvent('nc-miner:givegold', RandomItem(), RandomNumber())
      TaskPlayAnim(PlayerPedId(), "melee@hatchet@streamed_core" ,"plyr_front_takedown", 5.0, -1, -1, 50, 0, false, false, false)
      Wait(4000)
      TriggerServerEvent('nc-miner:givegold', RandomItem(), RandomNumber())
      TaskPlayAnim(PlayerPedId(), "melee@hatchet@streamed_core" ,"plyr_front_takedown", 5.0, -1, -1, 50, 0, false, false, false)
      Wait(4000)
      TriggerServerEvent('nc-miner:givegold', RandomItem(), RandomNumber())
      DeleteEntity(rodHandle)
      TaskPlayAnim(PlayerPedId(), "anim@gangops@facility@servers@bodysearch@" ,"player_search" ,8.0, -8.0, -1, 48, 0, false, false, false )
      Wait(4000)

      ClearPedTasks(playerPed, true)
      FreezeEntityPosition(playerPed, false)
      print('clear ped')

      Wait(4000)
      print('start')
      mine = false

  end

end)

rocks = {
  Config.rocks.metalscrap,
  Config.rocks.copper,
  Config.rocks.aluminum,
  Config.rocks.steel,
  Config.rocks.rubber,

}

function RandomItem()
  return rocks[math.random(#rocks)]
end

function RandomNumber()
	return math.random(1,2)
end

RegisterNetEvent('nc-miner:openNUI', function()
  SetNuiFocus(true, true)
  SendNUIMessage({ action = "open"}) 
  showCheck = true
end)

RegisterNUICallback('closeCheckList', function()
showCheck = false
SetNuiFocus(false, false)
end) 


exports['qb-target']:AddBoxZone("mine1", vector3(2921.81, 2799.29, 41.27), 3.0, 1.1, {
  name = "mine1", 
  heading=349,
  debugPoly=false,
  minZ=40.27,
  maxZ=42.47,
}, {
  options = {
    {
      type = "client",
      event = "nc-miner:mine",
      icon = 'fas fa-circle',
      label = 'mine',
    }
  },
  distance = 3.5,
})


exports['qb-target']:AddBoxZone("mine2", vector3(2925.72, 2796.44, 41.45), 3.0, 1.1, {
  name = "mine2", 
  heading=349,
  debugPoly=false,
  minZ=40.27,
  maxZ=42.47,
}, {
  options = {
    {
      type = "client",
      event = "nc-miner:mine",
      icon = 'fas fa-circle',
      label = 'mine',
    }
  },
  distance = 3.5,
})

exports['qb-target']:AddBoxZone("mine3", vector3(2925.9, 2792.69, 41.21), 3.0, 1.1, {
  name = "mine3", 
  heading=349,
  debugPoly=false,
  minZ=40.27,
  maxZ=42.47,
}, {
  options = {
    {
      type = "client",
      event = "nc-miner:mine",
      icon = 'fas fa-circle',
      label = 'mine',
    }
  },
  distance = 3.5,
})

exports['qb-target']:AddBoxZone("mine4", vector3(2927.94, 2789.88, 40.59), 3.0, 1.1, {
  name = "mine4", 
  heading=349,
  debugPoly=false,
  minZ=39.27,
  maxZ=42.47,
}, {
  options = {
    {
      type = "client",
      event = "nc-miner:mine",
      icon = 'fas fa-circle',
      label = 'mine',
    }
  },
  distance = 3.5,
})

exports['qb-target']:AddBoxZone("mine5", vector3(2930.96, 2787.22, 40.17), 3.0, 1.1, {
  name = "mine5", 
  heading=349,
  debugPoly=false,
  minZ=39.27,
  maxZ=42.47,
}, {
  options = {
    {
      type = "client",
      event = "nc-miner:mine",
      icon = 'fas fa-circle',
      label = 'mine',
    }
  },
  distance = 3.5,
})


exports['qb-target']:AddBoxZone("ped", vector3(144.86, -2204.23, 4.69), 1, 1, {
  name = "ped", 
  heading=0,
  debugPoly=false,
  minZ=3.59,
  maxZ=5.99
}, {
  options = {
    {
      type = "server",
      event = "nc-miner:sellgold",
      icon = 'fas fa-hand-holding-dollar',
      label = 'Sell Mine Stuff',
    },
    {
      type = "client",
      event = "nc-miner:openNUI",
      icon = 'fas fa-clipboard-list',
      label = 'Price List',
    },
  },
  distance = 1.5,
})