#puts player into spectator mode
gamemode spectator @s

#enforces blindness, if applicable
execute if score $mp.attr.fakeplayer mp.attr.blind matches 1 run effect give @s minecraft:blindness infinite

#removes blindness, if applicable
execute if score $mp.attr.fakeplayer mp.attr.blind matches 0 run effect clear @s minecraft:blindness