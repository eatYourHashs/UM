
execute if entity @s[nbt={OnGround:1b}] run function undermagic:entity/elder/summon
execute if entity @s[nbt={OnGround:1b}] run kill @s
tag @s remove um_processed
