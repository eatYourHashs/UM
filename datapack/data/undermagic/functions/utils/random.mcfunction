
## $math.in_0: max output value (0-100,000,000)
#> $math.out_0: generated random number

#LCG
scoreboard players operation $math.rng_seed um.dummy *= $cons.rng_a um.dummy
scoreboard players add $math.rng_seed um.dummy 12345

#output
scoreboard players operation $math.out_0 um.dummy = $math.rng_seed um.dummy
scoreboard players operation $math.out_0 um.dummy /= $cons.16 um.dummy
scoreboard players operation $math.out_0 um.dummy %= $math.in_0 um.dummy
execute if score $math.out_0 um.dummy matches ..-1 run scoreboard players operation $math.out_0 um.dummy *= $cons.-1 um.dummy

#check for 0 range
execute if score $math.in_0 um.dummy matches 0 run scoreboard players set $math.out_0 um.dummy 0
