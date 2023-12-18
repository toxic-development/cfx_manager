--[[
    @description: Audio flags can control what ambient sounds are played.
    @documentation: https://docs.fivem.net/natives/?_0xB9EFD5C25018725A.

    @state: on or off (default: on) -- on will disable all of the default events, off will allow all of the default events to be triggered.
    @events: table of events to disable (default: nil) -- nil will use the default events, true will disable, false will enable.
       @SwitchWheelAudio: nil -- true will disable, false will enable. (default: nil) -- nil will use the default of true.
       @AllowAmbientSpeech: nil -- true will disable, false will enable. (default: nil) -- nil will use the default true.
       @AllowCutsceneOverScreenFade: nil -- true will disable, false will enable. (default: nil) -- nil will use the default true.
       @AllowForceRadioAfterRetune: nil -- true will disable, false will enable. (default: nil) -- nil will use the default true.
       @AllowPainAndAmbientSpeechToPlayDuringCutscene: nil -- true will disable, false will enable. (default: nil) -- nil will use the default true.
       @AllowPlayerAIOnMission: nil -- true will disable, false will enable. (default: nil) -- nil will use the default true.
       @AllowPoliceScannerWhenPlayerHasNoControl: nil -- true will disable, false will enable. (default: nil) -- nil will use the default true.
       @AllowRadioDuringSwitch: nil -- true will disable, false will enable. (default: nil) -- nil will use the default true.
       @AllowRadioOverScreenFade: nil -- true will disable, false will enable. (default: nil) -- nil will use the default true.
       @AllowScoreAndRadio: nil -- true will disable, false will enable. (default: nil) -- nil will use the default true.
       @AllowScriptedSpeechInSlowMo: nil -- true will disable, false will enable. (default: nil) -- nil will use the default true.
       @AvoidMissionCompleteDelay: nil -- true will disable, false will enable. (default: nil) -- nil will use the default true.
       @DisableAbortConversationForDeathAndInjury: nil -- true will disable, false will enable. (default: nil) -- nil will use the default true.
       @DisableAbortConversationForRagdoll: nil -- true will disable, false will enable. (default: nil) -- nil will use the default true.
       @DisableBarks: nil -- true will disable, false will enable. (default: nil) -- nil will use the default true.
       @DisableFlightMusic: nil -- true will disable, false will enable. (default: nil) -- nil will use the default true.
       @DisableReplayScriptStreamRecording: nil -- true will disable, false will enable. (default: nil) -- nil will use the default true.
       @EnableHeadsetBeep: nil -- true will disable, false will enable. (default: nil) -- nil will use the default true.
       @ForceConversationInterrupt: nil -- true will disable, false will enable. (default: nil) -- nil will use the default true.
       @ForceSeamlessRadioSwitch: nil -- true will disable, false will enable. (default: nil) -- nil will use the default true.
       @ForceSniperAudio: nil -- true will disable, false will enable. (default: nil) -- nil will use the default true.
       @FrontendRadioDisabled: nil -- true will disable, false will enable. (default: nil) -- nil will use the default true.
       @HoldMissionCompleteWhenPrepared: nil -- true will disable, false will enable. (default: nil) -- nil will use the default true.
       @IsDirectorModeActive: nil -- true will disable, false will enable. (default: nil) -- nil will use the default true.
       @IsPlayerOnMissionForSpeech: nil -- true will disable, false will enable. (default: nil) -- nil will use the default true.
       @ListenerReverbDisabled: nil -- true will disable, false will enable. (default: nil) -- nil will use the default true.
       @LoadMPData: nil -- true will disable, false will enable. (default: nil) -- nil will use the default true.
       @MobileRadioInGame: nil -- true will disable, false will enable. (default: nil) -- nil will use the default true.
       @OnlyAllowScriptTriggerPoliceScanner: nil -- true will disable, false will enable. (default: nil) -- nil will use the default true.
       @PlayMenuMusic: nil -- true will disable, false will enable. (default: nil) -- nil will use the default true.
       @PoliceScannerDisabled: nil -- true will disable, false will enable. (default: nil) -- nil will use the default true.
       @ScriptedConvListenerMaySpeak: nil -- true will disable, false will enable. (default: nil) -- nil will use the default true.
       @SpeechDucksScore: nil -- true will disable, false will enable. (default: nil) -- nil will use the default true.
       @SuppressPlayerScubaBreathing: nil -- true will disable, false will enable. (default: nil) -- nil will use the default true.
       @WantedMusicDisabled: nil -- true will disable, false will enable. (default: nil) -- nil will use the default true.
       @WantedMusicOnMission: nil -- true will disable, false will enable. (default: nil) -- nil will use the default true.
]]

