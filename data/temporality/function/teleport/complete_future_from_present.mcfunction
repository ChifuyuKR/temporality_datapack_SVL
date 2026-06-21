# ============================================================
#  Temporality - Validation Present -> Futur
# ============================================================

# Teleportation vers la position de destination deja preparee par l'execution.
tp @s ~ ~ ~

# Met a jour la dimension actuelle : 2 = Futur.
scoreboard players set @s temporality.dim 2

# Demarre le cooldown (3 secondes = 60 ticks).
scoreboard players set @s temporality.cd 60

# Effets et messages de confirmation.
playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1 1.4
title @s actionbar [{"text":"\u00bb Voyage vers le ","color":"aqua"},{"text":"FUTUR","color":"aqua","bold":true},{"text":" \u00ab","color":"aqua"}]
tellraw @s [{"text":"[","color":"dark_gray"},{"text":"Temporality","color":"aqua","bold":true},{"text":"] ","color":"dark_gray"},{"text":"Vous avez voyage vers le ","color":"white"},{"text":"FUTUR","color":"aqua","bold":true},{"text":".","color":"white"}]