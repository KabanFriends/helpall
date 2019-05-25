execute @e[tag=lever] ~ ~ ~ detect ~ ~2 ~ lever 13 setblock ~ ~2 ~ lever 5
execute @e[tag=lever] ~ ~ ~ detect ~ ~2 ~ lever 14 setblock ~ ~2 ~ lever 6
execute @e[tag=lever] ~ ~ ~ detect ~ ~ ~ command_block -1 blockdata ~ ~ ~ {powered:0b}
execute @e[tag=levelSpawn] ~ ~ ~ blockdata ~8 ~-1 ~-15 {auto:0b}
scoreboard players tag @e[tag=gameMaster] remove redtriggered
scoreboard players tag @e[tag=gameMaster] remove bluetriggered
scoreboard players tag @e[tag=gameMaster] remove yellowtriggered
scoreboard players tag @e[tag=gameMaster] remove greentriggered
execute @e[tag=buttontrigger] ~ ~ ~ detect ~ ~ ~ redstone_block -1 setblock ~ ~ ~ air
kill @e[tag=buttontrigger]
kill @e[tag=levelObject]
kill @e[type=item]
gamerule doTileDrops false
gamerule doFireTick false
gamerule doMobLoot false
xp -500L @a