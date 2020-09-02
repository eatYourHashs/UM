
data modify storage undermagic:common boss_status.blood_amalgam set value 0b

bossbar set undermagic:blood_amalgam visible false
bossbar set undermagic:blood_amalgam players @s

tp @e[tag=um_blood_amalgam] ~ -100 ~
kill @e[tag=um_blood_amalgam]
