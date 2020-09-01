playsound minecraft:entity.zombie.attack_iron_door player @a ~ ~ ~ 1 0.5
scoreboard players set @s um.orb_cooldown 20
summon minecraft:armor_stand ~ ~4 ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["global.ignore","um_entity","um_iron_block"],ArmorItems:[{},{},{},{id:"minecraft:iron_block",Count:1b}]}
