--[[
    CHECK FOR UPDATES IF ENABLED IN THE CONFIG
    ==========================================
    - This file checks for updates from the github repo.
    - If an update is available, it will print it in the console.
    - If you want to disable this, set 'updates' to false in the config.lua file.
    - If you want to enable this, set 'updates' to true in the config.lua file.
    - If you want to check for updates manually, run the command '/checkupdates' in the server console.

    NOTE: 
    - Disabling these checks is not recommended.
    - Editing the file is not recommended
]]

if CONFIGURATION.updates then

    print('| ================================== |')
    print('| CFX Manager - Checking for updates |')
    print('| ================================== |')

    Citizen.CreateThred(function()

        local version = GetResourceMetadata(GetCurrentResourceName(), 'version', 0)

        PerformHttpRequest('https://api.github.com/repos/toxic-development/cfx_manager/releases/latest', function(err, text, headers)
            local data = json.decode(text)
            
            if data.tag_name ~= version then
                print('| ==================================== |')
                print('| CFX Manager - Update available       |')
                print('| ==================================== |')
                print('| Current version: '..version..'       |')
                print('| Latest version: '..data.tag_name..'  |')
                print('| ==================================== |')
                print('| Download: '..data.html_url..'        |')
                print('| ==================================== |')
            else
                print('| ==================================== |')
                print('| CFX Manager - No updates available   |')
                print('| ===================================  |')
                print('| Current version: '..version..'       |')
                print('| Latest version: '..data.tag_name..'  |')
                print('| ==================================== |')
            end
        end, 'GET', '', { ['Content-Type'] = 'application/json' })
    end)
end