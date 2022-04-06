# Get Shape Util

This datapack allows you to get a shape of (almost) every block in the game.

## How to use

It's pretty easy to use, you just simply use `getshape:shapegetter` loot table wherever you want, and it will drop stone with the data. The path to the array of boxes is `tag.boxes`, and a box is formatted like this:
```
{
  min: [x, y, z]
  max: [x, y, z]
}
```
(inside those coordinates is the box, for more complicated blocks like the stair, there are more boxes)

### Quick example

If you stand on a slab then run this command
```
loot give @s loot getshape:shapegetter
```
Then check the stones data with this (assuming the stone is the first item in your inventory)
```
data get entity @s Inventory[0].tag.boxes
```
This is what you get.
```
[{max: [1.0d, 0.5d, 1.0d], min: [0.0d, 0.0d, 0.0d]}]
```

## Example function

I made an example function that checks if an entity is inside a block or not called `getshape:is_in_block`.
The result is inside a scoreboard, with the name `output` and with the objective `getshape.temp`.

## Exceptions

The reason that there are exceptions is because not all blocks have always the same shape/collision box. 
These are the blocks that have position/context specific shapes, for these blocks it will return as it would be empty.
```
[ minecraft:water, minecraft:lava, minecraft:moving_piston, minecraft:shulker_box, minecraft:white_shulker_box, minecraft:orange_shulker_box, minecraft:magenta_shulker_box,minecraft:light_blue_shulker_box, minecraft:yellow_shulker_box, minecraft:lime_shulker_box, minecraft:pink_shulker_box, minecraft:gray_shulker_box, minecraft:light_gray_shulker_box,  minecraft:cyan_shulker_box, minecraft:purple_shulker_box, minecraft:blue_shulker_box, minecraft:brown_shulker_box, minecraft:green_shulker_box, minecraft:red_shulker_box, minecraft:black_shulker_box, minecraft:bamboo, minecraft:scaffolding, minecraft:pointed_dripstone ]
```
