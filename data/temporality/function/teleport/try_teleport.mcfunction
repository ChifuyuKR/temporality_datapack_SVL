# ============================================================
#  Temporality - Tentative de teleportation
#  Verifie le cooldown avant d'autoriser le voyage temporel.
#  Contexte : @s = joueur, position = position du joueur.
# ============================================================

# Si un cooldown est en cours (cd >= 1), on bloque et on previent.
execute if score @s temporality.cd matches 1.. run function temporality:feedback/cooldown_active

# Sinon (cd <= 0), on traite la teleportation.
execute if score @s temporality.cd matches ..0 run function temporality:teleport/dispatch
