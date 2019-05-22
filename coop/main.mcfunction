effect @a saturation 1000000 255 true
effect @a resistance 1000000 255 true

scoreboard players set @e[tag=gameMaster] players 0
execute @a ~ ~ ~ scoreboard players add @e[tag=gameMaster] players 1

scoreboard players set @e[tag=gameMaster] totalPlayers 0
execute @a[team=player] ~ ~ ~ scoreboard players add @e[tag=gameMaster] totalPlayers 1
scoreboard players set @e[tag=gameMaster] totalHelpers 0
execute @a[team=helper] ~ ~ ~ scoreboard players add @e[tag=gameMaster] totalHelpers 1

scoreboard players operation @e[tag=gameMaster] helperOperation = @e[tag=gameMaster] totalHelpers
scoreboard players operation @e[tag=gameMaster] helperOperation -= @e[tag=gameMaster] players

scoreboard players operation @e[tag=gameMaster] totalOperation = @e[tag=gameMaster] players
scoreboard players remove @e[tag=gameMaster] totalOperation 1
scoreboard players operation @e[tag=gameMaster] helperOperation2 = @e[tag=gameMaster] totalHelpers
scoreboard players remove @e[tag=gameMaster] helperOperation2 1

scoreboard players add @e[tag=gameMaster] gameType 0

scoreboard players set @a onGround 0
scoreboard players set @a onGround 1 {OnGround:true}

execute @e[tag=gameMaster,score_gameType_min=1,score_gameType=1] ~ ~ ~ execute @a[score_onGround_min=1] ~ ~ ~ detect ~ ~-0.1 ~ barrier -1 effect @s resistance 0
execute @e[tag=gameMaster,score_gameType_min=1,score_gameType=1] ~ ~ ~ execute @a[score_onGround_min=1] ~ ~ ~ detect ~ ~-0.1 ~ barrier -1 effect @s instant_damage 1 250 true

execute @e[tag=gameMaster,score_gameType_min=1,score_gameType=1] ~ ~ ~ scoreboard players tag @a add notOnButton
execute @e[tag=gameMaster,score_gameType_min=1,score_gameType=1] ~ ~ ~ execute @a[score_onGround_min=1] ~ ~ ~ detect ~ ~ ~ stone_pressure_plate 1 scoreboard players tag @s remove notOnButton
execute @e[tag=gameMaster,score_gameType_min=1,score_gameType=1] ~ ~ ~ scoreboard players add @a[tag=!notOnButton,score_onButton=1] onButton 1
execute @e[tag=gameMaster,score_gameType_min=1,score_gameType=1] ~ ~ ~ execute @a[score_onButton_min=1,score_onButton=1,score_onGround_min=1] ~ ~ ~ detect ~ ~-0.5 ~ wool 4 summon armor_stand ~ ~1 ~ {Tags:["button","yellowbutton"],Invisible:true,Invulnerable:true,Marker:true,NoGravity:true}
execute @e[tag=gameMaster,score_gameType_min=1,score_gameType=1] ~ ~ ~ execute @a[score_onButton_min=1,score_onButton=1,score_onGround_min=1] ~ ~ ~ detect ~ ~-0.5 ~ wool 5 summon armor_stand ~ ~1 ~ {Tags:["button","greenbutton"],Invisible:true,Invulnerable:true,Marker:true,NoGravity:true}
execute @e[tag=gameMaster,score_gameType_min=1,score_gameType=1] ~ ~ ~ execute @a[score_onButton_min=1,score_onButton=1,score_onGround_min=1] ~ ~ ~ detect ~ ~-0.5 ~ wool 11 summon armor_stand ~ ~1 ~ {Tags:["button","bluebutton"],Invisible:true,Invulnerable:true,Marker:true,NoGravity:true}
execute @e[tag=gameMaster,score_gameType_min=1,score_gameType=1] ~ ~ ~ execute @a[score_onButton_min=1,score_onButton=1,score_onGround_min=1] ~ ~ ~ detect ~ ~-0.5 ~ wool 14 summon armor_stand ~ ~1 ~ {Tags:["button","redbutton"],Invisible:true,Invulnerable:true,Marker:true,NoGravity:true}
execute @e[tag=button] ~ ~ ~ detect ~ ~-1 ~ stone_pressure_plate 0 kill @s
scoreboard players set @e[tag=buttontrigger] triggered 0
execute @e[tag=gameMaster,score_gameType_min=1,score_gameType=1] ~ ~ ~ execute @e[tag=yellowbutton] ~ ~ ~ scoreboard players set @e[tag=yellowtrigger] triggered 1
execute @e[tag=gameMaster,score_gameType_min=1,score_gameType=1] ~ ~ ~ execute @e[tag=greenbutton] ~ ~ ~ scoreboard players set @e[tag=greentrigger] triggered 1
execute @e[tag=gameMaster,score_gameType_min=1,score_gameType=1] ~ ~ ~ execute @e[tag=bluebutton] ~ ~ ~ scoreboard players set @e[tag=bluetrigger] triggered 1
execute @e[tag=gameMaster,score_gameType_min=1,score_gameType=1] ~ ~ ~ execute @e[tag=redbutton] ~ ~ ~ scoreboard players set @e[tag=redtrigger] triggered 1
execute @e[tag=gameMaster,score_gameType_min=1,score_gameType=1] ~ ~ ~ execute @e[score_triggered=0] ~ ~ ~ detect ~ ~ ~ redstone_block -1 setblock ~ ~ ~ air
execute @e[tag=gameMaster,score_gameType_min=1,score_gameType=1] ~ ~ ~ execute @e[tag=buttontrigger,score_triggered_min=1] ~ ~ ~ detect ~ ~ ~ air -1 setblock ~ ~ ~ redstone_block
execute @e[tag=gameMaster,score_gameType_min=1,score_gameType=1] ~ ~ ~ scoreboard players set @a[tag=notOnButton] onButton 0

