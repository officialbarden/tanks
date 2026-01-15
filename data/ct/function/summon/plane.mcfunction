# Test Command:
# /function ct:summon/plane {VARIANT: 1}
$summon item_display ~ ~ ~ {Tags:[ct.NEW, ct.PLANE, ct.BASE, ct.COMPONENTS], item:{id:"dirt", components:{"minecraft:item_model":"ct:planes/$(VARIANT)/landing_gear"}}}
summon interaction ~ ~ ~ {Tags:[ct.NEW, ct.PLANE, ct.BASE, ct.COMPONENTS, ct.PLANE.HITBOX], height: 1f, width: 4f}
$summon item_display ~ ~ ~ {Tags:[ct.NEW, ct.PLANE, ct.BASE, ct.PROPELLER, ct.COMPONENTS], item:{id:"dirt", components:{"minecraft:item_model":"ct:planes/$(VARIANT)/fan"}}}

# // STORE Variant as Data in scoreboard
$scoreboard players set @s ct.VEHICLE.Variant $(VARIANT)

# // Beautify the Thang
execute as @e[tag=ct.NEW,tag=ct.PLANE,type=item_display] run data modify entity @s transformation.scale set value [10.0f, 10.0f, 10.0f]
execute as @e[tag=ct.NEW,tag=ct.PLANE,type=item_display] run data modify entity @s teleport_duration set value 2

# // Summon Vehicle Entity
function tpc:summon {entity: "mannequin"}
tag @n[tag=tpc.controlled,tag=tpc.entity,type=mannequin] add ct.NEW
tag @n[tag=tpc.controlled,tag=tpc.entity,type=mannequin] add ct.VEHICLE
tag @n[tag=tpc.controlled,tag=tpc.entity,type=mannequin] add ct.PLANE
execute rotated as @s run rotate @n[tag=ct.PLANE, tag=ct.NEW, tag=ct.VEHICLE] ~ ~
$tag @n[tag=tpc.controlled,tag=tpc.entity,type=mannequin] add ct.PLANE.VARIANT.$(VARIANT)
data modify entity @n[tag=tpc.controlled,tag=tpc.entity,type=mannequin] Invulnerable set value true
data modify entity @n[tag=tpc.controlled,tag=tpc.entity,type=mannequin] Silent set value true
effect give @n[tag=ct.NEW,type=mannequin] invisibility infinite 1 true
attribute @n[tag=ct.NEW, type=mannequin] scale base set 0.9

# // Markers for Smooth Rotation
execute positioned 0.0 0.0 0.0 run summon marker ~ ~ ~ {Tags:[ct.NEW, ct.SMOOTH_ROTATION.MARKER, ct.BODY]}

# // Build the Tank
execute as @e[tag=ct.PLANE,tag=ct.NEW] at @s run ride @s mount @n[tag=ct.NEW, tag=ct.VEHICLE,type=mannequin]

# // Apply Variant Specific Configurations
$function ct:zprivate/vehicle_specific/plane/variant/$(VARIANT)/config

# // ID Logging
scoreboard players operation @e[tag=ct.NEW] ct.ID = .global ct.ID
scoreboard players operation @s ct.ID = .global ct.ID
scoreboard players add .global ct.ID 1
tag @e remove ct.NEW


# // Reset Speed if non zero
scoreboard players reset @s ct.VEHICLE.Speed
