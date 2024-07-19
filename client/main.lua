local scriptName = GetCurrentResourceName()
local QBCore = exports['qb-core']:GetCoreObject()
local PlayerJob = {}
local PlayerGang = {}
local garageZones = {}

local function GetBaseGroups()
    local jobs = QBCore.Shared.Jobs
    local gangs = QBCore.Shared.Gangs
    local groups = {}
    for k, v in pairs(jobs) do
        local data = {
            value = k,
            label = v.label,
        }
        groups[k] = data
    end
    for k, v in pairs(gangs) do
        local data = {
            value = k,
            label = v.label,
        }
        groups[k] = data
    end
    return groups
end

local function MenuGarage(role, garage)
    local groups = GetBaseGroups()
    local vehicleMenu = {
        {
            header = Lang:t('menus.vehicles', { role = groups[role].label }),
            isMenuHeader = true
        }
    }

    for _, model in pairs(garage.vehicles) do
        vehicleMenu[#vehicleMenu + 1] = {
            header = QBCore.Shared.Vehicles[model].name,
            txt = Lang:t('menus.vehicleseats', {qtd = GetVehicleModelNumberOfSeats(GetHashKey(model))}),
            params = {
                event = scriptName..":client:TakeOutVehicle",
                args = {
                    vehicle = model,
                    garage = garage
                }
            }
        }
    end
    vehicleMenu[#vehicleMenu + 1] = {
        header = Lang:t('menus.close'),
        txt = "",
        params = {
            event = "qb-menu:client:closeMenu"
        }
    }
    exports['qb-menu']:openMenu(vehicleMenu)
end

local function GeneratePlate()
    local plate = QBCore.Shared.RandomInt(1) .. QBCore.Shared.RandomStr(3) .. QBCore.Shared.RandomInt(2) .. QBCore.Shared.RandomStr(2)
    return plate:upper()
end

local CheckVehicle = false
local function GetVehicle(role, garage)
    CheckVehicle = true
    CreateThread(function()
        while CheckVehicle do
            if IsControlJustPressed(0, 38) then
                exports['qb-core']:KeyPressed(38)
                CheckVehicle = false
                local ped = PlayerPedId()
                if IsPedInAnyVehicle(ped, false) then
                    QBCore.Functions.DeleteVehicle(GetVehiclePedIsIn(ped))
                else
                    MenuGarage(role, garage)
                end
            end
            Wait(1)
        end
    end)
end

local function IsGroupAllowed(group)
    return group == PlayerJob.name or group == PlayerGang.name
end

local function loadGarages()
    for role, roleGarages in pairs(Config.Garages) do
        if IsGroupAllowed(role) then
            for index, garage in pairs(roleGarages) do
                garageZones[#garageZones + 1] = {
                    zone = BoxZone:Create(
                        garage.takeOut,
                        garage.length,
                        garage.width,
                        {
                            name = ("garage-%s-%d-takeOut"): format(role, index),
                            minZ = garage.takeOut.z - 1.0,
                            maxZ = garage.takeOut.z + 1.0,
                            debugPoly = Config.Debug,
                            heading = garage.takeOut.w
                        }
                    ),
                    garage = garage,
                    role = role,
                    index = index
                }
            end
        end
    end

    for _, zone in pairs(garageZones) do
        zone.zone:onPlayerInOut(function(isPointInside)
            zone.isInside = isPointInside
            local playerOrg = PlayerJob
            if zone.role == PlayerGang.name then
                playerOrg = PlayerGang
            end
            if isPointInside and playerOrg.grade.level >= zone.garage.minimumGrade then
                exports['qb-core']:DrawText(Lang:t('text.veh_button'), 'left')
                GetVehicle(zone.role, zone.garage)
            else
                CheckVehicle = false
                exports['qb-core']:HideText()
            end
        end)
    end
end

local function TakeOutVehicle(model, garage)
    local coords = garage.takeOut
    QBCore.Functions.TriggerCallback('QBCore:Server:SpawnVehicle', function(netId)
        local veh = NetToVeh(netId)
        SetVehicleNumberPlateText(veh, GeneratePlate())
        SetVehicleLivery(veh, 1)
        SetVehicleColours(veh, 12, 12)
        SetEntityHeading(veh, coords.w)
        exports[Config.FuelScript]:SetFuel(veh, 100.0)
        TaskWarpPedIntoVehicle(PlayerPedId(), veh, -1)
        TriggerEvent("vehiclekeys:client:SetOwner", QBCore.Functions.GetPlate(veh))
        SetVehicleEngineOn(veh, true, true)
    end, model, coords, true)
end

RegisterNetEvent(scriptName..':client:TakeOutVehicle', function(data)
    TakeOutVehicle(data.vehicle, data.garage)
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate', function(JobInfo)
    PlayerJob = JobInfo
end)

RegisterNetEvent('QBCore:Client:OnGangUpdate', function(GangInfo)
    PlayerGang = GangInfo
end)

AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
    QBCore.Functions.GetPlayerData(function(PlayerData)
        PlayerJob = PlayerData.job
        PlayerGang = PlayerData.gang
    end)
    loadGarages()
end)

AddEventHandler('onResourceStart', function(resourceName)
    if resourceName == GetCurrentResourceName() then
		QBCore.Functions.GetPlayerData(function(PlayerData)
			PlayerJob = PlayerData.job
            PlayerGang = PlayerData.gang
		end)
        loadGarages()
    end
end)
