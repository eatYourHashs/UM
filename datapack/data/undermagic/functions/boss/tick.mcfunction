
execute if data storage undermagic:common boss_status{pit_lord:1b} run function undermagic:boss/pit_lord/pit_lord
execute if score $timer_20 um.dummy matches 1 if data storage undermagic:common boss_status{pit_lord:0b} run tp @e[tag=um_pit_lord] ~ -100 ~

execute if data storage undermagic:common boss_status{elemental:1b} run function undermagic:boss/elemental/elemental
execute if score $timer_20 um.dummy matches 1 if data storage undermagic:common boss_status{elemental:0b} run tp @e[tag=um_elemental] ~ -100 ~

execute if data storage undermagic:common boss_status{blood_amalgam:1b} run function undermagic:boss/blood_amalgam/blood_amalgam
execute if score $timer_20 um.dummy matches 1 if data storage undermagic:common boss_status{blood_amalgam:0b} run tp @e[tag=um_blood_amalgam] ~ -100 ~

execute if data storage undermagic:common boss_status{elder:1b} run function undermagic:boss/elder/elder
execute if score $timer_20 um.dummy matches 1 if data storage undermagic:common boss_status{elder:0b} run tp @e[tag=um_elder] ~ -100 ~

execute if data storage undermagic:common boss_status{alpha_shadebeast:1b} run function undermagic:boss/alpha_shadebeast/alpha_shadebeast
execute if score $timer_20 um.dummy matches 1 if data storage undermagic:common boss_status{alpha_shadebeast:0b} run tp @e[tag=um_shadebeast_alpha] ~ -100 ~

execute if data storage undermagic:common boss_status{shadesull:1b} run function undermagic:boss/shadesull/shadesull
execute if score $timer_20 um.dummy matches 1 if data storage undermagic:common boss_status{shadesull:0b} run tp @e[tag=um_shadesull] ~ -100 ~

execute if data storage undermagic:common boss_status{disciple_of_destruction:1b} run function undermagic:boss/disciple_of_destruction/disciple_of_destruction
execute if score $timer_20 um.dummy matches 1 if data storage undermagic:common boss_status{disciple_of_destruction:0b} run tp @e[tag=um_disciple_of_destruction] ~ -100 ~

execute if data storage undermagic:common boss_status{disciple_of_death:1b} run function undermagic:boss/disciple_of_death/disciple_of_death
execute if score $timer_20 um.dummy matches 1 if data storage undermagic:common boss_status{disciple_of_death:0b} run tp @e[tag=um_disciple_of_death] ~ -100 ~

