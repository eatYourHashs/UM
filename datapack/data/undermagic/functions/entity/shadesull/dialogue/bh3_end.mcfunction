execute store result score rand um.dummy run loot spawn 0 -10 0 loot undermagic:um_rand/rand1_100
execute if score rand um.dummy matches 1..33 run tellraw @a[distance=..50] ["",{"text":"Shadesull: ","bold":true,"color":"#720080"},{"text":"I am uncontested! Unstoppable! Unkillable!","color":"#E100FF"}]
execute if score rand um.dummy matches 34..66 run tellraw @a[distance=..50] ["",{"text":"Shadesull: ","bold":true,"color":"#720080"},{"text":"How are you still living?!","color":"#E100FF"}]
execute if score rand um.dummy matches 67..100 run tellraw @a[distance=..50] ["",{"text":"Shadesull: ","bold":true,"color":"#720080"},{"text":"I will remove you from this plane!","color":"#E100FF"}]