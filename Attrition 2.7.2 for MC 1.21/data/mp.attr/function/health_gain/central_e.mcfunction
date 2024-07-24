#sets up base health change
execute store result storage mp.attr:health_gain health_score int 1 run scoreboard players get @s mp.attr.score
execute as @s run function mp.attr:health_gain/execute with storage mp.attr:health_gain