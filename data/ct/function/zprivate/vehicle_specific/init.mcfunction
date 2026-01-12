scoreboard players operation #ID ct.ID = @s ct.ID
execute as @s[tag=ct.PLANE] run function ct:zprivate/vehicle_specific/plane/init
execute as @s[tag=ct.TANK] at @s run function ct:zprivate/vehicle_specific/tank/init
