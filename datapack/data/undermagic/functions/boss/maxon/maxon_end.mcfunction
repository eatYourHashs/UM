
data modify storage undermagic:common boss_status.maxon set value 0b

bossbar set undermagic:maxon visible false
bossbar set undermagic:maxon players @s

scoreboard players remove @e[tag=um.main_demon_meteor] um.dummy_two 1

tp @e[tag=um.maxon] ~ -100 ~
kill @e[tag=um.maxon]
