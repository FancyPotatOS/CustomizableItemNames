

function customizableitemname:item/initialize

execute unless data entity @s SelectedItem.components."minecraft:custom_data".customizableitemname{initialized:true} run return 0

data modify storage customizableitemname:data new_item_name set from entity @s SelectedItem.components."minecraft:custom_name"
execute if data entity @s SelectedItem.components."minecraft:custom_name"{bold:true} run data modify storage customizableitemname:data new_item_name.bold set value false
execute if data entity @s SelectedItem.components."minecraft:custom_name"{bold:false} run data modify storage customizableitemname:data new_item_name.bold set value true

execute at @s run function customizableitemname:item/set_item_name

