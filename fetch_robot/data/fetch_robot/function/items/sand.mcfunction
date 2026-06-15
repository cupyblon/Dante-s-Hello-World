# sand — Tier 1 Common
scoreboard players set @s robot_timer 100
execute store result score @s robot_rng run random value 1..200
scoreboard players operation @s robot_timer += @s robot_rng
