#sets up initial value of mp.attr.score
execute store result score @s mp.attr.score run attribute @s minecraft:generic.max_health get

#sets up initial value of mp.attr.gain_int
scoreboard players set @s mp.attr.gain_int 20

#allows the player to update their preferences
scoreboard players enable @s mp.attr.fixdtext
scoreboard players enable @s mp.attr.flavtext
scoreboard players enable @s mp.attr.sounds

#allows for health loss check
scoreboard players set @s[tag=!mp.attr.exclude_player] mp.attr.known 1