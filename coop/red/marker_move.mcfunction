scoreboard players add @e[tag=redmarker] clearedLevels 1
execute @e[tag=redmarker] ~ ~ ~ setblock ~1 ~ ~ concrete 3
tp @e[tag=redmarker] ~ ~ ~1
execute @e[tag=redmarker] ~ ~ ~ detect ~ ~ ~ concrete -1 tp @s ~ ~-1 ~-5
execute @e[tag=redmarker] ~ ~ ~ detect ~ ~ ~ air -1 setblock ~ ~ ~ stone_button 1
