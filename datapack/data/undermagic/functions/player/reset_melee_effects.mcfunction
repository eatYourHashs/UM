execute if score @s um.ak_count matches 200.. run function undermagic:item/armor/abyss_knight_reset
execute if entity @s[predicate=undermagic:armor_sets/apocalypse_champion_scale_mail,scores={um.champ_chg=1..}] run scoreboard players remove @s um.champ_chg
function undermagic:item/weapon/living_nightmare_end