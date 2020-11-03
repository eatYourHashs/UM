execute if entity @e[tag=!global.ignore,distance=..2] run function undermagic:item/weapon/obliteration/target
execute unless entity @e[tag=!global.ignore,distance=..2] run scoreboard players add temp um.dummy 1
execute unless entity @e[tag=!global.ignore,distance=..2] positioned ^ ^ ^0.5 unless score temp um.dummy matches 101.. run function undermagic:item/weapon/obliteration/cast
execute unless entity @e[tag=!global.ignore,distance=..2] if score temp um.dummy matches 101.. run scoreboard players set temp um.dummy 0