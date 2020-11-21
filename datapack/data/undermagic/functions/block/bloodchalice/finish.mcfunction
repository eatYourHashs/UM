particle minecraft:flash
playsound minecraft:block.beacon.power_select block @a ~ ~ ~ 1 0.8
playsound minecraft:entity.lightning_bolt.thunder block @a ~ ~ ~ 1 2
scoreboard players set @s um.dummy_two 0

#Bloody Edge
execute if score @s um.dummy matches 10.. if data storage undermagic:common list[{Count:4b,id:"minecraft:red_dye"}] if data storage undermagic:common list[{Count:1b,id:"minecraft:iron_sword"}] if data storage undermagic:common list[{Count:1b,id:"minecraft:golden_apple"}] if data storage undermagic:common list[{Count:1b,id:"minecraft:blaze_powder"}] run loot spawn ~ ~1 ~ loot undermagic:items/bloody_edge_1
execute if score @s um.dummy matches 10.. if data storage undermagic:common list[{Count:4b,id:"minecraft:red_dye"}] if data storage undermagic:common list[{Count:1b,id:"minecraft:iron_sword"}] if data storage undermagic:common list[{Count:1b,id:"minecraft:golden_apple"}] if data storage undermagic:common list[{Count:1b,id:"minecraft:blaze_powder"}] run scoreboard players remove @s um.dummy 10
execute if score @s um.dummy matches 50.. if data storage undermagic:common list[{Count:1b,id:"minecraft:glowstone"}] if data storage undermagic:common list[{Count:1b,tag:{um_id:"bloody_edge_1"}}] if data storage undermagic:common list[{Count:1b,id:"minecraft:ender_eye"}] if data storage undermagic:common list[{Count:1b,id:"minecraft:blaze_rod"}] run loot spawn ~ ~1 ~ loot undermagic:items/bloody_edge_2
execute if score @s um.dummy matches 50.. if data storage undermagic:common list[{Count:1b,id:"minecraft:glowstone"}] if data storage undermagic:common list[{Count:1b,tag:{um_id:"bloody_edge_1"}}] if data storage undermagic:common list[{Count:1b,id:"minecraft:ender_eye"}] if data storage undermagic:common list[{Count:1b,id:"minecraft:blaze_rod"}] run scoreboard players remove @s um.dummy 50
execute if score @s um.dummy matches 250.. if data storage undermagic:common list[{Count:1b,id:"minecraft:dragon_breath"}] if data storage undermagic:common list[{Count:1b,tag:{um_id:"bloody_edge_2"}}] if data storage undermagic:common list[{Count:1b,id:"minecraft:enchanted_golden_apple"}] if data storage undermagic:common list[{Count:1b,id:"minecraft:golden_sword"}] run loot spawn ~ ~1 ~ loot undermagic:items/bloody_edge_3
execute if score @s um.dummy matches 250.. if data storage undermagic:common list[{Count:1b,id:"minecraft:dragon_breath"}] if data storage undermagic:common list[{Count:1b,tag:{um_id:"bloody_edge_2"}}] if data storage undermagic:common list[{Count:1b,id:"minecraft:enchanted_golden_apple"}] if data storage undermagic:common list[{Count:1b,id:"minecraft:golden_sword"}] run scoreboard players remove @s um.dummy 250

#Sanguis Inspector
scoreboard players set temp um.dummy 0
execute if data storage undermagic:common list[{Slot:0b,id:"minecraft:redstone"}] run scoreboard players add temp um.dummy 1
execute if data storage undermagic:common list[{Slot:1b,id:"minecraft:redstone"}] run scoreboard players add temp um.dummy 1
execute if data storage undermagic:common list[{Slot:2b,id:"minecraft:redstone"}] run scoreboard players add temp um.dummy 1
execute if data storage undermagic:common list[{Slot:3b,id:"minecraft:redstone"}] run scoreboard players add temp um.dummy 1
execute if score @s um.dummy matches 10.. if score temp um.dummy matches 2 if data storage undermagic:common list[{Count:1b,id:"minecraft:redstone_block"}] if data storage undermagic:common list[{Count:1b,id:"minecraft:blaze_powder"}] run loot spawn ~ ~1 ~ loot undermagic:items/sanguis_inspector
execute if score @s um.dummy matches 10.. if score temp um.dummy matches 2 if data storage undermagic:common list[{Count:1b,id:"minecraft:redstone_block"}] if data storage undermagic:common list[{Count:1b,id:"minecraft:blaze_powder"}] run scoreboard players remove @s um.dummy 10

