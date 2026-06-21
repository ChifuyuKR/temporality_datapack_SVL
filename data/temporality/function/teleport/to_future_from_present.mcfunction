# ============================================================
#  Temporality - Present -> Futur
# ============================================================

# Verifie que la case de destination est libre pour les pieds et la tete.
execute positioned ~17 ~0 ~0 if block ~ ~ ~ minecraft:air if block ~ ~1 ~ minecraft:air run function temporality:teleport/complete_future_from_present
execute positioned ~17 ~0 ~0 unless block ~ ~ ~ minecraft:air run function temporality:feedback/destination_blocked
execute positioned ~17 ~0 ~0 if block ~ ~ ~ minecraft:air unless block ~ ~1 ~ minecraft:air run function temporality:feedback/destination_blocked
