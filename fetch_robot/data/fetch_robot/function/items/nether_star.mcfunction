# nether_star — Tier 5 Legendary
scoreboard players set @s robot_timer 15000
execute store result score @s robot_rng run random value 1..5000
scoreboard players operation @s robot_timer += @s robot_rng
