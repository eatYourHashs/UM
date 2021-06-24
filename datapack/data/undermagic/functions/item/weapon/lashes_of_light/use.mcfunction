execute as @e[tag=um.lashes_of_light] if score @s um.familiar_id = @p um.familiar_id run function undermagic:item/weapon/lashes_of_light/extend
scoreboard players set temp um.dummy 0
execute as @e[tag=um.lashes_of_light] if score @s um.familiar_id = @p um.familiar_id run scoreboard players add temp um.dummy 1
execute if score temp um.dummy matches 1 as @e[tag=um.lashes_of_light] if score @s um.familiar_id = @p um.familiar_id if score @s um.dummy matches 8.. as @p run function undermagic:item/weapon/lashes_of_light/deploy
execute if score temp um.dummy matches 0 run function undermagic:item/weapon/lashes_of_light/deploy
execute if score @s um.sneak matches 1.. as @e[tag=um.lashes_of_light] if score @s um.familiar_id = @p um.familiar_id run kill @s
