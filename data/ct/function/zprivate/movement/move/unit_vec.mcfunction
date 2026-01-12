rotate @s ~ ~
execute positioned ^ ^ ^1 run tp ~ ~ ~
data remove storage ct:storage TEMP.VEHICLE.MOVE_VECTOR
data modify storage ct:storage TEMP.VEHICLE.MOVE_VECTOR set from entity @s Pos
kill @s