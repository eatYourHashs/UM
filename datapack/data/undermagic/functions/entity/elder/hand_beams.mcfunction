playsound minecraft:block.beacon.activate hostile @a ~ ~ ~ 1 2
playsound minecraft:item.totem.use hostile @a ~ ~ ~ 1 2
scoreboard players set temp um.dummy 0
function undermagic:entity/elder/hand_beams_cast
kill @s