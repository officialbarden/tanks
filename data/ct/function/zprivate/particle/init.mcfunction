# Test Command:
# /function ct:zprivate/particle/init {velocity: 1, gravity: 0.02, particle:"minecraft:campfire_cosy_smoke", speed:0.01, volume:0, count:10, sound:{name:"minecraft:entity.breeze.idle_air", pitch:1.2, volume:1}}

# $(particle) $(speed) $(volume) $(count) $(velocity)

$execute positioned 0.0 0.0 0.0 rotated ~ ~ summon marker run function ct:zprivate/particle/get_vec {velocity: $(velocity)}
$execute anchored eyes positioned ^ ^ ^ summon armor_stand run function ct:zprivate/particle/motion {gravity: $(gravity), particle:"$(particle)", speed: $(speed), volume: $(volume), count: $(count), sound:$(sound)}
