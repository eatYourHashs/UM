scoreboard players set $math.in_0 12
function undermagic:utils/random
execute if score $math.out_0 um.dummy matches 1..3 at @p run summon armor_stand ~6 ~3 ~ {Invisible:1b,NoGravity:1b,Marker:1b,Tags:["global.ignore","um.rahthor_move_marker"]}
execute if score $math.out_0 um.dummy matches 4..6 at @p run summon armor_stand ~-6 ~3 ~ {Invisible:1b,NoGravity:1b,Marker:1b,Tags:["global.ignore","um.rahthor_move_marker"]}
execute if score $math.out_0 um.dummy matches 7..9 at @p run summon armor_stand ~ ~3 ~6 {Invisible:1b,NoGravity:1b,Marker:1b,Tags:["global.ignore","um.rahthor_move_marker"]}
execute if score $math.out_0 um.dummy matches 10..12 at @p run summon armor_stand ~ ~3 ~-6 {Invisible:1b,NoGravity:1b,Marker:1b,Tags:["global.ignore","um.rahthor_move_marker"]}