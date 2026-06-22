# ============================================================
#  Temporality - Feedback : destination occupee
#  Le bloc de la tete du joueur n'est pas libre.
# ============================================================

title @s actionbar [{"text":"\u2717 Destination occupée","color":"red","bold":true}]
# tellraw @s ["",{color:"dark_gray",bold:true,text:"["},{color:"#ffffff",text:"T"},{color:"#def3e5",text:"e"},{color:"#bee7ca",text:"m"},{color:"#9ddcb0",text:"p"},{color:"#7dd095",text:"o"},{color:"#5cc47b",text:"r"},{color:"#54c68d",text:"a"},{color:"#4cc89f",text:"l"},{color:"#45cab2",text:"i"},{color:"#3dccc4",text:"t"},{color:"#35ced6",text:"y"},{color:"dark_gray",bold:true,text:"] "},{color:"red",text:"✗ Il semble y avoir des blocs sur ta position ! Déplace-toi ailleurs."}]
tellraw @s ["",{color:"dark_gray",bold:true,text:"["},{color:"#ffffff",text:"T"},{color:"#def3e5",text:"e"},{color:"#bee7ca",text:"m"},{color:"#9ddcb0",text:"p"},{color:"#7dd095",text:"o"},{color:"#5cc47b",text:"r"},{color:"#54c68d",text:"a"},{color:"#4cc89f",text:"l"},{color:"#45cab2",text:"i"},{color:"#3dccc4",text:"t"},{color:"#35ced6",text:"y"},{color:"dark_gray",bold:true,text:"]"}," - ",{color:"red",text:"✗ Il semble y avoir un bloc sur la tête à l'arrivée. Déplace-toi ailleurs."}]
playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 0.8