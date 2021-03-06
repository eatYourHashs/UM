
scoreboard players set @s um.since_damaged 0
execute at @s if score @s um.dark_energy matches 1.. run playsound minecraft:entity.blaze.hurt player @a ~ ~ ~ 1 0.5
execute if score @s um.dark_energy matches 1.. run scoreboard players remove @s um.dark_energy 500
execute if entity @s[scores={um.blood=12..},predicate=undermagic:armor_sets/bloodstained] run effect give @s instant_health
execute if entity @s[scores={um.blood=12..},predicate=undermagic:armor_sets/bloodstained_upgraded] run effect give @s regeneration 5 2
execute if entity @s[scores={um.blood=12..},predicate=undermagic:armor_sets/bloodstained] run scoreboard players remove @s um.blood 2
execute if entity @s[predicate=undermagic:armor_sets/shade] run effect clear @s resistance
execute if entity @s[predicate=undermagic:armor_sets/shade] run effect clear @s strength
scoreboard players add @s um.shade_invi 100
scoreboard players set @s um.take_damage 0
execute if score nohit um.dummy matches 1 run function undermagic:boss/elder/elder_end
execute if score nohit um.dummy matches 1 run function undermagic:boss/pit_lord/pit_lord_end
execute if score nohit um.dummy matches 1 if data storage undermagic:common boss_status{shadesull:1b} run function undermagic:entity/shadesull/dialogue/nohit_fail
execute if score nohit um.dummy matches 1 run function undermagic:boss/shadesull/shadesull_end
execute if score nohit um.dummy matches 1 run function undermagic:boss/blood_amalgam/blood_amalgam_end
execute if score nohit um.dummy matches 1 run gamerule showDeathMessages false
execute if score nohit um.dummy matches 1 run tellraw @a ["",{"selector":"@s"},{"text":" failed the challenge at hand"}]
execute if score nohit um.dummy matches 1 run kill @s
execute if score nohit um.dummy matches 1 run gamerule showDeathMessages true
scoreboard players set @s um.oblit_prog 0
execute if score @s um.panic_charms matches 1 run effect give @s speed 3 2
execute if score @s um.panic_charms matches 2 run effect give @s speed 5 2
execute if score @s um.panic_charms matches 3 run effect give @s speed 7 2
execute if score @s um.panic_charms matches 4 run effect give @s speed 9 2
execute if score @s um.mc_charms matches 1 run scoreboard players add @s um.mana 20
execute if score @s um.mc_charms matches 2 run scoreboard players add @s um.mana 30
execute if score @s um.mc_charms matches 3 run scoreboard players add @s um.mana 40
execute if score @s um.mc_charms matches 4.. run scoreboard players add @s um.mana 50
execute if score @s um.mana matches 101.. run scoreboard players set @s um.mana 100