tag @s add um_processed
tag @s add um_entity
execute if entity @p[distance=..2,nbt={SelectedItem:{id:"minecraft:bow",Count:1b,tag:{um_id:"bow_demonic_steel"}}}] run tag @s add um_dsbow_proc
execute if entity @s[tag=um_dsbow_proc] run data merge entity @s {PierceLevel:1b}
execute if entity @s[tag=um_dsbow_proc] store result score a um.dummy run data get entity @s Motion[0] 15000
execute if entity @s[tag=um_dsbow_proc] store result score b um.dummy run data get entity @s Motion[1] 15000
execute if entity @s[tag=um_dsbow_proc] store result score c um.dummy run data get entity @s Motion[2] 15000
execute if entity @s[tag=um_dsbow_proc] store result entity @s Motion[0] double 0.0001 run scoreboard players get a um.dummy
execute if entity @s[tag=um_dsbow_proc] store result entity @s Motion[1] double 0.0001 run scoreboard players get b um.dummy
execute if entity @s[tag=um_dsbow_proc] store result entity @s Motion[2] double 0.0001 run scoreboard players get c um.dummy
execute if entity @s[tag=um_dsbow_proc] store success score success um.dummy run clear @p gunpowder 1
execute if entity @s[tag=um_dsbow_proc] if score success um.dummy matches 1.. run tag @s add um_explosive
execute if entity @s[tag=um_dsbow_proc] if score success um.dummy matches 1.. run playsound minecraft:entity.tnt.primed player @a ~ ~ ~ 1 1
execute if entity @s[tag=um_dsbow_proc] if score success um.dummy matches 1.. run scoreboard players set success um.dummy 0

execute if entity @p[distance=..2,nbt={SelectedItem:{id:"minecraft:bow",Count:1b,tag:{um_id:"bow_ice"}}}] run tag @s add um_icebow_proc
execute if entity @s[tag=um_icebow_proc] as @p at @s run function undermagic:entity/projectile/shoot_ice_bolt
execute if entity @s[tag=um_icebow_proc] run kill @s

execute if entity @p[distance=..2,nbt={SelectedItem:{id:"minecraft:bow",Count:1b,tag:{um_id:"dragons_wrath"}}}] run tag @s add um_dragons_proc
execute if entity @s[tag=um_dragons_proc] run data merge entity @s {PierceLevel:1b}
execute if entity @s[tag=um_dragons_proc] store result score a um.dummy run data get entity @s Motion[0] 16000
execute if entity @s[tag=um_dragons_proc] store result score b um.dummy run data get entity @s Motion[1] 16000
execute if entity @s[tag=um_dragons_proc] store result score c um.dummy run data get entity @s Motion[2] 16000
execute if entity @s[tag=um_dragons_proc] store result entity @s Motion[0] double 0.0001 run scoreboard players get a um.dummy
execute if entity @s[tag=um_dragons_proc] store result entity @s Motion[1] double 0.0001 run scoreboard players get b um.dummy
execute if entity @s[tag=um_dragons_proc] store result entity @s Motion[2] double 0.0001 run scoreboard players get c um.dummy
execute if entity @s[tag=um_dragons_proc] run playsound minecraft:entity.ender_dragon.shoot player @a ~ ~ ~
execute if entity @s[tag=um_dragons_proc] if entity @p[scores={um.dragon_energy=60..}] run function undermagic:entity/projectile/dragon_special_summon

