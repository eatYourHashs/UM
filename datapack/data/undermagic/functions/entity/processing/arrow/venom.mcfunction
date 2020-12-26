execute store result score dmg um.dummy run data get entity @s damage 10
scoreboard players add dmg um.dummy 30
execute store result entity @s damage double 0.1 run scoreboard players get dmg um.dummy
data modify entity @s CustomPotionEffects append value {Id:19b,Amplifier:0b,Duration:200}
playsound minecraft:item.armor.equip_turtle player @a
scoreboard players set @p[distance=..2,nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:-106b,Count:1b,tag:{um_id:"venom_quiver"}}]}] um.quiver_cd 80
