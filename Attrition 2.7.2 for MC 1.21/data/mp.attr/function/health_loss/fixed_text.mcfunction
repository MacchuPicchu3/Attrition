#define fixed text excerpts
data modify storage mp.attr:broadcast health_loss set value ['[{"text":"a "}]','[{"text":"amount "}]','[{"text":""}]']

execute if score @s mp.attr.score <= $mp.attr.fakeplayer mp.attr.loss_inc run data modify storage mp.attr:broadcast health_loss[0] set value '[{"text":"their penultimate "}]'
execute if score $mp.attr.fakeplayer mp.attr.loss_inc matches 3.. run data modify storage mp.attr:broadcast health_loss[0] set value '[{"text":"an "}]'
execute as @s[tag=mp.attr.spirit] run data modify storage mp.attr:broadcast health_loss[0] set value '[{"text":"their final "}]'

execute if score $mp.attr.fakeplayer mp.attr.loss_inc matches 1 run data modify storage mp.attr:broadcast health_loss[1] set value '[{"text":"half-heart "}]'
execute if score $mp.attr.fakeplayer mp.attr.loss_inc matches 2 run data modify storage mp.attr:broadcast health_loss[1] set value '[{"text":"heart "}]'

execute as @s[tag=mp.attr.spirit] run data modify storage mp.attr:broadcast health_loss[2] set value '[{"text":" Their time here has come to a close."}]'

#broadcast fixed text
tellraw @a[tag=!mp.attr.fixed_off] [{"selector":"@s"},{"text":" has surrendered "},{"storage":"mp.attr:broadcast","nbt":"health_loss[0]","interpret":true},{"storage":"mp.attr:broadcast","nbt":"health_loss[1]","interpret":true},{"text":"of maximum health!"},{"storage":"mp.attr:broadcast","nbt":"health_loss[2]","interpret":true}]