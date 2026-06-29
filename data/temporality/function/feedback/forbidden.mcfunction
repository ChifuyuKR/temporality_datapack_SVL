# Teleportation forbidden (Past <-> Future direct)
# Mark teleportation as failure
scoreboard players set @s temporality.tp_success 0

title @s times 10 70 20
title @s title [{"text":"✗ Trajet impossible ✗","color":"dark_red","bold":true}]
title @s subtitle [{"text":"Passez par le PRESENT","color":"red","bold":true}]
title @s actionbar [{"text":"✗ Trajet impossible : passez par le PRESENT","color":"red","bold":true}]
tellraw @s ["",{color:"dark_gray",bold:true,text:"["},{color:"#ffffff",text:"T"},{color:"#def3e5",text:"e"},{color:"#bee7ca",text:"m"},{color:"#9ddcb0",text:"p"},{color:"#7dd095",text:"o"},{color:"#5cc47b",text:"r"},{color:"#54c68d",text:"a"},{color:"#4cc89f",text:"l"},{color:"#45cab2",text:"i"},{color:"#3dccc4",text:"t"},{color:"#35ced6",text:"y"},{color:"dark_gray",bold:true,text:"]"}," - ",{color:"red",text:"Vous ne pouvez pas voyager directement entre le "},{color:"gray",bold:true,text:"Passé"},{color:"red",text:" et le "},{color:"aqua",bold:true,text:"Futur."}}]
playsound minecraft:entity.villager.no master @s ~ ~ ~ 1 1
