tag @s add um.enderlord
scoreboard players add @s um.tolerance 6
execute if score @s um.tolerance > @s um.tolerance_cap run function undermagic:infusions/overload
advancement grant @s only undermagic:undermagic/self_infusion
