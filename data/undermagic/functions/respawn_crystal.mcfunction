playsound minecraft:block.end_portal.spawn hostile @a ~ ~ ~ 4 1
playsound minecraft:block.end_gateway.spawn hostile @a ~ ~ ~ 4 0.5
summon end_crystal ~ ~ ~ {ShowBottom:0b}
execute positioned ~ ~-33 ~ run function undermagic:entity/wyrmling/spawn
particle minecraft:explosion_emitter
particle minecraft:dragon_breath ~ ~ ~ 0 0 0 0.5 200