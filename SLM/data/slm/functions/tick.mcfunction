function slm:world/world_tick

execute unless entity @a[tag=player, scores={leftclicked=1..2}] run tag @e remove targetW
execute as @a[tag=player] at @s if score @s leftclicked matches 2 run function slm:private/distance/block_hitbox_distance

execute as @e[tag=interaction] if data entity @s attack run function slm:private/interaction/leftclick_tick
# function slm:private/interaction/rightclick_tick

# execute store result score $ray raycast run data get storage slm:block_distance distance 10

# execute as @a[tag=player] if score @s leftclicked matches 1.. run function slm:private/raycast/block_detect
execute as @a[tag=player] at @s if score @s leftclicked matches 1 run function slm:private/distance/get_distance_1
execute as @a[tag=player] at @s if score @s leftclicked matches 3.. run function slm:private/distance/get_distance_3

# kill @e[tag=gravityARS,nbt={OnGround:true}]

execute as @e[tag=targetW] run data modify entity @s interpolation_duration set value 1
execute as @e[tag=targetW] run data modify entity @s teleport_duration set value 1