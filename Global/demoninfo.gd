extends Node

const balloon: Array = ["Nosepass", ["Rock"], 30, 45, 135, 45, 90, 30, 108]
const balloon_learnset: Dictionary = {1: ["Tackle"], 7: ["Harden"], 13: ["Rock Throw"], 16: ["Block"], 22: ["Thunder Wave"], 28: ["Rock Slide"], 31: ["Sandstrom"], 37: ["Rest"], 43: ["Zap Cannon"], 46: ["Lock-On"]}

const skitty: Array = ["Skitty", ["Normal"], 50, 45, 45, 35, 35, 50, 65]
const skitty_lernset: Dictionary = {1: ["Growl", "Tackle"], 3: ["Tail Whip"], 7: ["Attract"], 13: ["Sing"], 15: ["DoubleSlap"], 19: ["Assist"], 25: ["Charm"], 27: ["Faint Attack"], 31: ["Covet"], 33: ["Heal Bell"], 39: ["Double Edge"]}
const delcatty: Array = ["Delcatty", ["Normal"], 70, 65, 65, 55, 55, 90, 138]
const delcatty_lernset: Dictionary = {1: ["Growl", "Attract", "Sing", "DoubleSlap"]}

const sabyele: Array = ["Sableye", ["Dark", "Ghost"], 50, 75, 75, 65, 65, 50, 98]
const sableye_lernset: Dictionary = {1: ["Scratch", "Leer"], 5: ["Foresight"], 9: ["Night Shade"], 13: ["Astonish"], 17: ["Fury Swipes"], 21: ["Fake Out"], 25: ["Detect"], 29: ["Faint Attack"], 33: ["Knock Off"], 37: ["Confuse Ray"], 41: ["Shadow Ball"], 45: ["Mean Look"]}

const mawile: Array = ["Mawile", ["Steel", "Fairy"], 50, 85, 85, 55, 55, 50, 98]
const mawile_lernset: Dictionary = {1: ["Astonish"], 6: ["Fake Tears"], 11: ["Bite"], 16: ["Sweet Scent"], 21: ["ViceGrip"], 26: ["Faint Attck"], 31: ["Baton Pass"], 36: ["Crunch"], 41: ["Iron Defense"], 46: ["Stockpile", "Swallow", "Spit Up"]}

const aron: Array = ["Aron", ["Steel", "Rock"], 50, 70, 100, 40, 40, 30, 96]
const aron_lernset: Dictionary = {1: ["Tackle"], 4: ["Harden"], 7: ["Mud-Slap"], 10: ["Headbutt"], 13: ["Metal Claw"], 17: ["Iron Defense"], 21: ["Roar"], 25: ["Take Down"], 29: ["Iron Tail"], 34: ["Protect"], 39: ["Metal Sound"], 44: ["Double-Edge"]}
const lairon: Array = ["Lairon", ["Steel", "Rock"], 60, 90, 140, 50, 50, 40, 152]
const lairon_lernset: Dictionary = {1: ["Tackle", "Harden", "Mud-Slap", "Headbutt"], 4: ["Harden"], 7: ["Mud-Slap"], 10: ["Headbutt"], 13: ["Metal Claw"], 17: ["Iron Defense"], 21: ["Roar"], 25: ["Take Down"], 29: ["Iron Tail"], 37: ["Protect"], 45: ["Metal Sound"], 53: ["Double-Edge"]}
const aggron: Array = ["Aggron", ["Steel", "Rock"], 70, 110, 180, 60, 60, 50, 205]
const aggron_lernset: Dictionary = {1: ["Tackle", "Harden", "Mud-Slap",  "Headbutt"], 4: ["Harden"], 7: ["Mud-Slap"], 10: ["Headbutt"], 13: ["Metal Claw"], 17: ["Iron Defense"], 21: ["Roar"], 25: ["Take Down"], 29: ["Iron Tail"], 37: ["Protect"], 50: ["Metal Sound"], 63: ["Double-Edge"]}

