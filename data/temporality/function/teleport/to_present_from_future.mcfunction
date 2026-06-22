# ============================================================
#  Temporality - Futur -> Present
# ============================================================

# Verifie uniquement que le bloc de la tete est libre.
execute positioned ~-17 ~0 ~0 if block ~ ~1 ~ minecraft:air run function temporality:teleport/complete_present_from_future
execute positioned ~-17 ~0 ~0 unless block ~ ~1 ~ minecraft:air run function temporality:feedback/destination_blocked
