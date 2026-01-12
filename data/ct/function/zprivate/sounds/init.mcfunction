scoreboard players operation #ID ct.ID = @s ct.ID
scoreboard players operation #ID tpc.id = @s tpc.id

execute as @s[tag=ct.TANK] if entity @p[scores={ct.VEHICLE.Speed=100..}, predicate=tpc:id/common,predicate=ct:input/w] at @s run function ct:zprivate/sounds/tank/specific/accelerate
execute as @s[tag=ct.TANK] if entity @p[scores={ct.VEHICLE.Speed=..-100},predicate=tpc:id/common,predicate=ct:input/s] at @s run function ct:zprivate/sounds/tank/specific/reverse
execute as @s[tag=ct.TANK] as @s[tag=ct.Accelerating] unless entity @p[predicate=tpc:id/common,predicate=ct:input/w] at @s run function ct:zprivate/sounds/tank/specific/let_go
execute as @s[tag=ct.TANK] if score @p[predicate=tpc:id/common] ct.VEHICLE.Speed matches 0 run function ct:zprivate/sounds/tank/specific/come_to_stop

# // Engine Ambience
execute as @s[tag=ct.TANK] at @s run playsound ct:sfx.accelerate.continuous master @a[distance=..10] ~ ~ ~ 0.9 1
