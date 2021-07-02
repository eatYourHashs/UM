
playsound minecraft:entity.generic.explode player @a
particle minecraft:lava ~ ~ ~ 0 0 0 0.1 50

execute store result score temp um.dummy run data get entity @s damage 10
scoreboard players add temp um.dummy 300
execute store result score a um.dummy run data get entity @s Motion[0] 8000
execute store result score b um.dummy run data get entity @s Motion[1] 8000
execute store result score c um.dummy run data get entity @s Motion[2] 8000
summon arrow ~ ~ ~ {Tags:["um.entity","um.crucible_proc","um.crucible_sub_proc","um.processed"]}
summon arrow ~ ~ ~ {Tags:["um.entity","um.crucible_proc","um.crucible_sub_proc","um.processed"]}
summon arrow ~ ~ ~ {Tags:["um.entity","um.crucible_proc","um.crucible_sub_proc","um.processed"]}
summon arrow ~ ~ ~ {Tags:["um.entity","um.crucible_proc","um.crucible_sub_proc","um.processed"]}
summon arrow ~ ~ ~ {Tags:["um.entity","um.crucible_proc","um.crucible_sub_proc","um.processed"]}
summon arrow ~ ~ ~ {Tags:["um.entity","um.crucible_proc","um.crucible_sub_proc","um.processed"]}
summon arrow ~ ~ ~ {Tags:["um.entity","um.crucible_proc","um.crucible_sub_proc","um.processed"]}
summon arrow ~ ~ ~ {Tags:["um.entity","um.crucible_proc","um.crucible_sub_proc","um.processed"]}
summon arrow ~ ~ ~ {Tags:["um.entity","um.crucible_proc","um.crucible_sub_proc","um.processed"]}
summon arrow ~ ~ ~ {Tags:["um.entity","um.crucible_proc","um.crucible_sub_proc","um.processed"]}
summon arrow ~ ~ ~ {Tags:["um.entity","um.crucible_proc","um.crucible_sub_proc","um.processed"]}
summon arrow ~ ~ ~ {Tags:["um.entity","um.crucible_proc","um.crucible_sub_proc","um.processed"]}
summon arrow ~ ~ ~ {Tags:["um.entity","um.crucible_proc","um.crucible_sub_proc","um.processed"]}
summon arrow ~ ~ ~ {Tags:["um.entity","um.crucible_proc","um.crucible_sub_proc","um.processed"]}
summon arrow ~ ~ ~ {Tags:["um.entity","um.crucible_proc","um.crucible_sub_proc","um.processed"]}
summon arrow ~ ~ ~ {Tags:["um.entity","um.crucible_proc","um.crucible_sub_proc","um.processed"]}
summon arrow ~ ~ ~ {Tags:["um.entity","um.crucible_proc","um.crucible_sub_proc","um.processed"]}
summon arrow ~ ~ ~ {Tags:["um.entity","um.crucible_proc","um.crucible_sub_proc","um.processed"]}
summon arrow ~ ~ ~ {Tags:["um.entity","um.crucible_proc","um.crucible_sub_proc","um.processed"]}
summon arrow ~ ~ ~ {Tags:["um.entity","um.crucible_proc","um.crucible_sub_proc","um.processed"]}
summon arrow ~ ~ ~ {Tags:["um.entity","um.crucible_proc","um.crucible_sub_proc","um.processed"]}
summon arrow ~ ~ ~ {Tags:["um.entity","um.crucible_proc","um.crucible_sub_proc","um.processed"]}
summon arrow ~ ~ ~ {Tags:["um.entity","um.crucible_proc","um.crucible_sub_proc","um.processed"]}
summon arrow ~ ~ ~ {Tags:["um.entity","um.crucible_proc","um.crucible_sub_proc","um.processed"]}
execute as @e[tag=um.crucible_sub_proc] run data modify entity @s Fire set value 2000s
execute as @e[tag=um.crucible_sub_proc] at @s run function undermagic:entity/processing/arrow/crucible_sub
kill @s
