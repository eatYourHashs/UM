

data modify storage undermagic:common boss_status.pit_lord set value 0b

stopsound @a * um:music.pit_lord
bossbar set undermagic:pit_lord visible false
bossbar set undermagic:pit_lord players @s

execute if score kill um.dummy matches 1 unless entity @s[tag=um.no_nohit] run loot give @p loot undermagic:items/demon_kings_revenge
execute if score kill um.dummy matches 1 as @e[tag=um.pit_lord] at @s run advancement grant @a[distance=..128] only undermagic:undermagic/pit_lord
execute if score kill um.dummy matches 1 as @e[tag=um.pit_lord] at @s run advancement grant @a[distance=..128] only undermagic:undermagic/abyss pit_lord

scoreboard players set kill um.dummy 0

tp @e[tag=um.pit_lord] ~ -100 ~
kill @e[tag=um.pit_lord]
