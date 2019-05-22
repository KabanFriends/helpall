scoreboard players add @e[tag=bluemarker] clearedLevels 1
execute @e[tag=bluemarker] ~ ~ ~ setblock ~-1 ~ ~ concrete 3
tp @e[tag=bluemarker] ~ ~ ~-1
execute @e[tag=bluemarker] ~ ~ ~ detect ~ ~ ~ concrete -1 tp @s ~ ~-1 ~5
execute @e[tag=bluemarker] ~ ~ ~ detect ~ ~ ~ air -1 setblock ~ ~ ~ stone_button 1
