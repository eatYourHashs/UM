scoreboard players remove @s um.gaunt_timer 1
execute unless entity @s[nbt={SelectedItem:{tag:{um_id:"fury_gauntlets"}}}] run scoreboard players set @s um.gaunt_timer 0
execute if score @s um.gaunt_timer matches 0 run playsound minecraft:entity.zombified_piglin.death player @a ~ ~ ~ 1 2
execute if score @s um.gaunt_timer matches 0 run scoreboard players set @s um.gaunt_combo 0
execute if score @s um.gaunt_timer matches 0 run attribute @s minecraft:generic.attack_damage modifier remove 84c4661b-6b45-4647-9744-df132b0ff7c8