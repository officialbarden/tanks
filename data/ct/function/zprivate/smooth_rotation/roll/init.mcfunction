scoreboard players operation #ID ct.ID = @s ct.ID
$scoreboard players $(SIGN) @s ct.VEHICLE.Roll $(VALUE)

execute if score @s ct.VEHICLE.Roll matches 90001.. run scoreboard players set @s ct.VEHICLE.Roll 90000
execute if score @s ct.VEHICLE.Roll matches ..-90001 run scoreboard players set @s ct.VEHICLE.Roll -90000

data modify entity @n[tag=ct.PLANE, predicate=ct:id, type=item_display] interpolation_duration set value 6

data remove storage ct:storage TEMP.Roll
data modify storage ct:storage TEMP.Roll set value {axis:[0, 0, 1], angle:0}
execute store result storage ct:storage TEMP.Roll.angle float 0.00001745329 run scoreboard players get @s ct.VEHICLE.Roll
data modify entity @n[tag=ct.PLANE, predicate=ct:id, type=item_display] transformation.left_rotation set from storage ct:storage TEMP.Roll
#data remove storage ct:storage TEMP.Roll

