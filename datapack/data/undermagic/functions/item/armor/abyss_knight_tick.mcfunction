execute unless score @s um.ak_count matches 201.. run scoreboard players add @s um.ak_count 1
execute if score @s um.deal_damage matches 1.. if score @s um.ak_count matches 200.. run function undermagic:item/armor/abyss_knight_reset
execute if score @s um.ak_count matches 200 run attribute @s minecraft:generic.attack_damage modifier add e18c5451-786b-4fd9-837a-49ac5a93dc9c abyss_knight 1 multiply
execute if score @s um.ak_count matches 200 run playsound minecraft:entity.zombified_piglin.angry player @a ~ ~ ~ 1 0.5
execute if score @s um.ak_count matches 200 run particle minecraft:angry_villager ~ ~1.5 ~ 0.3 0.3 0.3 0 5