#Summon Elemental
execute if score @s um.dummy matches 100.. if data storage undermagic:common list[{Count:1b,id:"minecraft:redstone_block"}] if data storage undermagic:common list[{Count:1b,id:"minecraft:blaze_rod"}] if data storage undermagic:common list[{Count:1b,id:"minecraft:golden_sword"}] if data storage undermagic:common list[{Count:1b,id:"minecraft:iron_block"}] run function undermagic:entity/elemental/summon
execute if score @s um.dummy matches 100.. if data storage undermagic:common list[{Count:1b,id:"minecraft:redstone_block"}] if data storage undermagic:common list[{Count:1b,id:"minecraft:blaze_rod"}] if data storage undermagic:common list[{Count:1b,id:"minecraft:golden_sword"}] if data storage undermagic:common list[{Count:1b,id:"minecraft:iron_block"}] run effect give @p instant_damage
execute if score @s um.dummy matches 100.. if data storage undermagic:common list[{Count:1b,id:"minecraft:redstone_block"}] if data storage undermagic:common list[{Count:1b,id:"minecraft:blaze_rod"}] if data storage undermagic:common list[{Count:1b,id:"minecraft:golden_sword"}] if data storage undermagic:common list[{Count:1b,id:"minecraft:iron_block"}] run scoreboard players remove @s um.dummy 100

#Summon Animal
scoreboard players set temp um.dummy 0
execute if data storage undermagic:common list[{Slot:0b,id:"minecraft:feather"}] run scoreboard players add temp um.dummy 1
execute if data storage undermagic:common list[{Slot:1b,id:"minecraft:feather"}] run scoreboard players add temp um.dummy 1
execute if data storage undermagic:common list[{Slot:2b,id:"minecraft:feather"}] run scoreboard players add temp um.dummy 1
execute if data storage undermagic:common list[{Slot:3b,id:"minecraft:feather"}] run scoreboard players add temp um.dummy 1
execute if score @s um.dummy matches 5.. if score temp um.dummy matches 3 if data storage undermagic:common list[{Count:1b,id:"minecraft:chicken"}] run summon chicken ~ ~2 ~
execute if score @s um.dummy matches 5.. if score temp um.dummy matches 3 if data storage undermagic:common list[{Count:1b,id:"minecraft:chicken"}] run scoreboard players remove @s um.dummy 5

scoreboard players set temp um.dummy 0
execute if data storage undermagic:common list[{Slot:0b,id:"minecraft:wool"}] run scoreboard players add temp um.dummy 1
execute if data storage undermagic:common list[{Slot:1b,id:"minecraft:wool"}] run scoreboard players add temp um.dummy 1
execute if data storage undermagic:common list[{Slot:2b,id:"minecraft:wool"}] run scoreboard players add temp um.dummy 1
execute if data storage undermagic:common list[{Slot:3b,id:"minecraft:wool"}] run scoreboard players add temp um.dummy 1
execute if score @s um.dummy matches 5.. if score temp um.dummy matches 3 if data storage undermagic:common list[{Count:1b,id:"minecraft:mutton"}] run summon sheep ~ ~2 ~
execute if score @s um.dummy matches 5.. if score temp um.dummy matches 3 if data storage undermagic:common list[{Count:1b,id:"minecraft:mutton"}] run scoreboard players remove @s um.dummy 5

