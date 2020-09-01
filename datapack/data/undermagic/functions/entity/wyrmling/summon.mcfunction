
loot replace entity @s weapon.mainhand loot undermagic:items/mythical_dragon_egg_summoned
scoreboard players operation temp um.dummy = @s um.familiar_id
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,NoGravity:1b,Tags:["global.ignore","um_entity","um_wyrmling_fam","um_new_fam"],Silent:1b}
scoreboard players operation @e[limit=1,tag=um_new_fam,sort=nearest] um.familiar_id = temp um.dummy
tag @e[tag=um_new_fam,limit=1,sort=nearest] remove um_new_fam
scoreboard players set @s um.cstick 0
