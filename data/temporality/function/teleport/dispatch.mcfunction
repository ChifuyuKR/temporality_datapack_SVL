# ============================================================
#  Temporality - Aiguillage des teleportations
#  Determine le deplacement selon la dimension actuelle (dim)
#  et la dimension cible (target).
#
#  Disposition des maps (alignees sur l'axe X) :
#    PASSE  (0)  <--17-->  PRESENT (1)  <--17-->  FUTUR (2)
#    gauche                 centre                 droite
#
#  ~-17 = vers la gauche (recul dans le temps)
#  ~+17 = vers la droite (avance dans le temps)
# ============================================================

# --- Cas : deja dans la dimension cible ---
execute if score @s temporality.dim = @s temporality.target run function temporality:feedback/already_here

# --- Present -> Passe (tp ~-17) ---
execute if score @s temporality.dim matches 1 if score @s temporality.target matches 0 run function temporality:teleport/to_past_from_present

# --- Present -> Futur (tp ~17) ---
execute if score @s temporality.dim matches 1 if score @s temporality.target matches 2 run function temporality:teleport/to_future_from_present

# --- Passe -> Present (tp ~17) ---
execute if score @s temporality.dim matches 0 if score @s temporality.target matches 1 run function temporality:teleport/to_present_from_past

# --- Futur -> Present (tp ~-17) ---
execute if score @s temporality.dim matches 2 if score @s temporality.target matches 1 run function temporality:teleport/to_present_from_future

# --- Trajets interdits (Passe <-> Futur en direct) ---
execute if score @s temporality.dim matches 0 if score @s temporality.target matches 2 run function temporality:feedback/forbidden
execute if score @s temporality.dim matches 2 if score @s temporality.target matches 0 run function temporality:feedback/forbidden
