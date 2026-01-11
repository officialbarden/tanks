# // 5 seconds timer:
tag @a[tag=ct.PLAYER.CorrectRotation.Valid] add ct.PLAYER.CorrectRotation
schedule function ct:zprivate/rotate/correct/loop_5s 5s replace