scoreboard players set temp um.dummy 0
execute if data storage undermagic:common list[{Slot:0b,id:"minecraft:rabbit_hide"}] run scoreboard players add temp um.dummy 1
execute if data storage undermagic:common list[{Slot:1b,id:"minecraft:rabbit_hide"}] run scoreboard players add temp um.dummy 1
execute if data storage undermagic:common list[{Slot:2b,id:"minecraft:rabbit_hide"}] run scoreboard players add temp um.dummy 1
execute if data storage undermagic:common list[{Slot:3b,id:"minecraft:rabbit_hide"}] run scoreboard players add temp um.dummy 1
execute if score @s um.dummy matches 5.. if score temp um.dummy matches 3 if data storage undermagic:common list[{Count:1b,id:"minecraft:rabbit"}] run summon rabbit ~ ~2 ~
execute if score @s um.dummy matches 5.. if score temp um.dummy matches 3 if data storage undermagic:common list[{Count:1b,id:"minecraft:rabbit"}] run scoreboard players add @s um.dummy 5

scoreboard players set temp um.dummy 0
execute if data storage undermagic:common list[{Slot:0b,id:"minecraft:leather"}] run scoreboard players add temp um.dummy 1
execute if data storage undermagic:common list[{Slot:1b,id:"minecraft:leather"}] run scoreboard players add temp um.dummy 1
execute if data storage undermagic:common list[{Slot:2b,id:"minecraft:leather"}] run scoreboard players add temp um.dummy 1
execute if data storage undermagic:common list[{Slot:3b,id:"minecraft:leather"}] run scoreboard players add temp um.dummy 1
execute if score @s um.dummy matches 5.. if score temp um.dummy matches 3 if data storage undermagic:common list[{Count:1b,id:"minecraft:beef"}] run summon cow ~ ~2 ~
execute if score @s um.dummy matches 5.. if score temp um.dummy matches 3 if data storage undermagic:common list[{Count:1b,id:"minecraft:beef"}] run scoreboard players add @s um.dummy 5

execute if score @s um.dummy matches 25.. if score temp um.dummy matches 3 if data storage undermagic:common list[{Count:1b,id:"minecraft:golden_apple"}] run summon horse ~ ~2 ~
execute if score @s um.dummy matches 25.. if score temp um.dummy matches 3 if data storage undermagic:common list[{Count:1b,id:"minecraft:golden_apple"}] run scoreboard players remove @s um.dummy 25

execute if score @s um.dummy matches 25.. if score temp um.dummy matches 3 if data storage undermagic:common list[{Count:1b,id:"minecraft:golden_carrot"}] run summon donkey ~ ~2 ~
execute if score @s um.dummy matches 25.. if score temp um.dummy matches 3 if data storage undermagic:common list[{Count:1b,id:"minecraft:golden_carrot"}] run scoreboard players remove @s um.dummy 25

