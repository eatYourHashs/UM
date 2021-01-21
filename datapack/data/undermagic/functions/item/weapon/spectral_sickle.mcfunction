playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 1 0.5
execute unless data entity @s Inventory[{Slot:-106b}].tag{um_id:"oblivion_matrix"} unless data entity @s Inventory[{Slot:-106b}].tag{um_id:"augis_oblivia"} positioned ~ ~1.3 ~ run summon armor_stand ^ ^ ^1 {NoGravity:1b,Invulnerable:1b,ShowArms:0b,Small:0b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["global.ignore","um.entity","um.projectile","um.spectral_sickle"]}
execute if data entity @s Inventory[{Slot:-106b}].tag{um_id:"oblivion_matrix"} positioned ~ ~1.3 ~ run summon armor_stand ^ ^ ^1 {NoGravity:1b,Invulnerable:1b,ShowArms:0b,Small:0b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["global.ignore","um.entity","um.projectile","um.spectral_sickle","um.buffed_sickle"]}
execute if data entity @s Inventory[{Slot:-106b}].tag{um_id:"augis_oblivia"} positioned ~ ~1.3 ~ run summon armor_stand ^ ^ ^1 {NoGravity:1b,Invulnerable:1b,ShowArms:0b,Small:0b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["global.ignore","um.entity","um.projectile","um.spectral_sickle","um.buffed_sickle"]}
execute as @e[sort=nearest,limit=1,tag=um.spectral_sickle] run tp @p
execute as @e[sort=nearest,limit=1,tag=um.spectral_sickle] run tp ~ ~1.3 ~
scoreboard players remove @s um.mana 12
scoreboard players add @s um.mana_used 12
scoreboard players set @s um.mana_cd 0
