#allows this function to be called again when appropriate
advancement revoke @s only mp.attr:health_loss

#allows normal flavor text to be displayed if previously blocked by Contrition
tag @s remove mp.cntr.custom_text

#blocks health loss from deaths under Immunity, from Contrition; deaths from players are handled elsewhere
execute unless score $mp.cntr.fakeplayer mp.attr.death matches 1 run function mp.attr:health_loss/central_b