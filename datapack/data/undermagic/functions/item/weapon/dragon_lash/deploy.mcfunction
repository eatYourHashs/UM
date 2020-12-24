summon armor_stand ~ ~ ~ {Tags:["global.ignore","um.new_dragon_lash","um.dragon_lash","um.entity","um.projectile"],Marker:1b,Invisible:1b,NoGravity:1b}
scoreboard players operation @e[tag=um.new_dragon_lash,limit=1] um.familiar_id = @s um.familiar_id
tag @e[tag=um.new_dragon_lash,limit=1] remove um.new_dragon_lash
playsound minecraft:block.chain.break player @a ~ ~ ~ 1 0.5
