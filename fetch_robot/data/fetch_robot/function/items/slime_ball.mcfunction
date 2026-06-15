# slime_ball — Tier 4 Epic
scoreboard players set @s robot_timer 4800
execute store result score @s robot_rng run random value 1..1600
scoreboard players operation @s robot_timer += @s robot_rng
