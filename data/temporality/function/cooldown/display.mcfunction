# ============================================================
#  Temporality - Gestion et affichage du cooldown
#  Appelee chaque tick pour chaque joueur dont cd >= 1.
#  Contexte : @s = joueur.
# ============================================================

# Decremente le cooldown d'un tick.
scoreboard players remove @s temporality.cd 1

# Calcule le temps restant en secondes (arrondi au superieur).
#  cd_disp = (cd + 19) / 20
scoreboard players operation @s temporality.cd_disp = @s temporality.cd
scoreboard players add @s temporality.cd_disp 19
scoreboard players operation @s temporality.cd_disp /= #20 temporality.const

# Affiche le temps restant dans l'action bar tant que cd >= 1.
execute if score @s temporality.cd matches 1.. run title @s actionbar [{"text":"\u231b Voyage temporel disponible dans ","color":"red"},{"score":{"name":"@s","objective":"temporality.cd_disp"},"color":"yellow","bold":true},{"text":" s","color":"yellow"}]

# Quand le cooldown vient d'atteindre 0, signale que le voyage est pret.
execute if score @s temporality.cd matches 0 run title @s actionbar [{"text":"\u2726 Voyage temporel pret !","color":"green","bold":true}]
execute if score @s temporality.cd matches 0 run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1.5
