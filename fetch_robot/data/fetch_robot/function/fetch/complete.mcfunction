# Kill the robot entity nearest to this player
execute at @s run kill @e[tag=fetch_bot,distance=..200,limit=1,sort=nearest]

# Give the item
function fetch_robot:fetch/give

# Announce what was returned
function fetch_robot:fetch/announce

# Reset scores
scoreboard players set @s robot_active 0
scoreboard players set @s robot_timer  0
scoreboard players set @s robot_item   0

# Celebration effects
execute at @s run playsound minecraft:entity.allay.ambient_without_item player @s ~ ~ ~ 1 1.5
execute at @s run playsound minecraft:entity.player.levelup player @s ~ ~ ~ 0.5 1.2
execute at @s run particle minecraft:heart          ~ ~1 ~ 0.6 0.6 0.6 0.01 12
execute at @s run particle minecraft:end_rod        ~ ~1 ~ 0.5 0.5 0.5 0.05 25
execute at @s run particle minecraft:happy_villager ~ ~1 ~ 0.5 0.5 0.5 0.01 8
