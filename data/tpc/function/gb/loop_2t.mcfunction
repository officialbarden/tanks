execute as @a[tag=tpc.controller] at @s run function tpc:private/control/1 with storage tpc:config config.camera
schedule function tpc:gb/loop_2t 2t replace