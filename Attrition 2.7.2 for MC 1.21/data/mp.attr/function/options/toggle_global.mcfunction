#initiates double toggle prevention
$execute if score $mp.attr.fakeplayer $(setting) matches 0 run scoreboard players set $mp.attr.fakeplayer mp.attr.toggle 1

#toggles setting on and displays confirmation message
$execute if score $mp.attr.fakeplayer mp.attr.toggle matches 1 run scoreboard players set $mp.attr.fakeplayer $(setting) 1
$execute if score $mp.attr.fakeplayer mp.attr.toggle matches 1 run tellraw @a {"text":"$(confirm_on)","color":"#D6D6D6","italic":true}

#toggles setting off and displays confirmation message
$execute unless score $mp.attr.fakeplayer mp.attr.toggle matches 1 run scoreboard players set $mp.attr.fakeplayer $(setting) 0
$execute unless score $mp.attr.fakeplayer mp.attr.toggle matches 1 run tellraw @a {"text":"$(confirm_off)","color":"#D6D6D6","italic":true}

#withdraws double toggle prevention
execute if score $mp.attr.fakeplayer mp.attr.toggle matches 1 run scoreboard players reset $mp.attr.fakeplayer mp.attr.toggle