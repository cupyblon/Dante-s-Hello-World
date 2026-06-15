# name_tag — Tier 3 Rare
scoreboard players set @s robot_timer 2000
execute store result score @s robot_rng run random value 1..800
scoreboard players operation @s robot_timer += @s robot_rng
