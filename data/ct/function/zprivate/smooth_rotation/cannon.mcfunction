# // Free Rotate if in Allowed Pitch Range
execute store result score @p[predicate=ct:id] ct.VEHICLE.CannonRotation run data get entity @p[predicate=ct:id] Rotation[1] 1000
execute as @n[tag=ct.CANNONandMACHINEGUN, predicate=ct:id, type=#ct:marker] run function ct:zprivate/smooth_rotation/as_player

execute anchored eyes rotated as @n[tag=ct.SMOOTH_ROTATION.MARKER,tag=ct.CANNONandMACHINEGUN, predicate=ct:id, type=#ct:marker] positioned ^ ^ ^5 rotated as @s positioned ^ ^ ^25 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run return run rotate @s ~ ~
