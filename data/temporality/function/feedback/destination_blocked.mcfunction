# ============================================================
#  Temporality - Feedback : destination occupee
#  La case des pieds ou de la tete n'est pas libre.
# ============================================================

title @s actionbar [{"text":"\u2717 Destination occupee : espace insuffisant","color":"red","bold":true}]
tellraw @s [{"text":"[","color":"dark_gray"},{"text":"Temporality","color":"aqua","bold":true},{"text":"] ","color":"dark_gray"},{"text":"La destination est occupee. Liberez l'espace autour du point d'arrivee avant de voyager.","color":"red"}]
playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 0.8