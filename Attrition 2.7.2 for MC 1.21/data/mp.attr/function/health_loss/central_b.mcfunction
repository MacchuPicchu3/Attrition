#adjust health score
execute as @s run scoreboard players operation @s mp.attr.score -= $mp.attr.fakeplayer mp.attr.loss_inc

#continues with health loss if conditions are met
execute if score @s mp.attr.score >= $mp.attr.fakeplayer mp.attr.floor run function mp.attr:health_loss/central_c

#ends the player's game if conditions are met
execute if score @s mp.attr.score < $mp.attr.fakeplayer mp.attr.floor run function mp.attr:health_loss/perish