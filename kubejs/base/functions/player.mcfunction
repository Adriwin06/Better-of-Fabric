execute at @a unless predicate base:end unless predicate base:nether unless block ~ 0 ~ minecraft:barrier run summon minecraft:area_effect_cloud ~ 0 ~ {Tags:["ChunkGenerator"],Duration:2147483647}
execute at @a if predicate base:end unless block ~ 0 ~ minecraft:moving_piston run summon minecraft:area_effect_cloud ~ 0 ~ {Tags:["ChunkGenerator"],Duration:2147483647}

execute at @a unless predicate base:end unless predicate base:nether positioned ~-8 0 ~-8 as @e[distance=0..,type=area_effect_cloud,tag=ChunkGenerator,sort=nearest,limit=1] at @s run function base:generate/overworld
execute as @a at @s if predicate base:end positioned ~-8 0 ~-8 as @e[distance=0..,type=area_effect_cloud,tag=ChunkGenerator,sort=nearest,limit=1] at @s run function base:generate/end

execute if score global LagMode matches 0 run schedule function base:player 1t replace
execute if score global LagMode matches 1 run schedule function base:player 2t replace
execute if score global LagMode matches 2 run schedule function base:player 5t replace
