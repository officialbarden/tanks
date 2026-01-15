return fail

# // Calculate K.E. Every tick from scratch
scoreboard players reset @s ct.VEHICLE.KineticEnergy

# // K.E. = 0.5 * M * V * V
scoreboard players operation @s ct.VEHICLE.KineticEnergy = @s ct.VEHICLE.Mass
scoreboard players operation @s ct.VEHICLE.KineticEnergy *= @s ct.VEHICLE.Speed
scoreboard players operation @s ct.VEHICLE.KineticEnergy *= @s ct.VEHICLE.Speed
scoreboard players operation @s ct.VEHICLE.KineticEnergy /= .2 ct.Constants
scoreboard players operation @s ct.VEHICLE.KineticEnergy /= .1000 ct.Constants
scoreboard players operation @s ct.VEHICLE.KineticEnergy /= .1000 ct.Constants
scoreboard players operation @s ct.VEHICLE.KineticEnergy /= .1000 ct.Constants
