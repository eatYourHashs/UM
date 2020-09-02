
data modify storage undermagic:common boss_status.disciple_of_destruction set value 0b

bossbar set undermagic:disciple_of_destruction visible false
bossbar set undermagic:disciple_of_destruction players @s

tp @e[tag=um_disciple_of_destruction] ~ -100 ~
kill @e[tag=um_disciple_of_destruction]
