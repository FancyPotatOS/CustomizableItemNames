
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,NoGravity:1b,Tags:["customizableitemname.item.armor_stand"]}

item replace entity @e[type=minecraft:armor_stand,tag=customizableitemname.item.armor_stand,limit=1,sort=nearest] weapon.mainhand from entity @s weapon.mainhand

data modify entity @e[type=minecraft:armor_stand,tag=customizableitemname.item.armor_stand,limit=1,sort=nearest] equipment.mainhand.components."minecraft:custom_name" set from storage customizableitemname:data new_item_name

item replace entity @s weapon.mainhand from entity @e[type=minecraft:armor_stand,tag=customizableitemname.item.armor_stand,limit=1,sort=nearest] weapon.mainhand

tp @e[type=minecraft:armor_stand,tag=customizableitemname.item.armor_stand,limit=1,sort=nearest] ~ -64 ~
kill @e[type=minecraft:armor_stand,tag=customizableitemname.item.armor_stand,limit=1,sort=nearest]
