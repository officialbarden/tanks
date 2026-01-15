execute as @s store success entity @s OnGround byte 1 run data modify entity @s OnGround set value 1b
#tellraw @a {"nbt":"OnGround", entity:"@s"}
