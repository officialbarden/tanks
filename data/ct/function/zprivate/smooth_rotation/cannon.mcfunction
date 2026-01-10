# // Free Rotate if in Allowed Pitch Range
execute store result score @p[predicate=ct:id] ct.VEHICLE.CannonRotation run data get entity @p[predicate=ct:id] Rotation[1] 1000
execute as @n[tag=ct.CANNONandMACHINEGUN, predicate=ct:id, type=marker] run function ct:zprivate/smooth_rotation/as_player

# // If the Cannon is in Range of allowed Pitch
#execute if score @p[predicate=ct:id] ct.VEHICLE.CannonRotation > @p[predicate=ct:id] ct.VEHICLE.RotationY.Min if score @p[predicate=ct:id] ct.VEHICLE.CannonRotation < @p[predicate=ct:id] ct.VEHICLE.RotationY.Max anchored eyes rotated as @n[tag=ct.SMOOTH_ROTATION.MARKER,tag=ct.CANNONandMACHINEGUN, predicate=ct:id, type=marker] positioned ^ ^ ^5 rotated as @s positioned ^ ^ ^25 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run return run rotate @s ~ ~
# // Max Clamp
#execute if score @p[predicate=ct:id] ct.VEHICLE.CannonRotation < @p[predicate=ct:id] ct.VEHICLE.RotationY.Max anchored eyes rotated as @n[tag=ct.SMOOTH_ROTATION.MARKER,tag=ct.CANNONandMACHINEGUN, predicate=ct:id, type=marker] positioned ^ ^ ^5 rotated as @s positioned ^ ^ ^25 facing entity @s eyes facing ^ ^ ^-1 positioned as @s store result entity @n[tag=ct.CANNONandMACHINEGUN,predicate=ct:id] Rotation[1] float 0.001 run scoreboard players get @p[predicate=ct:id] ct.VEHICLE.RotationY.Max
# // Min Clamp
#execute if score @p[predicate=ct:id] ct.VEHICLE.CannonRotation > @p[predicate=ct:id] ct.VEHICLE.RotationY.Max anchored eyes rotated as @n[tag=ct.SMOOTH_ROTATION.MARKER,tag=ct.CANNONandMACHINEGUN, predicate=ct:id, type=marker] positioned ^ ^ ^5 rotated as @s positioned ^ ^ ^25 facing entity @s eyes facing ^ ^ ^-1 positioned as @s store result entity @n[tag=ct.CANNONandMACHINEGUN,predicate=ct:id] Rotation[1] float 0.001 run scoreboard players get @p[predicate=ct:id] ct.VEHICLE.RotationY.Min

execute anchored eyes rotated as @n[tag=ct.SMOOTH_ROTATION.MARKER,tag=ct.CANNONandMACHINEGUN, predicate=ct:id, type=marker] positioned ^ ^ ^5 rotated as @s positioned ^ ^ ^25 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run return run rotate @s ~ ~
