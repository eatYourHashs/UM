scoreboard players set @s um.ent_ward 0
execute unless score @s um.dis_cd matches 1.. run playsound minecraft:entity.wither.spawn player @a ~ ~ ~ 2 2
execute unless score @s um.dis_cd matches 1.. run playsound minecraft:entity.generic.explode player @a ~ ~ ~ 2 0.5
execute unless score @s um.dis_cd matches 1.. run particle minecraft:explosion_emitter ~ ~1 ~ 0 0 0 1 1
execute unless score @s um.dis_cd matches 1.. run particle minecraft:dust_color_transition 1 0.6 0 3 1 0 0 ~ ~1 ~ 6 6 6 1 2000
execute unless score @s um.dis_cd matches 1.. run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,ShowArms:0b,Small:0b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["global.ignore","um.entity","um.ward_discharge"]}
execute unless score @s um.dis_cd matches 1.. run scoreboard players set @s um.dis_cd 240
