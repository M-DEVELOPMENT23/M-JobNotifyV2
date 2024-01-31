fx_version 'cerulean'

game 'gta5'

lua54 'true'

author 'MANU - MANU5895'

description 'Manu-JobNotificationV2'


version '1.0'

client_scripts {
    'modules/client/*.lua',
    'shared/*.lua',
}

shared_scripts {
    'shared/*.lua',
    '@ox_lib/init.lua',

}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'modules/server/*.lua'
}


ui_page 'web/index.html'

escrow_ignore {
    'shared/config.lua',  
}
  

files {
    'web/index.html',
    'web/style.css',
    'web/index.js',
    'web/sounds/notification.mp3',
}
