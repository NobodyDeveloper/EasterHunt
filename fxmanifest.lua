fx_version 'cerulean'

game 'gta5'

author 'ShoeShuffler'

description 'Shuffle Shop Easter!'

version '1.0.0'

lua54 'yes'



client_scripts{
	'@qbx_core/modules/playerdata.lua',
	'client/**.lua',
}

server_scripts{
	'server/**.lua',
	'@oxmysql/lib/MySQL.lua',
}

 shared_scripts {
	'@ox_lib/init.lua',
	'config.lua',
	'@qbx_core/modules/lib.lua',
 }