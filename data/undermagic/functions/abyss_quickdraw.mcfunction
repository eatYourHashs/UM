particle minecraft:smoke ^ ^1 ^2.5 0.5 0.2 0.5 0.1 30
particle minecraft:sweep_attack ^ ^0.6 ^2.5 0 0 0 0 1
execute positioned ^ ^0.4 ^2.1 run effect give @a[distance=..2] instant_damage 1 2 true
execute positioned ^ ^0.4 ^2.1 run effect give @e[distance=..2,tag=!um_undead] instant_damage 1 2 true
execute positioned ^ ^0.4 ^2.1 run effect give @e[distance=..2,tag=um_undead] instant_health 1 2 true
playsound minecraft:entity.player.attack.sweep player @a ^ ^1 ^1 1 0.6
function undermagic:dark_orb
replaceitem entity @s weapon.mainhand carrot_on_a_stick{um_id:"longsword_abyss",display:{Name:"{\"text\":\"Abyssal Longsword\",\"color\":\"light_purple\",\"italic\":false}",Lore:["{\"text\":\"Use while sheathed to Quick Draw!\",\"color\":\"gray\",\"italic\":false}","{\"text\":\"Swap to offhand to sheath!\",\"color\":\"gray\",\"italic\":false}","{\"text\":\"Quickdraws fire an abyssal orb!\",\"color\":\"gray\",\"italic\":false}"]},Unbreakable:1b,CustomModelData:420109,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:13,Operation:0,UUID:[I;0,410066,0,806093],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.6,Operation:0,UUID:[I;0,218287,0,385426],Slot:"mainhand"}]}
