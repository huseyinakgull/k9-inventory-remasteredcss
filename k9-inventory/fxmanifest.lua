fx_version 'cerulean'
game 'gta5'
lua54 'yes'
client_script {
	"config/items.lua",
	"config/clientconfig.lua",
	'client/*.lua',
}
server_script {
	'@mysql-async/lib/MySQL.lua',
	"config/items.lua",
	"config/serverconfig.lua",
	"server/*.lua",
}
ui_page "nui/index.html"
files {
	"config/jsconfig.json",
	'nui/index.html',
	'nui/script.js',
	'nui/style.css',
	'nui/assets/*.png',
	'nui/img/*.png',
}
