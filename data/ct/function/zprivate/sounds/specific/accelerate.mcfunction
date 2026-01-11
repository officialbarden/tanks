playsound ct:sfx.accelerate.continuous master @a ~ ~ ~ 0.05 1
execute as @s[tag=!ct.Accelerating] run playsound ct:sfx.accelerate.jump_start master @a ~ ~ ~ 2 1
tag @s add ct.Accelerating