#Carnage
execute if score @s um.dummy matches 50.. if data storage undermagic:common list[{Count:4b,id:"minecraft:red_dye"}] if data storage undermagic:common list[{Count:1b,id:"minecraft:iron_axe"}] if data storage undermagic:common list[{Count:1b,id:"minecraft:iron_pickaxe"}] if data storage undermagic:common list[{Count:4b,tag:{um_id:"Bloodstone"}}] run loot spawn ~ ~1 ~ loot undermagic:items/carnage_1
execute if score @s um.dummy matches 50.. if data storage undermagic:common list[{Count:4b,id:"minecraft:red_dye"}] if data storage undermagic:common list[{Count:1b,id:"minecraft:iron_axe"}] if data storage undermagic:common list[{Count:1b,id:"minecraft:iron_pickaxe"}] if data storage undermagic:common list[{Count:4b,tag:{um_id:"Bloodstone"}}] run scoreboard players remove @s um.dummy 50
execute if score @s um.dummy matches 150.. if data storage undermagic:common list[{Count:1b,id:"minecraft:glowstone"}] if data storage undermagic:common list[{Count:1b,tag:{um_id:"carnage_1"}}] if data storage undermagic:common list[{Count:1b,id:"minecraft:gold_block"}] if data storage undermagic:common list[{Count:6b,tag:{um_id:"Bloodstone"}}] run loot spawn ~ ~1 ~ loot undermagic:items/carnage_2
execute if score @s um.dummy matches 150.. if data storage undermagic:common list[{Count:1b,id:"minecraft:glowstone"}] if data storage undermagic:common list[{Count:1b,tag:{um_id:"carnage_1"}}] if data storage undermagic:common list[{Count:1b,id:"minecraft:gold_block"}] if data storage undermagic:common list[{Count:6b,tag:{um_id:"Bloodstone"}}] run scoreboard players remove @s um.dummy 150
execute if score @s um.dummy matches 500.. if data storage undermagic:common list[{Count:1b,id:"minecraft:dragon_breath"}] if data storage undermagic:common list[{Count:1b,tag:{um_id:"carnage_2"}}] if data storage undermagic:common list[{Count:1b,id:"minecraft:diamond_block"}] if data storage undermagic:common list[{Count:8b,tag:{um_id:"Bloodstone"}}] run loot spawn ~ ~1 ~ loot undermagic:items/carnage_3
execute if score @s um.dummy matches 500.. if data storage undermagic:common list[{Count:1b,id:"minecraft:dragon_breath"}] if data storage undermagic:common list[{Count:1b,tag:{um_id:"carnage_2"}}] if data storage undermagic:common list[{Count:1b,id:"minecraft:diamond_block"}] if data storage undermagic:common list[{Count:8b,tag:{um_id:"Bloodstone"}}] run scoreboard players remove @s um.dummy 500

#Bloodstained Armor
scoreboard players set temp um.dummy 0
execute if data storage undermagic:common list[{Slot:0b,tag:{um_id:"Bloodstone"}}] run scoreboard players add temp um.dummy 1
execute if data storage undermagic:common list[{Slot:1b,tag:{um_id:"Bloodstone"}}] run scoreboard players add temp um.dummy 1
execute if data storage undermagic:common list[{Slot:2b,tag:{um_id:"Bloodstone"}}] run scoreboard players add temp um.dummy 1
execute if data storage undermagic:common list[{Slot:3b,tag:{um_id:"Bloodstone"}}] run scoreboard players add temp um.dummy 1
execute if score @s um.dummy matches 75.. if score temp um.dummy matches 2 if data storage undermagic:common list[{id:"minecraft:chainmail_helmet",Count:1b}] if data storage undermagic:common list[{Count:1b,id:"minecraft:diamond_block"}] run loot spawn ~ ~1 ~ loot undermagic:items/bloodstained_helmet
execute if score @s um.dummy matches 75.. if score temp um.dummy matches 2 if data storage undermagic:common list[{id:"minecraft:chainmail_helmet",Count:1b}] if data storage undermagic:common list[{Count:1b,id:"minecraft:diamond_block"}] run scoreboard players remove @s um.dummy 75
execute if score @s um.dummy matches 75.. if score temp um.dummy matches 2 if data storage undermagic:common list[{id:"minecraft:chainmail_chestplate",Count:1b}] if data storage undermagic:common list[{Count:1b,id:"minecraft:diamond_block"}] run loot spawn ~ ~1 ~ loot undermagic:items/bloodstained_chestplate
execute if score @s um.dummy matches 75.. if score temp um.dummy matches 2 if data storage undermagic:common list[{id:"minecraft:chainmail_chestplate",Count:1b}] if data storage undermagic:common list[{Count:1b,id:"minecraft:diamond_block"}] run scoreboard players remove @s um.dummy 75
execute if score @s um.dummy matches 75.. if score temp um.dummy matches 2 if data storage undermagic:common list[{id:"minecraft:chainmail_leggings",Count:1b}] if data storage undermagic:common list[{Count:1b,id:"minecraft:diamond_block"}] run loot spawn ~ ~1 ~ loot undermagic:items/bloodstained_leggings
execute if score @s um.dummy matches 75.. if score temp um.dummy matches 2 if data storage undermagic:common list[{id:"minecraft:chainmail_leggings",Count:1b}] if data storage undermagic:common list[{Count:1b,id:"minecraft:diamond_block"}] run scoreboard players remove @s um.dummy 75
execute if score @s um.dummy matches 75.. if score temp um.dummy matches 2 if data storage undermagic:common list[{id:"minecraft:chainmail_boots",Count:1b}] if data storage undermagic:common list[{Count:1b,id:"minecraft:diamond_block"}] run loot spawn ~ ~1 ~ loot undermagic:items/bloodstained_boots
execute if score @s um.dummy matches 75.. if score temp um.dummy matches 2 if data storage undermagic:common list[{id:"minecraft:chainmail_boots",Count:1b}] if data storage undermagic:common list[{Count:1b,id:"minecraft:diamond_block"}] run scoreboard players remove @s um.dummy 75

