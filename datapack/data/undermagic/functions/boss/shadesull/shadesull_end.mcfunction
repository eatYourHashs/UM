
data modify storage undermagic:common boss_status.shadesull set value 0b

bossbar set undermagic:shadesull visible false
bossbar set undermagic:shadesull players @s

stopsound @a * um:music.shadesull_p1
stopsound @a * um:music.shadesull_p2

execute if score kill um.dummy matches 1 unless entity @s[tag=um.no_nohit] run loot give @p loot undermagic:items/in_the_chamber_of_madness
execute if score kill um.dummy matches 1 unless entity @s[tag=um.no_nohit] run loot give @p loot undermagic:items/reign_of_the_corrupt
execute if score kill um.dummy matches 1 at @e[tag=um.shadesull] run advancement grant @a[distance=..128] only undermagic:undermagic/shadesull

function undermagic:boss/disciple_of_destruction/disciple_of_destruction_end
function undermagic:boss/disciple_of_death/disciple_of_death_end

scoreboard players set kill um.dummy 0

tp @e[tag=um.shadesull] ~ -100 ~
kill @e[tag=um.shadesull]
