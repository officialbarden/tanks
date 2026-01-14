function ct:zprivate/id/init
kill @e[predicate=ct:id,type=!player]
kill @e[predicate=tpc:id/common,type=!player]
tag @s remove tpc.controller
effect clear @s
execute if entity @s[gamemode=spectator] run gamemode adventure @s

# reset attributes
attribute @s block_interaction_range base reset
attribute @s attack_damage base reset
