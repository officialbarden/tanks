# // Scoreboards
scoreboard objectives add ct.MATH dummy
scoreboard objectives add ct.Constants dummy
scoreboard players set .3 ct.Constants 3
scoreboard players set .5 ct.Constants 5

# // Vehicle Riding Stats (x1000):
scoreboard objectives add ct.VEHICLE.MaxSpeed dummy
scoreboard objectives add ct.VEHICLE.MinSpeed dummy
scoreboard objectives add ct.VEHICLE.Speed dummy
scoreboard objectives add ct.VEHICLE.Acceleration dummy
scoreboard objectives add ct.VEHICLE.Brake dummy
scoreboard objectives add ct.VEHICLE.Friction dummy

# // Other Vehicle Scoreboards
scoreboard objectives add ct.VEHICLE.RotationY.Max dummy
scoreboard objectives add ct.VEHICLE.RotationY.Min dummy
scoreboard objectives add ct.VEHICLE.CannonRotation dummy

scoreboard objectives add ct.ID dummy
scoreboard players add .global ct.ID 1
