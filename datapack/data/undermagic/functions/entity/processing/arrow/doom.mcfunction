execute store result score dmg um.dummy run data get entity @s damage 10
scoreboard players add dmg um.dummy 80
execute store result entity @s damage double 0.1 run scoreboard players get dmg um.dummy
tag @s add um.doom_proc
tag @s add um.entity
data merge entity @s {PierceLevel:10b}
playsound minecraft:item.armor.equip_netherite player @a
scoreboard players set @p[distance=..2,nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:-106b,Count:1b,tag:{um_id:"doom_quiver"}}]}] um.quiver_cd 80
