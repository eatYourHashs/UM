tag @s add um.flame_body
scoreboard players add @s um.tolerance 4
execute if score @s um.tolerance > @s um.tolerance_cap run function undermagic:infusions/overload
advancement grant @s only undermagic:undermagic/self_infusion
