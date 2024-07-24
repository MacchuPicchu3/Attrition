#reverts health score
execute as @s run scoreboard players operation @s mp.attr.score += $mp.attr.fakeplayer mp.attr.loss_inc

#prevents Contrition health loss flavor texts from displaying
tag @s remove mp.cntr.custom_text

#tags players who have run out of of max health 
execute if score $mp.attr.fakeplayer mp.attr.perma matches 1 run tag @s add mp.attr.spirit

#initiates fixed text display if game over
execute at @s[tag=mp.attr.spirit] run function mp.attr:health_loss/fixed_text

#initiates flavor text display if game over
execute as @s[tag=mp.attr.spirit] run function mp.attr:internals/flavor_text {value:"1..1",color:"#D6D6D6",text_1:"Only your soul remains to observe this now-intangible world. . .",text_2:"null",text_3:"null",text_4:"null",text_5:"null"}

#initiates fixed text display if game NOT over
execute at @s[tag=!mp.attr.spirit] run tellraw @s[tag=!mp.attr.fixed_off] [{"selector":"@s"},{"text":", you have been shielded from losing the last of your maximum health."}]

#initiates flavor text display if game NOT over
execute as @s[tag=!mp.attr.spirit] run function mp.attr:internals/flavor_text {value:"1..3",color:"#D4AF37",text_1:"The gods take pity on your frail soul. You live to see another day. . .",text_2:"\"When will you learn? When will you learn, that your actions have consequences!?\"",text_3:"'Mulligan!', you yell into the yawning abyss of death. . . and for some reason, it works",text_4:"null",text_5:"null"}

#plays sounds
execute at @s[tag=!mp.attr.sounds_off] run playsound minecraft:ambient.soul_sand_valley.mood neutral @s ~ ~ ~ 10