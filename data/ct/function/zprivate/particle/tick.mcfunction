# Macros:
# $(particle) $(speed) $(volume) $(count)

# // Kill particle when on Ground
execute if entity @s[predicate=ct:on_ground] run kill @s

# // Flying Particles
$particle $(particle) ~ ~ ~ $(volume) $(volume) $(volume) $(speed) $(count) force @a[distance=..500]

# // Persisting X and Z Motion
function ct:zprivate/particle/motion2 with entity @s data.velocity_vector

# // Play Small SFX As Particle Flies By
execute if data entity @s data.sound run function ct:zprivate/particle/sound with entity @s data.sound

