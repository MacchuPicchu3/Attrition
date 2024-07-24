#adjust health score
execute as @s run scoreboard players operation @s mp.attr.score += $mp.attr.fakeplayer mp.attr.gain_inc

#triggers normal health gain if conditions are met
execute if score @s mp.attr.score <= $mp.attr.fakeplayer mp.attr.cap run function mp.attr:health_gain/central_c

#blocks normal health gain if conditions are met
execute if score @s mp.attr.score > $mp.attr.fakeplayer mp.attr.cap run function mp.attr:health_gain/overflow