function ct:zprivate/smooth_rotation/roll/restore/dir_get
execute store result storage ct:storage TEMP.MACRO.ROLL_RESTORE.VALUE float 1 run scoreboard players get @s ct.VEHICLE.Roll
function ct:zprivate/smooth_rotation/roll/init with storage ct:storage TEMP.MACRO.ROLL_RESTORE
data remove storage ct:storage TEMP.MACRO.ROLL_RESTORE