
advancement revoke @s only customizableitemname:trigger/change_item_name

execute unless items entity @s weapon.mainhand *[minecraft:custom_name] run return run function customizableitemname:trigger/no_item

execute if score @s change_item_name matches -16..-1 run function customizableitemname:trigger/color/change

execute if score @s change_item_name matches ..-17 run function customizableitemname:trigger/modify

function customizableitemname:trigger/tellraw

scoreboard players reset @s change_item_name
scoreboard players enable @s change_item_name

