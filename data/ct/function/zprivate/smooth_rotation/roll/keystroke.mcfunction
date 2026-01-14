scoreboard players set @s ct.VEHICLE.TurnFactor 4000

execute as @s[predicate=ct:input/d, predicate=ct:input/sprint] if entity @n[predicate=ct:id, predicate=!ct:on_ground, type=mannequin, tag=ct.VEHICLE] run scoreboard players set @s ct.VEHICLE.AngularSpeed 4000
execute as @s[predicate=ct:input/d, predicate=ct:input/sprint] if entity @n[predicate=ct:id, predicate=!ct:on_ground, type=mannequin, tag=ct.VEHICLE] run return run function ct:zprivate/smooth_rotation/roll/init

execute as @s[predicate=ct:input/a, predicate=ct:input/sprint] if entity @n[predicate=ct:id, predicate=!ct:on_ground, type=mannequin, tag=ct.VEHICLE] run scoreboard players set @s ct.VEHICLE.AngularSpeed -4000
execute as @s[predicate=ct:input/a, predicate=ct:input/sprint] if entity @n[predicate=ct:id, predicate=!ct:on_ground, type=mannequin, tag=ct.VEHICLE] run return run function ct:zprivate/smooth_rotation/roll/init

