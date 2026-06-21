# ============================================================
#  Temporality - Usage de l'Emeraude (cible = PRESENT)
#  Appelee par l'advancement temporality:use_emerald.
# ============================================================

# Reinitialise l'advancement pour qu'il puisse se redeclencher.
advancement revoke @s only temporality:use_emerald

# Definit la dimension cible : 1 = Present.
scoreboard players set @s temporality.target 1

# Lance la tentative de teleportation a la position du joueur.
execute at @s run function temporality:teleport/try_teleport
