replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:'{"text":"Mythical Dragon Egg","color":"light_purple","italic":false}',Lore:['[{"text":"a","color":"dark_red","italic":false,"obfuscated":true},{"text":" Infernal Drop ","color":"dark_red","italic":false,"obfuscated":false},{"text":"a","color":"dark_red","italic":false,"obfuscated":true}]','{"text":"Summons a wyrmling familiar.","color":"gray","italic":false}','{"text":"Right click to summon!","color":"gray","italic":false}']},Unbreakable:1b,CustomModelData:420110,um_id:mythical_dragon_egg_dismissed} 1
scoreboard players operation temp um.dummy = @s um.familiar_id
execute as @e[type=armor_stand,tag=um_wyrmling_fam] if score @s um.familiar_id = temp um.dummy run kill @s