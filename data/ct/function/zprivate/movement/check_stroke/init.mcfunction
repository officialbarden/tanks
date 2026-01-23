# Check for Acceleration/Deceleration
execute as @p[predicate=ct:id] run function ct:zprivate/movement/move/regulate_speed
execute as @p[predicate=ct:id] rotated as @n[tag=ct.VEHICLE, predicate=ct:id, type=mannequin] run function ct:zprivate/movement/move/create_vec

execute unless predicate ct:on_ground as @p[predicate=ct:id] run function ct:zprivate/smooth_rotation/roll/keystroke
