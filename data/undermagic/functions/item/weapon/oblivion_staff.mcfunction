execute if entity @e[tag=!global.ignore,distance=..2] run function undermagic:item/weapon/oblivion_staff_spawn_charge
execute unless entity @e[tag=!global.ignore,distance=..2] run scoreboard players add temp um.dummy 1
execute unless entity @e[tag=!global.ignore,distance=..2] positioned ^ ^ ^0.5 unless score temp um.dummy matches 81.. run function undermagic:item/weapon/oblivion_staff
