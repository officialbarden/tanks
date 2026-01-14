scoreboard players operation #ID ct.ID = @s ct.ID
execute if entity @n[predicate=ct:id, tag=ct.VEHICLE, predicate=ct:on_ground] run return run scoreboard players operation @s ct.VEHICLE.InitiateFirstRollDelayTimer = @s ct.VEHICLE.InitiateFirstRollDelay
scoreboard players remove @s[scores={ct.VEHICLE.InitiateFirstRollDelayTimer=1..}] ct.VEHICLE.InitiateFirstRollDelayTimer 1
