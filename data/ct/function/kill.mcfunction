scoreboard players operation #ID ct.ID = @s ct.ID
scoreboard players operation #ID tpc.id = @s tpc.id
kill @e[predicate=ct:id,type=!player]
kill @e[predicate=tpc:id/common,type=!player]
tag @s remove tpc.controller
effect clear @s


# reset attributes
attribute @s block_interaction_range base reset
attribute @s attack_damage base reset
