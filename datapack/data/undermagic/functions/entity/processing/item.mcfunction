
tag @s add um_processed

scoreboard players set temp du.dummy 0
execute if data entity @s Item.tag{um_id:"netheric_book"} if block ~ ~-0.9 ~ crafting_table store success score temp du.dummy run function undermagic:block/undercrafter_init
execute if data entity @s Item.tag{um_id:"pit_lord_heart"} store success score temp du.dummy run data merge entity @s {Health:100}
execute if score temp du.dummy matches 1 run tag @s remove um_processed

kill @s[nbt={Item:{id:"minecraft:structure_block"}}]
