#resets all players' base health, then removes all scoreboards and tags
execute as @a run function mp.attr:options/reset_player

scoreboard objectives remove mp.attr.score
scoreboard objectives remove mp.attr.death
scoreboard objectives remove mp.attr.known
scoreboard objectives remove mp.attr.toggle

scoreboard objectives remove mp.attr.fixdtext
scoreboard objectives remove mp.attr.flavtext
scoreboard objectives remove mp.attr.sounds

scoreboard objectives remove mp.attr.recoup
scoreboard objectives remove mp.attr.blind
scoreboard objectives remove mp.attr.perma

scoreboard objectives remove mp.attr.gain_int
scoreboard objectives remove mp.attr.gain_pct

scoreboard objectives remove mp.attr.cap
scoreboard objectives remove mp.attr.floor

scoreboard objectives remove mp.attr.gain_inc
scoreboard objectives remove mp.attr.loss_inc

execute as @a run tag @s remove mp.attr.flavor_off
execute as @a run tag @s remove mp.attr.fixed_off
execute as @a run tag @s remove mp.attr.sounds_off

execute as @a run tag @s remove mp.attr.spirit
execute as @a run tag @s remove mp.attr.exclude_player

advancement revoke @a only mp.attr:initialization

#disables the data pack
datapack disable "file/Attrition 2.7.2 for MC 1.21"
datapack disable "file/attrition-2-7-2-for-mc-1-21"

#displays confirmation message
execute as @s run tellraw @a {"text":"The Attrition data pack has been disabled, and all associated scoreboards and tags have been removed.","color":"#D6D6D6","italic":true}