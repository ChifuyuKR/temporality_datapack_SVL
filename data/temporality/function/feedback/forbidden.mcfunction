# ============================================================
#  Temporality - Feedback : teleportation interdite
#  Trajet Passe <-> Futur direct impossible (passer par le Present).
# ============================================================

title @s actionbar [{"text":"\u2717 Trajet impossible : passez par le PRESENT","color":"red","bold":true}]
tellraw @s [{"text":"[","color":"dark_gray"},{"text":"Temporality","color":"aqua","bold":true},{"text":"] ","color":"dark_gray"},{"text":"Vous ne pouvez pas voyager directement entre le ","color":"red"},{"text":"Passe","color":"gray","bold":true},{"text":" et le ","color":"red"},{"text":"Futur","color":"aqua","bold":true},{"text":". Utilisez l'emeraude pour revenir au Present d'abord.","color":"red"}]
playsound minecraft:entity.villager.no master @s ~ ~ ~ 1 1
