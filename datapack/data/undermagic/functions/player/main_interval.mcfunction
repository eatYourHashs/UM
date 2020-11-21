
#check items
execute if data entity @s Inventory[{Slot:102b}].tag.um_id run function undermagic:player/check_armor_interval

#player processing
execute if entity @s[tag=!um.processed] run function undermagic:player/processing
execute if score @s version < undermagic load run function undermagic:player/update

#effects
execute if score @s um.dark_energy matches 1.. run function undermagic:player/effects/dark_energy
execute unless score @s um.dark_energy matches 1.. run attribute @s minecraft:generic.armor_toughness modifier remove b5fcc13f-e407-486f-ad77-3556c5338eba
execute if score @s um.since_damaged matches 1.. run function undermagic:player/effects/dark_energy_add

#vanilla boss loot
loot give @s[scores={um.dragon_killed=1..}] loot undermagic:items/multiples/dragon_scale_8
execute if score difficulty um.dummy matches 1.. run loot give @s[scores={um.dragon_killed=1..}] loot undermagic:items/dragons_wrath
execute if score difficulty um.dummy matches 2.. run loot give @s[scores={um.dragon_killed=1..}] loot undermagic:items/dragons_wrath
execute if score difficulty um.dummy matches 1.. run loot give @s[scores={um.wither_killed=1..}] loot undermagic:items/bone_of_wither

#charms
execute if score @s um.spsi_charms matches 1.. run function undermagic:player/charms/spectre_sight
execute if score @s um.supchg_charms matches 1.. run function undermagic:player/charms/supercharge
execute if score @s um.coward_charms matches 1.. run function undermagic:player/charms/cowardice
execute if score @s um.coward_charms matches 0 run attribute @s minecraft:generic.attack_damage modifier remove cdbac472-06be-4940-935b-bad65c21dfba
execute if score @s um.frenzy_charms matches 1.. run function undermagic:player/charms/frenzy
execute if score @s um.frenzy_charms matches 0 run attribute @s minecraft:generic.attack_damage modifier remove 23520e02-f308-40f4-a919-5e03bd775fb2
execute if score @s um.frenzy_charms matches 0 run attribute @s minecraft:generic.movement_speed modifier remove 121860d1-f4f0-4f0b-b7f5-9fbaf0ec1f3d
execute if score @s um.frenzy_charms matches 0 run attribute @s minecraft:generic.armor_toughness modifier remove 7fad711d-14d8-4526-9443-a8ff4d8e7d3f
execute if score @s um.frenzy_charms matches 0 run attribute @s minecraft:generic.attack_speed modifier remove 8c2e8910-0cec-4289-898a-3af402afa755
execute if score @s um.lastst_charms matches 1.. run function undermagic:player/charms/last_stand
execute if entity @s[tag=um.ele_limbs] run function undermagic:player/charms/ele_limbs
effect give @s[tag=um.ironskin] resistance 1 1 true
effect give @s[tag=um.flame_body] fire_resistance 1 0 true

#scoreboard
execute if score @s um.dragon_killed matches 1.. run scoreboard players set dragon_dead um.dummy 1
scoreboard players remove @s um.tp_cooldown 1
scoreboard players set @s um.wither_killed 0
scoreboard players set @s um.dragon_killed 0

#delayed tick
execute if score $timer_200 um.dummy matches 0..9 unless score @s um.drac_sh_chg matches 0..5 run scoreboard players add @s um.drac_sh_chg 1
execute if score $timer_200 um.dummy matches 0..9 run scoreboard players add @s[scores={um.drac_sh_chg=..4},nbt={Inventory:[{id:"minecraft:shield",Count:1b,Slot:-106b,tag:{um_id:"draconic_bulwark"}}]}] um.drac_sh_chg 1
#execute if score $timer_200 um.dummy matches 0..9 run function undermagic:item/tool/swap_charms

