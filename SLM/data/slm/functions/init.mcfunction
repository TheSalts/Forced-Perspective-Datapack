tag @a add player
forceload add 0 0
execute unless entity @e[tag=distanceCalc] run summon item_display 0 0 0 {Tags:["distanceCalc"]}
execute unless entity @e[tag=ratioCalc] run summon item_display 0 0 0 {Tags:["ratioCalc"]}
scoreboard objectives add math.plus dummy
scoreboard objectives add math.minus dummy
scoreboard objectives add math.int dummy
scoreboard objectives add const dummy
scoreboard objectives add leftclicked dummy
scoreboard objectives add rightclicked dummy
scoreboard objectives add raycast dummy
scoreboard objectives add leftclick.delay dummy
scoreboard objectives add wait dummy
scoreboard objectives add hitbox.temp dummy
scoreboard objectives add hitbox.pos dummy
scoreboard players add @a[tag=player] raycast 0
scoreboard players add @a leftclicked 0
scoreboard players add @a rightclicked 0
scoreboard players set zero const 0
summon marker ~ ~ ~ {UUID:[I;0,0,0,0]}

function slm:world/world_init