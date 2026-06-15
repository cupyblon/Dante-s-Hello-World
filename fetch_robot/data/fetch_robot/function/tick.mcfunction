# ─────────────────────────────────────────────
#  Robot Fetch — Main tick (every game tick)
# ─────────────────────────────────────────────

# Enable robot_menu trigger ONLY for players holding the Robot Caller with no active robot
execute as @a[scores={robot_active=0}] if items entity @s mainhand carrot_on_a_stick[custom_name='{"italic":false,"color":"gold","bold":true,"text":"🤖 Robot Caller"}'] run scoreboard players enable @s robot_menu

# Enable robot_fetch for everyone so menu click-events always work
scoreboard players enable @a robot_fetch

# Process menu open
execute as @a[scores={robot_menu=1..}] run function fetch_robot:menu/main
scoreboard players set @a[scores={robot_menu=1..}] robot_menu 0

# Process item selection from menu (values 1-26)
execute as @a[scores={robot_fetch=1..26}] run function fetch_robot:fetch/select
scoreboard players set @a[scores={robot_fetch=1..26}] robot_fetch 0

# Tick all active robots
execute as @a[scores={robot_active=1}] run function fetch_robot:fetch/tick

# Ambient particles on the robot entity
execute at @e[tag=fetch_bot] run particle minecraft:electric_spark ~ ~0.8 ~ 0.25 0.25 0.25 0.02 4
