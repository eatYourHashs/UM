function undermagic:entity/shadesull/dialogue/phase_2
stopsound @a master um:music.shadesull_p1
playsound um:music.shadesull_p2 master @a[distance=..50] ~ ~ ~ 0.5 1 0.5
scoreboard players set @s um.music 0
scoreboard players set @s um.dummy 800
tag @s add um.shadesull_p2
item replace entity @s armor.head with minecraft:carrot_on_a_stick{CustomModelData:420132,Unbreakable:1b}