# ============================================================
#  Temporality - Feedback : tentative pendant le cooldown
# ============================================================

# Recalcule le temps restant en secondes (arrondi au superieur).
scoreboard players operation @s temporality.cd_disp = @s temporality.cd
scoreboard players add @s temporality.cd_disp 19
scoreboard players operation @s temporality.cd_disp /= #20 temporality.const

# Avertit le joueur que le voyage est en cooldown.
# tellraw @s ["",{color:"dark_gray",bold:true,text:"["},{color:"#ffffff",text:"T"},{color:"#def3e5",text:"e"},{color:"#bee7ca",text:"m"},{color:"#9ddcb0",text:"p"},{color:"#7dd095",text:"o"},{color:"#5cc47b",text:"r"},{color:"#54c68d",text:"a"},{color:"#4cc89f",text:"l"},{color:"#45cab2",text:"i"},{color:"#3dccc4",text:"t"},{color:"#35ced6",text:"y"},{color:"dark_gray",bold:true,text:"]"},{"text":" \u2717 Patientez ","color":"red",},{"score":{"name":"@s","objective":"temporality.cd_disp"},"color":"yellow","bold":true},{"text":" s avant le prochain voyage","color":"red"}]
tellraw @s ["",{color:"dark_gray",bold:true,text:"["},{color:"#ffffff",text:"T"},{color:"#def3e5",text:"e"},{color:"#bee7ca",text:"m"},{color:"#9ddcb0",text:"p"},{color:"#7dd095",text:"o"},{color:"#5cc47b",text:"r"},{color:"#54c68d",text:"a"},{color:"#4cc89f",text:"l"},{color:"#45cab2",text:"i"},{color:"#3dccc4",text:"t"},{color:"#35ced6",text:"y"},{color:"dark_gray",bold:true,text:"]"}," - ",{text:"\u2717 Patientez ","color":"red"},{score:{"name":"@s","objective":"temporality.cd_disp"},"color":"yellow","bold":true},{text:" s avant le prochain voyage","color":"red"}]
playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 0.5