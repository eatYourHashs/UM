fill ~2 ~5 ~1 ~-2 1 ~-1 nether_bricks
fill ~1 ~5 ~2 ~-1 1 ~-2 nether_bricks
fill ~2 ~7 ~2 ~2 1 ~2 nether_brick_fence keep
fill ~-2 ~7 ~2 ~-2 1 ~2 nether_brick_fence keep
fill ~2 ~7 ~-2 ~2 1 ~-2 nether_brick_fence keep
fill ~-2 ~7 ~-2 ~-2 1 ~-2 nether_brick_fence keep
setblock ~ ~5 ~ obsidian
fill ~1 ~6 ~1 ~-1 ~8 ~-1 air
execute align xyz run summon armor_stand ~0.5 ~6 ~0.5 {NoGravity:0b,Invulnerable:1b,ShowArms:0b,Small:0b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["global.ignore","um.entity","um.demon_portal"]}
fill ~3 ~5 ~1 ~3 ~6 ~-1 nether_bricks
fill ~-3 ~5 ~1 ~-3 ~6 ~-1 nether_bricks
fill ~1 ~5 ~-3 ~-1 ~6 ~-3 nether_bricks
fill ~1 ~5 ~3 ~-1 ~6 ~3 nether_bricks
fill ~2 ~5 ~2 ~2 ~6 ~2 nether_bricks
fill ~-2 ~5 ~2 ~-2 ~6 ~2 nether_bricks
fill ~2 ~5 ~-2 ~2 ~6 ~-2 nether_bricks
fill ~-2 ~5 ~-2 ~-2 ~6 ~-2 nether_bricks
setblock ~2 ~3 ~ glowstone
setblock ~-2 ~3 ~ glowstone
setblock ~ ~3 ~2 glowstone
setblock ~ ~3 ~-2 glowstone
setblock ~2 ~ ~ glowstone
setblock ~-2 ~ ~ glowstone
setblock ~ ~ ~2 glowstone
setblock ~ ~ ~-2 glowstone
setblock ~2 ~-3 ~ glowstone
setblock ~-2 ~-3 ~ glowstone
setblock ~ ~-3 ~2 glowstone
setblock ~ ~-3 ~-2 glowstone
setblock ~3 ~6 ~ nether_brick_stairs[facing=east]
setblock ~-3 ~6 ~ nether_brick_stairs[facing=west]
setblock ~ ~6 ~-3 nether_brick_stairs[facing=north]
setblock ~ ~6 ~3 nether_brick_stairs[facing=south]
setblock ~1 ~6 ~2 minecraft:chest[facing=north]{LootTable:"minecraft:chests/nether_bridge"}
