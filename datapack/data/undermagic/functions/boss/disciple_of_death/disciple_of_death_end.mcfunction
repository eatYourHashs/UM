
data modify storage undermagic:common boss_status.disciple_of_death set value 0b

bossbar set undermagic:disciple_of_death visible false
bossbar set undermagic:disciple_of_death players @s

tp @e[tag=um_disciple_of_death] ~ -100 ~
kill @e[tag=um_disciple_of_death]
kill @e[tag=um_death_scythe]
