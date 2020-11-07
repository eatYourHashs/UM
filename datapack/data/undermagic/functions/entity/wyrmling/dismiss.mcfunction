
loot replace entity @s weapon.mainhand loot undermagic:items/mythical_dragon_egg_dismissed
scoreboard players operation temp um.dummy = @s um.familiar_id
execute as @e[type=armor_stand,tag=um.wyrmling_fam] if score @s um.familiar_id = temp um.dummy run kill @s
