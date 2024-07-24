#marks success or failure of health gain, using mp.attr.gain_pct as a placeholder
scoreboard players set @s mp.attr.gain_pct 0
execute if score @s mp.attr.gain_int >= $mp.attr.fakeplayer mp.attr.gain_int run scoreboard players set @s mp.attr.gain_pct 1

#continues with health gain if successful
execute if score @s mp.attr.gain_pct matches 1 run function mp.attr:health_gain/recalibrate {operation_1:"-=",bound:"..0",operation_2:"+=",special:"execute as @s run function mp.attr:health_gain/central_e"}

#terminates process if unsuccessful
execute if score @s mp.attr.gain_pct matches 0 run function mp.attr:health_gain/recalibrate {operation_1:"+=",bound:"20..",operation_2:"-=",special:"execute as @s run scoreboard players operation @s mp.attr.score -= $mp.attr.fakeplayer mp.attr.gain_inc"}

#initiates flavor text display if unsuccessful
execute as @s run execute if score @s mp.attr.gain_pct matches 0 run function mp.attr:internals/flavor_text {range:"1..3",color:"#FAD25A",text_1:"The gods are unimpressed by your strivings. . . don't take it personally, though",text_2:"You didn't need that one anyway, right? . . . right?",text_3:"On the bright side - the next enchanted golden apple is more likely to succeed than this one was!",text_4:"null",text_5:"null"}