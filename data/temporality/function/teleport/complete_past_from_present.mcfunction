# ============================================================
#  Temporality - Validation Present -> Passe
# ============================================================

# Teleportation vers la position de destination deja preparee par l'execution.
tp @s ~ ~ ~

# Met a jour la dimension actuelle : 0 = Passe.
scoreboard players set @s temporality.dim 0

# Demarre le cooldown (3 secondes = 60 ticks).
scoreboard players set @s temporality.cd 60

# Effets et messages de confirmation.
playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1 0.6
title @s actionbar [{"text":"\u00bb Voyage vers le ","color":"gray"},{"text":"PASSE","color":"gray","bold":true},{"text":" \u00ab","color":"gray"}]
# tellraw @s [{"text":"[","color":"dark_gray"},{"text":"Temporality","color":"aqua","bold":true},{"text":"] ","color":"dark_gray"},{"text":"Vous avez voyage vers le ","color":"white"},{"text":"PASSE","color":"gray","bold":true},{"text":".","color":"white"}]
tellraw @s ["",{color:"dark_gray",bold:true,text:"["},{color:"#ffffff",text:"T"},{color:"#def3e5",text:"e"},{color:"#bee7ca",text:"m"},{color:"#9ddcb0",text:"p"},{color:"#7dd095",text:"o"},{color:"#5cc47b",text:"r"},{color:"#54c68d",text:"a"},{color:"#4cc89f",text:"l"},{color:"#45cab2",text:"i"},{color:"#3dccc4",text:"t"},{color:"#35ced6",text:"y"},{color:"dark_gray",bold:true,text:"]"}," - ",{color:"white",text:"Vous avez voyagé vers le "},{color:"gray",bold:true,text:"PASSE"},{color:"white",text:"."}]