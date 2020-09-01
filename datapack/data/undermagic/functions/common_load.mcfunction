
#Scoreboard objective Init
scoreboard objectives add um.erpg_loot dummy
scoreboard objectives add um.dummy dummy
scoreboard objectives add um.dummy_two dummy
scoreboard objectives add um.dummy_three dummy
scoreboard objectives add um.dummy_four dummy
scoreboard objectives add um.familiar_id dummy
scoreboard objectives add um.boss_hp dummy
scoreboard objectives add um.version dummy
scoreboard objectives add um.flame_grasp dummy
scoreboard objectives add um.orb_cooldown dummy
scoreboard objectives add um.cstick minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add um.sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add um.jump minecraft.custom:minecraft.jump
scoreboard objectives add um.health health
scoreboard objectives add um.reviv_chg dummy
scoreboard objectives add um.reviv_cd dummy
scoreboard objectives add um.take_damage minecraft.custom:minecraft.damage_taken
scoreboard objectives add um.deal_damage minecraft.custom:minecraft.damage_dealt
scoreboard objectives add um.since_damaged dummy
scoreboard objectives add um.dark_energy dummy
scoreboard objectives add um.blood dummy
scoreboard objectives add um.dragon_killed minecraft.killed:minecraft.ender_dragon
scoreboard objectives add um.dragon_energy dummy
scoreboard objectives add um.wither_killed minecraft.killed:minecraft.wither
scoreboard objectives add um.tolerance dummy
scoreboard objectives add um.tolerance_cap dummy
scoreboard objectives add um.shield_block minecraft.custom:minecraft.damage_blocked_by_shield
scoreboard objectives add um.resist minecraft.custom:minecraft.damage_resisted
scoreboard objectives add um.bow_shot minecraft.used:minecraft.bow
scoreboard objectives add um.crossbow_shot minecraft.used:minecraft.crossbow
scoreboard objectives add um.airtime dummy
scoreboard objectives add um.since_attack dummy
scoreboard objectives add um.shade_invi dummy
scoreboard objectives add um.resist_charms dummy
scoreboard objectives add um.streng_charms dummy
scoreboard objectives add um.speed_charms dummy
scoreboard objectives add um.jump_charms dummy
scoreboard objectives add um.haste_charms dummy
scoreboard objectives add um.aqua_charms dummy
scoreboard objectives add um.slowfa_charms dummy
scoreboard objectives add um.dedstr_charms dummy
scoreboard objectives add um.shield_charms dummy
scoreboard objectives add um.hearty_charms dummy
scoreboard objectives add um.flight_charms dummy
scoreboard objectives add um.reviv_charms dummy
scoreboard objectives add um.ender_charms dummy
scoreboard objectives add um.drain_charms dummy
scoreboard objectives add um.tp_cooldown dummy
scoreboard objectives add um.tp_id dummy
scoreboard objectives add um.drag_animate dummy
scoreboard objectives add um.fly minecraft.custom:minecraft.fly_one_cm
scoreboard objectives add um.drac_sh_chg dummy
scoreboard objectives add um.music dummy
scoreboard objectives add um.ar_stealth dummy
scoreboard objectives add um.aw_mark dummy
scoreboard objectives add um.oathbow_mark dummy
scoreboard objectives add um.wyrmling_lvl dummy
scoreboard objectives add um.wyrmling_xp dummy
scoreboard objectives add um.mana dummy
scoreboard objectives add um.kill_count totalKillCount

#scoreboard players init
scoreboard players set five um.dummy 5
scoreboard players set 100 um.dummy 100

#bossbard
bossbar add undermagic:pit_lord "Pit Lord"
bossbar set undermagic:pit_lord max 400
bossbar set undermagic:pit_lord style progress
bossbar add undermagic:elemental "Bloodstone Elemental"
bossbar set undermagic:elemental max 200
bossbar set undermagic:elemental style progress
bossbar add undermagic:blood_amalgam "Blood Amalgam"
bossbar set undermagic:blood_amalgam max 12
bossbar set undermagic:blood_amalgam style notched_6
bossbar add undermagic:elder "The Elder"
bossbar set undermagic:elder max 600
execute if score difficulty um.dummy matches 2.. run bossbar set undermagic:elder max 1000
bossbar set undermagic:elder style progress
bossbar set undermagic:elder color purple
execute unless score difficulty um.dummy matches 0.. run scoreboard players set difficulty um.dummy 1
bossbar add undermagic:sb_alpha "Shadebeast Alpha"
bossbar set undermagic:sb_alpha max 100
bossbar set undermagic:sb_alpha style progress
bossbar set undermagic:sb_alpha color purple
bossbar add undermagic:shadesull "Shadesull"
bossbar set undermagic:shadesull max 800
bossbar set undermagic:shadesull style progress
bossbar set undermagic:shadesull color purple
bossbar add undermagic:disciple_of_destruction "Disciple of Destruction"
bossbar set undermagic:disciple_of_destruction max 400
bossbar set undermagic:disciple_of_destruction style progress
bossbar set undermagic:disciple_of_destruction color purple
bossbar add undermagic:disciple_of_death "Disciple of Death"
bossbar set undermagic:disciple_of_death max 300
bossbar set undermagic:disciple_of_death style progress
bossbar set undermagic:disciple_of_death color purple
forceload add ~ ~ ~ ~

#set load version
scoreboard players set undermagic load 10

#Load Messages
tellraw @a ["",{"text":"Loaded and installed ","color":"red"},{"text":"Undermagic","color":"dark_red","bold":true},{"text":" by Hashs.","color":"red","bold":false}]
tellraw @a ["",{"text":"To begin, place an item frame with a book in it above a netherrack-lit fire.","color":"red"}]

