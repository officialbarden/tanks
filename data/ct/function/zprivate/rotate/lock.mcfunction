execute store result score @s ct.VEHICLE.Pitch run data get entity @s Rotation[1] 1000
#execute if score @s ct.VEHICLE.Pitch <= @p[predicate=ct:id] ct.VEHICLE.PitchMax run title @p[predicate=ct:id] actionbar "Too High!"
execute if score @s ct.VEHICLE.Pitch <= @p[predicate=ct:id] ct.VEHICLE.PitchMax store result entity @s Rotation[1] float 0.001 run scoreboard players get @p[predicate=ct:id] ct.VEHICLE.PitchMax
#execute if score @s ct.VEHICLE.Pitch >= @p[predicate=ct:id] ct.VEHICLE.PitchMin run title @p[predicate=ct:id] actionbar "Too Low!"
execute if score @s ct.VEHICLE.Pitch >= @p[predicate=ct:id] ct.VEHICLE.PitchMin store result entity @s Rotation[1] float 0.001 run scoreboard players get @p[predicate=ct:id] ct.VEHICLE.PitchMin

