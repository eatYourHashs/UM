
data modify storage undermagic:common boss_status.pit_lord set value 0b

stopsound @a * um:boss_music.pit_lord
bossbar set undermagic:pit_lord visible false
bossbar set undermagic:pit_lord players @s

execute as @e[tag=um_pit_lord] at @s run advancement grant @a[distance=..128] only undermagic:undermagic/pit_lord
execute as @e[tag=um_pit_lord] at @s run advancement grant @a[distance=..128] only undermagic:undermagic/abyss_pit_lord

tp @e[tag=um_pit_lord] ~ -100 ~
kill @e[tag=um_pit_lord]
