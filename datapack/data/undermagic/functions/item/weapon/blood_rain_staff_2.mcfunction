playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 1 0.5
scoreboard players remove @s um.mana 40
scoreboard players set @s um.mana_cd 0
summon armor_stand ^ ^ ^16 {Marker:1b,Invisible:1b,NoGravity:1b,Tags:["global.ignore","um_entity","um_blood_cloud","um_blood_cloud_2"]}
