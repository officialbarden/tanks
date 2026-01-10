execute unless predicate ct:on_ground run attribute @s gravity base reset
# // Allow Flying Off of Ramps
attribute @s gravity base set 0.04
data modify entity @s Motion[0] set from storage ct:storage TEMP.VEHICLE.MOVE_VECTOR[0]
data modify entity @s Motion[2] set from storage ct:storage TEMP.VEHICLE.MOVE_VECTOR[2]
