# // Rotate Vector if pressed A or D:
execute store result storage ct:storage TEMP.MACRO.TURNFACTOR float 0.001 run scoreboard players get @p[predicate=ct:id] ct.VEHICLE.TurnFactor
# // Aerodynamic Factor is only for Planes and Helicopters.
execute store result storage ct:storage TEMP.MACRO.AERODYNAMICFACTOR float 0.001 run scoreboard players get @p[predicate=ct:id] ct.VEHICLE.AerodynamicFactor
function ct:zprivate/movement/move/turn with storage ct:storage TEMP.MACRO

execute positioned 0.0 0.0 0.0 rotated as @n[tag=ct.VEHICLE, predicate=ct:id, type=mannequin] summon marker run function ct:zprivate/movement/move/unit_vec