execute @e[tag=gameMaster,score_gameType_min=1,score_gameType=1] ~ ~ ~ execute @a[team=player,score_onGround_min=1] ~ ~ ~ detect ~ ~-0.5 ~ diamond_block -1 execute @a ~ ~ ~ playsound entity.villager.yes voice @s
execute @e[tag=gameMaster,score_gameType_min=1,score_gameType=1] ~ ~ ~ execute @a[team=player,score_onGround_min=1] ~ ~ ~ detect ~ ~-0.5 ~ diamond_block -1 particle happyVillager ~ ~ ~ 0 10 0 5 100 force @a
execute @e[tag=gameMaster,score_gameType_min=1,score_gameType=1] ~ ~ ~ execute @a[team=player,score_onGround_min=1] ~ ~ ~ detect ~ ~-0.5 ~ diamond_block -1 scoreboard players tag @s add needTeleport
execute @e[tag=gameMaster,score_gameType_min=1,score_gameType=1] ~ ~ ~ tp @a[tag=needTeleport] @e[tag=helperStart]
execute @e[tag=gameMaster,score_gameType_min=1,score_gameType=1,score_helperOperation=-2] ~ ~ ~ execute @a[tag=needTeleport] ~ ~ ~ tellraw @a [{"text":""},{"text":"!","bold":"true","color":"yellow"},{"text":"» ","color":"dark_gray"},{"selector":"@s","bold":"true"},{"text":"さんがステージをクリアして"},{"text":"ヘルパー","color":"green"},{"text":"になりました！"},{"text":" (","color":"gray"},{"score":{"name":"@e[tag=gameMaster]","objective":"totalHelpers"},"color":"gray"},{"text":"/","color":"gray"},{"score":{"name":"@e[tag=gameMaster]","objective":"totalOperation"},"color":"gray"},{"text":")","color":"gray"}]
execute @e[tag=gameMaster,score_gameType_min=1,score_gameType=1,score_helperOperation_min=-1] ~ ~ ~ execute @a[tag=needTeleport] ~ ~ ~ tellraw @a [{"text":""},{"text":"!","bold":"true","color":"yellow"},{"text":"» ","color":"dark_gray"},{"selector":"@s","bold":"true"},{"text":"さんがステージをクリアしました！"},{"text":" (","color":"gray"},{"score":{"name":"@e[tag=gameMaster]","objective":"totalHelpers"},"color":"gray"},{"text":"/","color":"gray"},{"score":{"name":"@e[tag=gameMaster]","objective":"totalOperation"},"color":"gray"},{"text":")","color":"gray"}]
execute @e[tag=gameMaster,score_gameType_min=1,score_gameType=1,score_helperOperation_min=-1] ~ ~ ~ execute @a[tag=needTeleport] ~ ~ ~ tellraw @a [{"text":""},{"text":"!","bold":"true","color":"yellow"},{"text":"» ","color":"dark_gray"},{"text":"全員がステージをクリアしました！","color":"green","bold":"true"}]
execute @e[tag=gameMaster,score_gameType_min=1,score_gameType=1] ~ ~ ~ scoreboard teams join helper @a[tag=needTeleport]
execute @e[tag=gameMaster,score_gameType_min=1,score_gameType=1] ~ ~ ~ scoreboard players tag @a[tag=needTeleport] remove needTeleport