scoreboard players set temp um.dummy 0
execute if data storage undermagic:common list[{Slot:0b,Count:3b,tag:{um_id:"cbe"}}] run scoreboard players add temp um.dummy 1
execute if data storage undermagic:common list[{Slot:1b,Count:3b,tag:{um_id:"cbe"}}] run scoreboard players add temp um.dummy 1
execute if data storage undermagic:common list[{Slot:2b,Count:3b,tag:{um_id:"cbe"}}] run scoreboard players add temp um.dummy 1
execute if data storage undermagic:common list[{Slot:3b,Count:3b,tag:{um_id:"cbe"}}] run scoreboard players add temp um.dummy 1
execute if score @s um.dummy matches 250.. if score temp um.dummy matches 2 if data storage undermagic:common list[{tag:{um_id:"bloodstained_chestplate"},Count:1b}] if data storage undermagic:common list[{Count:1b,tag:{um_id:"bloodstained_heart"}}] run loot spawn ~ ~1 ~ loot undermagic:items/bloodstained_chestplate_upgraded
execute if score @s um.dummy matches 250.. if score temp um.dummy matches 2 if data storage undermagic:common list[{tag:{um_id:"bloodstained_chestplate"},Count:1b}] if data storage undermagic:common list[{Count:1b,tag:{um_id:"bloodstained_heart"}}] run scoreboard players remove @s um.dummy 250

#Infusions
execute if score @s um.dummy matches 150.. if score temp um.dummy matches 2 if data storage undermagic:common list[{id:"minecraft:rotten_flesh",Count:6b}] if data storage undermagic:common list[{Count:1b,id:"minecraft:iron_block"}] as @p at @s run function undermagic:infusions/ironskin
execute if score @s um.dummy matches 150.. if score temp um.dummy matches 2 if data storage undermagic:common list[{id:"minecraft:rotten_flesh",Count:6b}] if data storage undermagic:common list[{Count:1b,id:"minecraft:iron_block"}] run scoreboard players remove @s um.dummy 150
execute if score @s um.dummy matches 200.. if score temp um.dummy matches 2 if data storage undermagic:common list[{id:"minecraft:blaze_rod",Count:4b}] if data storage undermagic:common list[{Count:2b,id:"minecraft:magma_cream"}] as @p at @s run function undermagic:infusions/flame_body
execute if score @s um.dummy matches 200.. if score temp um.dummy matches 2 if data storage undermagic:common list[{id:"minecraft:blaze_rod",Count:4b}] if data storage undermagic:common list[{Count:2b,id:"minecraft:magma_cream"}] run scoreboard players remove @s um.dummy 200

