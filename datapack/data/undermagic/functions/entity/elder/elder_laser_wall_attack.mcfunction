execute store result score rand um.dummy run loot spawn 0 -10 0 loot undermagic:technical/rand1_12
playsound minecraft:entity.wither.spawn hostile @a ~ ~ ~ 0.5 2
execute if score rand um.dummy matches 1..2 at @p run summon armor_stand ~ ~14 ~ {Tags:["um.entity","global.ignore","um.elder","um.elder_wall","um.ew_down"],Marker:1b,Invisible:1b,NoGravity:1b} 
execute if score rand um.dummy matches 3..4 at @p run summon armor_stand ~ ~-14 ~ {Tags:["um.entity","global.ignore","um.elder","um.elder_wall","um.ew_up"],Marker:1b,Invisible:1b,NoGravity:1b} 
execute if score rand um.dummy matches 5..6 at @p run summon armor_stand ~14 ~ ~ {Tags:["um.entity","global.ignore","um.elder","um.elder_wall","um.ew_west"],Marker:1b,Invisible:1b,NoGravity:1b} 
execute if score rand um.dummy matches 7..8 at @p run summon armor_stand ~-14 ~ ~ {Tags:["um.entity","global.ignore","um.elder","um.elder_wall","um.ew_east"],Marker:1b,Invisible:1b,NoGravity:1b} 
execute if score rand um.dummy matches 9..10 at @p run summon armor_stand ~ ~ ~14 {Tags:["um.entity","global.ignore","um.elder","um.elder_wall","um.ew_north"],Marker:1b,Invisible:1b,NoGravity:1b} 
execute if score rand um.dummy matches 11..12 at @p run summon armor_stand ~ ~ ~-14 {Tags:["um.entity","global.ignore","um.elder","um.elder_wall","um.ew_south"],Marker:1b,Invisible:1b,NoGravity:1b} 
