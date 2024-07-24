#reverts health score
execute as @s run scoreboard players operation @s mp.attr.score -= $mp.attr.fakeplayer mp.attr.gain_inc

#prevents Contrition health gain flavor texts from displaying
tag @s remove mp.cntr.custom_text

#initiates fixed text display
execute as @s run tellraw @s[tag=!mp.attr.fixed_off] [{"selector":"@s"},{"text":", you cannot increase your maximum health any further!"}]

#initiates flavor text display
execute as @s run function mp.attr:internals/flavor_text {range:"1..3",color:"#FAD25A",text_1:"The gods cannot allow any one being to become stronger than this.",text_2:"It's giving caviar for breakfast on a Tuesday for me. . .",text_3:"The law of diminishing marginal utility strikes again!",text_4:"null",text_5:"null"}

#plays sounds for not gaining health
execute at @s[tag=!mp.attr.sounds_off] run playsound minecraft:block.chorus_flower.death neutral @s ~ ~ ~ 10