execute @r[team=helper] ~ ~ ~ scoreboard players set @e[tag=gameMaster,score_helperOperation=-1] clearTimer 0
execute @r[team=player] ~ ~ ~ scoreboard players set @e[tag=gameMaster,score_helperOperation=-1] clearTimer 0
scoreboard players add @e[tag=gameMaster,score_clearTimer_min=1] clearTimer 1
scoreboard players add @e[tag=gameMaster,score_clearTimer=0,score_helperOperation_min=0] clearTimer 1
scoreboard players set @e[tag=gameMaster,score_clearTimer_min=1,score_clearTimer=1] nextLevel 0
execute @e[tag=gameMaster,score_clearTimer_min=1,score_clearTimer=1] ~ ~ ~ execute @e[tag=greenLevel] ~ ~ ~ detect ~-2 ~ ~-15 air -1 scoreboard players set @e[tag=gameMaster] nextLevel 1
execute @e[tag=gameMaster,score_clearTimer_min=1,score_clearTimer=1] ~ ~ ~ execute @e[tag=blueLevel] ~ ~ ~ detect ~-2 ~ ~-15 air -1 scoreboard players set @e[tag=gameMaster] nextLevel 2
execute @e[tag=gameMaster,score_clearTimer_min=1,score_clearTimer=1] ~ ~ ~ execute @e[tag=yellowLevel] ~ ~ ~ detect ~-2 ~ ~-15 air -1 scoreboard players set @e[tag=gameMaster] nextLevel 3
execute @e[tag=gameMaster,score_clearTimer_min=1,score_clearTimer=1] ~ ~ ~ execute @e[tag=redLevel] ~ ~ ~ detect ~-2 ~ ~-15 air -1 scoreboard players set @e[tag=gameMaster] nextLevel 4
execute @e[tag=gameMaster,score_clearTimer_min=1,score_clearTimer=1] ~ ~ ~ execute @e[tag=levelSpawn] ~ ~ ~ detect ~-2 ~ ~-15 air -1 setblock ~-2 ~ ~-15 diamond_block
execute @e[tag=gameMaster,score_clearTimer_min=1,score_clearTimer=1] ~ ~ ~ clear @a
execute @e[tag=gameMaster,score_clearTimer_min=1,score_clearTimer=1] ~ ~ ~ function coop:remove_level_object
execute @e[tag=gameMaster,score_clearTimer_min=20,score_clearTimer=20] ~ ~ ~ execute @a ~ ~ ~ playsound ui.toast.challenge_complete voice @s ~ ~ ~ 20 1.9
execute @e[tag=gameMaster,score_clearTimer_min=20,score_clearTimer=20] ~ ~ ~ title @a title [{"text":""},{"text":"ステージ クリア！","color":"green","bold":"true"}]
execute @e[tag=gameMaster,score_clearTimer_min=105,score_clearTimer=105] ~ ~ ~ scoreboard teams join lobby @a
execute @e[tag=gameMaster,score_clearTimer_min=105,score_clearTimer=105] ~ ~ ~ tp @a 500 10 0 0 0
scoreboard players set @e[tag=gameMaster,score_clearTimer_min=105,score_nextLevel=0] clearTimer 0
execute @e[tag=gameMaster,score_clearTimer_min=125,score_clearTimer=125,score_nextLevel_min=1] ~ ~ ~ execute @a ~ ~ ~ playsound entity.experience_orb.pickup voice @s
execute @e[tag=gameMaster,score_clearTimer_min=125,score_clearTimer=125,score_nextLevel_min=1,score_nextLevel=1] ~ ~ ~ function coop:green/marker_move
execute @e[tag=gameMaster,score_clearTimer_min=125,score_clearTimer=125,score_nextLevel_min=2,score_nextLevel=2] ~ ~ ~ function coop:blue/marker_move
execute @e[tag=gameMaster,score_clearTimer_min=125,score_clearTimer=125,score_nextLevel_min=3,score_nextLevel=3] ~ ~ ~ function coop:yellow/marker_move
execute @e[tag=gameMaster,score_clearTimer_min=125,score_clearTimer=125,score_nextLevel_min=4,score_nextLevel=4] ~ ~ ~ function coop:red/marker_move
scoreboard players set @e[tag=gameMaster,score_clearTimer_min=125] clearTimer 0
scoreboard players set @e[tag=gameMaster,score_clearTimer_min=1,score_clearTimer=1] gameType 0
execute @e[tag=gameMaster,score_gameMaster=0,score_clearTimer=0] ~ ~ ~ scoreboard teams join lobby @a
execute @e[tag=gameMaster,score_gameMaster=0,score_clearTimer_min=105] ~ ~ ~ scoreboard teams join lobby @a

execute @e[tag=gameMaster,score_startTimer_min=1] ~ ~ ~ function coop:load_level
scoreboard players add @e[tag=gameMaster,score_startTimer_min=1] startTimer 1