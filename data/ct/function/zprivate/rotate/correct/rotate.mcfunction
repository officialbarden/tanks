scoreboard players operation #ID ct.ID = @s ct.ID

execute as @n[type=item_display,predicate=tpc:id/common] anchored eyes rotated as @n[tag=ct.VEHICLE, predicate=ct:id, type=mannequin] positioned ^ ^ ^5 rotated as @s positioned ^ ^ ^40 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run rotate @s ~ ~
#spectate @n[tag=tpc.camera,type=item_display] @s
#execute anchored eyes rotated as @n[tag=ct.VEHICLE, predicate=ct:id, type=mannequin] positioned ^ ^ ^5 rotated as @s positioned ^ ^ ^60 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run rotate @s[tag=!camera.unlock] ~ ~
