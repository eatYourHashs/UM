playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 1 0.5
playsound minecraft:entity.wither.shoot player @a ~ ~ ~ 1 0.5
summon armor_stand ^ ^ ^1 {NoGravity:1b,Invulnerable:1b,ShowArms:0b,Small:0b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["global.ignore","um.entity","um.projectile","um.armageddon"]}
execute as @e[sort=nearest,limit=1,tag=um.armageddon] at @p positioned ~ ~1.3 ~ run tp ^ ^ ^1
scoreboard players remove @s um.mana 100
scoreboard players add @s um.mana_used 100
scoreboard players set @s um.mana_cd 0
