
summon ravager ~ ~ ~ {Silent:1b,DeathLootTable:"undermagic:um_mob/disciple_of_destruction",Health:400f,Tags:["um_entity","um_disciple_of_destruction_boss","um_disciple_of_destruction"],CustomName:'{"text":"Disciple of Destruction"}',Attributes:[{Name:generic.max_health,Base:400},{Name:generic.follow_range,Base:100},{Name:generic.knockback_resistance,Base:1},{Name:generic.movement_speed,Base:0.1},{Name:generic.attack_damage,Base:20},{Name:generic.armor,Base:16},{Name:generic.armor_toughness,Base:0},{Name:generic.attack_knockback,Base:6}]}
summon armor_stand ~ ~ ~ {Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["um_entity","global.ignore","um_disciple_of_destruction_model","um_disciple_of_destruction"],ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:420129}}],CustomName:'{"text":"Disciple of Destruction"}'}

data modify storage undermagic:common boss_status.disciple_of_destruction set value 1b
