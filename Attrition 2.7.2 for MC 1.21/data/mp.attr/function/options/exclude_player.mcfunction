#adds tag that excludes player
tag @s add mp.attr.exclude_player
scoreboard players set @s mp.attr.known 0

#displays confirmation message
execute as @s run title @s actionbar [{"text":"[Attrition] ","color":"#5555FF"},{"text":"You will no longer gain or lose maximum health!","color":"#D6D6D6"}]