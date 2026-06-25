# ============================================================
#  Temporality - Usage du Lingot de fer (cible = PASSE)
#  Appelee par l'advancement temporality:use_iron.
#  Contexte : @s = joueur (execute par la recompense d'advancement).
# ============================================================

# Verifie le cooldown - si actif, redonner l'item et bloquer
execute if score @s temporality.cd matches 1.. run item replace entity @s hotbar.3 with iron_ingot[minecraft:custom_data={temporality:1b},minecraft:custom_name=[{"text":"L","italic":false,"color":"#efe5e5"},{"text":"i","italic":false,"color":"#e6dcdc"},{"text":"n","italic":false,"color":"#dcd3d3"},{"text":"g","italic":false,"color":"#d3caca"},{"text":"o","italic":false,"color":"#cac1c1"},{"text":"t","italic":false,"color":"#c1b8b8"},{"text":" ","italic":false,"color":"#b7b0b0"},{"text":"d","italic":false,"color":"#aea7a7"},{"text":"e","italic":false,"color":"#a59e9e"},{"text":" ","italic":false,"color":"#9b9595"},{"text":"l","italic":false,"color":"#928c8c"},{"text":"a","italic":false,"color":"#8e8888"},{"text":" ","italic":false,"color":"#8d8888"},{"text":"t","italic":false,"color":"#8c8787"},{"text":"e","italic":false,"color":"#8b8686"},{"text":"m","italic":false,"color":"#8a8585"},{"text":"p","italic":false,"color":"#898585"},{"text":"o","italic":false,"color":"#888484"},{"text":"r","italic":false,"color":"#878383"},{"text":"a","italic":false,"color":"#868282"},{"text":"l","italic":false,"color":"#858282"},{"text":"i","italic":false,"color":"#888585"},{"text":"t","italic":false,"color":"#949191"},{"text":"é : Passé","italic":false,"color":"#a09d9d"}],minecraft:food={can_always_eat:1b,nutrition:1,saturation:1},minecraft:consumable={consume_seconds:0.1,animation:"none",has_consume_particles:false,sound:"intentionally_empty"},use_cooldown={seconds:3},tooltip_display={hidden_components:[enchantments]}]
execute if score @s temporality.cd matches 1.. run return fail

# Initialise le flag de succes avant la teleportation
scoreboard players set @s temporality.tp_success 1

# Definit la dimension cible : 0 = Passe.
scoreboard players set @s temporality.target 0

# Lance la tentative de teleportation a la position du joueur.
execute at @s run function temporality:teleport/try_teleport

# Verifie si la teleportation a reussi
execute if score @s temporality.tp_success matches 0 run item replace entity @s hotbar.3 with iron_ingot[minecraft:custom_data={temporality:1b},minecraft:custom_name=[{"text":"L","italic":false,"color":"#efe5e5"},{"text":"i","italic":false,"color":"#e6dcdc"},{"text":"n","italic":false,"color":"#dcd3d3"},{"text":"g","italic":false,"color":"#d3caca"},{"text":"o","italic":false,"color":"#cac1c1"},{"text":"t","italic":false,"color":"#c1b8b8"},{"text":" ","italic":false,"color":"#b7b0b0"},{"text":"d","italic":false,"color":"#aea7a7"},{"text":"e","italic":false,"color":"#a59e9e"},{"text":" ","italic":false,"color":"#9b9595"},{"text":"l","italic":false,"color":"#928c8c"},{"text":"a","italic":false,"color":"#8e8888"},{"text":" ","italic":false,"color":"#8d8888"},{"text":"t","italic":false,"color":"#8c8787"},{"text":"e","italic":false,"color":"#8b8686"},{"text":"m","italic":false,"color":"#8a8585"},{"text":"p","italic":false,"color":"#898585"},{"text":"o","italic":false,"color":"#888484"},{"text":"r","italic":false,"color":"#878383"},{"text":"a","italic":false,"color":"#868282"},{"text":"l","italic":false,"color":"#858282"},{"text":"i","italic":false,"color":"#888585"},{"text":"t","italic":false,"color":"#949191"},{"text":"é : Passé","italic":false,"color":"#a09d9d"}],minecraft:food={can_always_eat:1b,nutrition:1,saturation:1},minecraft:consumable={consume_seconds:0.1,animation:"none",has_consume_particles:false,sound:"intentionally_empty"},use_cooldown={seconds:3},tooltip_display={hidden_components:[enchantments]}]
execute if score @s temporality.tp_success matches 0 run return fail

# Applique cooldown de 3s (60 ticks) si la teleportation a reussi
scoreboard players set @s temporality.cd 60

# Rend l'item si le giveall est active (marque pour refill au tick suivant).
execute if score @s temporality.giveall matches 1 run tag @s add needs_refill
