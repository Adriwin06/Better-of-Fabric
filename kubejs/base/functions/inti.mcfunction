function base:info
gamerule maxCommandChainLength 3000000

scoreboard objectives add LagMode dummy
execute unless score global LagMode matches 0.. run scoreboard players set global LagMode 1
function base:player
