particle explosion_emitter ~ ~ ~ 0.3 0.3 0.3 2 2 normal @a
particle minecraft:smoke ~ ~ ~ 1 1 1 0 300 normal @a
playsound ct:sfx.plane.explosion master @a[distance=..40] ~ ~ ~ 1.4 0.9

execute rotated ~10 0 run function ct:zprivate/particle/init {velocity: 1, gravity: 0.08, particle:"minecraft:campfire_cosy_smoke", speed:0, volume:0, count:10, sound:{}}
execute rotated ~47 -10 run function ct:zprivate/particle/init {velocity: 3.1, gravity: 0.48, particle:"minecraft:campfire_cosy_smoke", speed:0, volume:0, count:10, sound:{}}
execute rotated ~172 0 run function ct:zprivate/particle/init {velocity: 1.7, gravity: 0.23, particle:"minecraft:campfire_cosy_smoke", speed:0, volume:0, count:10, sound:{}}
execute rotated ~152 -30 run function ct:zprivate/particle/init {velocity: 1.2,gravity: 0.38, particle:"minecraft:campfire_cosy_smoke", speed:0, volume:0, count:10, sound:{}}

execute rotated ~-10 -10 run function ct:zprivate/particle/init {velocity: 1.3, gravity: 0.18, particle:"minecraft:campfire_cosy_smoke", speed:0, volume:0, count:10, sound:{}}
execute rotated ~-32 -40 run function ct:zprivate/particle/init {velocity: 2.1, gravity: 0.38, particle:"minecraft:campfire_cosy_smoke", speed:0, volume:0, count:10, sound:{}}
execute rotated ~-122 0 run function ct:zprivate/particle/init {velocity: 1.2, gravity: 0.48, particle:"minecraft:campfire_cosy_smoke", speed:0, volume:0, count:10, sound:{}}
execute rotated ~-142 0 run function ct:zprivate/particle/init {velocity: 1.3, gravity: 0.28, particle:"minecraft:campfire_cosy_smoke", speed:0, volume:0, count:10, sound:{}}
execute rotated ~-122 -20 run function ct:zprivate/particle/init {velocity: 1.2, gravity: 0.08, particle:"minecraft:campfire_cosy_smoke", speed:0, volume:0, count:10, sound:{}}
