summon armor_stand ~ ~2 ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["um.entity","global.ignore","um.wither_beam_marker","um.wither_beam_marker_new"]}
execute as @e[tag=um.wither_beam_marker_new] run tp ~ ~ ~
tag @e[tag=um.wither_beam_marker_new] remove um.wither_beam_marker_new
particle smoke
particle smoke ^ ^ ^1
particle smoke ^ ^ ^2
particle smoke ^ ^ ^3
kill @s