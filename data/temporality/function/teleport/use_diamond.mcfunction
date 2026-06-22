# ============================================================
#  Temporality - Usage du Diamant (cible = FUTUR)
#  Appelee par l'advancement temporality:use_diamond.
# ============================================================

# Reinitialise l'advancement pour qu'il puisse se redeclencher.
advancement revoke @s only temporality:use_diamond

# N'agit que pour les joueurs temporals autorises.
execute if entity @s[tag=tempo_player] run function temporality:teleport/use_diamond_impl
execute unless entity @s[tag=tempo_player] run function temporality:feedback/not_allowed
