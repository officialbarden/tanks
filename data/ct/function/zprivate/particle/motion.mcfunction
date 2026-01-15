data modify entity @s Motion set from storage ct:storage TEMP.PARTICLE.MOTION

attribute @s scale base set 0
$attribute @s gravity base set $(gravity)
$data modify entity @s data set value {particle: "$(particle)", speed: $(speed), volume: $(volume), count:$(count), sound:$(sound)}

data modify entity @s data.velocity_vector.X set from storage ct:storage TEMP.PARTICLE.MOTION[0]
data modify entity @s data.velocity_vector.Y set from storage ct:storage TEMP.PARTICLE.MOTION[1]
data modify entity @s data.velocity_vector.Z set from storage ct:storage TEMP.PARTICLE.MOTION[2]

tag @s add ct.PARTICLE.Moving