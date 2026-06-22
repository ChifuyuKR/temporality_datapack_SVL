# ============================================================
#  Temporality - Usage de l'Emeraude (cible = PRESENT)
#  Appelee par l'advancement temporality:use_emerald.
# ============================================================

# Reinitialise l'advancement pour qu'il puisse se redeclencher.
advancement revoke @s only temporality:use_emerald

# N'agit que pour les joueurs temporals autorises.
execute if entity @s[tag=tempo_player] run function temporality:teleport/use_emerald_impl
execute unless entity @s[tag=tempo_player] run function temporality:feedback/not_allowed
