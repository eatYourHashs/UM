
#check items
execute if data entity @s Inventory[{Slot:102b}].tag.um_id run function undermagic:player/check_armor_interval

#player processing
execute if entity @s[tag=!um.processed] run function undermagic:player/processing
execute if score @s version < undermagic load run function undermagic:player/update

#effects
execute if score @s um.dark_energy matches 1.. run function undermagic:player/effects/dark_energy
execute unless score @s um.dark_energy matches 1.. run attribute @s minecraft:generic.armor_toughness modifier remove b5fcc13f-e407-486f-ad77-3556c5338eba
execute if score @s um.since_damaged matches 1.. run function undermagic:player/effects/dark_energy_add
execute if entity @s[predicate=undermagic:in_dungeon,gamemode=survival] run gamemode adventure
execute if entity @s[predicate=!undermagic:in_dungeon,gamemode=adventure] run gamemode survival

#vanilla boss loot
loot give @s[scores={um.dragon_killed=1..}] loot undermagic:entities/dragon
execute if score difficulty um.dummy matches 2.. run loot give @s[scores={um.dragon_killed=1..}] loot undermagic:items/mythical_dragon_egg
execute if score difficulty um.dummy matches 1.. run loot give @s[scores={um.dragon_killed=1..}] loot undermagic:items/dragon_hide
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
effect give @s[tag=um.flame_body] fire_resistance 1 0 true

#scoreboard
execute if score @s um.dragon_killed matches 1.. run scoreboard players set dragon_dead um.dummy 1
scoreboard players remove @s um.tp_cooldown 1
scoreboard players set @s um.wither_killed 0
scoreboard players set @s um.dragon_killed 0

#delayed tick
execute if score $timer_200 um.dummy matches 0..9 if entity @s[tag=um.ele_limbs] run attribute @s minecraft:generic.attack_damage modifier add 7a94449c-e979-4a4a-9100-1fb6aa492e14 ele_limbs_dmg 0.1 multiply
execute if score $timer_200 um.dummy matches 0..9 unless entity @s[tag=um.ele_limbs] run attribute @s minecraft:generic.attack_damage modifier remove 7a94449c-e979-4a4a-9100-1fb6aa492e14
execute if score $timer_200 um.dummy matches 0..9 if entity @s[tag=um.ele_limbs] run attribute @s minecraft:generic.attack_speed modifier add 38042a31-a6d9-4457-9720-7397fb6d36a1 ele_limbs_atkspd 0.1 add
execute if score $timer_200 um.dummy matches 0..9 unless entity @s[tag=um.ele_limbs] run attribute @s minecraft:generic.attack_speed modifier remove 38042a31-a6d9-4457-9720-7397fb6d36a1
execute if score $timer_200 um.dummy matches 0..9 if entity @s[tag=um.ele_limbs] run attribute @s minecraft:generic.movement_speed modifier add bf54fbc5-a7d0-4f4a-898d-4c5878053c6a ele_limbs_spd 0.1 multiply
execute if score $timer_200 um.dummy matches 0..9 unless entity @s[tag=um.ele_limbs] run attribute @s minecraft:generic.movement_speed modifier remove bf54fbc5-a7d0-4f4a-898d-4c5878053c6a
execute if score $timer_200 um.dummy matches 0..9 if entity @s[tag=um.ironskin] run attribute @s minecraft:generic.armor modifier add e1acd556-0e28-4e49-a50f-4bf5523af977 iron_armor 3 add
execute if score $timer_200 um.dummy matches 0..9 unless entity @s[tag=um.ironskin] run attribute @s minecraft:generic.armor modifier remove e1acd556-0e28-4e49-a50f-4bf5523af977
execute if score $timer_200 um.dummy matches 0..9 if entity @s[tag=um.ironskin] run attribute @s minecraft:generic.armor_toughness modifier add 1145cc0f-514f-4703-9e2b-ca72706d2d0d iron_tough 4 add
execute if score $timer_200 um.dummy matches 0..9 unless entity @s[tag=um.ironskin] run attribute @s minecraft:generic.armor_toughness modifier remove 1145cc0f-514f-4703-9e2b-ca72706d2d0d
execute if score $timer_200 um.dummy matches 0..9 unless score @s um.drac_sh_chg matches 0..5 run scoreboard players add @s um.drac_sh_chg 1
execute if score $timer_200 um.dummy matches 0..9 run scoreboard players add @s[scores={um.drac_sh_chg=..4},nbt={Inventory:[{id:"minecraft:shield",Count:1b,Slot:-106b,tag:{um_id:"draconic_bulwark"}}]}] um.drac_sh_chg 1
execute if score $timer_200 um.dummy matches 0..9 run function undermagic:item/tool/swap_charms

