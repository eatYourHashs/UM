
execute as @s[scores={um.reviv_cd=6000}] if score @s um.reviv_charms > @s um.reviv_chg run scoreboard players add @s um.reviv_chg 1
execute as @s[scores={um.reviv_cd=12000}] if score @s um.reviv_charms > @s um.reviv_chg run scoreboard players add @s um.reviv_chg 1
execute as @s[scores={um.reviv_cd=18000}] if score @s um.reviv_charms > @s um.reviv_chg run scoreboard players add @s um.reviv_chg 1
execute as @s[scores={um.reviv_cd=24000}] if score @s um.reviv_charms > @s um.reviv_chg run scoreboard players add @s um.reviv_chg 1
execute as @s[scores={um.health=..6,um.reviv_chg=1..}] at @s run function undermagic:player/charms/revivify
scoreboard players set @s[scores={um.reviv_cd=24000..}] um.reviv_cd 0