execute if entity @p[distance=..2,nbt={Inventory:[{id:"minecraft:leather_helmet",Count:1b,Slot:103b,tag:{um_id:"abyss_ranger_hood"}}]}] run tag @s add um_ar1_proc
execute if entity @p[distance=..2,nbt={Inventory:[{id:"minecraft:leather_chestplate",Count:1b,Slot:102b,tag:{um_id:"abyss_ranger_tunic"}}]}] run tag @s add um_ar2_proc
execute if entity @p[distance=..2,nbt={Inventory:[{id:"minecraft:leather_leggings",Count:1b,Slot:101b,tag:{um_id:"abyss_ranger_pants"}}]}] run tag @s add um_ar3_proc
execute if entity @p[distance=..2,nbt={Inventory:[{id:"minecraft:leather_boots",Count:1b,Slot:100b,tag:{um_id:"abyss_ranger_boots"}}]}] run tag @s add um_ar4_proc
execute if entity @s[tag=um_ar1_proc] store result score a um.dummy run data get entity @s Motion[0] 11500
execute if entity @s[tag=um_ar1_proc] store result score b um.dummy run data get entity @s Motion[1] 11500
execute if entity @s[tag=um_ar1_proc] store result score c um.dummy run data get entity @s Motion[2] 11500
execute if entity @s[tag=um_ar1_proc] store result entity @s Motion[0] double 0.0001 run scoreboard players get a um.dummy
execute if entity @s[tag=um_ar1_proc] store result entity @s Motion[1] double 0.0001 run scoreboard players get b um.dummy
execute if entity @s[tag=um_ar1_proc] store result entity @s Motion[2] double 0.0001 run scoreboard players get c um.dummy
execute if entity @s[tag=um_ar2_proc] store result score a um.dummy run data get entity @s Motion[0] 11500
execute if entity @s[tag=um_ar2_proc] store result score b um.dummy run data get entity @s Motion[1] 11500
execute if entity @s[tag=um_ar2_proc] store result score c um.dummy run data get entity @s Motion[2] 11500
execute if entity @s[tag=um_ar2_proc] store result entity @s Motion[0] double 0.0001 run scoreboard players get a um.dummy
execute if entity @s[tag=um_ar2_proc] store result entity @s Motion[1] double 0.0001 run scoreboard players get b um.dummy
execute if entity @s[tag=um_ar2_proc] store result entity @s Motion[2] double 0.0001 run scoreboard players get c um.dummy
execute if entity @s[tag=um_ar3_proc] store result score a um.dummy run data get entity @s Motion[0] 11500
execute if entity @s[tag=um_ar3_proc] store result score b um.dummy run data get entity @s Motion[1] 11500
execute if entity @s[tag=um_ar3_proc] store result score c um.dummy run data get entity @s Motion[2] 11500
execute if entity @s[tag=um_ar3_proc] store result entity @s Motion[0] double 0.0001 run scoreboard players get a um.dummy
execute if entity @s[tag=um_ar3_proc] store result entity @s Motion[1] double 0.0001 run scoreboard players get b um.dummy
execute if entity @s[tag=um_ar3_proc] store result entity @s Motion[2] double 0.0001 run scoreboard players get c um.dummy
execute if entity @s[tag=um_ar4_proc] store result score a um.dummy run data get entity @s Motion[0] 11500
execute if entity @s[tag=um_ar4_proc] store result score b um.dummy run data get entity @s Motion[1] 11500
execute if entity @s[tag=um_ar4_proc] store result score c um.dummy run data get entity @s Motion[2] 11500
execute if entity @s[tag=um_ar4_proc] store result entity @s Motion[0] double 0.0001 run scoreboard players get a um.dummy
execute if entity @s[tag=um_ar4_proc] store result entity @s Motion[1] double 0.0001 run scoreboard players get b um.dummy
execute if entity @s[tag=um_ar4_proc] store result entity @s Motion[2] double 0.0001 run scoreboard players get c um.dummy
execute if entity @s[tag=um_ar1_proc,tag=um_ar2_proc,tag=um_ar3_proc,tag=um_ar4_proc] store result score dmg um.dummy run data get entity @s damage 10
execute if entity @s[tag=um_ar1_proc,tag=um_ar2_proc,tag=um_ar3_proc,tag=um_ar4_proc] run scoreboard players operation stealth_val um.dummy = @p um.ar_stealth
execute if entity @s[tag=um_ar1_proc,tag=um_ar2_proc,tag=um_ar3_proc,tag=um_ar4_proc] run scoreboard players operation stealth_val um.dummy /= five um.dummy
execute if entity @s[tag=um_ar1_proc,tag=um_ar2_proc,tag=um_ar3_proc,tag=um_ar4_proc] run scoreboard players operation dmg um.dummy += stealth_val um.dummy
execute if entity @s[tag=um_ar1_proc,tag=um_ar2_proc,tag=um_ar3_proc,tag=um_ar4_proc] store result entity @s damage double 0.1 run scoreboard players get dmg um.dummy

execute if entity @p[distance=..2,nbt={SelectedItem:{id:"minecraft:bow",Count:1b,tag:{um_id:"entropic_greatbow"}}}] run tag @s add um_greatbow_proc
execute if entity @s[tag=um_greatbow_proc] run data merge entity @s {PierceLevel:10b}
execute if entity @s[tag=um_greatbow_proc] store result score a um.dummy run data get entity @s Motion[0] 12000
execute if entity @s[tag=um_greatbow_proc] store result score b um.dummy run data get entity @s Motion[1] 12000
execute if entity @s[tag=um_greatbow_proc] store result score c um.dummy run data get entity @s Motion[2] 12000
execute if entity @s[tag=um_greatbow_proc] store result entity @s Motion[0] double 0.0001 run scoreboard players get a um.dummy
execute if entity @s[tag=um_greatbow_proc] store result entity @s Motion[1] double 0.0001 run scoreboard players get b um.dummy
execute if entity @s[tag=um_greatbow_proc] store result entity @s Motion[2] double 0.0001 run scoreboard players get c um.dummy
execute if entity @s[tag=um_greatbow_proc] store result score dmg um.dummy run data get entity @s damage 10
execute if entity @s[tag=um_greatbow_proc] run scoreboard players add dmg um.dummy 100
execute if entity @s[tag=um_greatbow_proc] store result entity @s damage double 0.1 run scoreboard players get dmg um.dummy

execute if entity @p[distance=..2,nbt={SelectedItem:{id:"minecraft:bow",Count:1b,tag:{um_id:"forbidden_oathbow"}}}] run tag @s add um_oathbow_proc
execute if entity @s[tag=um_oathbow_proc,nbt={crit:1b}] as @p at @s run scoreboard players set temp um.dummy 0
execute if entity @s[tag=um_oathbow_proc,nbt={crit:1b}] as @p at @s positioned ^ ^1.2 ^2.1 run function undermagic:entity/projectile/oathbow
execute if entity @s[tag=um_oathbow_proc] run kill @s
