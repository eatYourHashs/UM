execute store result score rand um.dummy run loot spawn 0 -10 0 loot undermagic:technical/rand1_100
execute if score rand um.dummy matches 1..33 run tellraw @a[distance=..50] ["",{"text":"Shadesull: ","bold":true,"color":"#720080"},{"text":"AAAAAAGH! Curse you!","color":"#E100FF"}]
execute if score rand um.dummy matches 34..65 run tellraw @a[distance=..50] ["",{"text":"Shadesull: ","bold":true,"color":"#720080"},{"text":"That's it! I must finish you, once and for all!","color":"#E100FF"}]
execute if score rand um.dummy matches 66..98 run tellraw @a[distance=..50] ["",{"text":"Shadesull: ","bold":true,"color":"#720080"},{"text":"That will be all from you! You will never end my reign!","color":"#E100FF"}]
#rare
execute if score rand um.dummy matches 99 run tellraw @a[distance=..50] ["",{"text":"Shadesull: ","bold":true,"color":"#720080"},{"text":"THIS IS MY LAST ATTACK -- MY TRUMP CARD AS LIBTARDS WOULD SAY. SURRENDER NOW OR FACE MY GAMER DAB!","color":"#E100FF"}]
execute if score rand um.dummy matches 100 run tellraw @a[distance=..50] ["",{"text":"Shadesull: ","bold":true,"color":"#720080"},{"text":"graaaaAAAAAAAAGH!","color":"#E100FF"}]
