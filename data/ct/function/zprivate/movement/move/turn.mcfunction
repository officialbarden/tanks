

$execute if entity @s[predicate=ct:input/sprint, predicate=ct:input/w] if score @s ct.VEHICLE.Speed > @s ct.VEHICLE.TakeoffSpeed as @n[tag=ct.VEHICLE, tag=ct.PLANE, predicate=ct:id, predicate=ct:is_moving, type=mannequin] rotated as @s run rotate @s ~ ~$(AERODYNAMICFACTOR)
$execute if entity @s[predicate=ct:input/sprint, predicate=ct:input/s] if score @s ct.VEHICLE.Speed > @s ct.VEHICLE.TakeoffSpeed as @n[tag=ct.VEHICLE, tag=ct.PLANE, predicate=ct:id, predicate=ct:is_moving, type=mannequin] rotated as @s run rotate @s ~ ~-$(AERODYNAMICFACTOR)

# // Don't Enable Rotation for Planes unless Perfect Takeoff.
execute if entity @n[tag=ct.VEHICLE, tag=ct.PLANE, predicate=ct:id, predicate=!ct:on_ground] unless score @s ct.VEHICLE.InitiateFirstRollDelayTimer matches 0 run return fail
$execute if entity @s[predicate=ct:input/a] as @n[tag=ct.VEHICLE, predicate=ct:id, predicate=ct:is_moving, type=mannequin] rotated as @s run rotate @s ~-$(TURNFACTOR) ~
$execute if entity @s[predicate=ct:input/d] as @n[tag=ct.VEHICLE, predicate=ct:id, predicate=ct:is_moving, type=mannequin] rotated as @s run rotate @s ~$(TURNFACTOR) ~

