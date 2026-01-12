# // Max Speed Cap
execute if score @s ct.VEHICLE.MaxSpeed <= @s ct.VEHICLE.Speed run scoreboard players operation @s ct.VEHICLE.Speed = @s ct.VEHICLE.MaxSpeed
# // Min Speed/Reverse Speed Cap
execute if score @s ct.VEHICLE.MinSpeed >= @s ct.VEHICLE.Speed run scoreboard players operation @s ct.VEHICLE.Speed = @s ct.VEHICLE.MinSpeed

# // Flight Controls:
execute if entity @n[tag=ct.VEHICLE,tag=ct.PLANE, predicate=!ct:on_ground, predicate=ct:id] as @s[predicate=ct:input/sprint] run scoreboard players operation @s ct.VEHICLE.Speed += @s ct.VEHICLE.Acceleration

# // All Controls (Accelerate/Reverse on ground via W/S)
execute if entity @n[tag=ct.VEHICLE,predicate=ct:on_ground, predicate=ct:id] as @s[predicate=ct:input/w] run scoreboard players operation @s ct.VEHICLE.Speed += @s ct.VEHICLE.Acceleration
execute if entity @n[tag=ct.VEHICLE,predicate=ct:on_ground, predicate=ct:id] as @s[predicate=ct:input/s] run scoreboard players operation @s ct.VEHICLE.Speed -= @s ct.VEHICLE.Brake

# // Make Friction Restoring:
execute if score @s ct.VEHICLE.Friction matches 1.. if score @s ct.VEHICLE.Speed matches 1.. run scoreboard players operation @s ct.VEHICLE.Speed -= @s ct.VEHICLE.Friction
execute if score @s ct.VEHICLE.Friction matches 1.. if score @s ct.VEHICLE.Speed matches ..-1 run scoreboard players operation @s ct.VEHICLE.Speed += @s ct.VEHICLE.Friction
