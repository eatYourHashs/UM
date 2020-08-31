summon armor_stand ^ ^ ^1 {NoGravity:1b,Invulnerable:1b,ShowArms:0b,Small:0b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["global.ignore","um_entity","um_elder_bolt"]}
execute as @e[sort=nearest,limit=1,tag=um_elder_bolt] run tp @e[limit=1,tag=um_shadesull_explosive_bullet,sort=nearest]
execute as @e[sort=nearest,limit=1,tag=um_elder_bolt] facing entity @p feet run tp ^ ^ ^