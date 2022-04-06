
## These are the blocks that have position/context specific shapes -> (these will return an empty shape)
# [ minecraft:water, minecraft:lava, minecraft:moving_piston, minecraft:shulker_box, minecraft:white_shulker_box, 
# minecraft:orange_shulker_box, minecraft:magenta_shulker_box, minecraft:light_blue_shulker_box, minecraft:yellow_shulker_box, 
# minecraft:lime_shulker_box, minecraft:pink_shulker_box, minecraft:gray_shulker_box, minecraft:light_gray_shulker_box, 
# minecraft:cyan_shulker_box, minecraft:purple_shulker_box, minecraft:blue_shulker_box, minecraft:brown_shulker_box, minecraft:green_shulker_box, 
# minecraft:red_shulker_box, minecraft:black_shulker_box, minecraft:bamboo, minecraft:scaffolding, minecraft:pointed_dripstone ]

execute store result score x getshape.temp run data get entity @s Pos[0] 100
execute store result score y getshape.temp run data get entity @s Pos[1] 100
execute store result score z getshape.temp run data get entity @s Pos[2] 100
scoreboard players operation x getshape.temp %= 100 getshape.temp
scoreboard players operation y getshape.temp %= 100 getshape.temp
scoreboard players operation z getshape.temp %= 100 getshape.temp
loot replace block 0 0 0 container.0 loot getshape:shapegetter

scoreboard players set output getshape.temp 0
execute unless data block 0 0 0 {Items:[{tag:{boxes:[]}}]} run function getshape:loop