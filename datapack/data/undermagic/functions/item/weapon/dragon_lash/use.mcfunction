execute as @e[tag=um.dragon_lash] if score @s um.familiar_id = @p um.familiar_id run function undermagic:item/weapon/dragon_lash/extend
execute store success score temp um.dummy as @e[tag=um.dragon_lash] if score @s um.familiar_id = @p um.familiar_id
execute if score temp um.dummy matches 0 run function undermagic:item/weapon/dragon_lash/deploy
execute if score @s um.sneak matches 1.. as @e[tag=um.dragon_lash] if score @s um.familiar_id = @p um.familiar_id run kill @s
