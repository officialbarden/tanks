scoreboard players operation #ID ct.ID = @s ct.ID

#execute anchored eyes rotated as @n[tag=ct.VEHICLE, predicate=ct:id, type=mannequin] positioned ^ ^ ^5 rotated as @s positioned ^ ^ ^60 facing entity @s eyes facing ^ ^ ^-1 positioned as @s on vehicle run rotate @s ~ ~
execute anchored eyes rotated as @n[tag=ct.VEHICLE, predicate=ct:id, type=mannequin] positioned ^ ^ ^5 rotated as @s positioned ^ ^ ^60 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run rotate @s[tag=!camera.unlock] ~ ~
