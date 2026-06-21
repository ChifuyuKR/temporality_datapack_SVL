# ============================================================
#  Temporality - Validation Futur -> Present
# ============================================================

# Teleportation vers la position de destination deja preparee par l'execution.
tp @s ~ ~ ~

# Met a jour la dimension actuelle : 1 = Present.
scoreboard players set @s temporality.dim 1

# Demarre le cooldown (3 secondes = 60 ticks).
scoreboard players set @s temporality.cd 60

# Effets et messages de confirmation.
playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1 1.0
title @s actionbar [{"text":"\u00bb Retour au ","color":"green"},{"text":"PRESENT","color":"green","bold":true},{"text":" \u00ab","color":"green"}]
tellraw @s [{"text":"[","color":"dark_gray"},{"text":"Temporality","color":"aqua","bold":true},{"text":"] ","color":"dark_gray"},{"text":"Vous etes revenu au ","color":"white"},{"text":"PRESENT","color":"green","bold":true},{"text":".","color":"white"}]