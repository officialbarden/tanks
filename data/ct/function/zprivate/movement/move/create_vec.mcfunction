# // Rotate Vector if pressed A or D:
# // Aerodynamic Factor is only for Planes and Helicopters.
function ct:zprivate/movement/move/turn

execute positioned 0.0 0.0 0.0 rotated as @n[tag=ct.VEHICLE, predicate=ct:id, type=mannequin] summon marker run function ct:zprivate/movement/move/unit_vec