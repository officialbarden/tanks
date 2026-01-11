# // Rotate the Marker 
execute store result score @p[predicate=ct:id] ct.VEHICLE.Pitch run data get entity @n[tag=ct.VEHICLE, predicate=ct:id, type=mannequin] Rotation[1] 1000
execute if entity @n[predicate=ct:id, predicate=!ct:on_ground, type=mannequin, tag=ct.VEHICLE] run rotate @n[tag=ct.BODY,type=marker, predicate=ct:id] ~ ~
execute if entity @n[predicate=ct:id, predicate=ct:on_ground, type=mannequin, tag=ct.VEHICLE] run rotate @n[tag=ct.BODY,type=marker, predicate=ct:id] ~ 0

execute at @s \
    anchored eyes \
    rotated as @n[tag=ct.SMOOTH_ROTATION.MARKER, tag=ct.BODY, predicate=ct:id, type=marker] \
    positioned ^ ^ ^5 \
    rotated as @s \
    positioned ^ ^ ^20 \
    facing entity @s eyes \
    facing ^ ^ ^-1 \
    positioned as @s \
    run rotate @s ~ ~
