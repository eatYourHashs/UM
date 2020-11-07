summon armor_stand ^ ^ ^1 {NoGravity:1b,Invulnerable:1b,ShowArms:0b,Small:0b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["global.ignore","um.entity","um.shadesull","um.shadesull_orb"]}
execute as @e[sort=nearest,limit=1,tag=um.shadesull_orb] run tp @e[limit=1,tag=um.shadesull_explosive_bullet,sort=nearest]
execute as @e[sort=nearest,limit=1,tag=um.shadesull_orb] facing entity @p feet run tp ^ ^ ^
