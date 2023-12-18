--[[
    Base configuration file for the cfx_manager resource.
    This file is used to set the default configuration values.

    @param updates: boolean
        - If true, the resource will check for updates (recommended).
        - If false, the resource will not check for updates.

    @param debug: boolean
        - If true, the resource will print debug messages in the console.
        - If false, the resource will not print debug messages in the console.

    @param logs: table
        @param enabled: boolean
            - If true, the resource will print logs in the console.
            - If false, the resource will not print logs in the console.

        @param print_to_chat: boolean
            - If true, the resource will print logs in the chat.
            - If false, the resource will not print logs in the chat.

    @credits Toxic Development <https://toxicdevs.site>
]]

CONFIGURATION = {
    updates = true,
    debug = false
}