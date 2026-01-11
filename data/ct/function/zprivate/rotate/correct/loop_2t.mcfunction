tag @a[tag=!ct.PLAYER.CorrectRotation.Valid, tag=ct.PLAYER.CorrectRotation] remove ct.PLAYER.CorrectRotation
execute as @a at @s run function ct:zprivate/rotate/correct/ang_vel_check
schedule function ct:zprivate/rotate/correct/loop_2t 2t replace