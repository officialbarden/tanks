execute as @a at @s run function #ct:as_player
execute as @e[tag=ct.VEHICLE, type=mannequin] at @s run function #ct:as_vehicle

# // Precisely Smooth Rotation
execute as @e[tag=ct.SMOOTH_ROTATION.MARKER, type=#ct:marker] at @s run function ct:zprivate/air_toggling/init

# // Enable Sitting on Vehicle.
execute as @e[tag=ct.SEAT, type=interaction] at @s run function ct:zprivate/sit/init
