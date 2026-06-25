# ============================================================
#  Temporality - Usage de l'Emeraude (cible = PRESENT)
#  Appelee par l'advancement temporality:use_emerald.
# ============================================================

# Verifie le cooldown - si actif, redonner l'item et bloquer
execute if score @s temporality.cd matches 1.. run item replace entity @s hotbar.4 with emerald[minecraft:custom_data={temporality:1b},minecraft:custom_name=[{"text":"P","italic":false,"color":"#e5f5e5"},{"text":"i","italic":false,"color":"#d6f0d6"},{"text":"e","italic":false,"color":"#c7ebcc"},{"text":"r","italic":false,"color":"#b8e6b8"},{"text":"r","italic":false,"color":"#ade0ad"},{"text":"e","italic":false,"color":"#a3daa3"},{"text":" ","italic":false,"color":"#9ad89a"},{"text":"d","italic":false,"color":"#92d592"},{"text":"e","italic":false,"color":"#8dd88d"},{"text":" ","italic":false,"color":"#8ae08a"},{"text":"l","italic":false,"color":"#89e889"},{"text":"a","italic":false,"color":"#8beb8b"},{"text":" ","italic":false,"color":"#92f292"},{"text":"t","italic":false,"color":"#9af99a"},{"text":"e","italic":false,"color":"#b5fbb5"},{"text":"m","italic":false,"color":"#c8fcc8"},{"text":"p","italic":false,"color":"#d9fdd9"},{"text":"o","italic":false,"color":"#e8fee8"},{"text":"r","italic":false,"color":"#f5fff5"},{"text":"a","italic":false,"color":"#f5fff5"},{"text":"l","italic":false,"color":"#e8fee8"},{"text":"i","italic":false,"color":"#d9fdd9"},{"text":"t","italic":false,"color":"#c8fcc8"},{"text":"é : Present","italic":false,"color":"#b5fbb5"}],minecraft:food={can_always_eat:1b,nutrition:1,saturation:1},minecraft:consumable={consume_seconds:0.1,animation:"none",has_consume_particles:false,sound:"intentionally_empty"},use_cooldown={seconds:3},tooltip_display={hidden_components:[enchantments]}]
execute if score @s temporality.cd matches 1.. run return fail

# Initialise le flag de succes avant la teleportation
scoreboard players set @s temporality.tp_success 1

# Definit la dimension cible : 1 = Present.
scoreboard players set @s temporality.target 1

# Lance la tentative de teleportation a la position du joueur.
execute at @s run function temporality:teleport/try_teleport

# Verifie si la teleportation a reussi
execute if score @s temporality.tp_success matches 0 run item replace entity @s hotbar.4 with emerald[minecraft:custom_data={temporality:1b},minecraft:custom_name=[{"text":"P","italic":false,"color":"#e5f5e5"},{"text":"i","italic":false,"color":"#d6f0d6"},{"text":"e","italic":false,"color":"#c7ebcc"},{"text":"r","italic":false,"color":"#b8e6b8"},{"text":"r","italic":false,"color":"#ade0ad"},{"text":"e","italic":false,"color":"#a3daa3"},{"text":" ","italic":false,"color":"#9ad89a"},{"text":"d","italic":false,"color":"#92d592"},{"text":"e","italic":false,"color":"#8dd88d"},{"text":" ","italic":false,"color":"#8ae08a"},{"text":"l","italic":false,"color":"#89e889"},{"text":"a","italic":false,"color":"#8beb8b"},{"text":" ","italic":false,"color":"#92f292"},{"text":"t","italic":false,"color":"#9af99a"},{"text":"e","italic":false,"color":"#b5fbb5"},{"text":"m","italic":false,"color":"#c8fcc8"},{"text":"p","italic":false,"color":"#d9fdd9"},{"text":"o","italic":false,"color":"#e8fee8"},{"text":"r","italic":false,"color":"#f5fff5"},{"text":"a","italic":false,"color":"#f5fff5"},{"text":"l","italic":false,"color":"#e8fee8"},{"text":"i","italic":false,"color":"#d9fdd9"},{"text":"t","italic":false,"color":"#c8fcc8"},{"text":"é : Present","italic":false,"color":"#b5fbb5"}],minecraft:food={can_always_eat:1b,nutrition:1,saturation:1},minecraft:consumable={consume_seconds:0.1,animation:"none",has_consume_particles:false,sound:"intentionally_empty"},use_cooldown={seconds:3},tooltip_display={hidden_components:[enchantments]}]
execute if score @s temporality.tp_success matches 0 run return fail

# Applique cooldown de 3s (60 ticks) si la teleportation a reussi
scoreboard players set @s temporality.cd 60

# Rend l'item si le giveall est active (marque pour refill au tick suivant).
execute if score @s temporality.giveall matches 1 run tag @s add needs_refill
