

# Safe guards against re-applying
execute unless data entity @s SelectedItem.components."minecraft:custom_name" run return 0
execute if data entity @s SelectedItem.components."minecraft:custom_name".text if data entity @s SelectedItem.components."minecraft:custom_data".customizableitemname{initialized:true} run return 0

item modify entity @s weapon.mainhand customizableitemname:initialize_custom_data

data modify storage customizableitemname:data item_name set from entity @s SelectedItem.components."minecraft:custom_name"
data modify storage customizableitemname:data new_item_name set value {text:"",strikethrough:false,obfuscated:false,bold:false,italic:true,underlined:false}
data modify storage customizableitemname:data new_item_name.text set from storage customizableitemname:data item_name

execute at @s run function customizableitemname:item/set_item_name
