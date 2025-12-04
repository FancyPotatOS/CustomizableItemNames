

execute if data storage customizableitemname:data {initialized:true} run return 0

data modify storage customizableitemname:data initialized set value true

scoreboard objectives add change_item_name trigger
