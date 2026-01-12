execute store result score @s ct.VEHICLE.Pitch run data get entity @s Rotation[1] 1000
execute if score @s ct.VEHICLE.Pitch matches ..-85001 run return run data modify entity @s Rotation[1] set value -80.0f
execute if score @s ct.VEHICLE.Pitch matches 85001.. run return run data modify entity @s Rotation[1] set value 80.0f
