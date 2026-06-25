# ============================================================
#  Temporality - Usage du Diamant (cible = FUTUR)
#  Appelee par l'advancement temporality:use_diamond.
# ============================================================

# Verifie le cooldown - si actif, redonner l'item et bloquer
execute if score @s temporality.cd matches 1.. run item replace entity @s hotbar.5 with diamond[minecraft:custom_data={temporality:1b},minecraft:custom_name=[{"text":"B","italic":false,"color":"#e5f5ff"},{"text":"i","italic":false,"color":"#d6f0ff"},{"text":"j","italic":false,"color":"#c7ebff"},{"text":"o","italic":false,"color":"#b8e6ff"},{"text":"u","italic":false,"color":"#ade0ff"},{"text":" ","italic":false,"color":"#a3daff"},{"text":"d","italic":false,"color":"#9ad8ff"},{"text":"e","italic":false,"color":"#92d5ff"},{"text":" ","italic":false,"color":"#8dd8ff"},{"text":"l","italic":false,"color":"#8ae0ff"},{"text":"a","italic":false,"color":"#89e8ff"},{"text":" ","italic":false,"color":"#8befff"},{"text":"t","italic":false,"color":"#92f2ff"},{"text":"e","italic":false,"color":"#9af9ff"},{"text":"m","italic":false,"color":"#b5fbff"},{"text":"p","italic":false,"color":"#c8fcff"},{"text":"o","italic":false,"color":"#d9fdff"},{"text":"r","italic":false,"color":"#d9fdff"},{"text":"a","italic":false,"color":"#c8fcff"},{"text":"l","italic":false,"color":"#b5fbff"},{"text":"i","italic":false,"color":"#9af9ff"},{"text":"t","italic":false,"color":"#92f2ff"},{"text":"é","italic":false,"color":"#8befff"},{"text":" ","italic":false,"color":"#88e8ff"},{"text":":","italic":false,"color":"#85e0ff"},{"text":" ","italic":false,"color":"#82d8ff"},{"text":"F","italic":false,"color":"#7fd0ff"},{"text":"u","italic":false,"color":"#7cc8ff"},{"text":"t","italic":false,"color":"#79c0ff"},{"text":"u","italic":false,"color":"#76b8ff"},{"text":"r","italic":false,"color":"#73b0ff"}],minecraft:food={can_always_eat:1b,nutrition:1,saturation:1},minecraft:consumable={consume_seconds:0.1,animation:"none",has_consume_particles:false,sound:"intentionally_empty"},use_cooldown={seconds:3},tooltip_display={hidden_components:[enchantments]}]
execute if score @s temporality.cd matches 1.. run return fail

# Initialise le flag de succes avant la teleportation
scoreboard players set @s temporality.tp_success 1

# Definit la dimension cible : 2 = Futur.
scoreboard players set @s temporality.target 2

# Lance la tentative de teleportation a la position du joueur.
execute at @s run function temporality:teleport/try_teleport

# Verifie si la teleportation a reussi
execute if score @s temporality.tp_success matches 0 run item replace entity @s hotbar.5 with diamond[minecraft:custom_data={temporality:1b},minecraft:custom_name=[{"text":"B","italic":false,"color":"#e5f5ff"},{"text":"i","italic":false,"color":"#d6f0ff"},{"text":"j","italic":false,"color":"#c7ebff"},{"text":"o","italic":false,"color":"#b8e6ff"},{"text":"u","italic":false,"color":"#ade0ff"},{"text":" ","italic":false,"color":"#a3daff"},{"text":"d","italic":false,"color":"#9ad8ff"},{"text":"e","italic":false,"color":"#92d5ff"},{"text":" ","italic":false,"color":"#8dd8ff"},{"text":"l","italic":false,"color":"#8ae0ff"},{"text":"a","italic":false,"color":"#89e8ff"},{"text":" ","italic":false,"color":"#8befff"},{"text":"t","italic":false,"color":"#92f2ff"},{"text":"e","italic":false,"color":"#9af9ff"},{"text":"m","italic":false,"color":"#b5fbff"},{"text":"p","italic":false,"color":"#c8fcff"},{"text":"o","italic":false,"color":"#d9fdff"},{"text":"r","italic":false,"color":"#d9fdff"},{"text":"a","italic":false,"color":"#c8fcff"},{"text":"l","italic":false,"color":"#b5fbff"},{"text":"i","italic":false,"color":"#9af9ff"},{"text":"t","italic":false,"color":"#92f2ff"},{"text":"é","italic":false,"color":"#8befff"},{"text":" ","italic":false,"color":"#88e8ff"},{"text":":","italic":false,"color":"#85e0ff"},{"text":" ","italic":false,"color":"#82d8ff"},{"text":"F","italic":false,"color":"#7fd0ff"},{"text":"u","italic":false,"color":"#7cc8ff"},{"text":"t","italic":false,"color":"#79c0ff"},{"text":"u","italic":false,"color":"#76b8ff"},{"text":"r","italic":false,"color":"#73b0ff"}],minecraft:food={can_always_eat:1b,nutrition:1,saturation:1},minecraft:consumable={consume_seconds:0.1,animation:"none",has_consume_particles:false,sound:"intentionally_empty"},use_cooldown={seconds:3},tooltip_display={hidden_components:[enchantments]}]
execute if score @s temporality.tp_success matches 0 run return fail

# Applique cooldown de 3s (60 ticks) si la teleportation a reussi
scoreboard players set @s temporality.cd 60

# Rend l'item si le giveall est active (marque pour refill au tick suivant).
execute if score @s temporality.giveall matches 1 run tag @s add needs_refill
