#prevents the game from auto-reverting to default settings 
scoreboard players set $mp.attr.fakeplayer mp.attr.known 1

#sets up initial settings for the data pack's fake player
scoreboard players set $mp.attr.fakeplayer mp.attr.recoup 1
scoreboard players set $mp.attr.fakeplayer mp.attr.perma 1
scoreboard players set $mp.attr.fakeplayer mp.attr.blind 0

scoreboard players set $mp.attr.fakeplayer mp.attr.cap 40
scoreboard players set $mp.attr.fakeplayer mp.attr.floor 1

scoreboard players set $mp.attr.fakeplayer mp.attr.gain_inc 2
scoreboard players set $mp.attr.fakeplayer mp.attr.loss_inc 2
scoreboard players set $mp.attr.fakeplayer mp.attr.gain_pct 3