# ============================================================
#  Temporality - Détection du craft de pioche spécialisée
#  Appelee par l'advancement craft_pickaxe.
# ============================================================

advancement revoke @s only temporality:craft_pickaxe

execute if entity @s[tag=tempo_player] run function temporality:p1_pickaxe/replace_pickaxe
