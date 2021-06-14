
data merge block -29999998 0 1601 {Items:[]}

# Row 1

data modify storage undermagic:common var set from entity @s Inventory[{Slot:9b}]
data modify storage undermagic:common var.Slot set value 0b
execute in minecraft:overworld run data modify block -29999998 0 1601 Items append from storage undermagic:common var
execute in minecraft:overworld unless data entity @s Inventory[{Slot:9b}] run item block -29999998 0 1601 container.0 replace minecraft:barrier{um_gui:1b}

data modify storage undermagic:common var set from entity @s Inventory[{Slot:10b}]
data modify storage undermagic:common var.Slot set value 1b
execute in minecraft:overworld run data modify block -29999998 0 1601 Items append from storage undermagic:common var
execute in minecraft:overworld unless data entity @s Inventory[{Slot:10b}] run item block -29999998 0 1601 container.1 replace minecraft:barrier{um_gui:1b}

data modify storage undermagic:common var set from entity @s Inventory[{Slot:11b}]
data modify storage undermagic:common var.Slot set value 2b
execute in minecraft:overworld run data modify block -29999998 0 1601 Items append from storage undermagic:common var
execute in minecraft:overworld unless data entity @s Inventory[{Slot:11b}] run item block -29999998 0 1601 container.2 replace minecraft:barrier{um_gui:1b}

data modify storage undermagic:common var set from entity @s Inventory[{Slot:12b}]
data modify storage undermagic:common var.Slot set value 3b
execute in minecraft:overworld run data modify block -29999998 0 1601 Items append from storage undermagic:common var
execute in minecraft:overworld unless data entity @s Inventory[{Slot:12b}] run item block -29999998 0 1601 container.3 replace minecraft:barrier{um_gui:1b}

data modify storage undermagic:common var set from entity @s Inventory[{Slot:13b}]
data modify storage undermagic:common var.Slot set value 4b
execute in minecraft:overworld run data modify block -29999998 0 1601 Items append from storage undermagic:common var
execute in minecraft:overworld unless data entity @s Inventory[{Slot:13b}] run item block -29999998 0 1601 container.4 replace minecraft:barrier{um_gui:1b}

data modify storage undermagic:common var set from entity @s Inventory[{Slot:14b}]
data modify storage undermagic:common var.Slot set value 5b
execute in minecraft:overworld run data modify block -29999998 0 1601 Items append from storage undermagic:common var
execute in minecraft:overworld unless data entity @s Inventory[{Slot:14b}] run item block -29999998 0 1601 container.5 replace minecraft:barrier{um_gui:1b}

data modify storage undermagic:common var set from entity @s Inventory[{Slot:15b}]
data modify storage undermagic:common var.Slot set value 6b
execute in minecraft:overworld run data modify block -29999998 0 1601 Items append from storage undermagic:common var
execute in minecraft:overworld unless data entity @s Inventory[{Slot:15b}] run item block -29999998 0 1601 container.6 replace minecraft:barrier{um_gui:1b}

data modify storage undermagic:common var set from entity @s Inventory[{Slot:16b}]
data modify storage undermagic:common var.Slot set value 7b
execute in minecraft:overworld run data modify block -29999998 0 1601 Items append from storage undermagic:common var
execute in minecraft:overworld unless data entity @s Inventory[{Slot:16b}] run item block -29999998 0 1601 container.7 replace minecraft:barrier{um_gui:1b}

data modify storage undermagic:common var set from entity @s Inventory[{Slot:17b}]
data modify storage undermagic:common var.Slot set value 8b
execute in minecraft:overworld run execute in minecraft:overworld run data modify block -29999998 0 1601 Items append from storage undermagic:common var
execute in minecraft:overworld unless data entity @s Inventory[{Slot:17b}] run item block -29999998 0 1601 container.8 replace minecraft:barrier{um_gui:1b}

#Row 2

data modify storage undermagic:common var set from entity @s Inventory[{Slot:18b}]
data modify storage undermagic:common var.Slot set value 9b
execute in minecraft:overworld run data modify block -29999998 0 1601 Items append from storage undermagic:common var
execute in minecraft:overworld unless data entity @s Inventory[{Slot:18b}] run item block -29999998 0 1601 container.9 replace minecraft:barrier{um_gui:1b}

data modify storage undermagic:common var set from entity @s Inventory[{Slot:19b}]
data modify storage undermagic:common var.Slot set value 10b
execute in minecraft:overworld run data modify block -29999998 0 1601 Items append from storage undermagic:common var
execute in minecraft:overworld unless data entity @s Inventory[{Slot:19b}] run item block -29999998 0 1601 container.10 replace minecraft:barrier{um_gui:1b}

data modify storage undermagic:common var set from entity @s Inventory[{Slot:20b}]
data modify storage undermagic:common var.Slot set value 11b
execute in minecraft:overworld run data modify block -29999998 0 1601 Items append from storage undermagic:common var
execute in minecraft:overworld unless data entity @s Inventory[{Slot:20b}] run item block -29999998 0 1601 container.11 replace minecraft:barrier{um_gui:1b}

data modify storage undermagic:common var set from entity @s Inventory[{Slot:21b}]
data modify storage undermagic:common var.Slot set value 12b
execute in minecraft:overworld run data modify block -29999998 0 1601 Items append from storage undermagic:common var
execute in minecraft:overworld unless data entity @s Inventory[{Slot:21b}] run item block -29999998 0 1601 container.12 replace minecraft:barrier{um_gui:1b}

