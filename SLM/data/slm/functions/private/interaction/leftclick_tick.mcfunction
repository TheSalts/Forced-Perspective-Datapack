execute on attacker run scoreboard players add @s leftclicked 1
execute if data entity @s attack run tag @s[tag=!targetInteraction,tag=!clickDetect] add targetInteraction
execute as @e[tag=targetInteraction] at @s if data entity @s attack run tag @e[tag=target,limit=1,sort=nearest] add targetW
execute as @e[tag=targetInteraction] at @s if data entity @s attack run tag @e[tag=interaction,tag=!targetInteraction,tag=!clickDetect,limit=1,sort=nearest] add targetInteraction
execute if data entity @s attack run data remove entity @s attack