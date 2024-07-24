#checks for preference updates
execute as @a if score @s mp.attr.fixdtext matches 1.. run function mp.attr:options/toggle_individual {tag:"mp.attr.fixed_off", setting:"mp.attr.fixdtext", confirm_on:"Fixed text has been toggled ON!", confirm_off:"Fixed text has been toggled OFF!"}
execute as @a if score @s mp.attr.flavtext matches 1.. run function mp.attr:options/toggle_individual {tag:"mp.attr.flavor_off", setting:"mp.attr.flavtext", confirm_on:"Flavor text has been toggled ON!", confirm_off:"Flavor text has been toggled OFF!"}
execute as @a if score @s mp.attr.sounds matches 1.. run function mp.attr:options/toggle_individual {tag:"mp.attr.sounds_off", setting:"mp.attr.sounds", confirm_on:"Event sounds have been toggled ON!", confirm_off:"Event sounds have been toggled OFF!"}

#enforces spectator mode
execute as @a[tag=mp.attr.spirit] run function mp.attr:internals/enforce_spectator

#schedules the next check, using the fake player's scores to determine whether or not to continue 
execute if score $mp.attr.fakeplayer mp.attr.known matches 0.. run schedule function mp.attr:internals/loop 20t replace