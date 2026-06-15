# Set item-specific timer (includes RNG roll)
execute if score @s robot_item matches 1  run function fetch_robot:items/dirt
execute if score @s robot_item matches 2  run function fetch_robot:items/cobblestone
execute if score @s robot_item matches 3  run function fetch_robot:items/oak_log
execute if score @s robot_item matches 4  run function fetch_robot:items/sand
execute if score @s robot_item matches 5  run function fetch_robot:items/gravel
execute if score @s robot_item matches 6  run function fetch_robot:items/wheat
execute if score @s robot_item matches 7  run function fetch_robot:items/coal
execute if score @s robot_item matches 8  run function fetch_robot:items/iron_ingot
execute if score @s robot_item matches 9  run function fetch_robot:items/leather
execute if score @s robot_item matches 10 run function fetch_robot:items/feather
execute if score @s robot_item matches 11 run function fetch_robot:items/string
execute if score @s robot_item matches 12 run function fetch_robot:items/bread
execute if score @s robot_item matches 13 run function fetch_robot:items/gold_ingot
execute if score @s robot_item matches 14 run function fetch_robot:items/lapis_lazuli
execute if score @s robot_item matches 15 run function fetch_robot:items/redstone
execute if score @s robot_item matches 16 run function fetch_robot:items/ender_pearl
execute if score @s robot_item matches 17 run function fetch_robot:items/name_tag
execute if score @s robot_item matches 18 run function fetch_robot:items/clock
execute if score @s robot_item matches 19 run function fetch_robot:items/diamond
execute if score @s robot_item matches 20 run function fetch_robot:items/emerald
execute if score @s robot_item matches 21 run function fetch_robot:items/blaze_rod
execute if score @s robot_item matches 22 run function fetch_robot:items/slime_ball
execute if score @s robot_item matches 23 run function fetch_robot:items/netherite_ingot
execute if score @s robot_item matches 24 run function fetch_robot:items/elytra
execute if score @s robot_item matches 25 run function fetch_robot:items/totem_of_undying
execute if score @s robot_item matches 26 run function fetch_robot:items/nether_star

# Summon the Allay robot near the player
execute at @s run summon minecraft:allay ~ ~1 ~ {CustomName:'{"italic":false,"color":"aqua","bold":true,"text":"Fetch-Bot"}',Tags:["fetch_bot"],Invulnerable:1b,Silent:0b,CanPickUpLoot:0b,NoAI:0b}

# Mark as active
scoreboard players set @s robot_active 1

# Sounds and message
execute at @s run playsound minecraft:entity.allay.ambient_with_item player @s ~ ~ ~ 1 1.2
execute at @s run particle minecraft:portal ~ ~1 ~ 0.5 0.5 0.5 0.1 30

tellraw @s [{"text":"[","color":"dark_gray"},{"text":"Fetch-Bot","color":"aqua","bold":true},{"text":"]","color":"dark_gray"},{"text":" Robot dispatched! ","color":"gray"},{"text":"ETA: ","color":"dark_gray"},{"score":{"name":"@s","objective":"robot_timer"}},{"text":" ticks","color":"dark_gray"},{"text":" (roughly ","color":"gray"},{"score":{"name":"@s","objective":"robot_timer"}},{"text":"÷20 seconds). Hang tight!","color":"gray"}]
