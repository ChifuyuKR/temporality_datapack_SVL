# ============================================================
#  Temporality - Validation Present -> Passe
# ============================================================

# Teleportation vers la position de destination deja preparee par l'execution.
tp @s ~ ~ ~

# Met a jour la dimension actuelle : 0 = Passe.
scoreboard players set @s temporality.dim 0

# Demarre le cooldown (3 secondes = 60 ticks).
scoreboard players set @s temporality.cd 60

# Effets et messages de confirmation.
playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1 0.6
title @s actionbar [{"text":"\u00bb Voyage vers le ","color":"gray"},{"text":"PASSE","color":"gray","bold":true},{"text":" \u00ab","color":"gray"}]
tellraw @s [{"text":"[","color":"dark_gray"},{"text":"Temporality","color":"aqua","bold":true},{"text":"] ","color":"dark_gray"},{"text":"Vous avez voyage vers le ","color":"white"},{"text":"PASSE","color":"gray","bold":true},{"text":".","color":"white"}]