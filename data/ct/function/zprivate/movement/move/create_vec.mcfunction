# // Rotate Vector if pressed A or D:
execute if entity @s[predicate=ct:input/a] as @n[tag=ct.VEHICLE, predicate=ct:id, predicate=ct:is_moving, type=mannequin] rotated as @s run rotate @s ~-4 ~
execute if entity @s[predicate=ct:input/d] as @n[tag=ct.VEHICLE, predicate=ct:id, predicate=ct:is_moving, type=mannequin] rotated as @s run rotate @s ~4 ~
#execute if entity @s[predicate=ct:input/a] run rotate @n[tag=ct.VEHICLE, predicate=ct:id, type=mannequin] ~4 ~
#execute if entity @s[predicate=ct:input/d] run rotate @n[tag=ct.VEHICLE, predicate=ct:id, type=mannequin] ~-4 ~

#execute if entity @s[redicate=ct:input/s] positioned 0.0 0.0 0.0 rotated as @n[tag=ct.VEHICLE, predicate=ct:id, type=mannequin] facing ^ ^ ^-1000 summon marker run return run function ct:zprivate/movement/move/unit_vec

execute positioned 0.0 0.0 0.0 rotated as @n[tag=ct.VEHICLE, predicate=ct:id, type=mannequin] summon marker run function ct:zprivate/movement/move/unit_vec