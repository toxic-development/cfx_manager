RegisterCommand('cfx', function(source, args, rawCommand)

    if not args[1] then return end

    local cmd = args[1]
    local perms = CFXManager:HasAcePermission(source, 'cfxmanager.' .. cmd)
    local version = {
        current = CFXManager:Version().current,
        latest = CFXManager:Version().latest
    }

    if cmd == 'help' then
        if (source > 0) then
                
                CFXManager:Logger('| ======================================= |', { 255, 0, 0 }, true, true)
                CFXManager:Logger('| CFX Manager - Help Command              |', { 255, 0, 0 }, true, true)
                CFXManager:Logger('| ======================================= |', { 255, 0, 0 }, true, true)
                CFXManager:Logger('| /help - Display this help menu          |', { 255, 0, 0 }, true, true)
                CFXManager:Logger('| /version - Current CFX Manager version  |', { 255, 0, 0 }, true, true)
                CFXManager:Logger('| ======================================= |', { 255, 0, 0 }, true, true)
            
        else 
    
                CFXManager:Logger('| ======================================= |')
                CFXManager:Logger('| CFX Manager - Help Command              |')
                CFXManager:Logger('| ======================================= |')
                CFXManager:Logger('| /help - Display this help menu          |')
                CFXManager:Logger('| /version - Current CFX Manager version  |')
                CFXManager:Logger('| ======================================= |')
        end

    elseif cmd == 'version' then
        if (source > 0) then 

            CFXManager:Logger('| ======================================= |', { 255, 0, 0 }, true, true)
            CFXManager:Logger('| CFX Manager - Version Command           |', { 255, 0, 0 }, true, true)
            CFXManager:Logger('| ======================================= |', { 255, 0, 0 }, true, true)
            CFXManager:Logger('| Current Version: ' .. version.current .. '      |', { 255, 0, 0 }, true, true)
            CFXManager:Logger('| ======================================= |', { 255, 0, 0 }, true, true)

        else 

            CFXManager:Logger('| ======================================= |')
            CFXManager:Logger('| CFX Manager - Version Command           |')
            CFXManager:Logger('| ======================================= |')
            CFXManager:Logger('| Current Version: ' .. version.current .. '      |')
            CFXManager:Logger('| ======================================= |')
        end

    elseif cmd == 'updates' then
        if (source > 0) then 

            if perms then

                CFXManager:Logger('| ======================================= |', { 255, 0, 0 }, true, true)
                CFXManager:Logger('| CFX Manager - Updates Command           |', { 255, 0, 0 }, true, true)
                CFXManager:Logger('| ======================================= |', { 255, 0, 0 }, true, true)
                CFXManager:Logger('| Current Version: ' .. version.current .. '      |', { 255, 0, 0 }, true, true)
                CFXManager:Logger('| Latest Version: ' .. version.latest .. '       |', { 255, 0, 0 }, true, true)
                CFXManager:Logger('| ======================================= |', { 255, 0, 0 }, true, true)

            else 

                CFXManager:Logger('| ======================================= |', { 255, 0, 0 }, true, true)
                CFXManager:Logger('| CFX Manager - Updates Command           |', { 255, 0, 0 }, true, true)
                CFXManager:Logger('| ======================================= |', { 255, 0, 0 }, true, true)
                CFXManager:Logger('| You do not have permission to use this  |', { 255, 0, 0 }, true, true)
                CFXManager:Logger('| command.                               |', { 255, 0, 0 }, true, true)
                CFXManager:Logger('| ======================================= |', { 255, 0, 0 }, true, true)
            end

        else 

            if perms then

                CFXManager:Logger('| ======================================= |')
                CFXManager:Logger('| CFX Manager - Updates Command           |')
                CFXManager:Logger('| ======================================= |')
                CFXManager:Logger('| Current Version: ' .. version.current .. '      |')
                CFXManager:Logger('| Latest Version: ' .. version.latest .. '       |')
                CFXManager:Logger('| ======================================= |')

            else 

                CFXManager:Logger('| =============================================== |')
                CFXManager:Logger('| CFX Manager - Updates Command                   |')
                CFXManager:Logger('| =============================================== |')
                CFXManager:Logger('| You do not have permission to use this command  |')
                CFXManager:Logger('| =============================================== |')
            end
        end
    end
end)