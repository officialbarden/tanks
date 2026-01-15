execute if score @p[predicate=ct:id] ct.VEHICLE.Speed matches 0 run return fail

data modify storage ct:storage TEMP.VEHICLE.PROPELLER set value {axis:[0, 0, 1], angle: 0}
execute store result storage ct:storage TEMP.VEHICLE.PROPELLER.angle float 0.001745329 run scoreboard players operation @s ct.VEHICLE.PropellerRPM += @p[predicate=ct:id] ct.VEHICLE.Speed
data modify entity @s[tag=ct.PLANE, tag=ct.PROPELLER, predicate=ct:id] transformation.left_rotation set from storage ct:storage TEMP.VEHICLE.PROPELLER
data remove storage ct:storage TEMP.VEHICLE.PROPELLER
execute if score @s ct.VEHICLE.PropellerRPM matches 100000.. run scoreboard players set @s ct.VEHICLE.PropellerRPM 0
data modify entity @s interpolation_duration set value 1


