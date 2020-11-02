summon armor_stand ~ ~ ~ {Tags:["global.ignore","um_new_chain_of_umbra","um_chain_of_umbra","um_entity","um_projectile"],Marker:1b,Invisible:1b,NoGravity:1b}
scoreboard players operation @e[tag=um_new_chain_of_umbra,limit=1] um.familiar_id = @s um.familiar_id
tag @e[tag=um_new_chain_of_umbra,limit=1] remove um_new_chain_of_umbra
