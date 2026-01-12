playsound ct:sfx.accelerate.continuous master @a ~ ~ ~ 1 0.8
execute as @s[tag=!ct.Reversing] run stopsound @p[distance=..10] master ct:sfx.accelerate.jump_start
execute as @s[tag=!ct.Reversing] run playsound ct:sfx.accelerate.jump_start master @a ~ ~ ~ 0.2 0.2
tag @s add ct.Reversing
