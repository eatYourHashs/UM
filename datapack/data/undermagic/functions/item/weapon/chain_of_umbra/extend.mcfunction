execute as @e[tag=um_chain_of_umbra] if score @s um.familiar_id = @p um.familiar_id unless score @s um.dummy matches 30.. run playsound minecraft:block.chain.hit player @a ~ ~ ~ 0.5 0.5
execute as @e[tag=um_chain_of_umbra] if score @s um.familiar_id = @p um.familiar_id unless score @s um.dummy matches 30.. run scoreboard players add @s um.dummy 1
