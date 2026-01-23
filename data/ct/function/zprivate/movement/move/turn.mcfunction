# // Rotation Math using Scoreboard Operations
scoreboard players reset .RotationX ct.MATH
scoreboard players reset .Rotation ct.MATH
execute store result score .RotationX ct.MATH run data get entity @n[tag=ct.VEHICLE, predicate=ct:id, predicate=ct:is_moving, type=mannequin] Rotation[0] 1000
execute store result score .RotationY ct.MATH run data get entity @n[tag=ct.VEHICLE, predicate=ct:id, predicate=ct:is_moving, type=mannequin] Rotation[1] 1000

# // Up or Down if Plane:
execute if entity @n[tag=ct.PLANE, predicate=ct:id, tag=ct.VEHICLE, type=mannequin] if entity @s[predicate=ct:input/sprint, predicate=ct:input/w] if score @s ct.VEHICLE.Speed > @s ct.VEHICLE.TakeoffSpeed run scoreboard players operation .RotationY ct.MATH += @s ct.VEHICLE.AerodynamicFactor
execute if entity @n[tag=ct.PLANE, predicate=ct:id, tag=ct.VEHICLE, type=mannequin] if entity @s[predicate=ct:input/sprint, predicate=ct:input/s] if score @s ct.VEHICLE.Speed > @s ct.VEHICLE.TakeoffSpeed run scoreboard players operation .RotationY ct.MATH -= @s ct.VEHICLE.AerodynamicFactor
execute store result entity @n[tag=ct.VEHICLE, predicate=ct:id, predicate=ct:is_moving, type=mannequin] Rotation[1] float 0.001 run scoreboard players get .RotationY ct.MATH

# // Don't Enable Rotation for Planes unless Perfect Takeoff.
execute if entity @n[tag=ct.VEHICLE, tag=ct.PLANE, predicate=ct:id, predicate=!ct:on_ground] unless score @s ct.VEHICLE.InitiateFirstRollDelayTimer matches 0 run return fail
# // Left or Right (regardless of plane):
execute if entity @s[predicate=ct:input/a] run scoreboard players operation .RotationX ct.MATH -= @s ct.VEHICLE.TurnFactor
execute if entity @s[predicate=ct:input/d] run scoreboard players operation .RotationX ct.MATH += @s ct.VEHICLE.TurnFactor
execute store result entity @n[tag=ct.VEHICLE, predicate=ct:id, predicate=ct:is_moving, type=mannequin] Rotation[0] float 0.001 run scoreboard players get .RotationX ct.MATH

