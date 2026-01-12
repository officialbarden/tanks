execute as @s[tag=ct.PLAYER.CorrectRotation] at @s run function ct:zprivate/rotate/correct/rotate

# // Restore the Roll When Not Rolling:
execute as @s[predicate=!ct:input/a, predicate=!ct:input/d] at @s run function ct:zprivate/smooth_rotation/roll/restore/init
