execute store result score rand um.dummy run loot spawn 0 -10 0 loot undermagic:um_rand/rand1_100
execute if score rand um.dummy matches 1..33 run tellraw @a[distance=..50] ["",{"text":"Shadesull: ","bold":true,"color":"#2F0080"},{"text":"Welcome to my own personal hell.","color":"#6E00FF"}]
execute if score rand um.dummy matches 34..66 run tellraw @a[distance=..50] ["",{"text":"Shadesull: ","bold":true,"color":"#2F0080"},{"text":"Welcome to your doom.","color":"#6E00FF"}]
execute if score rand um.dummy matches 67..100 run tellraw @a[distance=..50] ["",{"text":"Shadesull: ","bold":true,"color":"#2F0080"},{"text":"You have made a grave mistake in coming here.","color":"#6E00FF"}]