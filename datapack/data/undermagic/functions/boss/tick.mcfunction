
execute if data storage undermagic:common boss_status{pit_lord:1b} run function undermagic:boss/pit_lord/pit_lord
execute if score $timer_20 um.dummy matches 1 if data storage undermagic:common boss_status{pit_lord:0b} run tp @e[tag=um_pit_lord] ~ -100 ~

execute if data storage undermagic:common boss_status{elemental:1b} run function undermagic:boss/elemental/elemental
execute if score $timer_20 um.dummy matches 1 if data storage undermagic:common boss_status{elemental:0b} run tp @e[tag=um_elemental] ~ -100 ~

