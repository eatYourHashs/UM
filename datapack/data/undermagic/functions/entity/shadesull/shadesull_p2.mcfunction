stopsound @a master um:boss_music.shadesull_p1
playsound um:boss_music.shadesull_p2 master @a[distance=..50] ~ ~ ~ 0.5 1 0.5
scoreboard players set @s um.music 0
scoreboard players set @s um.dummy 800
tag @s add um_shadesull_p2
replaceitem entity @s armor.head minecraft:carrot_on_a_stick{CustomModelData:420132}