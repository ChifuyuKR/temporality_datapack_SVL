# ============================================================
#  Temporality - Feedback : tag requis
# ============================================================

title @s actionbar [{"text":"\u2717 Tag requis : tempo_player","color":"red","bold":true}]
tellraw @s ["",{color:"dark_gray",bold:true,text:"["},{color:"#ffffff",text:"T"},{color:"#def3e5",text:"e"},{color:"#bee7ca",text:"m"},{color:"#9ddcb0",text:"p"},{color:"#7dd095",text:"o"},{color:"#5cc47b",text:"r"},{color:"#54c68d",text:"a"},{color:"#4cc89f",text:"l"},{color:"#45cab2",text:"i"},{color:"#3dccc4",text:"t"},{color:"#35ced6",text:"y"},{color:"dark_gray",bold:true,text:"]"}," - ",{color:"red",text:"Vous devez avoir le tag tempo_player pour utiliser les pouvoirs temporels."}]
playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 0.7
