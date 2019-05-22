execute @a ~ ~ ~ playsound entity.evocation_illager.prepare_summon voice @s ~ ~ ~ 50 1.5
execute @a ~ ~ ~ spawnpoint @s ~ ~ ~
execute @r[team=player] ~ ~ ~ summon armor_stand ~ ~ ~ {Tags:["levelSpawn","levelObject"],Invisible:true,Invulnerable:true,Marker:true,NoGravity:true}
execute @r[team=player] ~ ~ ~ setblock ~ ~-1 ~-15 wool 14
execute @r[team=player] ~ ~ ~ setblock ~2 ~-1 ~-15 wool 11
execute @r[team=player] ~ ~ ~ setblock ~4 ~-1 ~-15 wool 4
execute @r[team=player] ~ ~ ~ setblock ~6 ~-1 ~-15 wool 5
execute @r[team=player] ~ ~ ~ summon armor_stand ~ ~ ~-15 {Tags:["buttontrigger","redtrigger"],Invisible:true,Invulnerable:true,Marker:true,NoGravity:true}
execute @r[team=player] ~ ~ ~ summon armor_stand ~2 ~ ~-15 {Tags:["buttontrigger","bluetrigger"],Invisible:true,Invulnerable:true,Marker:true,NoGravity:true}
execute @r[team=player] ~ ~ ~ summon armor_stand ~4 ~ ~-15 {Tags:["buttontrigger","yellowtrigger"],Invisible:true,Invulnerable:true,Marker:true,NoGravity:true}
execute @r[team=player] ~ ~ ~ summon armor_stand ~6 ~ ~-15 {Tags:["buttontrigger","greentrigger"],Invisible:true,Invulnerable:true,Marker:true,NoGravity:true}