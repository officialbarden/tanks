scoreboard players operation #ID ct.ID = @s ct.ID

# Check for Acceleration/Deceleration
#execute as @p[predicate=ct:id, predicate=ct:input/w] rotated as @n[tag=ct.VEHICLE, predicate=ct:id, type=mannequin] rotated ~ 0 run function ct:zprivate/movement/move/create_vec
#execute as @p[predicate=ct:id, predicate=ct:input/s] rotated as @n[tag=ct.VEHICLE, predicate=ct:id, type=mannequin] rotated ~ 0 run function ct:zprivate/movement/move/create_vec
execute as @p[predicate=ct:id] run function ct:zprivate/movement/move/regulate_speed

execute as @p[predicate=ct:id] unless score @s ct.VEHICLE.Speed matches 0 rotated as @n[tag=ct.VEHICLE, predicate=ct:id, type=mannequin] rotated ~ 0 run function ct:zprivate/movement/move/create_vec
