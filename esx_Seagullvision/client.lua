ESX              = nil
local PlayerData = {}

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
  PlayerData = xPlayer   
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
  PlayerData.job = job
end)

local Nightvision = false
function setNightvision(flag)
  Nightvision = flag
end

Nightvision = true
RegisterNetEvent("Nightvision")
AddEventHandler("Nightvision", function()
	if ( Nightvision ) then
		SetNightvision(true)
		Nightvision = false
		--TriggerEvent('night-thermal')
		TriggerEvent('skinchanger:getSkin', function(skin)
			if skin.sex == 0 then
				local clothesSkin = {
            		['mask_1'] = 132, ['mask_2'] = 0
						}
			  TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)
			else
				local clothesSkin = {
            		['mask_1'] = 132, ['mask_2'] 	= 0
        		}
				TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)
				end
    end)
	else
		SetNightvision(false)
		Nightvision = true
		TriggerEvent('skinchanger:getSkin', function(skin)
			if skin.sex == 0 then
				local clothesSkin = {
            		['mask_1'] = 0, ['mask_2'] = 0
						}
			  TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)
			else
				local clothesSkin = {
            		['mask_1'] = 0, ['mask_2'] 	= 0
        		}
				TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)
				end
    end)
	end
end)

local Thermalvision = false
function SetThermalvision(flag2)
  Thermalvision = flag2
end

Thermalvision = true
RegisterNetEvent("Thermalvision")
AddEventHandler("Thermalvision", function()
	if ( Thermalvision ) then
		SetSeethrough(true)
		Thermalvision = false
		TriggerEvent('skinchanger:getSkin', function(skin)
			if skin.sex == 0 then
				local clothesSkin = {
            		['mask_1'] = 132, ['mask_2'] = 0
						}
			  TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)
			else
				local clothesSkin = {
            		['mask_1'] = 132, ['mask_2'] 	= 0
        		}
				TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)
				end
    end)
		
	else
		SetSeethrough(false)
		Thermalvision = true
		TriggerEvent('skinchanger:getSkin', function(skin)
			if skin.sex == 0 then
				local clothesSkin = {
            		['mask_1'] = 0, ['mask_2'] = 0
						}
			  TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)
			else
				local clothesSkin = {
            		['mask_1'] = 0, ['mask_2'] 	= 0
        		}
				TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)
				end
    end)
	end
end)