execute store result score #X ct.VEHICLE.POS run data get entity @s Pos[0] 1000
execute store result score #Y ct.VEHICLE.POS run data get entity @s Pos[1] 1000
execute store result score #Z ct.VEHICLE.POS run data get entity @s Pos[2] 1000

scoreboard players operation #X ct.VEHICLE.POS -= @s ct.VEHICLE.POS_INIT.X
scoreboard players operation #Y ct.VEHICLE.POS -= @s ct.VEHICLE.POS_INIT.Y
scoreboard players operation #Z ct.VEHICLE.POS -= @s ct.VEHICLE.POS_INIT.Z

execute if score #X ct.VEHICLE.POS matches 0 if score #Y ct.VEHICLE.POS matches 0 if score #Z ct.VEHICLE.POS matches 0 run function ct:zprivate/pos/stop

execute store result score @s ct.VEHICLE.POS_INIT.X run data get entity @s Pos[0] 1000
execute store result score @s ct.VEHICLE.POS_INIT.Y run data get entity @s Pos[1] 1000
execute store result score @s ct.VEHICLE.POS_INIT.Z run data get entity @s Pos[2] 1000