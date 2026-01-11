execute store result score #X ct.PLAYER.RotX run data get entity @s Rotation[0] 1000
execute store result score #Y ct.PLAYER.RotY run data get entity @s Rotation[1] 1000

scoreboard players operation #X ct.PLAYER.RotX -= @s ct.PLAYER.RotX
scoreboard players operation #Y ct.PLAYER.RotY -= @s ct.PLAYER.RotY

execute store result score @s ct.PLAYER.RotX run data get entity @s Rotation[0] 1000
execute store result score @s ct.PLAYER.RotY run data get entity @s Rotation[1] 1000

# // If the player isn't *really moving* their mouse, lock their rotation to the tank similar to GTA V
execute as @s[predicate=ct:input/w, scores={ct.VEHICLE.Speed=100..}] if score #X ct.PLAYER.RotX matches ..15000 if score #Y ct.PLAYER.RotY matches ..15000 run return run tag @s add ct.PLAYER.CorrectRotation.Valid
execute as @s[predicate=ct:input/s, scores={ct.VEHICLE.Speed=..-100}] if score #X ct.PLAYER.RotX matches ..15000 if score #Y ct.PLAYER.RotY matches ..15000 run return run tag @s add ct.PLAYER.CorrectRotation.Valid
execute as @s if score #X ct.PLAYER.RotX matches ..1000 if score #Y ct.PLAYER.RotY matches ..1000 run return run tag @s add ct.PLAYER.CorrectRotation.Valid
tag @s remove ct.PLAYER.CorrectRotation.Valid
