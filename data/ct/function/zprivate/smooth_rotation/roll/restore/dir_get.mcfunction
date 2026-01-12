execute if score @s ct.VEHICLE.Roll matches 1.. run data modify storage ct:storage TEMP.MACRO.ROLL_RESTORE.SIGN set value "set"
execute if score @s ct.VEHICLE.Roll matches 1.. run return run scoreboard players set @s ct.VEHICLE.Roll 0
execute if score @s ct.VEHICLE.Roll matches ..-1 run data modify storage ct:storage TEMP.MACRO.ROLL_RESTORE.SIGN set value "set"
execute if score @s ct.VEHICLE.Roll matches ..-1 run return run scoreboard players set @s ct.VEHICLE.Roll 0
