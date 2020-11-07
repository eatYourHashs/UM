execute as @e[tag=um.chain_of_umbra] if score @s um.familiar_id = @p um.familiar_id run function undermagic:item/weapon/chain_of_umbra/extend
execute store success score temp um.dummy as @e[tag=um.chain_of_umbra] if score @s um.familiar_id = @p um.familiar_id
execute if score temp um.dummy matches 0 run function undermagic:item/weapon/chain_of_umbra/deploy
execute if score @s um.sneak matches 1.. as @e[tag=um.chain_of_umbra] if score @s um.familiar_id = @p um.familiar_id run kill @s