execute if score @s um.dummy matches 100.. if data storage undermagic:common list[{Count:4b,id:"minecraft:blue_ice"}] if data storage undermagic:common list[{Count:8b,id:"minecraft:diamond"}] if data storage undermagic:common list[{Count:2b,tag:{um_id:"cbe"}}] if data storage undermagic:common list[{Count:10b,id:"minecraft:blaze_powder"}] as @p at @s run function undermagic:infusions/elemental_limbs
execute if score @s um.dummy matches 100.. if data storage undermagic:common list[{Count:4b,id:"minecraft:blue_ice"}] if data storage undermagic:common list[{Count:8b,id:"minecraft:diamond"}] if data storage undermagic:common list[{Count:2b,tag:{um_id:"cbe"}}] if data storage undermagic:common list[{Count:10b,id:"minecraft:blaze_powder"}] run scoreboard players remove @s um.dummy 100
execute if score @s um.dummy matches 300.. if data storage undermagic:common list[{Count:4b,tag:{um_id:"nether_shard"}}] if data storage undermagic:common list[{Count:2b,id:"minecraft:golden_apple"}] if data storage undermagic:common list[{Count:4b,tag:{um_id:"cbe"}}] if data storage undermagic:common list[{Count:2b,id:"minecraft:gold_block"}] as @p at @s run function undermagic:infusions/tolerance
execute if score @s um.dummy matches 300.. if data storage undermagic:common list[{Count:4b,tag:{um_id:"nether_shard"}}] if data storage undermagic:common list[{Count:2b,id:"minecraft:golden_apple"}] if data storage undermagic:common list[{Count:4b,tag:{um_id:"cbe"}}] if data storage undermagic:common list[{Count:2b,id:"minecraft:gold_block"}] run scoreboard players remove @s um.dummy 300
execute if score @s um.dummy matches 400.. if data storage undermagic:common list[{Count:2b,id:"minecraft:purpur_block"}] if data storage undermagic:common list[{Count:4b,id:"minecraft:ender_pearl"}] if data storage undermagic:common list[{Count:6b,tag:{um_id:"cbe"}}] if data storage undermagic:common list[{Count:4b,id:"minecraft:ender_eye"}] as @p at @s run function undermagic:infusions/enderlord
execute if score @s um.dummy matches 400.. if data storage undermagic:common list[{Count:2b,id:"minecraft:purpur_block"}] if data storage undermagic:common list[{Count:4b,id:"minecraft:ender_pearl"}] if data storage undermagic:common list[{Count:6b,tag:{um_id:"cbe"}}] if data storage undermagic:common list[{Count:4b,id:"minecraft:ender_eye"}] run scoreboard players remove @s um.dummy 400
execute if score @s um.dummy matches 500.. if data storage undermagic:common list[{Count:32b,id:"minecraft:dragon_breath"}] if data storage undermagic:common list[{Count:2b,id:"minecraft:dragon_head"}] if data storage undermagic:common list[{Count:6b,tag:{um_id:"cbe"}}] if data storage undermagic:common list[{Count:1b,id:"minecraft:elytra"}] as @p at @s run function undermagic:infusions/draconic_aspect
execute if score @s um.dummy matches 500.. if data storage undermagic:common list[{Count:32b,id:"minecraft:dragon_breath"}] if data storage undermagic:common list[{Count:2b,id:"minecraft:dragon_head"}] if data storage undermagic:common list[{Count:6b,tag:{um_id:"cbe"}}] if data storage undermagic:common list[{Count:1b,id:"minecraft:elytra"}] run scoreboard players remove @s um.dummy 500

#Sanguine Eye
execute if score @s um.dummy matches 500.. if data storage undermagic:common list[{Count:10b,tag:{um_id:"Bloodstone"}}] if data storage undermagic:common list[{Count:1b,id:"minecraft:emerald_block"}] if data storage undermagic:common list[{Count:1b,id:"minecraft:diamond_block"}] if data storage undermagic:common list[{Count:1b,id:"minecraft:ender_eye"}] run loot spawn ~ ~1 ~ loot undermagic:items/sanguine_eye
execute if score @s um.dummy matches 500.. if data storage undermagic:common list[{Count:10b,tag:{um_id:"Bloodstone"}}] if data storage undermagic:common list[{Count:1b,id:"minecraft:emerald_block"}] if data storage undermagic:common list[{Count:1b,id:"minecraft:diamond_block"}] if data storage undermagic:common list[{Count:1b,id:"minecraft:ender_eye"}] run scoreboard players remove @s um.dummy 250

