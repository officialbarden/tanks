$execute as @s[tag=ct.LandingGearIn] run return run item replace entity @s contents with dirt[item_model="ct:planes/$(VARIANT)/no_landing_gear"]
$execute as @s[tag=!ct.LandingGearIn] run return run item replace entity @s contents with dirt[item_model="ct:planes/$(VARIANT)/landing_gear"]
