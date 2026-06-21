# ============================================================
#  Temporality - Usage du Diamant (cible = FUTUR)
#  Appelee par l'advancement temporality:use_diamond.
# ============================================================

# Reinitialise l'advancement pour qu'il puisse se redeclencher.
advancement revoke @s only temporality:use_diamond

# Definit la dimension cible : 2 = Futur.
scoreboard players set @s temporality.target 2

# Lance la tentative de teleportation a la position du joueur.
execute at @s run function temporality:teleport/try_teleport
