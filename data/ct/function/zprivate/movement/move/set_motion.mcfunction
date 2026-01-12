#execute unless predicate ct:on_ground run attribute @s gravity base reset
# // Allow Flying Off of Ramps
#title @p[predicate=ct:id] actionbar {nbt: "TEMP.VEHICLE.MOVE_VECTOR", "storage":"ct:storage"}

attribute @s gravity base set 0.04
data modify entity @s Motion[0] set from storage ct:storage TEMP.VEHICLE.MOVE_VECTOR[0]
execute as @s[tag=ct.PLANE] if entity @p[predicate=ct:id, scores={ct.VEHICLE.Speed=1..}] run data modify entity @s Motion[1] set from storage ct:storage TEMP.VEHICLE.MOVE_VECTOR[1]
data modify entity @s Motion[2] set from storage ct:storage TEMP.VEHICLE.MOVE_VECTOR[2]

