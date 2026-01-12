# SET VALUES TEMPORARILY
#$execute store result storage tpc:temp cache.teleport_offset.y double 0.1 run data get storage tpc:entities entity_type[{"name":$(name)}].camera.walk.y 1
#$execute store result storage tpc:temp cache.teleport_offset.x double 0.1 run data get storage tpc:entities entity_type[{"name":$(name)}].camera.walk.x 1
#$execute store result storage tpc:temp cache.teleport_offset.z double 0.1 run data get storage tpc:entities entity_type[{"name":$(name)}].camera.walk.z 1

execute as @p[predicate=tpc:id/common,predicate=!tpc:input/sprint] store result storage tpc:temp cache.teleport_offset.x double 0.001 run scoreboard players get @s ct.VEHICLE.CameraDist.X
execute as @p[predicate=tpc:id/common,predicate=!tpc:input/sprint] store result storage tpc:temp cache.teleport_offset.y double 0.001 run scoreboard players get @s ct.VEHICLE.CameraDist.Y
execute as @p[predicate=tpc:id/common,predicate=!tpc:input/sprint] store result storage tpc:temp cache.teleport_offset.z double 0.001 run scoreboard players get @s ct.VEHICLE.CameraDist.Z

execute as @p[predicate=tpc:id/common,predicate=tpc:input/sprint] store result storage tpc:temp cache.teleport_offset.x double 0.001 run scoreboard players get @s ct.VEHICLE.CameraDistSprint.X
execute as @p[predicate=tpc:id/common,predicate=tpc:input/sprint] store result storage tpc:temp cache.teleport_offset.y double 0.001 run scoreboard players get @s ct.VEHICLE.CameraDistSprint.Y
execute as @p[predicate=tpc:id/common,predicate=tpc:input/sprint] store result storage tpc:temp cache.teleport_offset.z double 0.001 run scoreboard players get @s ct.VEHICLE.CameraDistSprint.Z

execute store result entity @s teleport_duration int 1 run data get storage tpc:config config.camera.teleport_duration
function tpc:private/control/teleport/offset with storage tpc:temp cache.teleport_offset