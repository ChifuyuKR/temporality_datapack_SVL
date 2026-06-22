# ============================================================
#  Temporality - Usage du Lingot de fer (cible = PASSE)
#  Appelee par l'advancement temporality:use_iron.
#  Contexte : @s = joueur (execute par la recompense d'advancement).
# ============================================================

# Reinitialise l'advancement pour qu'il puisse se redeclencher.
advancement revoke @s only temporality:use_iron

# N'agit que pour les joueurs temporals autorises.
execute if entity @s[tag=tempo_player] run function temporality:teleport/use_iron_impl
execute unless entity @s[tag=tempo_player] run function temporality:feedback/not_allowed
