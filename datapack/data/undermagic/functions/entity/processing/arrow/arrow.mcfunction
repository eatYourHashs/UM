
execute if entity @p[distance=..2,nbt={SelectedItem:{id:"minecraft:bow",Count:1b,tag:{um_id:"bow_demonic_steel"}}}] run function undermagic:entity/processing/arrow/demon_steel_bow
execute if entity @p[distance=..2,nbt={SelectedItem:{id:"minecraft:bow",Count:1b,tag:{um_id:"dragons_wrath"}}}] run function undermagic:entity/processing/arrow/dragons_wrath
execute if entity @p[distance=..2,nbt={SelectedItem:{id:"minecraft:bow",Count:1b,tag:{um_id:"entropic_greatbow"}}}] run function undermagic:entity/processing/arrow/greatbow
execute if entity @p[distance=..2,predicate=undermagic:armor/abyss_ranger_one] run function undermagic:entity/processing/arrow/abyss_ranger
execute if entity @p[distance=..2,nbt={SelectedItem:{id:"minecraft:crossbow",Count:1b,tag:{um_id:"the_blaster"}}}] run function undermagic:entity/processing/arrow/the_blaster

scoreboard players set temp um.dummy 0
execute if entity @p[distance=..2,nbt={SelectedItem:{id:"minecraft:bow",Count:1b,tag:{um_id:"forbidden_oathbow"}}}] run tag @s add um.oathbow_proc
execute if entity @s[tag=um.oathbow_proc,nbt={crit:1b}] as @p at @s positioned ^ ^1.8 ^3.1 run function undermagic:entity/projectile/oathbow
execute if entity @s[tag=um.oathbow_proc] run kill @s

execute if entity @p[distance=..2,nbt={SelectedItem:{id:"minecraft:bow",Count:1b,tag:{um_id:"bow_ice"}}}] run tag @s add um.icebow_proc
execute if entity @s[tag=um.icebow_proc] as @p at @s run function undermagic:entity/projectile/shoot_ice_bolt
execute if entity @s[tag=um.icebow_proc] run kill @s

execute if entity @p[distance=..2,scores={um.supchg_cd=30..}] run function undermagic:entity/processing/arrow/supercharge
