#returns player to survival mode
tag @s remove mp.attr.spirit
gamemode survival @s

#restores base health and health score
attribute @s minecraft:generic.max_health base set 20
scoreboard players set @s mp.attr.score 20
scoreboard players set @s mp.attr.gain_int 20

#updates health visually
effect clear @s minecraft:blindness

#displays confirmation message
execute as @s run title @s actionbar [{"text":"[Attrition] ","color":"#5555FF"},{"text":"Your base health has been reset to its default value!","color":"#D6D6D6"}]