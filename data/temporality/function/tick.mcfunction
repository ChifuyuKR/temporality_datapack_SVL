# ============================================================
#  Temporality - Fonction executee chaque tick
# ============================================================

# Initialise la dimension par defaut (Present) pour tout joueur
# qui n'a pas encore de valeur valide (nouveaux joueurs).
execute as @a unless score @s temporality.dim matches 0..2 run scoreboard players set @s temporality.dim 1

# Gere la decrementation et l'affichage du cooldown.
execute as @a if score @s temporality.cd matches 1.. run function temporality:cooldown/display
