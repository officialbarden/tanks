execute if score @s ct.VEHICLE.Speed matches 0 run return fail

execute if score @s ct.VEHICLE.Speed >= @s ct.VEHICLE.TakeoffSpeed if entity @n[tag=ct.VEHICLE,predicate=ct:id, predicate=!ct:on_ground] as @n[tag=ct.PLANE, tag=!ct.PROPELLER, predicate=ct:id, tag=!ct.LandingGearIn] run return run function ct:zprivate/vehicle_specific/plane/landing_gear/in
execute if score @s ct.VEHICLE.Speed < @s ct.VEHICLE.TakeoffSpeed if entity @n[tag=ct.VEHICLE,predicate=ct:id, predicate=!ct:on_ground] as @n[tag=ct.PLANE, tag=!ct.PROPELLER, predicate=ct:id, tag=ct.LandingGearIn] run return run function ct:zprivate/vehicle_specific/plane/landing_gear/out
execute if entity @n[tag=ct.VEHICLE,predicate=ct:id, predicate=ct:on_ground] as @n[tag=ct.PLANE, tag=!ct.PROPELLER, predicate=ct:id, tag=ct.LandingGearIn] run return run function ct:zprivate/vehicle_specific/plane/landing_gear/out
