scoreboard players add @e[tag=greenmarker] clearedLevels 1
execute @e[tag=greenmarker] ~ ~ ~ setblock ~ ~ ~1 concrete 3
tp @e[tag=greenmarker] ~-1 ~ ~
execute @e[tag=greenmarker] ~ ~ ~ detect ~ ~ ~ concrete -1 tp @s ~5 ~-1 ~
execute @e[tag=greenmarker] ~ ~ ~ detect ~ ~ ~ air -1 setblock ~ ~ ~ stone_button 4
