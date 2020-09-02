execute store result score spire_rand1 um.dummy run loot spawn ~ -10 ~ loot undermagic:um_rand/rand1_3
execute store result score spire_rand2 um.dummy run loot spawn ~ -10 ~ loot undermagic:um_rand/rand1_3
scoreboard players operation spire_rand1 um.dummy += spire_rand2 um.dummy
scoreboard players set spire_height um.dummy 8
scoreboard players operation spire_height um.dummy -= spire_rand1 um.dummy
execute positioned ~ 30 ~ run function undermagic:world/abyss/spire_step
