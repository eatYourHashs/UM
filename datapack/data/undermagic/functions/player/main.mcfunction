#remove iframe
scoreboard players add @s um.invuln 1

#check items
execute if data entity @s SelectedItem.tag.um_id run function undermagic:player/check_held_item
execute if data entity @s Inventory[{Slot:-106b}].tag.um_id run function undermagic:player/check_offhand_item
execute if data entity @s Inventory[{Slot:102b}].tag.um_id run function undermagic:player/check_armor

#charms
execute if score @s um.swirl_charms matches 1.. if score @s um.deal_damage matches 1.. run function undermagic:player/charms/swirling
execute if score @s um.combo_charms matches 1.. run function undermagic:player/charms/combo
execute if score @s um.combo_charms matches 0 run attribute @s minecraft:generic.attack_damage modifier remove a5c5148c-0568-47b8-a648-297e1a08cc0f
execute if score @s um.combo_charms matches 0 run attribute @s minecraft:generic.attack_speed modifier remove f20361b0-655a-47be-bf66-d86c5522a37b
execute if score @s um.shield_charms matches 1.. run function undermagic:player/charms/shield
execute if score @s um.drain_charms matches 1.. run function undermagic:player/charms/drain
execute if score @s um.reviv_cd matches 1.. run function undermagic:player/charms/revive
execute if score @s um.flight matches 1.. run function undermagic:player/charms/flight
execute if entity @s[tag=um.drac_aspect] run function undermagic:player/charms/drac_aspect
execute as @s[tag=um.enderlord,scores={um.sneak=1..,um.jump=1..}] at @s run function undermagic:player/effects/enderlord_warp
execute as @s[scores={um.sneak=1..,um.jump=1..,um.ender_charms=2..}] at @s run function undermagic:player/effects/enderlord_warp

#effects
execute if score @s um.flame_grasp matches 1.. run function undermagic:player/charms/flame_grasp
execute if score @s um.oblit_prog matches 1.. run function undermagic:item/weapon/obliteration/caster_tick

#damage
execute as @s[scores={um.take_damage=1..}] run function undermagic:player/take_damage
execute as @s[scores={um.kill_count=1..}] at @s run function undermagic:player/kill

#interval
execute if score $timer_10 um.dummy matches 0 run function undermagic:player/main_interval

#reset scores
scoreboard players add @s um.airtime 1
scoreboard players set @s[nbt={OnGround:1b}] um.airtime 0

execute if score @s um.resist matches 1.. run scoreboard players add @s um.shade_invi 100
execute if score @s um.deal_damage matches 1.. run scoreboard players add @s um.shade_invi 60
execute if score @s um.deal_damage matches 1.. run scoreboard players set @s um.since_attack 0
execute if score @s um.orb_cooldown matches 1.. run scoreboard players remove @s um.orb_cooldown 1
execute if score @s um.shade_invi matches 1.. run scoreboard players remove @s um.shade_invi 1

scoreboard players set @s um.cstick 0
scoreboard players set @s um.sneak 0
scoreboard players set @s um.jump 0
scoreboard players set @s um.shield_block 0
scoreboard players set @s um.resist 0
scoreboard players set @s um.bow_shot 0
scoreboard players set @s um.crossbow_shot 0
scoreboard players set @s um.deal_damage 0
scoreboard players add @s um.since_damaged 1
scoreboard players add @s um.reviv_cd 1
scoreboard players add @s um.since_attack 1

#check mana
scoreboard players add @s um.mana_cd 1
scoreboard players add @s[scores={um.mana_cd=20..,um.mana=..99}] um.mana 1
title @s[scores={um.mana=..99}] actionbar ["",{"text":"Mana: ","color":"aqua"},{"score":{"name":"@s","objective":"um.mana"},"color":"dark_aqua"},{"text":"/100","color":"aqua"}]
title @s[scores={um.mana_cd=..120}] actionbar ["",{"text":"Mana: ","color":"aqua"},{"score":{"name":"@s","objective":"um.mana"},"color":"dark_aqua"},{"text":"/100","color":"aqua"}]