playsound minecraft:block.beacon.deactivate hostile @a ~ ~ ~ 1 2
execute positioned ~ ~1.3 ~ run summon armor_stand ^ ^ ^1 {NoGravity:1b,Invulnerable:1b,ShowArms:0b,Small:0b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["global.ignore","um.entity","um.projectile","um.dark_orb"]}
execute as @e[sort=nearest,limit=1,tag=um.dark_orb] run tp @p
execute as @e[sort=nearest,limit=1,tag=um.dark_orb] run tp ~ ~1.3 ~
execute if data entity @s SelectedItem.tag{um_id:"elder_staff"} run scoreboard players remove @s um.mana 5
execute if data entity @s SelectedItem.tag{um_id:"elder_staff"} run scoreboard players add @s um.mana_used 5
execute if data entity @s SelectedItem.tag{um_id:"elder_staff"} run scoreboard players set @s um.mana_cd 0
