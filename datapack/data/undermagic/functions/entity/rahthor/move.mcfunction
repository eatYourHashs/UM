scoreboard players set $math.in_0 um.dummy 16
function undermagic:utils/random
scoreboard players add $math.out_0 um.dummy 1
execute if score $math.out_0 um.dummy matches 1 at @p run summon armor_stand ~6 ~ ~ {Invisible:1b,NoGravity:1b,Marker:1b,Tags:["global.ignore","um.rahthor_move_marker"]}
execute if score $math.out_0 um.dummy matches 2 at @p run summon armor_stand ~-6 ~ ~ {Invisible:1b,NoGravity:1b,Marker:1b,Tags:["global.ignore","um.rahthor_move_marker"]}
execute if score $math.out_0 um.dummy matches 3 at @p run summon armor_stand ~ ~ ~6 {Invisible:1b,NoGravity:1b,Marker:1b,Tags:["global.ignore","um.rahthor_move_marker"]}
execute if score $math.out_0 um.dummy matches 4 at @p run summon armor_stand ~ ~ ~-6 {Invisible:1b,NoGravity:1b,Marker:1b,Tags:["global.ignore","um.rahthor_move_marker"]}
execute if score $math.out_0 um.dummy matches 5 at @p run summon armor_stand ~6 ~3 ~ {Invisible:1b,NoGravity:1b,Marker:1b,Tags:["global.ignore","um.rahthor_move_marker"]}
execute if score $math.out_0 um.dummy matches 6 at @p run summon armor_stand ~-6 ~3 ~ {Invisible:1b,NoGravity:1b,Marker:1b,Tags:["global.ignore","um.rahthor_move_marker"]}
execute if score $math.out_0 um.dummy matches 7 at @p run summon armor_stand ~ ~3 ~6 {Invisible:1b,NoGravity:1b,Marker:1b,Tags:["global.ignore","um.rahthor_move_marker"]}
execute if score $math.out_0 um.dummy matches 8 at @p run summon armor_stand ~ ~3 ~-6 {Invisible:1b,NoGravity:1b,Marker:1b,Tags:["global.ignore","um.rahthor_move_marker"]}
execute if score $math.out_0 um.dummy matches 9 at @p run summon armor_stand ~6 ~6 ~ {Invisible:1b,NoGravity:1b,Marker:1b,Tags:["global.ignore","um.rahthor_move_marker"]}
execute if score $math.out_0 um.dummy matches 10 at @p run summon armor_stand ~-6 ~6 ~ {Invisible:1b,NoGravity:1b,Marker:1b,Tags:["global.ignore","um.rahthor_move_marker"]}
execute if score $math.out_0 um.dummy matches 11 at @p run summon armor_stand ~ ~6 ~6 {Invisible:1b,NoGravity:1b,Marker:1b,Tags:["global.ignore","um.rahthor_move_marker"]}
execute if score $math.out_0 um.dummy matches 12 at @p run summon armor_stand ~ ~6 ~-6 {Invisible:1b,NoGravity:1b,Marker:1b,Tags:["global.ignore","um.rahthor_move_marker"]}
execute if score $math.out_0 um.dummy matches 13 at @p run summon armor_stand ~6 ~ ~ {Invisible:1b,NoGravity:1b,Marker:1b,Tags:["global.ignore","um.rahthor_move_marker"]}
execute if score $math.out_0 um.dummy matches 14 at @p run summon armor_stand ~-6 ~ ~ {Invisible:1b,NoGravity:1b,Marker:1b,Tags:["global.ignore","um.rahthor_move_marker"]}
execute if score $math.out_0 um.dummy matches 15 at @p run summon armor_stand ~ ~ ~6 {Invisible:1b,NoGravity:1b,Marker:1b,Tags:["global.ignore","um.rahthor_move_marker"]}
execute if score $math.out_0 um.dummy matches 16 at @p run summon armor_stand ~ ~ ~-6 {Invisible:1b,NoGravity:1b,Marker:1b,Tags:["global.ignore","um.rahthor_move_marker"]}