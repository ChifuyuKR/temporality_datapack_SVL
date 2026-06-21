# ============================================================
#  Temporality - Feedback : tentative pendant le cooldown
# ============================================================

# Recalcule le temps restant en secondes (arrondi au superieur).
scoreboard players operation @s temporality.cd_disp = @s temporality.cd
scoreboard players add @s temporality.cd_disp 19
scoreboard players operation @s temporality.cd_disp /= #20 temporality.const

# Avertit le joueur que le voyage est en cooldown.
title @s actionbar [{"text":"\u2717 Patientez ","color":"red","bold":true},{"score":{"name":"@s","objective":"temporality.cd_disp"},"color":"yellow","bold":true},{"text":" s avant le prochain voyage","color":"red"}]
playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 0.5