const meditite: Array = ["Meditite", ["Fight", "Psychic"], 30, 40, 55, 40, 55, 60, 91]
const meditite_lernset: Dictionary = {1: ["Bide"], 4: ["Meditate"], 9: ["Confusion"], 12: ["Detect"], 17: ["Hidden Power"], 20: ["Swagger"], 25: ["Mind Reader"], 28: ["Calm Mind"], 33: ["Hi Jump Kick"], 36: ["Psych Up"], 41: ["Reversal"], 44: ["Recover"]}
const medicham: Array = ["Medicham", ["Fight", "Psychic"], 60, 60, 76, 60, 76, 80, 153]
const medicahm_lernset: Dictionary = {1: ["Fire Punch", "Ice Punch", "Thunder Punch", "Bide", "Meditate", "Confusion", "Detect"], 4: ["Meditate"], 9: ["Confusion"], 12: ["Detect"], 17: ["Hidden Power"], 20: ["Swagger"], 25: ["Mind Reader"], 28: ["Calm Mind"], 33: ["Hi Jump Kick"], 36: ["Psych Up"], 47: ["Reversal"], 56: ["Recover"]}


const pokemon: Array = [balloon]
const pokemon_learnset: Array = [balloon_learnset]

const pokemon_front_sprite: Array = [preload("res://battle_assets/pokemon/treecko/anim_front.png"), preload("res://battle_assets/pokemon/grovyle/anim_front.png"), preload("res://battle_assets/pokemon/sceptile/anim_front.png"), preload("res://battle_assets/pokemon/torchic/anim_front.png"), preload("res://battle_assets/pokemon/combusken/anim_front.png"), preload("res://battle_assets/pokemon/blaziken/anim_front.png"), preload("res://battle_assets/pokemon/mudkip/anim_front.png"), preload("res://battle_assets/pokemon/marshtomp/anim_front.png"), preload("res://battle_assets/pokemon/swampert/anim_front.png"), preload("res://battle_assets/pokemon/poochyena/anim_front.png"), preload("res://battle_assets/pokemon/mightyena/anim_front.png"), preload("res://battle_assets/pokemon/zigzagoon/anim_front.png"), preload("res://battle_assets/pokemon/linoone/anim_front.png"), preload("res://battle_assets/pokemon/wurmple/anim_front.png"), preload("res://battle_assets/pokemon/silcoon/anim_front.png"), preload("res://battle_assets/pokemon/beautifly/anim_front.png"), preload("res://battle_assets/pokemon/cascoon/anim_front.png"), preload("res://battle_assets/pokemon/dustox/anim_front.png"), preload("res://battle_assets/pokemon/lotad/anim_front.png"), preload("res://battle_assets/pokemon/lombre/anim_front.png"), preload("res://battle_assets/pokemon/ludicolo/anim_front.png"), preload("res://battle_assets/pokemon/seedot/anim_front.png"), preload("res://battle_assets/pokemon/nuzleaf/anim_front.png"), preload("res://battle_assets/pokemon/shiftry/anim_front.png"), preload("res://battle_assets/pokemon/taillow/anim_front.png"), preload("res://battle_assets/pokemon/swellow/anim_front.png"), preload("res://battle_assets/pokemon/wingull/anim_front.png"), preload("res://battle_assets/pokemon/pelipper/anim_front.png"), preload("res://battle_assets/pokemon/ralts/anim_front.png"), preload("res://battle_assets/pokemon/kirlia/anim_front.png"), preload("res://battle_assets/pokemon/gardevoir/anim_front.png"), preload("res://battle_assets/pokemon/surskit/anim_front.png"), preload("res://battle_assets/pokemon/masquerain/anim_front.png"), preload("res://battle_assets/pokemon/shroomish/anim_front.png"), preload("res://battle_assets/pokemon/breloom/anim_front.png"), preload("res://battle_assets/pokemon/slakoth/anim_front.png"), preload("res://battle_assets/pokemon/vigoroth/anim_front.png"), preload("res://battle_assets/pokemon/slaking/anim_front.png"), preload("res://battle_assets/pokemon/nincada/anim_front.png"), preload("res://battle_assets/pokemon/ninjask/anim_front.png"), preload("res://battle_assets/pokemon/shedinja/anim_front.png"), preload("res://battle_assets/pokemon/whismur/anim_front.png"), preload("res://battle_assets/pokemon/loudred/anim_front.png"), preload("res://battle_assets/pokemon/exploud/anim_front.png"), preload("res://battle_assets/pokemon/makuhita/anim_front.png"), preload("res://battle_assets/pokemon/hariyama/anim_front.png"), preload("res://battle_assets/pokemon/azurill/anim_front.png"), preload("res://battle_assets/pokemon/nosepass/anim_front.png"), preload("res://battle_assets/pokemon/skitty/anim_front.png"), preload("res://battle_assets/pokemon/delcatty/anim_front.png"), preload("res://battle_assets/pokemon/sableye/anim_front.png"), preload("res://battle_assets/pokemon/mawile/anim_front.png"), preload("res://battle_assets/pokemon/aron/anim_front.png"), preload("res://battle_assets/pokemon/lairon/anim_front.png"), preload("res://battle_assets/pokemon/aggron/anim_front.png"), preload("res://battle_assets/pokemon/meditite/anim_front.png"), preload("res://battle_assets/pokemon/medicham/anim_front.png"), preload("res://battle_assets/pokemon/electrike/anim_front.png"), preload("res://battle_assets/pokemon/manectric/anim_front.png"), preload("res://battle_assets/pokemon/plusle/anim_front.png"), preload("res://battle_assets/pokemon/minun/anim_front.png"), preload("res://battle_assets/pokemon/volbeat/anim_front.png"), preload("res://battle_assets/pokemon/illumise/anim_front.png"), preload("res://battle_assets/pokemon/roselia/anim_front.png"), preload("res://battle_assets/pokemon/gulpin/anim_front.png"), preload("res://battle_assets/pokemon/swalot/anim_front.png"), preload("res://battle_assets/pokemon/carvanha/anim_front.png"), preload("res://battle_assets/pokemon/sharpedo/anim_front.png"), preload("res://battle_assets/pokemon/wailmer/anim_front.png"), preload("res://battle_assets/pokemon/wailord/anim_front.png"), preload("res://battle_assets/pokemon/numel/anim_front.png"), preload("res://battle_assets/pokemon/camerupt/anim_front.png"), preload("res://battle_assets/pokemon/torkoal/anim_front.png"), preload("res://battle_assets/pokemon/spoink/anim_front.png"), preload("res://battle_assets/pokemon/grumpig/anim_front.png"), preload("res://battle_assets/pokemon/spinda/anim_front.png"), preload("res://battle_assets/pokemon/trapinch/anim_front.png"), preload("res://battle_assets/pokemon/vibrava/anim_front.png"), preload("res://battle_assets/pokemon/flygon/anim_front.png"), preload("res://battle_assets/pokemon/cacnea/anim_front.png"), preload("res://battle_assets/pokemon/cacturne/anim_front.png"), preload("res://battle_assets/pokemon/swablu/anim_front.png"), preload("res://battle_assets/pokemon/altaria/anim_front.png"), preload("res://battle_assets/pokemon/zangoose/anim_front.png"), preload("res://battle_assets/pokemon/seviper/anim_front.png"), preload("res://battle_assets/pokemon/lunatone/anim_front.png"), preload("res://battle_assets/pokemon/solrock/anim_front.png"), preload("res://battle_assets/pokemon/barboach/anim_front.png"), preload("res://battle_assets/pokemon/whiscash/anim_front.png"), preload("res://battle_assets/pokemon/corphish/anim_front.png"), preload("res://battle_assets/pokemon/crawdaunt/anim_front.png"), preload("res://battle_assets/pokemon/baltoy/anim_front.png"), preload("res://battle_assets/pokemon/claydol/anim_front.png"), preload("res://battle_assets/pokemon/lileep/anim_front.png"), preload("res://battle_assets/pokemon/cradily/anim_front.png"), preload("res://battle_assets/pokemon/anorith/anim_front.png"), preload("res://battle_assets/pokemon/armaldo/anim_front.png"), preload("res://battle_assets/pokemon/feebas/anim_front.png"), preload("res://battle_assets/pokemon/milotic/anim_front.png"), preload("res://battle_assets/pokemon/castform/footprint.png"), preload("res://battle_assets/pokemon/kecleon/anim_front.png"), preload("res://battle_assets/pokemon/shuppet/anim_front.png"), preload("res://battle_assets/pokemon/banette/anim_front.png"), preload("res://battle_assets/pokemon/duskull/anim_front.png"), preload("res://battle_assets/pokemon/dusclops/anim_front.png"), preload("res://battle_assets/pokemon/tropius/anim_front.png"), preload("res://battle_assets/pokemon/chimecho/anim_front.png"), preload("res://battle_assets/pokemon/absol/anim_front.png"), preload("res://battle_assets/pokemon/wynaut/anim_front.png"), preload("res://battle_assets/pokemon/snorunt/anim_front.png"), preload("res://battle_assets/pokemon/glalie/anim_front.png"), preload("res://battle_assets/pokemon/spheal/anim_front.png"), preload("res://battle_assets/pokemon/sealeo/anim_front.png"), preload("res://battle_assets/pokemon/walrein/anim_front.png"), preload("res://battle_assets/pokemon/clamperl/anim_front.png"), preload("res://battle_assets/pokemon/huntail/anim_front.png"), preload("res://battle_assets/pokemon/gorebyss/anim_front.png"), preload("res://battle_assets/pokemon/relicanth/anim_front.png"), preload("res://battle_assets/pokemon/luvdisc/anim_front.png"), preload("res://battle_assets/pokemon/bagon/anim_front.png"), preload("res://battle_assets/pokemon/shelgon/anim_front.png"), preload("res://battle_assets/pokemon/salamence/anim_front.png"), preload("res://battle_assets/pokemon/beldum/anim_front.png"), preload("res://battle_assets/pokemon/metang/anim_front.png"), preload("res://battle_assets/pokemon/metagross/anim_front.png"), preload("res://battle_assets/pokemon/regirock/anim_front.png"), preload("res://battle_assets/pokemon/regice/anim_front.png"), preload("res://battle_assets/pokemon/registeel/anim_front.png"), preload("res://battle_assets/pokemon/latias/anim_front.png"), preload("res://battle_assets/pokemon/latios/anim_front.png"), preload("res://battle_assets/pokemon/kyogre/anim_front.png"), preload("res://battle_assets/pokemon/groudon/anim_front.png"), preload("res://battle_assets/pokemon/rayquaza/anim_front.png"), preload("res://battle_assets/pokemon/jirachi/anim_front.png"), preload("res://battle_assets/pokemon/deoxys/anim_front.png")]
const pokemon_back_sprite: Array = [preload("res://battle_assets/pokemon/treecko/back.png"), preload("res://battle_assets/pokemon/grovyle/back.png"), preload("res://battle_assets/pokemon/sceptile/back.png"), preload("res://battle_assets/pokemon/torchic/back.png"), preload("res://battle_assets/pokemon/combusken/back.png"), preload("res://battle_assets/pokemon/blaziken/back.png"), preload("res://battle_assets/pokemon/mudkip/back.png"), preload("res://battle_assets/pokemon/marshtomp/back.png"), preload("res://battle_assets/pokemon/swampert/back.png"), preload("res://battle_assets/pokemon/poochyena/back.png"), preload("res://battle_assets/pokemon/mightyena/back.png"), preload("res://battle_assets/pokemon/zigzagoon/back.png"), preload("res://battle_assets/pokemon/linoone/back.png"), preload("res://battle_assets/pokemon/wurmple/back.png"), preload("res://battle_assets/pokemon/silcoon/back.png"), preload("res://battle_assets/pokemon/beautifly/back.png"), preload("res://battle_assets/pokemon/cascoon/back.png"), preload("res://battle_assets/pokemon/dustox/back.png"), preload("res://battle_assets/pokemon/lotad/back.png"), preload("res://battle_assets/pokemon/lombre/back.png"), preload("res://battle_assets/pokemon/ludicolo/back.png"), preload("res://battle_assets/pokemon/seedot/back.png"), preload("res://battle_assets/pokemon/nuzleaf/back.png"), preload("res://battle_assets/pokemon/shiftry/back.png"), preload("res://battle_assets/pokemon/taillow/back.png"), preload("res://battle_assets/pokemon/swellow/back.png"), preload("res://battle_assets/pokemon/wingull/back.png"), preload("res://battle_assets/pokemon/pelipper/back.png"), preload("res://battle_assets/pokemon/ralts/back.png"), preload("res://battle_assets/pokemon/kirlia/back.png"), preload("res://battle_assets/pokemon/gardevoir/back.png"), preload("res://battle_assets/pokemon/surskit/back.png"), preload("res://battle_assets/pokemon/masquerain/back.png"), preload("res://battle_assets/pokemon/shroomish/back.png"), preload("res://battle_assets/pokemon/breloom/back.png"), preload("res://battle_assets/pokemon/slakoth/back.png"), preload("res://battle_assets/pokemon/vigoroth/back.png"), preload("res://battle_assets/pokemon/slaking/back.png"), preload("res://battle_assets/pokemon/nincada/back.png"), preload("res://battle_assets/pokemon/ninjask/back.png"), preload("res://battle_assets/pokemon/shedinja/back.png"), preload("res://battle_assets/pokemon/whismur/back.png"), preload("res://battle_assets/pokemon/loudred/back.png"), preload("res://battle_assets/pokemon/exploud/back.png"), preload("res://battle_assets/pokemon/makuhita/back.png"), preload("res://battle_assets/pokemon/hariyama/back.png"), preload("res://battle_assets/pokemon/azurill/back.png"), preload("res://battle_assets/pokemon/nosepass/back.png"), preload("res://battle_assets/pokemon/skitty/back.png"), preload("res://battle_assets/pokemon/delcatty/back.png"), preload("res://battle_assets/pokemon/sableye/back.png"), preload("res://battle_assets/pokemon/mawile/back.png"), preload("res://battle_assets/pokemon/aron/back.png"), preload("res://battle_assets/pokemon/lairon/back.png"), preload("res://battle_assets/pokemon/aggron/back.png"), preload("res://battle_assets/pokemon/meditite/back.png"), preload("res://battle_assets/pokemon/medicham/back.png"), preload("res://battle_assets/pokemon/electrike/back.png"), preload("res://battle_assets/pokemon/manectric/back.png"), preload("res://battle_assets/pokemon/plusle/back.png"), preload("res://battle_assets/pokemon/minun/back.png"), preload("res://battle_assets/pokemon/volbeat/back.png"), preload("res://battle_assets/pokemon/illumise/back.png"), preload("res://battle_assets/pokemon/roselia/back.png"), preload("res://battle_assets/pokemon/gulpin/back.png"), preload("res://battle_assets/pokemon/swalot/back.png"), preload("res://battle_assets/pokemon/carvanha/back.png"), preload("res://battle_assets/pokemon/sharpedo/back.png"), preload("res://battle_assets/pokemon/wailmer/back.png"), preload("res://battle_assets/pokemon/wailord/back.png"), preload("res://battle_assets/pokemon/numel/back.png"), preload("res://battle_assets/pokemon/camerupt/back.png"), preload("res://battle_assets/pokemon/torkoal/back.png"), preload("res://battle_assets/pokemon/spoink/back.png"), preload("res://battle_assets/pokemon/grumpig/back.png"), preload("res://battle_assets/pokemon/spinda/back.png"), preload("res://battle_assets/pokemon/trapinch/back.png"), preload("res://battle_assets/pokemon/vibrava/back.png"), preload("res://battle_assets/pokemon/flygon/back.png"), preload("res://battle_assets/pokemon/cacnea/back.png"), preload("res://battle_assets/pokemon/cacturne/back.png"), preload("res://battle_assets/pokemon/swablu/back.png"), preload("res://battle_assets/pokemon/altaria/back.png"), preload("res://battle_assets/pokemon/zangoose/back.png"), preload("res://battle_assets/pokemon/seviper/back.png"), preload("res://battle_assets/pokemon/lunatone/back.png"), preload("res://battle_assets/pokemon/solrock/back.png"), preload("res://battle_assets/pokemon/barboach/back.png"), preload("res://battle_assets/pokemon/whiscash/back.png"), preload("res://battle_assets/pokemon/corphish/back.png"), preload("res://battle_assets/pokemon/crawdaunt/back.png"), preload("res://battle_assets/pokemon/baltoy/back.png"), preload("res://battle_assets/pokemon/claydol/back.png"), preload("res://battle_assets/pokemon/lileep/back.png"), preload("res://battle_assets/pokemon/cradily/back.png"), preload("res://battle_assets/pokemon/anorith/back.png"), preload("res://battle_assets/pokemon/armaldo/back.png"), preload("res://battle_assets/pokemon/feebas/back.png"), preload("res://battle_assets/pokemon/milotic/back.png"), preload("res://battle_assets/pokemon/castform/normal/back.png"), preload("res://battle_assets/pokemon/kecleon/back.png"), preload("res://battle_assets/pokemon/shuppet/back.png"), preload("res://battle_assets/pokemon/banette/back.png"), preload("res://battle_assets/pokemon/duskull/back.png"), preload("res://battle_assets/pokemon/dusclops/back.png"), preload("res://battle_assets/pokemon/tropius/back.png"), preload("res://battle_assets/pokemon/chimecho/back.png"), preload("res://battle_assets/pokemon/absol/back.png"), preload("res://battle_assets/pokemon/wynaut/back.png"), preload("res://battle_assets/pokemon/snorunt/back.png"), preload("res://battle_assets/pokemon/glalie/back.png"), preload("res://battle_assets/pokemon/spheal/back.png"), preload("res://battle_assets/pokemon/sealeo/back.png"), preload("res://battle_assets/pokemon/walrein/back.png"), preload("res://battle_assets/pokemon/clamperl/back.png"), preload("res://battle_assets/pokemon/huntail/back.png"), preload("res://battle_assets/pokemon/gorebyss/back.png"), preload("res://battle_assets/pokemon/relicanth/back.png"), preload("res://battle_assets/pokemon/luvdisc/back.png"), preload("res://battle_assets/pokemon/bagon/back.png"), preload("res://battle_assets/pokemon/shelgon/back.png"), preload("res://battle_assets/pokemon/salamence/back.png"), preload("res://battle_assets/pokemon/beldum/back.png"), preload("res://battle_assets/pokemon/metang/back.png"), preload("res://battle_assets/pokemon/metagross/back.png"), preload("res://battle_assets/pokemon/regirock/back.png"), preload("res://battle_assets/pokemon/regice/back.png"), preload("res://battle_assets/pokemon/registeel/back.png"), preload("res://battle_assets/pokemon/latias/back.png"), preload("res://battle_assets/pokemon/latios/back.png"), preload("res://battle_assets/pokemon/kyogre/back.png"), preload("res://battle_assets/pokemon/groudon/back.png"), preload("res://battle_assets/pokemon/rayquaza/back.png"), preload("res://battle_assets/pokemon/jirachi/back.png"), preload("res://battle_assets/pokemon/deoxys/back.png")]


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass