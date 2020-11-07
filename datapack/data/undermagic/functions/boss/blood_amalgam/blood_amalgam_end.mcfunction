
data modify storage undermagic:common boss_status.blood_amalgam set value 0b

stopsound @a * um:boss_music.blood_amalgam
bossbar set undermagic:blood_amalgam visible false
bossbar set undermagic:blood_amalgam players @s

tp @e[tag=um.blood_amalgam] ~ -100 ~
kill @e[tag=um.blood_amalgam]
kill @e[tag=um.blood_minion]
