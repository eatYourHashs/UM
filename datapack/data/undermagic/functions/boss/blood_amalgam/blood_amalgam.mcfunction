
execute unless entity @e[tag=um_blood_boss] run function undermagic:boss/blood_amalgam/blood_amalgam_end
execute as @e[tag=um_blood_boss] at @s run function undermagic:entity/blood_amalgam/tick
