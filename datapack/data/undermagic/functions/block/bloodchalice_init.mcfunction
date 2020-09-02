particle minecraft:flash
playsound minecraft:entity.zombified_piglin.angry block @a ~ ~ ~ 1 0.7
playsound minecraft:entity.wither.shoot block @a ~ ~ ~ 1 0.8
particle minecraft:flame ~ ~ ~ 0 0 0 0.1 40
execute align xyz positioned ~0.5 ~ ~0.5 run summon armor_stand ~ ~0.5 ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["um_entity","um_bloodchalice"],ArmorItems:[{},{},{},{}]}
tp @p
scoreboard players set @e[type=minecraft:armor_stand,limit=1,sort=nearest] um.dummy_two 0
advancement grant @a[distance=..20] only undermagic:undermagic/blood_chalice
