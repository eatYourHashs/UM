execute store result score rand um.dummy run loot spawn 0 -10 0 loot undermagic:um_rand/rand1_100
execute if score rand um.dummy matches 1..33 run tellraw @a[distance=..50] ["",{"text":"Shadesull: ","bold":true,"color":"#720080"},{"text":"I will destroy you!","color":"#E100FF"}]
execute if score rand um.dummy matches 34..65 run tellraw @a[distance=..50] ["",{"text":"Shadesull: ","bold":true,"color":"#720080"},{"text":"I am the rightful ruler of this universe!","color":"#E100FF"}]
execute if score rand um.dummy matches 66..98 run tellraw @a[distance=..50] ["",{"text":"Shadesull: ","bold":true,"color":"#720080"},{"text":"Your end approaches, in any case!","color":"#E100FF"}]
#rare
execute if score rand um.dummy matches 99 run tellraw @a[distance=..50] ["",{"text":"Shadesull: ","bold":true,"color":"#720080"},{"text":"THIS IS MY LAST ATTACK -- MY TRUMP CARD AS LIBTARDS WOULD SAY. SURRENDER NOW OR FACE MY GAMER DAB!","color":"#E100FF"}]
execute if score rand um.dummy matches 100 run tellraw @a[distance=..50] ["",{"text":"Shadesull: ","bold":true,"color":"#720080"},{"text":"graaaaAAAAAAAAGH!","color":"#E100FF"}]
