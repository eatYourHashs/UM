execute if score nohit_set um.dummy matches 1 run playsound minecraft:entity.arrow.hit_player player @a ~ ~ ~ 1 0.5 1
execute if score nohit_set um.dummy matches 2 run playsound minecraft:entity.arrow.hit_player player @a ~ ~ ~ 1 1 1
execute if score nohit_set um.dummy matches 2 run playsound minecraft:entity.wither.death player @a ~ ~ ~ 1 1 1
execute if score nohit_set um.dummy matches 1 run scoreboard players set nohit um.dummy 0
execute if score nohit_set um.dummy matches 2 run scoreboard players set nohit um.dummy 1
execute if score nohit_set um.dummy matches 1 run tellraw @a ["",{"text":"No-hit mode toggled off.","color":"green"}]
execute if score nohit_set um.dummy matches 2 run tellraw @a ["",{"text":"No-hit mode toggled on. You like pain, do you not?","color":"#43004A"}]
scoreboard players set nohit_set um.dummy 0
