# ============================================================
#  Temporality - Activer/Desactiver les pouvoirs
#  /function temporality:toggle_giveall
# ============================================================

execute if score @s temporality.giveall matches 1 run scoreboard players set @s temporality.giveall 0
execute unless score @s temporality.giveall matches 1 run scoreboard players set @s temporality.giveall 1

execute if score @s temporality.giveall matches 1 run tellraw @s ["",{color:"green",text:"o Items ACTIVES"}]
execute if score @s temporality.giveall matches 0 run tellraw @s ["",{color:"red",text:"- Items DESACTIVES"}]

