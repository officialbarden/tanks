# // Toggle Landing Gear
function ct:zprivate/vehicle_specific/plane/landing_gear/init
# // Rotate Propeller
execute as @n[tag=ct.PLANE, tag=ct.BASE, predicate=ct:id, type=item_display, tag=ct.PROPELLER] at @s run function ct:zprivate/vehicle_specific/plane/propeller/init

