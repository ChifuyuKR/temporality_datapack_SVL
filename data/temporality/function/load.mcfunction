# ============================================================
#  Temporality - Fonction de chargement (load)
#  Initialise les scoreboards et constantes necessaires.
# ============================================================

# --- Dimension temporelle actuelle du joueur ---
#  0 = Passe, 1 = Present, 2 = Futur
scoreboard objectives add temporality.dim dummy

# --- Dimension cible (definie par l'item utilise) ---
#  0 = Passe (lingot de fer), 1 = Present (emeraude), 2 = Futur (diamant)
scoreboard objectives add temporality.target dummy

# --- Cooldown restant (en ticks) ---
scoreboard objectives add temporality.cd dummy

# --- Valeur d'affichage du cooldown (en secondes) ---
scoreboard objectives add temporality.cd_disp dummy

# --- Constantes (pour les divisions) ---
scoreboard objectives add temporality.const dummy
scoreboard players set #20 temporality.const 20

# --- Message de confirmation du chargement ---
tellraw @a ["",{color:"dark_gray",bold:true,text:"["},{color:"#ffffff",text:"T"},{color:"#def3e5",text:"e"},{color:"#bee7ca",text:"m"},{color:"#9ddcb0",text:"p"},{color:"#7dd095",text:"o"},{color:"#5cc47b",text:"r"},{color:"#54c68d",text:"a"},{color:"#4cc89f",text:"l"},{color:"#45cab2",text:"i"},{color:"#3dccc4",text:"t"},{color:"#35ced6",text:"y"},{color:"dark_gray",bold:true,text:"]"}," - ",{color:"aqua",text:"Datapack chargé avec succés !"}]