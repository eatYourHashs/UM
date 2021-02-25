############################################################
# Description: Adds all scoreboards and sets up everything
# Creator: CreeperMagnet_
############################################################

scoreboard objectives add um.dummy dummy
execute as @a unless entity @s[name=!CreeperMagnet_,name=!CreeperRepellant,name=!Hashs] run tellraw @s [{"translate":"debug.prefix","color":"yellow","bold":true},{"translate":"commands.um.reload.success","color":"white","bold":false}]
execute unless score um.server_version um.dummy matches 1 run function um:technical/initiate

# Gamerules
gamerule doLimitedCrafting false
gamerule logAdminCommands false
gamerule commandBlockOutput false
schedule function um:technical/second_clock 1s replace
schedule function um:technical/ten_second_clock 10s replace