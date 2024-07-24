#queries randomizer command
$execute store result score $mp.attr.fakeplayer mp.attr.score run random value $(range)

#initiates flavor text display
$execute if score $mp.attr.fakeplayer mp.attr.score matches 1 run tellraw @s[tag=!mp.attr.flavor_off] [{"text":"$(text_1)","color":"$(color)","italic":true}]
$execute if score $mp.attr.fakeplayer mp.attr.score matches 2 run tellraw @s[tag=!mp.attr.flavor_off] [{"text":"$(text_2)","color":"$(color)","italic":true}]
$execute if score $mp.attr.fakeplayer mp.attr.score matches 3 run tellraw @s[tag=!mp.attr.flavor_off] [{"text":"$(text_3)","color":"$(color)","italic":true}]
$execute if score $mp.attr.fakeplayer mp.attr.score matches 4 run tellraw @s[tag=!mp.attr.flavor_off] [{"text":"$(text_4)","color":"$(color)","italic":true}]
$execute if score $mp.attr.fakeplayer mp.attr.score matches 5 run tellraw @s[tag=!mp.attr.flavor_off] [{"text":"$(text_5)","color":"$(color)","italic":true}]