
data modify storage undermagic:common boss_status.shadesull set value 0b

bossbar set undermagic:shadesull visible false
bossbar set undermagic:shadesull players @s

stopsound @a * um:boss_music.shadesull_p1
stopsound @a * um:boss_music.shadesull_p2

function undermagic:boss/disciple_of_destruction/disciple_of_destruction_end
function undermagic:boss/disciple_of_death/disciple_of_death_end

tp @e[tag=um.shadesull] ~ -100 ~
kill @e[tag=um.shadesull]
