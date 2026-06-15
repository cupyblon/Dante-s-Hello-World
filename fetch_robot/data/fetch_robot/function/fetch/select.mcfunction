# Guard: can't fetch while robot is active
execute if score @s robot_active matches 1 run tellraw @s [{"text":"[","color":"dark_gray"},{"text":"Fetch-Bot","color":"aqua"},{"text":"]","color":"dark_gray"},{"text":" Robot is already out! Wait for it to return.","color":"red"}]
execute if score @s robot_active matches 1 run return 0

# Copy selection to robot_item
scoreboard players operation @s robot_item = @s robot_fetch

# Dispatch to item-specific timing setup
function fetch_robot:fetch/start
