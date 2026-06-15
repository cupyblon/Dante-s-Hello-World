# Decrement the player's robot timer by 1 each tick
scoreboard players remove @s robot_timer 1

# Complete when timer hits 0 or below
execute if score @s robot_timer matches ..0 run function fetch_robot:fetch/complete
