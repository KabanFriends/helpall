tellraw @a [{"text":""},{"text":"!","bold":"true","color":"yellow"},{"text":"» ","color":"dark_gray"},{"text":"このゲームをプレイするには最低","color":"red"},{"text":"2人","color":"gold"},{"text":"プレイヤーが必要です。","color":"red"}] 
execute @a ~ ~ ~ playsound block.note.bass voice @s
scoreboard players reset @e[tag=gameMaster] startTimer
