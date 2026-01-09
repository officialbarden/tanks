# Test Command:
# /function ct:summon/tank {WHEELS: 1, BASE: 1, CANNON: 1, MACHINE_GUN: 1}


# Variant ID Macros:
# $(WHEELS), $(BASE), $(CANNON), $(MACHINE_GUN)
# Different ID for Different Wheel, Base, Cannon, Machine Guns etc.

# // Summon Components
$summon item_display ~ ~ ~ {Tags:[ct.NEW, ct.COMPONENTS, ct.WHEELS], item:{id:"dirt", components:{"minecraft:item_model":"ct:tanks/$(WHEELS)/wheels"}}}
$summon item_display ~ ~ ~ {Tags:[ct.NEW, ct.COMPONENTS, ct.BASE], item:{id:"dirt", components:{"minecraft:item_model":"ct:tanks/$(WHEELS)/base"}}}
$summon item_display ~ ~ ~ {Tags:[ct.NEW, ct.COMPONENTS, ct.CANNON, ct.FOLLOW_PLAYER], item:{id:"dirt", components:{"minecraft:item_model":"ct:tanks/$(WHEELS)/cannon"}}}
$summon item_display ~ ~ ~ {Tags:[ct.NEW, ct.COMPONENTS, ct.MACHINE_GUN, ct.FOLLOW_PLAYER], item:{id:"dirt", components:{"minecraft:item_model":"ct:tanks/$(WHEELS)/machine_gun"}}}
execute as @e[tag=ct.NEW, type=item_display] run data modify entity @s teleport_duration set value 2

#summon marker ~ ~ ~ {Tags:[ct.NEW, ct.MARKER, ct.LEFT_WHEELS]}
#summon marker ~ ~ ~ {Tags:[ct.NEW, ct.MARKER, ct.RIGHT_WHEELS]}
# // Set Scale of Tank
execute as @e[tag=ct.NEW,tag=ct.COMPONENTS,type=item_display] run data modify entity @s transformation.scale set value [10.0f, 10.0f, 10.0f]


# // Tank Base Entity (Entity that actually helps Tanks Move)
#summon mannequin ~ ~ ~ {Tags:["ct.NEW", "ct.VEHICLE"], active_effects:[{id:"invisibility", duration:-1, show_particles: false}], attributes:[{id:"scale", base: 2.78}]}
function tpc:summon {entity: "mannequin"}
tag @n[tag=tpc.controlled,tag=tpc.entity,type=mannequin] add ct.NEW
tag @n[tag=tpc.controlled,tag=tpc.entity,type=mannequin] add ct.VEHICLE
effect give @n[tag=ct.NEW,type=mannequin] invisibility infinite 1 true
attribute @n[tag=ct.NEW, type=mannequin] scale base set 2.78

# // Markers for Smooth Rotation
function ct:zprivate/smooth_rotation/create_markers

# // Build the Tank
execute as @e[tag=ct.COMPONENTS,tag=ct.NEW,type=item_display] at @s run ride @s mount @n[tag=ct.NEW, tag=ct.VEHICLE,type=mannequin]


# // ID Logging
scoreboard players operation @e[tag=ct.NEW] ct.ID = .global ct.ID
scoreboard players operation @s ct.ID = .global ct.ID
scoreboard players add .global ct.ID 1
tag @e remove ct.NEW
