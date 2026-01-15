# // Do Not Roll Until Roll Timer has Hit
execute unless score @s ct.VEHICLE.InitiateFirstRollDelayTimer matches 0 run return fail
# // Do Not Roll if OnGround
execute as @n[tag=ct.PLANE, tag=!ct.PROPELLER, predicate=ct:id, type=item_display, predicate=ct:on_ground] run return fail
execute as @p[predicate=ct:id] unless score @s ct.VEHICLE.InitiateFirstRollDelayTimer matches 0 run return fail

#scoreboard players set @s ct.VEHICLE.TurnFactor 8000

# // Replace Macro with Scoreboard:
scoreboard players operation @s ct.VEHICLE.Roll += @s ct.VEHICLE.AngularSpeed
scoreboard players reset @s ct.VEHICLE.AngularSpeed

# // Do Not OverRoll:
execute if score @s ct.VEHICLE.Roll matches 90001.. run scoreboard players set @s ct.VEHICLE.Roll 90000
execute if score @s ct.VEHICLE.Roll matches ..-90001 run scoreboard players set @s ct.VEHICLE.Roll -90000

# // Smooth Roll
data modify entity @n[tag=ct.PLANE, predicate=ct:id, type=item_display] interpolation_duration set value 8

# // Store Roll
data remove storage ct:storage TEMP.Roll
data modify storage ct:storage TEMP.Roll set value {axis:[0, 0, 1], angle:0}
execute store result storage ct:storage TEMP.Roll.angle float 0.00001745329 run scoreboard players get @s ct.VEHICLE.Roll
data modify entity @n[tag=ct.PLANE, tag=!ct.PROPELLER, predicate=ct:id, type=item_display] transformation.left_rotation set from storage ct:storage TEMP.Roll
data remove storage ct:storage TEMP.Roll

