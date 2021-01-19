scoreboard players set $math.in_0 um.dummy 100
function undermagic:utils/random
execute if score $math.out_0 um.dummy matches 0..33 run summon armor_stand ^ ^1 ^4 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["um.entity","global.ignore","um.healing_soul"]}
execute if score $math.out_0 um.dummy matches 34..100 run summon armor_stand ^ ^1 ^4 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["um.entity","global.ignore","um.offense_soul"]}