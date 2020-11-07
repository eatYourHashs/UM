particle minecraft:soul ~ ~ ~ 0 0 0 0.1 20
tag @e[tag=!global.ignore,scores={um.invuln=10..},distance=..2,limit=1] add um.hit
execute store result score temp um.dummy_two run loot spawn 0 -10 0 loot undermagic:um_rand/rand1_12
execute if score temp um.dummy_two matches 1..3 run summon armor_stand ~5 ~ ~ {NoGravity:1b,Invulnerable:1b,ShowArms:0b,Small:0b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["global.ignore","um.entity","um.projectile","um.bonus_sickle","um.new_bonus_sickle"]}
execute if score temp um.dummy_two matches 4..6 run summon armor_stand ~-5 ~ ~ {NoGravity:1b,Invulnerable:1b,ShowArms:0b,Small:0b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["global.ignore","um.entity","um.projectile","um.bonus_sickle","um.new_bonus_sickle"]}
execute if score temp um.dummy_two matches 7..9 run summon armor_stand ~ ~ ~5 {NoGravity:1b,Invulnerable:1b,ShowArms:0b,Small:0b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["global.ignore","um.entity","um.projectile","um.bonus_sickle","um.new_bonus_sickle"]}
execute if score temp um.dummy_two matches 10..12 run summon armor_stand ~ ~ ~-5 {NoGravity:1b,Invulnerable:1b,ShowArms:0b,Small:0b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["global.ignore","um.entity","um.projectile","um.bonus_sickle","um.new_bonus_sickle"]}
execute store result score temp um.dummy_two run loot spawn 0 -10 0 loot undermagic:um_rand/rand1_12
execute if score temp um.dummy_two matches 1..3 run summon armor_stand ~8 ~ ~ {NoGravity:1b,Invulnerable:1b,ShowArms:0b,Small:0b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["global.ignore","um.entity","um.projectile","um.bonus_sickle","um.new_bonus_sickle"]}
execute if score temp um.dummy_two matches 4..6 run summon armor_stand ~-8 ~ ~ {NoGravity:1b,Invulnerable:1b,ShowArms:0b,Small:0b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["global.ignore","um.entity","um.projectile","um.bonus_sickle","um.new_bonus_sickle"]}
execute if score temp um.dummy_two matches 7..9 run summon armor_stand ~ ~ ~8 {NoGravity:1b,Invulnerable:1b,ShowArms:0b,Small:0b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["global.ignore","um.entity","um.projectile","um.bonus_sickle","um.new_bonus_sickle"]}
execute if score temp um.dummy_two matches 10..12 run summon armor_stand ~ ~ ~-8 {NoGravity:1b,Invulnerable:1b,ShowArms:0b,Small:0b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["global.ignore","um.entity","um.projectile","um.bonus_sickle","um.new_bonus_sickle"]}
execute as @e[tag=um.new_bonus_sickle] at @s facing entity @e[tag=um.hit,limit=1,sort=nearest] feet run tp ~ ~ ~
tag @e[tag=um.new_bonus_sickle] remove um.new_bonus_sickle
tag @e[tag=um.hit] remove um.hit
kill @s