
data merge block -29999998 0 1601 {Items:[]}

data modify storage undermagic:common var set from entity @s SelectedItem
data modify storage undermagic:common var.Slot set value 0b
execute in minecraft:overworld run data modify block -29999998 0 1601 Items append from storage undermagic:common var
execute in minecraft:overworld unless data entity @s SelectedItem run item replace block -29999998 0 1601 container.0 with minecraft:barrier{um_gui:1b}

data modify storage undermagic:common var set from entity @s Inventory[{Slot:-106b}]
data modify storage undermagic:common var.Slot set value 1b
execute in minecraft:overworld run data modify block -29999998 0 1601 Items append from storage undermagic:common var
execute in minecraft:overworld unless data entity @s Inventory[{Slot:-106b}] run item replace block -29999998 0 1601 container.1 with minecraft:barrier{um_gui:1b}

data modify storage undermagic:common var set from entity @s Inventory[{Slot:100b}]
data modify storage undermagic:common var.Slot set value 2b
execute in minecraft:overworld run data modify block -29999998 0 1601 Items append from storage undermagic:common var
execute in minecraft:overworld unless data entity @s Inventory[{Slot:100b}] run item replace block -29999998 0 1601 container.2 with minecraft:leather_boots{um_gui:1b}

data modify storage undermagic:common var set from entity @s Inventory[{Slot:101b}]
data modify storage undermagic:common var.Slot set value 3b
execute in minecraft:overworld run data modify block -29999998 0 1601 Items append from storage undermagic:common var
execute in minecraft:overworld unless data entity @s Inventory[{Slot:101b}] run item replace block -29999998 0 1601 container.3 with minecraft:leather_leggings{um_gui:1b}

data modify storage undermagic:common var set from entity @s Inventory[{Slot:102b}]
data modify storage undermagic:common var.Slot set value 4b
execute in minecraft:overworld run data modify block -29999998 0 1601 Items append from storage undermagic:common var
execute in minecraft:overworld unless data entity @s Inventory[{Slot:102b}] run item replace block -29999998 0 1601 container.4 with minecraft:leather_chestplate{um_gui:1b}

data modify storage undermagic:common var set from entity @s Inventory[{Slot:103b}]
data modify storage undermagic:common var.Slot set value 5b
execute in minecraft:overworld run data modify block -29999998 0 1601 Items append from storage undermagic:common var
execute in minecraft:overworld unless data entity @s Inventory[{Slot:103b}] run item replace block -29999998 0 1601 container.5 with minecraft:barrier{um_gui:1b}
