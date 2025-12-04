
say color

function customizableitemname:item/initialize

execute unless data entity @s SelectedItem.components."minecraft:custom_data".customizableitemname{initialized:true} run return 0
data modify storage customizableitemname:data new_item_name set from entity @s SelectedItem.components."minecraft:custom_name"

execute if score @s change_item_name matches -1 run data modify storage customizableitemname:data new_item_name.color set value "black"
execute if score @s change_item_name matches -2 run data modify storage customizableitemname:data new_item_name.color set value "dark_blue"
execute if score @s change_item_name matches -3 run data modify storage customizableitemname:data new_item_name.color set value "dark_green"
execute if score @s change_item_name matches -4 run data modify storage customizableitemname:data new_item_name.color set value "dark_aqua"
execute if score @s change_item_name matches -5 run data modify storage customizableitemname:data new_item_name.color set value "dark_red"
execute if score @s change_item_name matches -6 run data modify storage customizableitemname:data new_item_name.color set value "dark_purple"
execute if score @s change_item_name matches -7 run data modify storage customizableitemname:data new_item_name.color set value "gold"
execute if score @s change_item_name matches -8 run data modify storage customizableitemname:data new_item_name.color set value "gray"
execute if score @s change_item_name matches -9 run data modify storage customizableitemname:data new_item_name.color set value "dark_gray"
execute if score @s change_item_name matches -10 run data modify storage customizableitemname:data new_item_name.color set value "blue"
execute if score @s change_item_name matches -11 run data modify storage customizableitemname:data new_item_name.color set value "green"
execute if score @s change_item_name matches -12 run data modify storage customizableitemname:data new_item_name.color set value "aqua"
execute if score @s change_item_name matches -13 run data modify storage customizableitemname:data new_item_name.color set value "red"
execute if score @s change_item_name matches -14 run data modify storage customizableitemname:data new_item_name.color set value "light_purple"
execute if score @s change_item_name matches -15 run data modify storage customizableitemname:data new_item_name.color set value "yellow"
execute if score @s change_item_name matches -16 run data modify storage customizableitemname:data new_item_name.color set value "white"

execute at @s run function customizableitemname:item/set_item_name

