--[[
    Audio Event Manager | © 2023 Toxic Development

    NOTE: This Enables or disables the specified 'audio flag'.
    
    - This script disables all of them by default, but you can pick and choose which ones you 
    want to disable setting their values to true or false.
]]
local AudioTypes = {
    SwitchWheelAudio = 'ActivateSwitchWheelAudio',
    AllowAmbientSpeech = 'AllowAmbientSpeechInSlowMo',
    AllowCutsceneOverScreenFade = 'AllowCutsceneOverScreenFade',
    AllowForceRadioAfterRetune = 'AllowForceRadioAfterRetune',
    AllowPainAndAmbientSpeechToPlayDuringCutscene = 'AllowPainAndAmbientSpeechToPlayDuringCutscene',
    AllowPlayerAIOnMission = 'AllowPlayerAIOnMission',
    AllowPoliceScannerWhenPlayerHasNoControl = 'AllowPoliceScannerWhenPlayerHasNoControl',
    AllowRadioDuringSwitch = 'AllowRadioDuringSwitch',
    AllowRadioOverScreenFade = 'AllowRadioOverScreenFade',
    AllowScoreAndRadio = 'AllowScoreAndRadio',
    AllowScriptedSpeechInSlowMo = 'AllowScriptedSpeechInSlowMo',
    AvoidMissionCompleteDelay = 'AvoidMissionCompleteDelay',
    DisableAbortConversationForDeathAndInjury = 'DisableAbortConversationForDeathAndInjury',
    DisableAbortConversationForRagdoll = 'DisableAbortConversationForRagdoll',
    DisableBarks = 'DisableBarks',
    DisableFlightMusic = 'DisableFlightMusic',
    DisableReplayScriptStreamRecording = 'DisableReplayScriptStreamRecording',
    EnableHeadsetBeep = 'EnableHeadsetBeep',
    ForceConversationInterrupt = 'ForceConversationInterrupt',
    ForceSeamlessRadioSwitch = 'ForceSeamlessRadioSwitch',
    ForceSniperAudio = 'ForceSniperAudio',
    FrontendRadioDisabled = 'FrontendRadioDisabled',
    HoldMissionCompleteWhenPrepared = 'HoldMissionCompleteWhenPrepared',
    IsDirectorModeActive = 'IsDirectorModeActive',
    IsPlayerOnMissionForSpeech = 'IsPlayerOnMissionForSpeech',
    ListenerReverbDisabled = 'ListenerReverbDisabled',
    LoadMPData = 'LoadMPData',
    MobileRadioInGame = 'MobileRadioInGame',
    OnlyAllowScriptTriggerPoliceScanner = 'OnlyAllowScriptTriggerPoliceScanner',
    PlayMenuMusic = 'PlayMenuMusic',
    PoliceScannerDisabled = 'PoliceScannerDisabled',
    ScriptedConvListenerMaySpeak = 'ScriptedConvListenerMaySpeak',
    SpeechDucksScore = 'SpeechDucksScore',
    SuppressPlayerScubaBreathing = 'SuppressPlayerScubaBreathing',
    WantedMusicDisabled = 'WantedMusicDisabled',
    WantedMusicOnMission = 'WantedMusicOnMission',
}

Citizen.CreateThread(function()

    if AUDIO.state == 'on' then
        for k, v in pairs(AUDIO.events) do

            if k == 'SwitchWheelAudio' then k = AudioTypes.SwitchWheelAudio end
            if k == 'AllowAmbientSpeech' then k = AudioTypes.AllowAmbientSpeech end
            if k == 'AllowCutsceneOverScreenFade' then k = AudioTypes.AllowCutsceneOverScreenFade end
            if k == 'AllowForceRadioAfterRetune' then k = AudioTypes.AllowForceRadioAfterRetune end
            if k == 'AllowPainAndAmbientSpeechToPlayDuringCutscene' then k = AudioTypes.AllowPainAndAmbientSpeechToPlayDuringCutscene end
            if k == 'AllowPlayerAIOnMission' then k = AudioTypes.AllowPlayerAIOnMission end
            if k == 'AllowPoliceScannerWhenPlayerHasNoControl' then k = AudioTypes.AllowPoliceScannerWhenPlayerHasNoControl end
            if k == 'AllowRadioDuringSwitch' then k = AudioTypes.AllowRadioDuringSwitch end
            if k == 'AllowRadioOverScreenFade' then k = AudioTypes.AllowRadioOverScreenFade end
            if k == 'AllowScoreAndRadio' then k = AudioTypes.AllowScoreAndRadio end
            if k == 'AllowScriptedSpeechInSlowMo' then k = AudioTypes.AllowScriptedSpeechInSlowMo end
            if k == 'AvoidMissionCompleteDelay' then k = AudioTypes.AvoidMissionCompleteDelay end
            if k == 'DisableAbortConversationForDeathAndInjury' then k = AudioTypes.DisableAbortConversationForDeathAndInjury end
            if k == 'DisableAbortConversationForRagdoll' then k = AudioTypes.DisableAbortConversationForRagdoll end
            if k == 'DisableBarks' then k = AudioTypes.DisableBarks end
            if k == 'DisableFlightMusic' then k = AudioTypes.DisableFlightMusic end
            if k == 'DisableReplayScriptStreamRecording' then k = AudioTypes.DisableReplayScriptStreamRecording end
            if k == 'EnableHeadsetBeep' then k = AudioTypes.EnableHeadsetBeep end
            if k == 'ForceConversationInterrupt' then k = AudioTypes.ForceConversationInterrupt end
            if k == 'ForceSeamlessRadioSwitch' then k = AudioTypes.ForceSeamlessRadioSwitch end
            if k == 'ForceSniperAudio' then k = AudioTypes.ForceSniperAudio end
            if k == 'FrontendRadioDisabled' then k = AudioTypes.FrontendRadioDisabled end
            if k == 'HoldMissionCompleteWhenPrepared' then k = AudioTypes.HoldMissionCompleteWhenPrepared end
            if k == 'IsDirectorModeActive' then k = AudioTypes.IsDirectorModeActive end
            if k == 'IsPlayerOnMissionForSpeech' then k = AudioTypes.IsPlayerOnMissionForSpeech end
            if k == 'ListenerReverbDisabled' then k = AudioTypes.ListenerReverbDisabled end
            if k == 'LoadMPData' then k = AudioTypes.LoadMPData end
            if k == 'MobileRadioInGame' then k = AudioTypes.MobileRadioInGame end
            if k == 'OnlyAllowScriptTriggerPoliceScanner' then k = AudioTypes.OnlyAllowScriptTriggerPoliceScanner end
            if k == 'PlayMenuMusic' then k = AudioTypes.PlayMenuMusic end
            if k == 'PoliceScannerDisabled' then k = AudioTypes.PoliceScannerDisabled end
            if k == 'ScriptedConvListenerMaySpeak' then k = AudioTypes.ScriptedConvListenerMaySpeak end
            if k == 'SpeechDucksScore' then k = AudioTypes.SpeechDucksScore end
            if k == 'SuppressPlayerScubaBreathing' then k = AudioTypes.SuppressPlayerScubaBreathing end
            if k == 'WantedMusicDisabled' then k = AudioTypes.WantedMusicDisabled end
            if k == 'WantedMusicOnMission' then k = AudioTypes.WantedMusicOnMission end

            if v == true then
                SetAudioFlag(k, true)
            elseif v == false then
                SetAudioFlag(k, false)
            elseif v == nil then
                SetAudioFlag(k, true)
            end
        end
    end
end)