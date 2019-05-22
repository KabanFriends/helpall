scoreboard players add @e[tag=yellowmarker] clearedLevels 1
execute @e[tag=yellowmarker] ~ ~ ~ setblock ~ ~ ~-1 concrete 3
tp @e[tag=yellowmarker] ~1 ~ ~
execute @e[tag=yellowmarker] ~ ~ ~ detect ~ ~ ~ concrete -1 tp @s ~-5 ~-1 ~
execute @e[tag=yellowmarker] ~ ~ ~ detect ~ ~ ~ air -1 setblock ~ ~ ~ stone_button 4
