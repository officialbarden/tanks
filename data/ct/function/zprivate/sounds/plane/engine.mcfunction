stopsound @a[distance=..50] * ct:sfx.plane.engine_idle
playsound ct:sfx.plane.engine_idle master @a ~ ~ ~ 0.5 1
execute on vehicle as @s[predicate=ct:is_moving] run playsound ct:sfx.accelerate.moving master @a ~ ~ ~ 0.4 1
execute on vehicle as @s[predicate=ct:is_moving, predicate=!ct:on_ground] run playsound ct:sfx.plane.prop_plane_engine master @a ~ ~ ~ 0.4 1