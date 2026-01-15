# // Smoothly Rotate Cannon and Miniguns
execute as @s[tag=!ct.PLANE] rotated as @p[predicate=tpc:id/common, tag=tpc.controller] as @e[tag=ct.COMPONENTS, tag=ct.FOLLOW_PLAYER, type=item_display, predicate=ct:id] run function ct:zprivate/smooth_rotation/cannon
# // Smoothly Rotate Body
execute as @p[predicate=ct:id] if score @s ct.VEHICLE.Speed matches 0 run return fail
execute as @s[predicate=ct:is_moving] as @e[predicate=ct:id, tag=ct.COMPONENTS, tag=!ct.FOLLOW_PLAYER, type=item_display] run function ct:zprivate/smooth_rotation/body
