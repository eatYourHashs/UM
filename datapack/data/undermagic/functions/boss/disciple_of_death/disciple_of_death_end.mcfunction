
data modify storage undermagic:common boss_status.disciple_of_death set value 0b

bossbar set undermagic:disciple_of_death visible false
bossbar set undermagic:disciple_of_death players @s

execute unless entity @e[tag=um.disciple_of_death] run scoreboard players set death_downed um.dummy 1

tp @e[tag=um.disciple_of_death] ~ -100 ~
kill @e[tag=um.disciple_of_death]
kill @e[tag=um.death_scythe]
