execute if entity @s[scores={um.dummy=1..200,um.boss_hp=800}] run effect give @s resistance 1 5 true
execute if entity @s[scores={um.dummy=1..200,um.boss_hp=800}] run tag @s add um.untargetable
execute if entity @s[scores={um.dummy=1..200,um.boss_hp=800,um.dummy_two=2..}] if score difficulty um.dummy matches 1.. as @r[distance=..50] at @s run function undermagic:entity/shadesull/shadesull_spawn_basic_bullet
execute if entity @s[scores={um.dummy=1..200,um.boss_hp=800,um.dummy_two=2..}] if score difficulty um.dummy matches 1.. run scoreboard players set @s um.dummy_two 0
execute if entity @s[scores={um.dummy=1..200,um.boss_hp=800,um.dummy_two=3..}] unless score difficulty um.dummy matches 1.. as @r[distance=..50] at @s run function undermagic:entity/shadesull/shadesull_spawn_basic_bullet
execute if entity @s[scores={um.dummy=1..200,um.boss_hp=800,um.dummy_two=3..}] unless score difficulty um.dummy matches 1.. run scoreboard players set @s um.dummy_two 0
execute if entity @s[scores={um.dummy=200}] run function undermagic:entity/shadesull/dialogue/bh1_end
execute if entity @s[scores={um.dummy=201..280,um.boss_hp=..600}] if score difficulty um.dummy matches 1.. run scoreboard players set @s um.dummy 400
execute if entity @s[scores={um.dummy=201..320,um.boss_hp=..600}] unless score difficulty um.dummy matches 1.. run scoreboard players set @s um.dummy 400
execute if entity @s[scores={um.dummy=280}] if score difficulty um.dummy matches 1.. run scoreboard players set @s um.dummy 201
execute if entity @s[scores={um.dummy=320}] run scoreboard players set @s um.dummy 201
execute if entity @s[scores={um.dummy=202}] run function undermagic:entity/shadesull/shadesull_warp
execute if entity @s[scores={um.dummy=202}] run scoreboard players add @s um.dummy_three 1
execute if entity @s[scores={um.dummy=202,um.dummy_three=4..}] run scoreboard players set @s um.dummy_three 0
execute if entity @s[scores={um.dummy=222}] if score @s um.dummy_three matches 1..3 facing entity @p feet run function undermagic:entity/shadesull/shadesull_elder_bolt
execute if entity @s[scores={um.dummy=227}] if score @s um.dummy_three matches 1..3 if score difficulty um.dummy matches 2.. facing entity @p feet run function undermagic:entity/shadesull/shadesull_elder_bolt
execute if entity @s[scores={um.dummy=232}] if score @s um.dummy_three matches 1..3 if score difficulty um.dummy matches 2.. facing entity @p feet run function undermagic:entity/shadesull/shadesull_elder_bolt
execute if entity @s[scores={um.dummy=213,um.dummy_three=0}] as @p at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["global.ignore","um.entity","um.move_predict"]}
execute if entity @s[scores={um.dummy=222,um.dummy_three=0}] as @p at @s run function undermagic:entity/shadesull/predict_movement
execute if entity @s[scores={um.dummy=222,um.dummy_three=0}] run function undermagic:entity/shadesull/fire_soul_wisp
execute if entity @s[scores={um.dummy=401..600}] run effect give @s resistance 1 5 true
execute if entity @s[scores={um.dummy=402}] run function undermagic:entity/shadesull/dialogue/bh2_begin
execute if entity @s[scores={um.dummy=401..600}] run tag @s add um.untargetable
execute if entity @s[scores={um.dummy=401..600,um.dummy_two=2..}] if score difficulty um.dummy matches 1.. as @r[distance=..50] at @s run function undermagic:entity/shadesull/shadesull_spawn_basic_bullet
execute if entity @s[scores={um.dummy=401..600,um.dummy_two=2..}] if score difficulty um.dummy matches 1.. run scoreboard players set @s um.dummy_two 0
execute if entity @s[scores={um.dummy=401..600,um.dummy_two=3..}] unless score difficulty um.dummy matches 1.. as @r[distance=..50] at @s run function undermagic:entity/shadesull/shadesull_spawn_basic_bullet
execute if entity @s[scores={um.dummy=401..600,um.dummy_two=3..}] unless score difficulty um.dummy matches 1.. run scoreboard players set @s um.dummy_two 0
execute if entity @s[scores={um.dummy=460}] as @r[distance=..50] at @s run function undermagic:entity/shadesull/shadesull_spawn_explosive_bullet
execute if entity @s[scores={um.dummy=520}] as @r[distance=..50] at @s run function undermagic:entity/shadesull/shadesull_spawn_explosive_bullet
execute if entity @s[scores={um.dummy=580}] as @r[distance=..50] at @s run function undermagic:entity/shadesull/shadesull_spawn_explosive_bullet
execute if entity @s[scores={um.dummy=601..680,um.boss_hp=..400}] if score difficulty um.dummy matches 1.. run scoreboard players set @s um.dummy 800
execute if entity @s[scores={um.dummy=601..720,um.boss_hp=..400}] unless score difficulty um.dummy matches 1.. run scoreboard players set @s um.dummy 800
execute if entity @s[scores={um.dummy=660}] if score difficulty um.dummy matches 1.. run scoreboard players set @s um.dummy 601
execute if entity @s[scores={um.dummy=602}] run function undermagic:entity/shadesull/shadesull_warp
execute if entity @s[scores={um.dummy=602}] run scoreboard players add @s um.dummy_three 1
execute if entity @s[scores={um.dummy=602,um.dummy_three=4..}] run scoreboard players set @s um.dummy_three 0
execute if entity @s[scores={um.dummy=622,um.dummy_three=1..3}] facing entity @p feet run function undermagic:entity/shadesull/shadesull_elder_bolt
execute if entity @s[scores={um.dummy=627,um.dummy_three=1..3}] if score difficulty um.dummy matches 2.. facing entity @p feet run function undermagic:entity/shadesull/shadesull_elder_bolt
execute if entity @s[scores={um.dummy=632,um.dummy_three=1..3}] if score difficulty um.dummy matches 2.. facing entity @p feet run function undermagic:entity/shadesull/shadesull_elder_bolt
execute if entity @s[scores={um.dummy=637,um.dummy_three=1..3}] if score difficulty um.dummy matches 2.. facing entity @p feet run function undermagic:entity/shadesull/shadesull_elder_bolt
execute if entity @s[scores={um.dummy=613,um.dummy_three=0}] as @p at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["global.ignore","um.entity","um.move_predict"]}
execute if entity @s[scores={um.dummy=622,um.dummy_three=0}] as @p at @s run function undermagic:entity/shadesull/predict_movement
execute if entity @s[scores={um.dummy=622,um.dummy_three=0}] run function undermagic:entity/shadesull/fire_soul_wisp
execute if entity @s[scores={um.dummy=700}] run scoreboard players set @s um.dummy 601
execute if score @s um.boss_hp matches ..400 unless entity @s[tag=um.spawned_disciple] unless score @s um.dummy matches 2121.. run function undermagic:entity/shadesull/disciple_phase
execute if score @s um.music matches 1260 run playsound um:music.shadesull_p1 master @a[distance=..50] ~ ~ ~ 0.5 1 0.5
execute if score @s um.music matches 1260.. run scoreboard players set @s um.music 0
execute if score @s um.dummy matches 2121 unless entity @e[tag=um.disciple_of_destruction] if score difficulty um.dummy matches 0..1 run function undermagic:entity/shadesull/summon_death
execute if score @s um.dummy matches 2122 unless entity @e[tag=um.disciple_of_death] if score difficulty um.dummy matches 0..1 run function undermagic:entity/shadesull/shadesull_p2
execute if score @s um.dummy matches 2121 unless entity @e[tag=um.disciple_of_destruction] unless entity @e[tag=um.disciple_of_death] if score difficulty um.dummy matches 2.. run function undermagic:entity/shadesull/shadesull_p2
execute if score @s um.dummy matches 2121.. run effect give @s resistance 1 4 true