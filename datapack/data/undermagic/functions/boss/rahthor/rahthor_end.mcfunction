
data modify storage undermagic:common boss_status.rahthor set value 0b

bossbar set undermagic:rahthor visible false
bossbar set undermagic:rahthor players @s

scoreboard players remove @e[tag=um.main_demon_meteor] um.dummy_two 1

tp @e[tag=um.rahthor] ~ -100 ~
kill @e[tag=um.rahthor]
