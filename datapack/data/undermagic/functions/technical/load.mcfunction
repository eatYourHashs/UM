scoreboard objectives add um.dummy dummy
execute as @a unless entity @s[name=!CreeperMagnet_,name=!dragoncommands,name=!ChromaKey81,name=!Ragnorakkr_,name=!Hashs] run tellraw @s [{"translate":"debug.prefix","color":"yellow","bold":true},{"text":" Undermagic has now been reloaded","color":"white","bold":false}]
execute unless score um.server_version um.dummy matches 34 run function undermagic:technical/initiate
gamerule doLimitedCrafting false
schedule function undermagic:technical/second_clock 1s replace
schedule function undermagic:technical/ten_second_clock 10s replace
