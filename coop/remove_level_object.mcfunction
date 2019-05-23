scoreboard players tag @e[tag=gameMaster] remove redtriggered
scoreboard players tag @e[tag=gameMaster] remove bluetriggered
scoreboard players tag @e[tag=gameMaster] remove yellowtriggered
scoreboard players tag @e[tag=gameMaster] remove greentriggered
execute @e[tag=buttontrigger] ~ ~ ~ detect ~ ~ ~ redstone_block -1 setblock ~ ~ ~ air
kill @e[tag=buttontrigger]
kill @e[tag=levelObject]