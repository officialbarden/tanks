
$execute if entity @s[predicate=ct:input/a] as @n[tag=ct.VEHICLE, predicate=ct:id, predicate=ct:is_moving, type=mannequin] rotated as @s run rotate @s ~-$(TURNFACTOR) ~
$execute if entity @s[predicate=ct:input/d] as @n[tag=ct.VEHICLE, predicate=ct:id, predicate=ct:is_moving, type=mannequin] rotated as @s run rotate @s ~$(TURNFACTOR) ~

$execute if entity @s[predicate=ct:input/sprint, predicate=ct:input/w] if score @s ct.VEHICLE.Speed > @s ct.VEHICLE.TakeoffSpeed as @n[tag=ct.VEHICLE, tag=ct.PLANE, predicate=ct:id, predicate=ct:is_moving, type=mannequin] rotated as @s run return run rotate @s ~ ~$(AERODYNAMICFACTOR)
$execute if entity @s[predicate=ct:input/sprint, predicate=ct:input/s] if score @s ct.VEHICLE.Speed > @s ct.VEHICLE.TakeoffSpeed as @n[tag=ct.VEHICLE, tag=ct.PLANE, predicate=ct:id, predicate=ct:is_moving, type=mannequin] rotated as @s run return run rotate @s ~ ~-$(AERODYNAMICFACTOR)
