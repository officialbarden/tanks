# // Create Motion Vector
function ct:zprivate/movement/check_stroke/init

# Apply Motion:
execute store result score #X ct.MATH run data get storage ct:storage TEMP.VEHICLE.MOVE_VECTOR[0] 1000
execute store result score #Z ct.MATH run data get storage ct:storage TEMP.VEHICLE.MOVE_VECTOR[2] 1000
scoreboard players operation #X ct.MATH *= @p[predicate=ct:id] ct.VEHICLE.Speed
scoreboard players operation #Z ct.MATH *= @p[predicate=ct:id] ct.VEHICLE.Speed

execute store result storage ct:storage TEMP.VEHICLE.MOVE_VECTOR[0] double 0.000001 run scoreboard players get #X ct.MATH
execute store result storage ct:storage TEMP.VEHICLE.MOVE_VECTOR[2] double 0.000001 run scoreboard players get #Z ct.MATH

function ct:zprivate/movement/move/set_motion
