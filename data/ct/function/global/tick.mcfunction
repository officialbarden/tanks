#execute as @e[tag=ct.VEHICLE, type=mannequin] at @s run function ct:zprivate/wheel_surface/init
execute as @e[tag=ct.VEHICLE, type=mannequin] at @s run function ct:zprivate/sit/tp
execute as @e[tag=ct.VEHICLE, type=mannequin] at @s run function #ct:as_vehicle

execute as @a[tag=tpc.controller] at @s run function ct:zprivate/rotate/correct/tick
execute as @e[tag=ct.SEAT, type=interaction] at @s run function ct:zprivate/sit/init