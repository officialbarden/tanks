execute unless data entity @s interaction run return fail
execute on passengers if entity @s on target run return run title @s actionbar "Someone is Already Sitting Here.."
execute on target run ride @s mount @n[tag=ct.SEAT, type=interaction]
data remove entity @s interaction
