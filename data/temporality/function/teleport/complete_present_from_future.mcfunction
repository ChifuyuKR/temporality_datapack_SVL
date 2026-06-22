# Future -> Present
# Mark teleportation as success
scoreboard players set @s temporality.tp_success 1

# Teleportation vers la position de destination deja preparee par l'execution.
tp @s ~ ~ ~

# Met a jour la dimension actuelle : 1 = Present.
scoreboard players set @s temporality.dim 1

# Effets et messages de confirmation.
playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1 1.0
title @s actionbar [{"text":"» Retour au ","color":"green"},{"text":"PRESENT","color":"green","bold":true},{"text":" «","color":"green"}]
tellraw @s ["",{color:"dark_gray",bold:true,text:"["},{color:"#ffffff",text:"T"},{color:"#def3e5",text:"e"},{color:"#bee7ca",text:"m"},{color:"#9ddcb0",text:"p"},{color:"#7dd095",text:"o"},{color:"#5cc47b",text:"r"},{color:"#54c68d",text:"a"},{color:"#4cc89f",text:"l"},{color:"#45cab2",text:"i"},{color:"#3dccc4",text:"t"},{color:"#35ced6",text:"y"},{color:"dark_gray",bold:true,text:"]"}," - ",{color:"white",text:"Vous êtes revenu au "},{color:"green",bold:true,text:"PRESENT"},{color:"white",text:"."}]