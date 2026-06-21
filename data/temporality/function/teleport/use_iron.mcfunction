# ============================================================
#  Temporality - Usage du Lingot de fer (cible = PASSE)
#  Appelee par l'advancement temporality:use_iron.
#  Contexte : @s = joueur (execute par la recompense d'advancement).
# ============================================================

# Reinitialise l'advancement pour qu'il puisse se redeclencher.
advancement revoke @s only temporality:use_iron

# Definit la dimension cible : 0 = Passe.
scoreboard players set @s temporality.target 0

# Lance la tentative de teleportation a la position du joueur.
execute at @s run function temporality:teleport/try_teleport