#Blood Rain Staff
execute if score @s um.dummy matches 10.. if data storage undermagic:common list[{Count:4b,id:"minecraft:red_dye"}] if data storage undermagic:common list[{Count:1b,id:"minecraft:stick"}] if data storage undermagic:common list[{Count:1b,id:"minecraft:golden_apple"}] if data storage undermagic:common list[{Count:1b,id:"minecraft:blaze_powder"}] run loot spawn ~ ~1 ~ loot undermagic:items/blood_rain_staff_1
execute if score @s um.dummy matches 10.. if data storage undermagic:common list[{Count:4b,id:"minecraft:red_dye"}] if data storage undermagic:common list[{Count:1b,id:"minecraft:stick"}] if data storage undermagic:common list[{Count:1b,id:"minecraft:golden_apple"}] if data storage undermagic:common list[{Count:1b,id:"minecraft:blaze_powder"}] run scoreboard players remove @s um.dummy 10
execute if score @s um.dummy matches 50.. if data storage undermagic:common list[{Count:1b,id:"minecraft:glowstone"}] if data storage undermagic:common list[{Count:1b,tag:{um_id:"blood_rain_staff_1"}}] if data storage undermagic:common list[{Count:1b,id:"minecraft:ender_eye"}] if data storage undermagic:common list[{Count:1b,id:"minecraft:blaze_rod"}] run loot spawn ~ ~1 ~ loot undermagic:items/blood_rain_staff_2
execute if score @s um.dummy matches 50.. if data storage undermagic:common list[{Count:1b,id:"minecraft:glowstone"}] if data storage undermagic:common list[{Count:1b,tag:{um_id:"blood_rain_staff_1"}}] if data storage undermagic:common list[{Count:1b,id:"minecraft:ender_eye"}] if data storage undermagic:common list[{Count:1b,id:"minecraft:blaze_rod"}] run scoreboard players remove @s um.dummy 50
execute if score @s um.dummy matches 250.. if data storage undermagic:common list[{Count:1b,id:"minecraft:dragon_breath"}] if data storage undermagic:common list[{Count:1b,tag:{um_id:"blood_rain_staff_2"}}] if data storage undermagic:common list[{Count:1b,id:"minecraft:enchanted_golden_apple"}] if data storage undermagic:common list[{Count:1b,id:"minecraft:golden_sword"}] run loot spawn ~ ~1 ~ loot undermagic:items/blood_rain_staff_3
execute if score @s um.dummy matches 250.. if data storage undermagic:common list[{Count:1b,id:"minecraft:dragon_breath"}] if data storage undermagic:common list[{Count:1b,tag:{um_id:"blood_rain_staff_2"}}] if data storage undermagic:common list[{Count:1b,id:"minecraft:enchanted_golden_apple"}] if data storage undermagic:common list[{Count:1b,id:"minecraft:golden_sword"}] run scoreboard players remove @s um.dummy 250

#Cleanup
execute positioned ~3 ~ ~3 run kill @e[type=item,sort=nearest,limit=1]
execute positioned ~-3 ~ ~3 run kill @e[type=item,sort=nearest,limit=1]
execute positioned ~3 ~ ~-3 run kill @e[type=item,sort=nearest,limit=1]
execute positioned ~-3 ~ ~-3 run kill @e[type=item,sort=nearest,limit=1]
#setblock ~3 ~ ~ dropper[facing=up]
#setblock ~-3 ~ ~ dropper[facing=up]
#setblock ~ ~ ~3 dropper[facing=up]
#setblock ~ ~ ~-3 dropper[facing=up]
