scoreboard players set @s um.orb_cooldown 0
scoreboard players set @s um.dark_energy 0
scoreboard players set @s um.blood 0
scoreboard players set @s um.flame_grasp 0
scoreboard players set @s um.version 10
scoreboard players set @s um.tolerance_cap 5
scoreboard players set @s um.shade_invi 0
scoreboard players set @s um.ar_stealth 0
scoreboard players set @s um.reviv_chg 0
scoreboard players set @s um.mana 100
scoreboard players set @s um.mana_cd 20
scoreboard players add world um.familiar_id 1
scoreboard players operation @s um.familiar_id = world um.familiar_id
tellraw @s ["",{"text":"This world is running ","color":"red"},{"text":"Undermagic","color":"dark_red","bold":true},{"text":" by Hashs. Please download the resource pack to play.","color":"red","bold":false}]
tellraw @s ["",{"text":"Click here to download it at Planet Minecraft.","color":"red","underlined":true,"clickEvent":{"action":"open_url","value":"https://www.planetminecraft.com/data-pack/undermagic/"}},{"text":" This message will only display once.","color":"gray","italic":true,"underlined":false}]
tag @s add um.processed
#scoreboard players enable @s um.demonomicon
