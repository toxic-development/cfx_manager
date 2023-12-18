fx_version 'adamant'
game 'gta5'

name 'cfx_manager'
version '0.0.1-alpha'

author 'Toxic Development'
description 'A simple script to easily manager your server, resources and events.'
repository 'https://github.com/toxic-development/fivem_dispatcher'

client_scripts {
    'client/*.lua'
}

server_scripts {
    'server/*.lua',
    'versions/*.lua',
    'system/*.lua'
}

shared_scripts {
    'config/*.lua',
    'shared/*.lua'
}
