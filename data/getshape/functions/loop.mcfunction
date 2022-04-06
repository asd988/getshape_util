
execute store result score minx getshape.temp run data get block 0 0 0 Items[0].tag.boxes[0].min[0] 100
execute store result score miny getshape.temp run data get block 0 0 0 Items[0].tag.boxes[0].min[1] 100
execute store result score minz getshape.temp run data get block 0 0 0 Items[0].tag.boxes[0].min[2] 100

execute store result score maxx getshape.temp run data get block 0 0 0 Items[0].tag.boxes[0].max[0] 100
execute store result score maxy getshape.temp run data get block 0 0 0 Items[0].tag.boxes[0].max[1] 100
execute store result score maxz getshape.temp run data get block 0 0 0 Items[0].tag.boxes[0].max[2] 100

execute if score minx getshape.temp <= x getshape.temp if score x getshape.temp <= maxx getshape.temp if score miny getshape.temp <= y getshape.temp if score y getshape.temp <= maxy getshape.temp if score minz getshape.temp <= z getshape.temp if score z getshape.temp <= maxz getshape.temp run scoreboard players set output getshape.temp 1

data remove block 0 0 0 Items[0].tag.boxes[0]
execute unless data block 0 0 0 {Items:[{tag:{boxes:[]}}]} if score output getshape.temp matches 0 run function getshape:loop