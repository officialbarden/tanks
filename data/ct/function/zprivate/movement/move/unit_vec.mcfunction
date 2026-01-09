rotate @s ~ ~
execute positioned ^ ^ ^1 run tp ~ ~ ~
data modify storage ct:storage TEMP.VEHICLE.MOVE_VECTOR set from entity @s Pos
kill @s