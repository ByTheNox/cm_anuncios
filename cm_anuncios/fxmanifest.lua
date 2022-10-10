fx_version 'bodacious'
game 'gta5'

name 'Sistema de anuncios por CM'

ui_page {
    'html/ui.html',
}

files {
	'html/ui.html',
	'html/js/app.js', 
	'html/css/style.css',
	'html/imagenes/lspd.png',
	'html/imagenes/ems.png',
	'html/imagenes/custom.png',
	'html/imagenes/burgershot.png'
}

client_scripts {
	'client/client.lua',
	'client/depracated.lua',
	'config.lua'
}

server_scripts {
	'server/server.lua',
	'PersistentAlert',
	'@mysql-async/lib/MySQL.lua',
	'config.lua'
}

exports {
	'SendAlert',
}