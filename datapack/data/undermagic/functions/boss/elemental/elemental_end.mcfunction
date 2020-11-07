
data modify storage undermagic:common boss_status.elemental set value 0b

bossbar set undermagic:elemental visible false
bossbar set undermagic:elemental players @s

tp @e[tag=um.elemental] ~ -100 ~
kill @e[tag=um.elemental]
