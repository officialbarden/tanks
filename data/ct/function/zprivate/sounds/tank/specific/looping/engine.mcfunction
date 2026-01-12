# // Engine Accelerate Looping
execute as @e[tag=ct.VEHICLE, type=mannequin, predicate=ct:is_moving] at @s run playsound ct:sfx.accelerate.moving master @a[distance=..10] ~ ~ ~ 1 1
schedule function ct:zprivate/sounds/tank/specific/looping/engine 1s replace
