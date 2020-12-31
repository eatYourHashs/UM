playsound minecraft:entity.zombie.attack_iron_door player @a ^ ^ ^ 1 1
particle minecraft:dragon_breath ~ ~1 ~ 0 0 0 0.3 700
kill @e[type=shulker_bullet,distance=..6]
execute as @e[type=arrow,distance=..4,tag=!um.deflected] at @s run function undermagic:item/weapon/draconic_reversal
execute as @e[type=spectral_arrow,distance=..4,tag=!um.deflected] at @s run function undermagic:item/weapon/draconic_reversal
execute as @e[type=potion,distance=..4,tag=!um.deflected] at @s run function undermagic:item/weapon/draconic_reversal
execute as @e[type=llama_spit,distance=..4,tag=!um.deflected] at @s run function undermagic:item/weapon/draconic_reversal
execute as @e[type=fireball,distance=..4,tag=!um.deflected] at @s run function undermagic:item/weapon/draconic_reversal_fireballs
execute as @e[type=small_fireball,distance=..4,tag=!um.deflected] at @s run function undermagic:item/weapon/draconic_reversal_fireballs
execute as @e[type=dragon_fireball,distance=..4,tag=!um.deflected] at @s run function undermagic:item/weapon/draconic_reversal_fireballs
execute as @e[type=wither_skull,distance=..4,tag=!um.deflected] at @s run function undermagic:item/weapon/draconic_reversal_fireballs
execute as @e[type=#undermagic:attackable,tag=!global.ignore,distance=1..6] at @s facing entity @p[nbt={Inventory:[{id:"minecraft:shield",Count:1b,Slot:-106b,tag:{um_id:"draconic_bulwark"}}]}] feet if block ^ ^ ^-1 air run tp ^ ^ ^-1
execute as @e[type=#undermagic:attackable,tag=!global.ignore,distance=1..6] at @s facing entity @p[nbt={Inventory:[{id:"minecraft:shield",Count:1b,Slot:-106b,tag:{um_id:"draconic_bulwark"}}]}] feet if block ^ ^ ^-1 air run tp ^ ^ ^-1
scoreboard players remove @s um.drac_sh_chg 1