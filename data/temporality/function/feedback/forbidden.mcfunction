# ============================================================
#  Temporality - Feedback : teleportation interdite
#  Trajet Passe <-> Futur direct impossible (passer par le Present).
# ============================================================

title @s actionbar [{"text":"\u2717 Trajet impossible : passez par le PRESENT","color":"red","bold":true}]
# tellraw @s [{"text":"[","color":"dark_gray"},{"text":"Temporality","color":"aqua","bold":true},{"text":"] ","color":"dark_gray"},{"text":"Vous ne pouvez pas voyager directement entre le ","color":"red"},{"text":"Passé","color":"gray","bold":true},{"text":" et le ","color":"red"},{"text":"Futur.","color":"aqua","bold":true}]
tellraw @s ["",{color:"dark_gray",bold:true,text:"["},{color:"#ffffff",text:"T"},{color:"#def3e5",text:"e"},{color:"#bee7ca",text:"m"},{color:"#9ddcb0",text:"p"},{color:"#7dd095",text:"o"},{color:"#5cc47b",text:"r"},{color:"#54c68d",text:"a"},{color:"#4cc89f",text:"l"},{color:"#45cab2",text:"i"},{color:"#3dccc4",text:"t"},{color:"#35ced6",text:"y"},{color:"dark_gray",bold:true,text:"]"}," - ",{color:"red",text:"Vous ne pouvez pas voyager directement entre le "},{color:"gray",bold:true,text:"Passé"},{color:"red",text:" et le "},{color:"aqua",bold:true,text:"Futur"},{color:"red",text:". Utilisez l'émeraude pour revenir au Present d'abord."}]
playsound minecraft:entity.villager.no master @s ~ ~ ~ 1 1
