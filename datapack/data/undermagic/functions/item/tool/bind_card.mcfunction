replaceitem entity @s weapon.mainhand air
execute at @s run summon minecraft:item ~ ~ ~ {PickupDelay:2,Tags:["global.ignore","um.entity","um.loc_card_item"],Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Bound Locator Card","color":"yellow","italic":false}',Lore:['{"text":"Toss at a Teleporter","color":"gray","italic":false}','{"text":"to set its destination.","color":"gray","italic":false}']},HideFlags:4,Unbreakable:1b,CustomModelData:420085,um.id:bound_locator_card}}}
execute store result storage um temp int 1 run scoreboard players get @e[sort=nearest,distance=..5,tag=um.teleporter,limit=1] um.dummy_two
data modify entity @e[tag=um.loc_card_item,limit=1,sort=nearest] Item.tag.um_target set from storage um temp
