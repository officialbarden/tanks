scoreboard players operation #ID ct.ID = @s ct.ID
scoreboard players operation #ID tpc.id = @s tpc.id

# // Smoothly Rotate Cannon and Miniguns
execute rotated as @p[predicate=tpc:id/common, tag=tpc.controller] as @e[tag=ct.COMPONENTS, tag=ct.FOLLOW_PLAYER, type=item_display, predicate=ct:id] run function ct:zprivate/smooth_rotation/cannon

# // Smoothly Rotate Body
execute if predicate ct:is_moving rotated as @s as @e[predicate=ct:id, tag=ct.COMPONENTS, tag=!ct.FOLLOW_PLAYER, type=item_display] run function ct:zprivate/smooth_rotation/body
