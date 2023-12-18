--[[
	CUSTOM DISPATCHER CONFIGURATION

	NOTE: setting the state to "off" will allow all of the default events to be triggered.
	Setting the state to "on" will disable all of the default events, and you can pick and choose
	which ones you want to disable by setting their values to true or false.

	@state: on or off (default: on) -- on will disable all of the default events, off will allow all of the default events to be triggered.
	
	@events: a table of events to disable (default: nil) -- nil will use the default events, true will disable, false will enable.
	   @Invalid: nil -- true will disable, false will enable. (default: nil) -- nil will use the default of true.
	   @PoliceCar: nil -- true will disable, false will enable. (default: nil) -- nil will use the default true.
	   @PoliceHeli: nil -- true will disable, false will enable. (default: nil) -- nil will use the default true.
	   @FireTruck: nil -- true will disable, false will enable. (default: nil) -- nil will use the default true.
	   @SwatSquad: nil -- true will disable, false will enable. (default: nil) -- nil will use the default true.
	   @Medics: nil -- true will disable, false will enable. (default: nil) -- nil will use the default true.
	   @PoliceBike: nil -- true will disable, false will enable. (default: nil) -- nil will use the default true.
	   @PoliceTransport: nil -- true will disable, false will enable. (default: nil) -- nil will use the default true.
	   @PoliceRoadBlock: nil -- true will disable, false will enable. (default: nil) -- nil will use the default true.
	   @PoliceCarWaitPulledOver: nil -- true will disable, false will enable. (default: nil) -- nil will use the default true.
	   @PoliceCarWaitCruising: nil -- true will disable, false will enable. (default: nil) -- nil will use the default true.
	   @GangViolence: nil -- true will disable, false will enable. (default: nil) -- nil will use the default true.
	   @SwatHeli: nil -- true will disable, false will enable. (default: nil) -- nil will use the default true.
	   @PoliceBoat: nil -- true will disable, false will enable. (default: nil) -- nil will use the default true.
	   @ArmyResponse: nil -- true will disable, false will enable. (default: nil) -- nil will use the default true.
	   @BikerBackup: nil -- true will disable, false will enable. (default: nil) -- nil will use the default true.
]]

DISPATCHER = {
	state = 'on',
    events = {
		Invalid = nil, -- Event which will be triggered when an invalid event is called.
	    PoliceCar = nil, -- Event which will be triggered when a ai/npc police car is called.
	    PoliceHeli = nil, -- Event which will be triggered when a ai/npc police helicopter is called.
	    FireTruck = nil, -- Event which will be triggered when a ai/npc fire truck is called.
	    SwatSquad = nil, -- Event which will be triggered when a ai/npc swat squad is called.
	    Medics = nil, -- Event which will be triggered when ai/npc medics are called.
	    PoliceBike = nil, -- Event which will be triggered when a ai/npc police bike is called.
 	    PoliceTransport = nil, -- Event which will be triggered when a ai/npc police transport is called.
	    PoliceRoadBlock = nil, -- Event which will be triggered when a ai/npc police road block is called.
	    PoliceCarWaitPulledOver = nil, -- Event which will be triggered when a ai/npc police car is called to pull someone over.
	    PoliceCarWaitCruising = nil, -- Event which will be triggered when a ai/npc police car is called to cruise.
	    GangViolence = nil, -- Event which will be triggered when gang violence is called in.
	    SwatHeli = nil, -- Event which will be triggered when a ai/npc swat helicopter is called.
	    PoliceBoat = nil, -- Event which will be triggered when a ai/npc police boat is called.
	    ArmyResponse = nil, -- Event which will be triggered when ai/npc controlled army is called.
	    BikerBackup = nil -- Event which will be triggered when ai/npc biker backup is called.
	}
}