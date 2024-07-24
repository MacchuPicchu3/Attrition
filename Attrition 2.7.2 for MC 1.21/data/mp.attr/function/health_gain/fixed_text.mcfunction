#define fixed text excerpts
data modify storage mp.attr:broadcast health_gain set value ['[{"text":"a "}]','[{"text":"amount "}]']

execute if score @s mp.attr.score = $mp.attr.fakeplayer mp.attr.cap run data modify storage mp.attr:broadcast health_gain[0] set value '[{"text":"their final "}]'
execute if score $mp.attr.fakeplayer mp.attr.gain_inc matches 3.. run data modify storage mp.attr:broadcast health_gain[0] set value '[{"text":"an "}]'

execute if score $mp.attr.fakeplayer mp.attr.gain_inc matches 1 run data modify storage mp.attr:broadcast health_gain[1] set value '[{"text":"half-heart "}]'
execute if score $mp.attr.fakeplayer mp.attr.gain_inc matches 2 run data modify storage mp.attr:broadcast health_gain[1] set value '[{"text":"heart "}]'

#broadcast fixed text
tellraw @a[tag=!mp.attr.fixed_off] [{"selector":"@s"},{"text":" has gained "},{"storage":"mp.attr:broadcast","nbt":"health_gain[0]","interpret":true},{"storage":"mp.attr:broadcast","nbt":"health_gain[1]","interpret":true},{"text":"of maximum health!"}]