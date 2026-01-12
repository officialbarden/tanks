# Test Command:
# /function ct:summon/plane {VARIANT: 1}
$summon item_display ~ ~ ~ {Tags:[ct.NEW, ct.PLANE, ct.BASE, ct.COMPONENTS], item:{id:"dirt", components:{"minecraft:item_model":"ct:planes/$(VARIANT)/landing_gear"}}}
$summon item_display ~ ~ ~ {Tags:[ct.NEW, ct.PLANE, ct.BASE, ct.PROPELLER, ct.COMPONENTS], item:{id:"dirt", components:{"minecraft:item_model":"ct:planes/$(VARIANT)/fan"}}}

$scoreboard players set @s ct.VEHICLE.Variant $(VARIANT)

execute as @e[tag=ct.NEW,tag=ct.PLANE,type=item_display] run data modify entity @s transformation.scale set value [10.0f, 10.0f, 10.0f]
execute as @e[tag=ct.NEW,tag=ct.PLANE,type=item_display] run data modify entity @s teleport_duration set value 2

function tpc:summon {entity: "mannequin"}
tag @n[tag=tpc.controlled,tag=tpc.entity,type=mannequin] add ct.NEW
tag @n[tag=tpc.controlled,tag=tpc.entity,type=mannequin] add ct.VEHICLE
tag @n[tag=tpc.controlled,tag=tpc.entity,type=mannequin] add ct.PLANE
$tag @n[tag=tpc.controlled,tag=tpc.entity,type=mannequin] add ct.PLANE.VARIANT.$(VARIANT)
data modify entity @n[tag=tpc.controlled,tag=tpc.entity,type=mannequin] Invulnerable set value true
data modify entity @n[tag=tpc.controlled,tag=tpc.entity,type=mannequin] Silent set value true
effect give @n[tag=ct.NEW,type=mannequin] invisibility infinite 1 true
attribute @n[tag=ct.NEW, type=mannequin] scale base set 0.9

# // Markers for Smooth Rotation
execute positioned 0.0 0.0 0.0 run summon item_display ~ ~ ~ {Tags:[ct.NEW, ct.SMOOTH_ROTATION.MARKER, ct.BODY]}
data modify entity @n[tag=ct.NEW, tag=ct.SMOOTH_ROTATION.MARKER, tag=ct.BODY, type=item_display] teleport_duration set value 2

# // Build the Tank
execute as @e[tag=ct.PLANE,tag=ct.NEW,type=item_display] at @s run ride @s mount @n[tag=ct.NEW, tag=ct.VEHICLE,type=mannequin]

# // ID Logging
scoreboard players operation @e[tag=ct.NEW] ct.ID = .global ct.ID
scoreboard players operation @s ct.ID = .global ct.ID
scoreboard players add .global ct.ID 1
tag @e remove ct.NEW


# // Initialize Values:
scoreboard players set @s ct.VEHICLE.MaxSpeed 1000
scoreboard players set @s ct.VEHICLE.TakeoffSpeed 500
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
scoreboard players set @s ct.VEHICLE.TurnFactor 1000
scoreboard players set @s ct.VEHICLE.AerodynamicFactor 4000
scoreboard players set @s ct.VEHICLE.Upforce 5000
scoreboard players set @s ct.VEHICLE.PitchMax 40000
scoreboard players set @s ct.VEHICLE.PitchMax -40000

# // Reset Speed if non zero
scoreboard players reset @s ct.VEHICLE.Speed
