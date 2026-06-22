# Present -> Future
# Mark teleportation as success
scoreboard players set @s temporality.tp_success 1

# Teleportation vers la position de destination deja preparee par l'execution.
tp @s ~ ~ ~

# Met a jour la dimension actuelle : 2 = Futur.
scoreboard players set @s temporality.dim 2

# Effets et messages de confirmation.
playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1 1.4
title @s actionbar [{"text":"» Voyage vers le ","color":"aqua"},{"text":"FUTUR","color":"aqua","bold":true},{"text":" «","color":"aqua"}]
tellraw @s ["",{color:"dark_gray",bold:true,text:"["},{color:"#ffffff",text:"T"},{color:"#def3e5",text:"e"},{color:"#bee7ca",text:"m"},{color:"#9ddcb0",text:"p"},{color:"#7dd095",text:"o"},{color:"#5cc47b",text:"r"},{color:"#54c68d",text:"a"},{color:"#4cc89f",text:"l"},{color:"#45cab2",text:"i"},{color:"#3dccc4",text:"t"},{color:"#35ced6",text:"y"},{color:"dark_gray",bold:true,text:"]"}," - ",{color:"white",text:"Vous avez voyagé vers le "},{color:"aqua",bold:true,text:"FUTUR"},{color:"white",text:"."}]