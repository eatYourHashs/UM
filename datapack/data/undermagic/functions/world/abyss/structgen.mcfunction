
#generation random values
scoreboard players set $math.in_0 um.dummy 100
function undermagic:utils/random
scoreboard players operation chunkgen_rand um.dummy = $math.out_0 um.dummy
scoreboard players add chunkgen_rand um.dummy 1

#gen surface
execute if score chunkgen_rand um.dummy matches 1..6 run function undermagic:world/abyss/structures/blackstone_pillar
execute if score chunkgen_rand um.dummy matches 7..9 run function undermagic:world/abyss/structures/obsidian_pillar
execute if score chunkgen_rand um.dummy matches 10 run function undermagic:world/abyss/structures/bone_pillar

execute if score chunkgen_rand um.dummy matches 11..16 run function undermagic:world/abyss/structures/blackstone_pillar_tall
execute if score chunkgen_rand um.dummy matches 17..19 run function undermagic:world/abyss/structures/obsidian_pillar_tall
execute if score chunkgen_rand um.dummy matches 20 run function undermagic:world/abyss/structures/bone_pillar_tall

execute if score chunkgen_rand um.dummy matches 100 run function undermagic:world/abyss/structures/spire_init

#generation random values
scoreboard players set $math.in_0 um.dummy 100
function undermagic:utils/random
scoreboard players operation chunkgen_rand um.dummy = $math.out_0 um.dummy
scoreboard players add chunkgen_rand um.dummy 1

#gen ceiling
execute if score chunkgen_rand um.dummy matches 1..6 run function undermagic:world/abyss/structures/blackstone_spike
execute if score chunkgen_rand um.dummy matches 7..9 run function undermagic:world/abyss/structures/obsidian_spike
execute if score chunkgen_rand um.dummy matches 10 run function undermagic:world/abyss/structures/bone_spike

execute if score chunkgen_rand um.dummy matches 11..16 run function undermagic:world/abyss/structures/blackstone_spike_tall
execute if score chunkgen_rand um.dummy matches 17..19 run function undermagic:world/abyss/structures/obsidian_spike_tall
execute if score chunkgen_rand um.dummy matches 20 run function undermagic:world/abyss/structures/bone_spike_tall
