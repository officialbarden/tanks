scoreboard players operation #Speed ct.MATH = @s ct.VEHICLE.Speed
scoreboard players operation #Speed ct.MATH *= .TicksInASecond ct.Constants
execute store result storage ct:storage TEMP.SPEEDOMETER.VALUE float 0.001 run scoreboard players get #Speed ct.MATH
data modify storage ct:storage TEMP.SPEEDOMETER.STRING set string storage ct:storage TEMP.SPEEDOMETER.VALUE 0 -1

title @s actionbar [{storage:"ct:storage", nbt:"TEMP.SPEEDOMETER.STRING"}, " m/s"]