AUDIO = {
    state = 'on',
    events = {
        SwitchWheelAudio = nil, -- Audio flag which will allow you to hear the sound when switching weapons.
        AllowAmbientSpeech = nil, -- Audio flag which will allow you to hear ambient speech.
        AllowCutsceneOverScreenFade = nil, -- Audio flag which will allow you to hear cutscene audio over the screen fade.
        AllowForceRadioAfterRetune = nil, -- Audio flag which will allow you to hear the radio after retuning.
        AllowPainAndAmbientSpeechToPlayDuringCutscene = nil, -- Audio flag which will allow you to hear pain and ambient speech during cutscenes.
        AllowPlayerAIOnMission = nil, -- Audio flag which will allow you to hear player AI on missions.
        AllowPoliceScannerWhenPlayerHasNoControl = nil, -- Audio flag which will allow you to hear the police scanner when the player has no control.
        AllowRadioDuringSwitch = nil, -- Audio flag which will allow you to hear the radio during a switch.
        AllowRadioOverScreenFade = nil, -- Audio flag which will allow you to hear the radio over the screen fade.
        AllowScoreAndRadio = nil, -- Audio flag which will allow you to hear the score and radio.
        AllowScriptedSpeechInSlowMo = nil, -- Audio flag which will allow you to hear scripted speech in slow motion.
        AvoidMissionCompleteDelay = nil, -- Audio flag which will allow you to avoid the mission complete delay.
        DisableAbortConversationForDeathAndInjury = nil, -- Audio flag which will allow you to disable the abort conversation for death and injury.
        DisableAbortConversationForRagdoll = nil, -- Audio flag which will allow you to disable the abort conversation for ragdoll.
        DisableBarks = nil, -- Audio flag which will allow you to disable barks.
        DisableFlightMusic = nil, -- Audio flag which will allow you to disable flight music.
        DisableReplayScriptStreamRecording = nil, -- Audio flag which will allow you to disable the replay script stream recording.
        EnableHeadsetBeep = nil, -- Audio flag which will allow you to enable the headset beep.
        ForceConversationInterrupt = nil, -- Audio flag which will allow you to force a conversation interrupt.
        ForceSeamlessRadioSwitch = nil, -- Audio flag which will allow you to force a seamless radio switch.
        ForceSniperAudio = nil, -- Audio flag which will allow you to force sniper audio.
        FrontendRadioDisabled = nil, -- Audio flag which will allow you to disable the frontend radio.
        HoldMissionCompleteWhenPrepared = nil, -- Audio flag which will allow you to hold the mission complete when prepared.
        IsDirectorModeActive = nil, -- Audio flag which will allow you to play speech infinitely without any pauses like in Director Mode. 
        IsPlayerOnMissionForSpeech = nil, -- Audio flag which will allow you to play speech infinitely without any pauses like in Director Mode.
        ListenerReverbDisabled = nil, -- Audio flag which will allow you to disable the listener reverb.
        LoadMPData = nil, -- Audio flag which will allow you to load MP data.
        MobileRadioInGame = nil,  -- Audio flag which will allow you to enable the mobile radio in game.
        OnlyAllowScriptTriggerPoliceScanner = nil,  -- Audio flag which will allow you to only allow the script to trigger the police scanner.
        PlayMenuMusic = nil, -- Audio flag which will allow you to play menu music.
        PoliceScannerDisabled = nil, -- Audio flag which will allow you to disable the police scanner.
        ScriptedConvListenerMaySpeak = nil, -- Audio flag which will allow you to allow the scripted conversation listener to speak.
        SpeechDucksScore = nil, -- Audio flag which will allow you to duck the score.
        SuppressPlayerScubaBreathing = nil, -- Audio flag which will allow you to suppress the player scuba breathing.
        WantedMusicDisabled = nil, -- Audio flag which will allow you to disable the wanted music.
        WantedMusicOnMission = nil, -- Audio flag which will allow you to enable the wanted music on mission.
    }
}