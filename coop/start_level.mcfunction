execute @e[tag=gameMaster,score_startTimer_min=1,score_startTimer=1] ~ ~ ~ function coop:remove_level_object
execute @e[tag=gameMaster,score_startTimer_min=1,score_startTimer=1] ~ ~ ~ scoreboard teams join player @a
execute @e[tag=gameMaster,score_startTimer_min=1,score_startTimer=1] ~ ~ ~ scoreboard teams join helper @r
execute @e[tag=gameMaster,score_startTimer_min=1,score_startTimer=1] ~ ~ ~ scoreboard teams option helper color light_purple
execute @e[tag=gameMaster,score_startTimer_min=1,score_startTimer=1] ~ ~ ~ tellraw @a [{"text":""},{"text":"!","bold":"true","color":"yellow"},{"text":"» ","color":"dark_gray"},{"text":"このステージの最初の"},{"text":"ヘルパー","color":"green"},{"text":"は "},{"selector":"@a[team=helper]","bold":"true"},{"text":"さんです！"}]
execute @e[tag=gameMaster,score_currentLevel_min=1,score_currentLevel=1,score_startTimer_min=1,score_startTimer=1] ~ ~ ~ scoreboard teams option helper color green
execute @e[tag=gameMaster,score_startTimer_min=1,score_startTimer=1] ~ ~ ~ title @a times 8 10 60
execute @e[tag=gameMaster,score_startTimer_min=1,score_startTimer=1] ~ ~ ~ clear @a
execute @e[tag=gameMaster,score_startTimer_min=1,score_startTimer=1] ~ ~ ~ gamemode adventure @a
execute @e[tag=gameMaster,score_startTimer_min=1,score_startTimer=1] ~ ~ ~ scoreboard players set @e[tag=gameMaster] gameType 1






#LEVEL 1 START
execute @e[tag=gameMaster,score_currentLevel_min=1,score_currentLevel=1,score_startTimer_min=1,score_startTimer=1] ~ ~ ~ tp @a 1004 11 12 0 0
execute @e[tag=gameMaster,score_currentLevel_min=1,score_currentLevel=1,score_startTimer_min=1,score_startTimer=1] ~ ~ ~ tp @a[team=helper] 1012 11 12 0 0
execute @e[tag=gameMaster,score_currentLevel_min=1,score_currentLevel=1,score_startTimer_min=1,score_startTimer=1] ~ ~ ~ title @a title [{"text":""},{"text":"ステージ1","color":"green","bold":"true"}]
execute @e[tag=gameMaster,score_currentLevel_min=1,score_currentLevel=1,score_startTimer_min=10,score_startTimer=10] ~ ~ ~ summon armor_stand 1012 11 35 {Tags:["helperStart","levelObject"],Rotation:[180f,0.0f],Invisible:true,Invulnerable:true,Marker:true,NoGravity:true}
execute @e[tag=gameMaster,score_currentLevel_min=1,score_currentLevel=1,score_startTimer_min=11,score_startTimer=11] ~ ~ ~ scoreboard players tag @e[tag=levelSpawn] add greenLevel







#AFTER START - DO NOT WRITE ANYTHING AFTER THIS
execute @e[tag=gameMaster,score_startTimer_min=1,score_startTimer=1] ~ ~ ~ execute @a ~ ~ ~ playsound entity.evocation_illager.prepare_summon voice @s ~ ~ ~ 50 1.5
execute @e[tag=gameMaster,score_startTimer_min=1,score_startTimer=1] ~ ~ ~ execute @a ~ ~ ~ spawnpoint @s ~ ~ ~
execute @e[tag=gameMaster,score_startTimer_min=1,score_startTimer=1] ~ ~ ~ execute @r[team=player] ~ ~ ~ summon armor_stand ~ ~ ~ {Tags:["levelSpawn","levelObject"],Invisible:true,Invulnerable:true,Marker:true,NoGravity:true}
execute @e[tag=gameMaster,score_startTimer_min=10,score_startTimer=10] ~ ~ ~ execute @e[tag=levelSpawn] ~ ~ ~ setblock ~ ~-1 ~-15 wool 14
execute @e[tag=gameMaster,score_startTimer_min=10,score_startTimer=10] ~ ~ ~ execute @e[tag=levelSpawn] ~ ~ ~ setblock ~2 ~-1 ~-15 wool 11
execute @e[tag=gameMaster,score_startTimer_min=10,score_startTimer=10] ~ ~ ~ execute @e[tag=levelSpawn] ~ ~ ~ setblock ~4 ~-1 ~-15 wool 4
execute @e[tag=gameMaster,score_startTimer_min=10,score_startTimer=10] ~ ~ ~ execute @e[tag=levelSpawn] ~ ~ ~ setblock ~6 ~-1 ~-15 wool 5
execute @e[tag=gameMaster,score_startTimer_min=10,score_startTimer=10] ~ ~ ~ execute @e[tag=levelSpawn] ~ ~ ~ summon armor_stand ~ ~ ~-15 {Tags:["buttontrigger","redtrigger"],Invisible:true,Invulnerable:true,Marker:true,NoGravity:true}
execute @e[tag=gameMaster,score_startTimer_min=10,score_startTimer=10] ~ ~ ~ execute @e[tag=levelSpawn] ~ ~ ~ summon armor_stand ~2 ~ ~-15 {Tags:["buttontrigger","bluetrigger"],Invisible:true,Invulnerable:true,Marker:true,NoGravity:true}
execute @e[tag=gameMaster,score_startTimer_min=10,score_startTimer=10] ~ ~ ~ execute @e[tag=levelSpawn] ~ ~ ~ summon armor_stand ~4 ~ ~-15 {Tags:["buttontrigger","yellowtrigger"],Invisible:true,Invulnerable:true,Marker:true,NoGravity:true}
execute @e[tag=gameMaster,score_startTimer_min=10,score_startTimer=10] ~ ~ ~ execute @e[tag=levelSpawn] ~ ~ ~ summon armor_stand ~6 ~ ~-15 {Tags:["buttontrigger","greentrigger"],Invisible:true,Invulnerable:true,Marker:true,NoGravity:true}
scoreboard players reset @e[tag=gameMaster,score_startTimer_min=11] startTimer