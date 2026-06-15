# ─────────────────────────────────────────────
#  Robot Fetch — Setup (runs on /reload)
# ─────────────────────────────────────────────

scoreboard objectives add robot_active dummy
scoreboard objectives add robot_timer  dummy
scoreboard objectives add robot_item   dummy
scoreboard objectives add robot_rng    dummy
scoreboard objectives add robot_menu   trigger
scoreboard objectives add robot_fetch  trigger

# Seed a global RNG counter
scoreboard players set .seed robot_rng 0

tellraw @a [{"text":"[","color":"dark_gray"},{"text":"Robot Fetch","color":"gold","bold":true},{"text":"]","color":"dark_gray"},{"text":" Loaded! Run ","color":"gray"},{"text":"/function fetch_robot:give","color":"aqua","underlined":true,"clickEvent":{"action":"run_command","value":"/function fetch_robot:give"},"hoverEvent":{"action":"show_text","value":"Click to get your Robot Caller"}},{"text":" to get your Robot Caller.","color":"gray"}]
