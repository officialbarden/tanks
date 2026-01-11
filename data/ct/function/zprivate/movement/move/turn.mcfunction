$execute if entity @s[predicate=ct:input/a] as @n[tag=ct.VEHICLE, predicate=ct:id, predicate=ct:is_moving, type=mannequin] rotated as @s run rotate @s ~-$(TURNFACTOR) ~
$execute if entity @s[predicate=ct:input/d] as @n[tag=ct.VEHICLE, predicate=ct:id, predicate=ct:is_moving, type=mannequin] rotated as @s run rotate @s ~$(TURNFACTOR) ~

$execute if entity @s[predicate=ct:input/s, predicate=ct:input/sprint, scores={ct.VEHICLE.Speed=2000..}] as @n[tag=ct.VEHICLE, tag=ct.PLANE, predicate=ct:id, predicate=ct:is_moving, type=mannequin] rotated as @s run rotate @s ~ -$(AERODYNAMICFACTOR)
$execute if entity @s[predicate=ct:input/w, predicate=ct:input/sprint, scores={ct.VEHICLE.Speed=2000..}] as @n[tag=ct.VEHICLE, tag=ct.PLANE, predicate=ct:id, predicate=ct:is_moving, type=mannequin] rotated as @s run rotate @s ~ $(AERODYNAMICFACTOR)

