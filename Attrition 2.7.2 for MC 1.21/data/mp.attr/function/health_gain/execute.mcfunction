#sets adjusted base health
$execute as @s run attribute @s minecraft:generic.max_health base set $(health_score)

#initiates fixed text display
function mp.attr:health_gain/fixed_text

#initiates flavor text display
execute as @s[tag=!mp.cntr.custom_text] if score @s mp.attr.score matches 2..12 run function mp.attr:internals/flavor_text {range:"1..5",color:"#3F5A36",text_1:"An apple a day keeps the impending specter of assured demise at bay.",text_2:"It’s at times like these that we appreciate the fruits of our hard work the most.",text_3:"Crisis averted! - for the time being, at least. . .",text_4:"You have been granted an extra life - go celebrate by jumping into a skeleton mosh pit!",text_5:"As the gods smile upon your courageous exploits, you feel revitalized."}
execute as @s[tag=!mp.cntr.custom_text] if score @s mp.attr.score matches 13..30 run function mp.attr:internals/flavor_text {range:"1..5",color:"#30A02D",text_1:"Eve lost everything by eating a luscious, glowing pome such as that one, but for the same folly your health is renewed?",text_2:"If you’ll forgive the cliché, that last bite was truly the apple of your health bar’s eye. . .",text_3:"Upon further review of your most recent repast, the gods have decided to kick your health up a Notch.",text_4:"Nutritionists are calling it the most balanced breakfast the world has ever seen.",text_5:"As the gods smile upon your courageous exploits, you feel revitalized."}
execute as @s[tag=!mp.cntr.custom_text] if score @s mp.attr.score matches 31.. run function mp.attr:internals/flavor_text {range:"1..5",color:"#22E524",text_1:"For similar results, you could’ve just turned that one into a Mojang banner pattern.",text_2:"Achievement unlocked: Absorption Heart Addict",text_3:"The gods think you’re being a bit of a show-off by this point; however, a deal is a deal.",text_4:"They say fortune favors the bold, but this is starting to get out of hand.",text_5:"As the gods smile upon your courageous exploits, you feel revitalized."}

#plays sounds for gaining health
execute at @s[tag=!mp.attr.sounds_off] run playsound minecraft:block.chorus_flower.grow neutral @s ~ ~ ~ 10