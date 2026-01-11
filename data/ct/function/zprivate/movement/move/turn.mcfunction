
$execute if entity @s[predicate=ct:input/a] as @n[tag=ct.VEHICLE, predicate=ct:id, predicate=ct:is_moving, type=mannequin] rotated as @s run rotate @s ~-$(TURNFACTOR) ~
$execute if entity @s[predicate=ct:input/d] as @n[tag=ct.VEHICLE, predicate=ct:id, predicate=ct:is_moving, type=mannequin] rotated as @s run rotate @s ~$(TURNFACTOR) ~

$execute if entity @s[predicate=ct:input/sprint, predicate=ct:input/w, scores={ct.VEHICLE.Speed=2000..}] unless score @s ct.VEHICLE.Pitch < @s ct.VEHICLE.PitchMax as @n[tag=ct.VEHICLE, tag=ct.PLANE, predicate=ct:id, predicate=ct:is_moving, type=mannequin] rotated as @s run rotate @s ~ ~-$(AERODYNAMICFACTOR)
$execute if entity @s[predicate=ct:input/sprint, predicate=ct:input/s, scores={ct.VEHICLE.Speed=2000..}] unless score @s ct.VEHICLE.Pitch > @s ct.VEHICLE.PitchMin as @n[tag=ct.VEHICLE, tag=ct.PLANE, predicate=ct:id, predicate=ct:is_moving, type=mannequin] rotated as @s run rotate @s ~ ~$(AERODYNAMICFACTOR)
