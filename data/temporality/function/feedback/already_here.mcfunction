# Already in the target dimension
# Mark teleportation as failure
scoreboard players set @s temporality.tp_success 0

title @s actionbar [{"text":"ℹ Vous êtes deja dans cette dimension temporelle","color":"yellow"}]
playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 1
