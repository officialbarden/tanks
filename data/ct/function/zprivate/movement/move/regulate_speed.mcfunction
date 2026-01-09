execute if score @s ct.VEHICLE.MaxSpeed <= @s ct.VEHICLE.Speed run scoreboard players operation @s ct.VEHICLE.Speed = @s ct.VEHICLE.MaxSpeed
execute as @s[predicate=ct:input/w] run scoreboard players operation @s ct.VEHICLE.Speed += @s ct.VEHICLE.Acceleration
execute as @s[predicate=ct:input/s] run scoreboard players operation @s ct.VEHICLE.Speed -= @s ct.VEHICLE.Brake
execute if score @s ct.VEHICLE.Friction matches 1.. run scoreboard players operation @s ct.VEHICLE.Speed -= @s ct.VEHICLE.Friction
execute if score @s ct.VEHICLE.Speed matches ..0 run scoreboard players operation @s ct.VEHICLE.Speed += @s ct.VEHICLE.Friction
