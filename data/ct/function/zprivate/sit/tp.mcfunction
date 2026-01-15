execute unless entity @n[tag=ct.SEAT,predicate=ct:id] run return fail

execute at @s align y positioned ^-1.25 ^1.25 ^ as @n[predicate=ct:id, tag=ct.RIGHT, tag=ct.SEAT, type=interaction] run tp ~ ~ ~
execute at @s align y positioned ^1.25 ^1.25 ^ as @n[predicate=ct:id, tag=ct.LEFT, tag=ct.SEAT, type=interaction] run tp ~ ~ ~