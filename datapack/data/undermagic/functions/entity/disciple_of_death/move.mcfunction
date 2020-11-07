#execute store result score temp um.dummy_two run loot spawn 0 -10 0 loot undermagic:um_rand/rand1_12
playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1 2
execute at @p run summon armor_stand ~8 ~ ~ {Invisible:1b,NoGravity:1b,Marker:1b,Tags:["global.ignore","um.disciple_of_death_move_marker"]}
execute at @p run summon armor_stand ~-8 ~ ~ {Invisible:1b,NoGravity:1b,Marker:1b,Tags:["global.ignore","um.disciple_of_death_move_marker"]}
execute at @p run summon armor_stand ~ ~ ~8 {Invisible:1b,NoGravity:1b,Marker:1b,Tags:["global.ignore","um.disciple_of_death_move_marker"]}
execute at @p run summon armor_stand ~ ~ ~-8 {Invisible:1b,NoGravity:1b,Marker:1b,Tags:["global.ignore","um.disciple_of_death_move_marker"]}
kill @e[tag=um.disciple_of_death_move_marker,limit=3,sort=furthest]
#execute if score temp um.dummy_two matches 1..3 at @p run summon armor_stand ~8 ~ ~ {Invisible:1b,NoGravity:1b,Marker:1b,Tags:["global.ignore","um.disciple_of_death_move_marker"]}
#execute if score temp um.dummy_two matches 4..6 at @p run summon armor_stand ~-8 ~ ~ {Invisible:1b,NoGravity:1b,Marker:1b,Tags:["global.ignore","um.disciple_of_death_move_marker"]}
#execute if score temp um.dummy_two matches 7..9 at @p run summon armor_stand ~ ~ ~8 {Invisible:1b,NoGravity:1b,Marker:1b,Tags:["global.ignore","um.disciple_of_death_move_marker"]}
#execute if score temp um.dummy_two matches 10..12 at @p run summon armor_stand ~ ~ ~-8 {Invisible:1b,NoGravity:1b,Marker:1b,Tags:["global.ignore","um.disciple_of_death_move_marker"]}
