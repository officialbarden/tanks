execute as @e[type=mannequin, tag=ct.VEHICLE] at @s run function ct:zprivate/pos/init
execute as @e[type=mannequin, tag=ct.VEHICLE] at @s run function ct:zprivate/sounds/init

schedule function ct:global/loop_5t 6t replace