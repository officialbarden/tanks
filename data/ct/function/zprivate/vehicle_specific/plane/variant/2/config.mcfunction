# // Initialize Values:
scoreboard players set @s ct.VEHICLE.MaxSpeed 1000
scoreboard players set @s ct.VEHICLE.TakeoffSpeed 350
scoreboard players set @s ct.VEHICLE.MinSpeed -100

scoreboard players set @s ct.VEHICLE.Acceleration 10
scoreboard players set @s ct.VEHICLE.Brake 8
scoreboard players set @s ct.VEHICLE.Friction 1
scoreboard players set @s ct.VEHICLE.CameraDist.X 0
scoreboard players set @s ct.VEHICLE.CameraDist.Y 2400
scoreboard players set @s ct.VEHICLE.CameraDist.Z -10500
scoreboard players set @s ct.VEHICLE.CameraDistSprint.X 0
scoreboard players set @s ct.VEHICLE.CameraDistSprint.Y 2400
scoreboard players set @s ct.VEHICLE.CameraDistSprint.Z -5000
scoreboard players set @s ct.VEHICLE.TurnFactor 4000
scoreboard players set @s ct.VEHICLE.AerodynamicFactor 4000
scoreboard players set @s ct.VEHICLE.Upforce 5000
scoreboard players set @s ct.VEHICLE.PitchMin 40000
scoreboard players set @s ct.VEHICLE.PitchMax -40000

scoreboard players set @s ct.VEHICLE.InitiateFirstRollDelay 60

# // Reset Speed if non zero
scoreboard players reset @s ct.VEHICLE.Speed

attribute @n[tag=ct.NEW, tag=ct.VEHICLE, tag=ct.PLANE] step_height base set 2
