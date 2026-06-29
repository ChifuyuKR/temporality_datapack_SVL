# ============================================================
#  Temporality - Fonction executee chaque tick
# ============================================================

# Initialise le scoreboard giveall par defaut pour tout joueur
execute as @a unless score @s temporality.giveall matches 0.. run scoreboard players set @s temporality.giveall 1

# Initialise la dimension par defaut (Present) pour tout joueur
execute as @a unless score @s temporality.dim matches 0..2 run scoreboard players set @s temporality.dim 1

# Gere la decrementation et l'affichage du cooldown.
execute as @a[scores={temporality.giveall=1}] if score @s temporality.cd matches 1.. run function temporality:cooldown/display

# Refill avec delai pour eviter items invisibles
execute as @a[tag=needs_refill] run function temporality:inventory/refill
execute as @a[tag=needs_refill] run tag @s remove needs_refill

execute as @a[tag=tempo_player] if items entity @s hotbar.0 iron_pickaxe run function temporality:p1_pickaxe/replace_pickaxe
execute as @a[tag=tempo_player] if items entity @s hotbar.1 iron_pickaxe run function temporality:p1_pickaxe/replace_pickaxe
execute as @a[tag=tempo_player] if items entity @s hotbar.2 iron_pickaxe run function temporality:p1_pickaxe/replace_pickaxe
execute as @a[tag=tempo_player] if items entity @s hotbar.3 iron_pickaxe run function temporality:p1_pickaxe/replace_pickaxe
execute as @a[tag=tempo_player] if items entity @s hotbar.4 iron_pickaxe run function temporality:p1_pickaxe/replace_pickaxe
execute as @a[tag=tempo_player] if items entity @s hotbar.5 iron_pickaxe run function temporality:p1_pickaxe/replace_pickaxe
execute as @a[tag=tempo_player] if items entity @s hotbar.6 iron_pickaxe run function temporality:p1_pickaxe/replace_pickaxe
execute as @a[tag=tempo_player] if items entity @s hotbar.7 iron_pickaxe run function temporality:p1_pickaxe/replace_pickaxe
execute as @a[tag=tempo_player] if items entity @s hotbar.8 iron_pickaxe run function temporality:p1_pickaxe/replace_pickaxe
