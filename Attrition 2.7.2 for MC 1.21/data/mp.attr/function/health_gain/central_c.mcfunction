#skips directly to health gain if triggered by outside sources, like those from Contrition
execute if score $mp.attr.fakeplayer mp.attr.gain_int matches 21.. run function mp.attr:health_gain/central_e

#otherwise, continues to see if enchanted golden apple will trigger health gain or not
execute if score $mp.attr.fakeplayer mp.attr.gain_int matches ..20 run function mp.attr:health_gain/central_d