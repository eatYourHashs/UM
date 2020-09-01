execute if entity @e[tag=!global.ignore,distance=..2] run function undermagic:item/weapon/iron_rod_drop_block
execute unless entity @e[tag=!global.ignore,distance=..2] run scoreboard players add temp um.dummy 1
execute unless entity @e[tag=!global.ignore,distance=..2] positioned ^ ^ ^0.5 unless score temp um.dummy matches 61.. run function undermagic:item/weapon/iron_rod