data modify storage undermagic:common var set from entity @s Inventory[{Slot:22b}]
data modify storage undermagic:common var.Slot set value 13b
execute in minecraft:overworld run data modify block -29999998 0 1601 Items append from storage undermagic:common var
execute in minecraft:overworld unless data entity @s Inventory[{Slot:22b}] run item block -29999998 0 1601 container.13 replace minecraft:barrier{um_gui:1b}

data modify storage undermagic:common var set from entity @s Inventory[{Slot:23b}]
data modify storage undermagic:common var.Slot set value 14b
execute in minecraft:overworld run data modify block -29999998 0 1601 Items append from storage undermagic:common var
execute in minecraft:overworld unless data entity @s Inventory[{Slot:23b}] run item block -29999998 0 1601 container.14 replace minecraft:barrier{um_gui:1b}

data modify storage undermagic:common var set from entity @s Inventory[{Slot:24b}]
data modify storage undermagic:common var.Slot set value 15b
execute in minecraft:overworld run data modify block -29999998 0 1601 Items append from storage undermagic:common var
execute in minecraft:overworld unless data entity @s Inventory[{Slot:24b}] run item block -29999998 0 1601 container.15 replace minecraft:barrier{um_gui:1b}

data modify storage undermagic:common var set from entity @s Inventory[{Slot:25b}]
data modify storage undermagic:common var.Slot set value 16b
execute in minecraft:overworld run data modify block -29999998 0 1601 Items append from storage undermagic:common var
execute in minecraft:overworld unless data entity @s Inventory[{Slot:25b}] run item block -29999998 0 1601 container.16 replace minecraft:barrier{um_gui:1b}

data modify storage undermagic:common var set from entity @s Inventory[{Slot:26b}]
data modify storage undermagic:common var.Slot set value 17b
execute in minecraft:overworld run data modify block -29999998 0 1601 Items append from storage undermagic:common var
execute in minecraft:overworld unless data entity @s Inventory[{Slot:26b}] run item block -29999998 0 1601 container.17 replace minecraft:barrier{um_gui:1b}

#Row 3

data modify storage undermagic:common var set from entity @s Inventory[{Slot:27b}]
data modify storage undermagic:common var.Slot set value 18b
execute in minecraft:overworld run data modify block -29999998 0 1601 Items append from storage undermagic:common var
execute in minecraft:overworld unless data entity @s Inventory[{Slot:27b}] run item block -29999998 0 1601 container.18 replace minecraft:barrier{um_gui:1b}

data modify storage undermagic:common var set from entity @s Inventory[{Slot:28b}]
data modify storage undermagic:common var.Slot set value 19b
execute in minecraft:overworld run data modify block -29999998 0 1601 Items append from storage undermagic:common var
execute in minecraft:overworld unless data entity @s Inventory[{Slot:28b}] run item block -29999998 0 1601 container.19 replace minecraft:barrier{um_gui:1b}

data modify storage undermagic:common var set from entity @s Inventory[{Slot:29b}]
data modify storage undermagic:common var.Slot set value 20b
execute in minecraft:overworld run data modify block -29999998 0 1601 Items append from storage undermagic:common var
execute in minecraft:overworld unless data entity @s Inventory[{Slot:29b}] run item block -29999998 0 1601 container.20 replace minecraft:barrier{um_gui:1b}

data modify storage undermagic:common var set from entity @s Inventory[{Slot:30b}]
data modify storage undermagic:common var.Slot set value 21b
execute in minecraft:overworld run data modify block -29999998 0 1601 Items append from storage undermagic:common var
execute in minecraft:overworld unless data entity @s Inventory[{Slot:30b}] run item block -29999998 0 1601 container.21 replace minecraft:barrier{um_gui:1b}

data modify storage undermagic:common var set from entity @s Inventory[{Slot:31b}]
data modify storage undermagic:common var.Slot set value 22b
execute in minecraft:overworld run data modify block -29999998 0 1601 Items append from storage undermagic:common var
execute in minecraft:overworld unless data entity @s Inventory[{Slot:31b}] run item block -29999998 0 1601 container.22 replace minecraft:barrier{um_gui:1b}

data modify storage undermagic:common var set from entity @s Inventory[{Slot:32b}]
data modify storage undermagic:common var.Slot set value 23b
execute in minecraft:overworld run data modify block -29999998 0 1601 Items append from storage undermagic:common var
execute in minecraft:overworld unless data entity @s Inventory[{Slot:32b}] run item block -29999998 0 1601 container.23 replace minecraft:barrier{um_gui:1b}

data modify storage undermagic:common var set from entity @s Inventory[{Slot:33b}]
data modify storage undermagic:common var.Slot set value 24b
execute in minecraft:overworld run data modify block -29999998 0 1601 Items append from storage undermagic:common var
execute in minecraft:overworld unless data entity @s Inventory[{Slot:33b}] run item block -29999998 0 1601 container.24 replace minecraft:barrier{um_gui:1b}

data modify storage undermagic:common var set from entity @s Inventory[{Slot:34b}]
data modify storage undermagic:common var.Slot set value 25b
execute in minecraft:overworld run data modify block -29999998 0 1601 Items append from storage undermagic:common var
execute in minecraft:overworld unless data entity @s Inventory[{Slot:34b}] run item block -29999998 0 1601 container.25 replace minecraft:barrier{um_gui:1b}

data modify storage undermagic:common var set from entity @s Inventory[{Slot:35b}]
data modify storage undermagic:common var.Slot set value 26b
execute in minecraft:overworld run data modify block -29999998 0 1601 Items append from storage undermagic:common var
execute in minecraft:overworld unless data entity @s Inventory[{Slot:35b}] run item block -29999998 0 1601 container.26 replace minecraft:barrier{um_gui:1b}


