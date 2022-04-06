# Get Shape Util

This datapack allows you to get a shape of (almost) every block in the game.

## How to use

It's pretty easy to use, you just simply use `getshape:shapegetter` loot table wherever you want, and it will drop stone with the data. The path to the data is `tags.boxes` and that is an array of boxes, which is formatted like this:
```JSON
{
  min: [x, y, z]
  max: [x, y, z]
}
```
## Example function


## Exceptions
These are the blocks that have position/context specific shapes -> (these will return an empty shape)
```
[ minecraft:water, minecraft:lava, minecraft:moving_piston, minecraft:shulker_box, minecraft:white_shulker_box, minecraft:orange_shulker_box, minecraft:magenta_shulker_box,minecraft:light_blue_shulker_box, minecraft:yellow_shulker_box, minecraft:lime_shulker_box, minecraft:pink_shulker_box, minecraft:gray_shulker_box, minecraft:light_gray_shulker_box,  minecraft:cyan_shulker_box, minecraft:purple_shulker_box, minecraft:blue_shulker_box, minecraft:brown_shulker_box, minecraft:green_shulker_box, minecraft:red_shulker_box, minecraft:black_shulker_box, minecraft:bamboo, minecraft:scaffolding, minecraft:pointed_dripstone ]
```
