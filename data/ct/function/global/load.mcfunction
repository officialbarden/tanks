# // Scoreboards
scoreboard objectives add ct.MATH dummy
scoreboard objectives add ct.Constants dummy
scoreboard players set .3 ct.Constants 3
scoreboard players set .5 ct.Constants 5
scoreboard players set .TicksInASecond ct.Constants 20

# // Vehicle Riding Stats (x1000):
scoreboard objectives add ct.VEHICLE.MaxSpeed dummy
scoreboard objectives add ct.VEHICLE.MinSpeed dummy
scoreboard objectives add ct.VEHICLE.Speed dummy
scoreboard objectives add ct.VEHICLE.Acceleration dummy
scoreboard objectives add ct.VEHICLE.Brake dummy
scoreboard objectives add ct.VEHICLE.Friction dummy
scoreboard objectives add ct.VEHICLE.Upforce dummy
scoreboard objectives add ct.VEHICLE.TurnFactor dummy
scoreboard objectives add ct.VEHICLE.CameraDist.X dummy
scoreboard objectives add ct.VEHICLE.CameraDist.Y dummy
scoreboard objectives add ct.VEHICLE.CameraDist.Z dummy
scoreboard objectives add ct.VEHICLE.CameraDistSprint.X dummy
scoreboard objectives add ct.VEHICLE.CameraDistSprint.Y dummy
scoreboard objectives add ct.VEHICLE.CameraDistSprint.Z dummy
scoreboard objectives add ct.VEHICLE.AerodynamicFactor dummy
scoreboard objectives add ct.VEHICLE.Pitch dummy
scoreboard objectives add ct.VEHICLE.Roll dummy
scoreboard objectives add ct.VEHICLE.PitchMin dummy
scoreboard objectives add ct.VEHICLE.PitchMax dummy
scoreboard objectives add ct.VEHICLE.TakeoffSpeed dummy

# // Other Vehicle Scoreboards
scoreboard objectives add ct.VEHICLE.Variant dummy
scoreboard objectives add ct.VEHICLE.Health dummy
scoreboard objectives add ct.VEHICLE.RotationY.Max dummy
scoreboard objectives add ct.VEHICLE.RotationY.Min dummy
scoreboard objectives add ct.VEHICLE.CannonRotation dummy
scoreboard objectives add ct.VEHICLE.POS_INIT.X dummy
scoreboard objectives add ct.VEHICLE.POS_INIT.Y dummy
scoreboard objectives add ct.VEHICLE.POS_INIT.Z dummy
scoreboard objectives add ct.VEHICLE.POS dummy
scoreboard objectives add ct.VEHICLE.PropellerRPM dummy
scoreboard objectives add ct.VEHICLE.AngularSpeed dummy


scoreboard objectives add ct.PLAYER.RotX dummy
scoreboard objectives add ct.PLAYER.RotY dummy

scoreboard objectives add ct.ID dummy
scoreboard players add .global ct.ID 1

# // Scheduled Looping Files
function ct:global/loop_5t
function ct:zprivate/sounds/tank/specific/looping/init
function ct:zprivate/rotate/correct/loop_5s
function ct:zprivate/rotate/correct/loop_2t
function ct:zprivate/sounds/plane/loop
