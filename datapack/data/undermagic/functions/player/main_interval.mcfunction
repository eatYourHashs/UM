
#check items
execute if data entity @s Inventory[{Slot:102b}].tag.um_id run function undermagic:player/check_armor_interval

#player processing
execute if entity @s[tag=!um_processed] run function undermagic:player/processing
execute if score @s version < undermagic load run function undermagic:player/update

#in abyss
execute if predicate undermagic:in_abyss run function undermagic:world/abyss/player

#effects
execute if score @s um.dark_energy matches 1.. run function undermagic:player/effects/dark_energy
execute if score @s um.since_damaged matches 1.. if score @s um.dark_energy matches ..9996 run function undermagic:player/effects/dark_energy_add

#vanilla boss loot
loot give @s[scores={um.dragon_killed=1..}] loot undermagic:items/dragon_scale_8
execute if score difficulty um.dummy matches 1.. run loot give @s[scores={um.dragon_killed=1..}] loot undermagic:items/dragons_wrath
execute if score difficulty um.dummy matches 2.. run loot give @s[scores={um.dragon_killed=1..}] loot undermagic:items/dragons_wrath
execute if score difficulty um.dummy matches 1.. run loot give @s[scores={um.wither_killed=1..}] loot undermagic:items/bone_of_wither

#charms
execute if score @s um.speed_charms matches 1.. run function undermagic:player/charms/speed
execute if score @s um.resist_charms matches 1.. run function undermagic:player/charms/resistance
execute if score @s um.streng_charms matches 1.. run function undermagic:player/charms/strength
execute if score @s um.haste_charms matches 1.. run function undermagic:player/charms/haste
execute if score @s um.jump_charms matches 1.. run function undermagic:player/charms/jump
execute if score @s um.aqua_charms matches 1.. run function undermagic:player/charms/aqua
execute if entity @s[tag=um_ele_limbs] run function undermagic:player/charms/ele_limbs
effect give @s[tag=um_ironskin] resistance 1 1 true
effect give @s[tag=um_flame_body] fire_resistance 1 0 true
effect give @s[tag=um_drac_aspect] resistance 1 2 true

#scoreboard
execute if score @s um.dragon_killed matches 1.. run scoreboard players set dragon_dead um.dummy 1
scoreboard players remove @s um.tp_cooldown 1
scoreboard players set @s um.wither_killed 0
scoreboard players set @s um.dragon_killed 0

#delayed tick
execute if score $timer_200 um.dummy matches 0..9 unless score @s um.drac_sh_chg matches 0..5 run scoreboard players add @s um.drac_sh_chg 1
execute if score $timer_200 um.dummy matches 0..9 run scoreboard players add @a[scores={um.drac_sh_chg=..4},nbt={Inventory:[{id:"minecraft:shield",Count:1b,Slot:-106b,tag:{um_id:"draconic_bulwark"}}]}] um.drac_sh_chg 1
execute if score $timer_200 um.dummy matches 0..9 run function undermagic:item/tool/swap_charms

