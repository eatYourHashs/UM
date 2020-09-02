
data modify storage undermagic:common boss_status.alpha_shadebeast set value 0b

bossbar set undermagic:sb_alpha visible false
bossbar set undermagic:sb_alpha players @s

tp @e[tag=um_shadebeast_alpha] ~ -100 ~
kill @e[tag=um_shadebeast_alpha]
