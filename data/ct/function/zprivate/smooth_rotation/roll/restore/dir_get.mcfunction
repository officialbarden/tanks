execute if score @s ct.VEHICLE.Roll matches 1.. run scoreboard players set @s ct.VEHICLE.AngularSpeed -4000
execute if score @s ct.VEHICLE.Roll matches 1.. if score @s ct.VEHICLE.Roll matches ..3999 run scoreboard players operation @s ct.VEHICLE.AngularSpeed = @s ct.VEHICLE.Roll
execute if score @s ct.VEHICLE.Roll matches 1.. run return run function ct:zprivate/smooth_rotation/roll/init

execute if score @s ct.VEHICLE.Roll matches ..-1 run scoreboard players set @s ct.VEHICLE.AngularSpeed 4000
execute if score @s ct.VEHICLE.Roll matches ..-1 if score @s ct.VEHICLE.Roll matches -3999.. run scoreboard players operation @s ct.VEHICLE.AngularSpeed = @s ct.VEHICLE.Roll
execute if score @s ct.VEHICLE.Roll matches ..-1 run return run function ct:zprivate/smooth_rotation/roll/init
