# ============================================================
#  Temporality - Donne les items au joueur 
#  A executer manuellement : /function temporality:give_items
#
#  NOTE TECHNIQUE :
#  Les items vanilla (lingot de fer, emeraude, diamant) ne sont
#  pas "utilisables" par defaut : un clic droit ne declenche rien.
#  On leur ajoute donc le composant "minecraft:consumable" qui rend
#  le clic droit detectable (via l'advancement consume_item), avec une
#  duree quasi nulle, sans particules ni son. L'item consomme est
#  immediatement rendu au joueur, ce qui simule un simple clic droit.
# ============================================================

# --- Lingot de fer => voyage vers le PASSE ---
give @s minecraft:iron_ingot[minecraft:custom_data={temporality:1b},minecraft:item_name='[{"text":"Lingot du Passe","color":"gray","italic":false}]',minecraft:consumable={consume_seconds:0.05,animation:"none",has_consume_particles:false,sound:"intentionally_empty"}] 1

# --- Emeraude => voyage vers le PRESENT ---
give @s minecraft:emerald[minecraft:custom_data={temporality:1b},minecraft:item_name='[{"text":"Emeraude du Present","color":"green","italic":false}]',minecraft:consumable={consume_seconds:0.05,animation:"none",has_consume_particles:false,sound:"intentionally_empty"}] 1

# --- Diamant => voyage vers le FUTUR ---
give @s minecraft:diamond[minecraft:custom_data={temporality:1b},minecraft:item_name='[{"text":"Diamant du Futur","color":"aqua","italic":false}]',minecraft:consumable={consume_seconds:0.05,animation:"none",has_consume_particles:false,sound:"intentionally_empty"}] 1

# Initialise la dimension du joueur sur Present par defaut.
execute unless score @s temporality.dim matches 0..2 run scoreboard players set @s temporality.dim 1

tellraw @s ["",{color:"dark_gray",bold:true,text:"["},{color:"#ffffff",text:"T"},{color:"#def3e5",text:"e"},{color:"#bee7ca",text:"m"},{color:"#9ddcb0",text:"p"},{color:"#7dd095",text:"o"},{color:"#5cc47b",text:"r"},{color:"#54c68d",text:"a"},{color:"#4cc89f",text:"l"},{color:"#45cab2",text:"i"},{color:"#3dccc4",text:"t"},{color:"#35ced6",text:"y"},{color:"dark_gray",bold:true,text:"]"}," - ",{color:"aqua",text:"Vous venez de recevoir vos nouveaux pouvoirs temporels !"}]