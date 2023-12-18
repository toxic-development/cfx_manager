--[[
    AI Dispatch Disabler | © 2023 Toxic Development

    NOTE: This Enables or disables the specified 'dispatch service' type. 'Dispatch services' 
    are used for spawning AI response peds/vehicles for events such as a fire in the street, 
    or gunfire in a gang area. 
    
    - This script disables all of them by default, but you can pick and choose which ones you 
    want to disable setting their values to true or false.
]]

local DispatchType = {
    Invalid = 0,
	PoliceCar = 1,
	PoliceHeli = 2,
	FireTruck = 3,
	SwatSquad = 4,
	Medics = 5,
	PoliceBike = 6,
	PoliceTransport = 7,
	PoliceRoadBlock = 8,
	PoliceCarWaitPulledOver = 9,
	PoliceCarWaitCruising = 10,
	GangViolence = 11,
	SwatHeli = 12,
	PoliceBoat = 13,
	ArmyResponse = 14,
	BikerBackup = 15,
}

Citizen.CreateThread(function()
    -- [[ DISABLE THE AI DISPATCHER BASED ON CONFIGURATION ]]
    if DISPATCHER.state == 'on' then
        for k, v in pairs(DISPATCHER.events) do

            if k == 'Invalid' then k = DispatchType.Invalid end
            if k == 'PoliceCar' then k = DispatchType.PoliceCar end
            if k == 'PoliceHeli' then k = DispatchType.PoliceHeli end
            if k == 'FireTruck' then k = DispatchType.FireTruck end
            if k == 'SwatSquad' then k = DispatchType.SwatSquad end
            if k == 'Medics' then k = DispatchType.Medics end
            if k == 'PoliceBike' then k = DispatchType.PoliceBike end
            if k == 'PoliceTransport' then k = DispatchType.PoliceTransport end
            if k == 'PoliceRoadBlock' then k = DispatchType.PoliceRoadBlock end
            if k == 'PoliceCarWaitPulledOver' then k = DispatchType.PoliceCarWaitPulledOver end
            if k == 'PoliceCarWaitCruising' then k = DispatchType.PoliceCarWaitCruising end
            if k == 'GangViolence' then k = DispatchType.GangViolence end
            if k == 'SwatHeli' then k = DispatchType.SwatHeli end
            if k == 'PoliceBoat' then k = DispatchType.PoliceBoat end
            if k == 'ArmyResponse' then k = DispatchType.ArmyResponse end
            if k == 'BikerBackup' then k = DispatchType.BikerBackup end
    
            if v == true then
                EnableDispatchService(k, true)
            elseif v == false then
                EnableDispatchService(k, false)
            elseif v == nil then
                EnableDispatchService(k, true)
            end
        end
    elseif DISPATCHER.state == 'off' then
        EnableDispatchService(DispatchType.Invalid, true)
        EnableDispatchService(DispatchType.PoliceCar, true)
        EnableDispatchService(DispatchType.PoliceHeli, true)
        EnableDispatchService(DispatchType.FireTruck, true)
        EnableDispatchService(DispatchType.SwatSquad, true)
        EnableDispatchService(DispatchType.Medics, true)
        EnableDispatchService(DispatchType.PoliceBike, true)
        EnableDispatchService(DispatchType.PoliceTransport, true)
        EnableDispatchService(DispatchType.PoliceRoadBlock, true)
        EnableDispatchService(DispatchType.PoliceCarWaitPulledOver, true)
        EnableDispatchService(DispatchType.PoliceCarWaitCruising, true)
        EnableDispatchService(DispatchType.GangViolence, true)
        EnableDispatchService(DispatchType.SwatHeli, true)
        EnableDispatchService(DispatchType.PoliceBoat, true)
        EnableDispatchService(DispatchType.ArmyResponse, true)
        EnableDispatchService(DispatchType.BikerBackup, true)
    end
end)