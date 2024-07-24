#adds the scoreboards that are the foundation for the data pack
scoreboard objectives add mp.attr.known dummy "Recognized"
scoreboard objectives add mp.attr.score dummy "Health score"
scoreboard objectives add mp.attr.death minecraft.custom:minecraft.time_since_death "Time since last death"
scoreboard objectives add mp.attr.toggle dummy "Toggle"

#adds the scoreboards that are used for personal preferences
scoreboard objectives add mp.attr.fixdtext trigger "Fixed text"
scoreboard objectives add mp.attr.flavtext trigger "Flavor text"
scoreboard objectives add mp.attr.sounds trigger "Event sounds"

#adds the scoreboards that are used for global settings
scoreboard objectives add mp.attr.recoup dummy "Health recoup"
scoreboard objectives add mp.attr.perma dummy "Permadeath"
scoreboard objectives add mp.attr.blind dummy "Divine wrath"

#adds the scoreboards that are used for advanced options
scoreboard objectives add mp.attr.cap dummy "Health cap"
scoreboard objectives add mp.attr.floor dummy "Health floor"
scoreboard objectives add mp.attr.gain_inc dummy "Health gain increment"
scoreboard objectives add mp.attr.loss_inc dummy "Health loss increment"
scoreboard objectives add mp.attr.gain_int dummy "Health gain chance"
scoreboard objectives add mp.attr.gain_pct dummy "Health gain chance increment"

#triggers initial settings for the data pack's fake player
execute unless score $mp.attr.fakeplayer mp.attr.known matches 1 run function mp.attr:options/default_settings

#starts the schedule loop that checks for preference updates
schedule function mp.attr:internals/loop 20t replace