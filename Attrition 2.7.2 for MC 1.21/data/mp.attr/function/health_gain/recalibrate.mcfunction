#changes health gain chance
$execute if predicate mp.attr:health_gain_chance_change_chance run scoreboard players operation @s mp.attr.gain_int $(operation_1) $mp.attr.fakeplayer mp.attr.gain_pct

#enforces upper and lower bounds of health gain chance
$execute if score @s mp.attr.gain_int matches $(bound) run scoreboard players operation @s mp.attr.gain_int $(operation_2) $mp.attr.fakeplayer mp.attr.gain_pct

#special instructions (continue to health gain if successful, or revert health score if unsuccessful)
$$(special)