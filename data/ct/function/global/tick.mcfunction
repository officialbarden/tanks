
# // Precisely Smooth Rotation
execute as @e[tag=ct.SMOOTH_ROTATION.MARKER, type=#ct:marker] at @s run function ct:zprivate/air_toggling/init
execute as @e[tag=tpc.camera, type=item_display] at @s run function ct:zprivate/air_toggling/init

execute as @a at @s run function #ct:as_player
execute as @e[tag=ct.VEHICLE, type=mannequin] at @s run function #ct:as_vehicle

# // Enable Sitting on Vehicle.
#execute as @e[tag=ct.SEAT, type=interaction] at @s run function ct:zprivate/sit/init

# // Particle Animations
#execute as @e[tag=ct.PARTICLE.Moving] at @s run function ct:zprivate/particle/tick with entity @s data
