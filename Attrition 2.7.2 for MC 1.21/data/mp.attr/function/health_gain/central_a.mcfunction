#allows this function to be called again when appropriate
advancement revoke @s only mp.attr:health_gain

#allows normal flavor text to be displayed if previously blocked by Contrition
tag @s remove mp.cntr.custom_text

#queries randomizer command to compare player's health gain chance against
execute unless score $mp.attr.fakeplayer mp.attr.gain_int matches 0 run execute store result score $mp.attr.fakeplayer mp.attr.gain_int run random value 1..20

#prepares health gain check
execute unless score $mp.attr.fakeplayer mp.attr.recoup matches 0 run function mp.attr:health_gain/central_b