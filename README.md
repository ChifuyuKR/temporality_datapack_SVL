# Temporality — Datapack de voyage temporel (Minecraft 1.21.11)

Datapack pour un parcours basé sur le voyage dans le temps entre 3 versions
alignées de la même map : **Passé** (gauche) — **Présent** (centre) — **Futur** (droite),
espacées de **17 blocs** sur l'axe X.

## Installation
1. Copiez le dossier `temporality_datapack` dans :
   `.minecraft/saves/<VotreMonde>/datapacks/`
2. Dans le monde, exécutez `/reload`.
3. Donnez les items temporels au joueur : `/function temporality:give_items`

## Items et téléportation
| Item            | Dimension cible | Couleur du nom |
|-----------------|-----------------|----------------|
| Lingot de fer   | Passé           | gris           |
| Émeraude        | Présent         | vert           |
| Diamant         | Futur           | aqua           |

Faites un **clic droit** avec l'item pour voyager.

### Règles de déplacement
- Présent → Passé : `tp ~-17 ~0 ~0`
- Présent → Futur : `tp ~17 ~0 ~0`
- Passé → Présent : `tp ~17 ~0 ~0`
- Futur → Présent : `tp ~-17 ~0 ~0`
- **Passé ↔ Futur direct : INTERDIT** (message d'erreur, il faut passer par le Présent)

### Cooldown
- **3 secondes** (60 ticks) entre chaque téléportation.
- Le temps restant s'affiche dans l'**action bar**.
- Toute tentative pendant le cooldown est bloquée avec un message.

## Détail technique : détection du clic droit
Les items vanilla (lingot de fer, émeraude, diamant) ne sont pas « utilisables » :
un clic droit ne déclenche normalement rien. Le datapack ajoute donc le composant
`minecraft:consumable` (durée quasi nulle, sans son ni particule) aux items distribués
par `give_items`. Le clic droit devient ainsi détectable via l'advancement
`minecraft:consume_item`

## Structure des fonctions
- `temporality:load` — initialise les scoreboards (tag `minecraft:load`)
- `temporality:tick` — défaut de dimension + gestion du cooldown (tag `minecraft:tick`)
- `temporality:give_items` — donne les 3 items temporels
- `teleport/use_iron|use_emerald|use_diamond` — déclenchées par les advancements
- `teleport/try_teleport` — vérifie le cooldown
- `teleport/dispatch` — aiguille selon dimension actuelle/cible
- `teleport/to_*` — exécute la téléportation relative
- `cooldown/display` — décrémente et affiche le cooldown
- `feedback/cooldown_active|forbidden|already_here` — messages d'erreur/info

## Scoreboards utilisés
- `temporality.dim` — dimension actuelle (0=Passé, 1=Présent, 2=Futur)
- `temporality.target` — dimension cible de l'item utilisé
- `temporality.cd` — cooldown restant (ticks)
- `temporality.cd_disp` — cooldown affiché (secondes)
- `temporality.const` — constantes (`#20` = 20)
