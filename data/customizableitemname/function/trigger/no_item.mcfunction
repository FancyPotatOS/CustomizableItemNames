

tellraw @s {text:"\n\nYou must name the item before changing its styling",italic:true,bold:true,color:red}


scoreboard players reset @s change_item_name
scoreboard players enable @s change_item_name

