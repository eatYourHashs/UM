
data modify storage undermagic:common boss_status.shadesull set value 0b

bossbar set undermagic:shadesull visible false
bossbar set undermagic:shadesull players @s

stopsound @a * um:boss_music.shadesull_p1
stopsound @a * um:boss_music.shadesull_p2

tp @e[tag=um_shadesull] ~ -100 ~
kill @e[tag=um_shadesull]
