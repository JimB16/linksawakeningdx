

SECTION "bank9", ROMX, BANK[$9]

; 0x24000
	dw Unknown_24200 ; $4200
	dw $4264
	dw $42b5
	dw $4316
	dw $438b
	dw $43d8
	dw $441f
	dw $450b
	dw $4568
	dw $45b4
	dw $460c
	dw $465d
	dw $46a7
	dw $4720
	dw $478b
	dw $4850
	dw $489c
	dw $48eb
	dw $4942
	dw $4964
	dw $499b
	dw $49d7
	dw $4a1a
	dw $4a65
	dw $4ad2
	dw $4b23
	dw $4b68
	dw $4bb3
	dw $4c70
	dw $4cbc
	dw $4d15
	dw $4d80
	dw $4de8
	dw $4e1f
	dw $4e5e
	dw $4e93
	dw $4ebc
	dw $4f0b
	dw $4f3d
	dw $4f6f
	dw $4fa9
	dw $4fe5
	dw $501f
	dw $505c
	dw $50f9
	dw $5135
	dw $5172
	dw $51a8
	dw $51e4
	dw $5220
	dw $5259
	dw $52bc
	dw $52e3
	dw $533e
	dw $5382
	dw $53bc
	dw $53f8
	dw $544e
	dw $547e
	dw $54ba
	dw $5517
	dw $556e
	dw $55ab
	dw $55de
	dw $5621
	dw $566c
	dw $56be
	dw $572e
	dw $5772
	dw $57b9
	dw $57ff
	dw $583d
	dw $5876
	dw $58c5
	dw $58e6
	dw $5924
	dw $594a
	dw $5998
	dw $59e9
	dw $5a0e
	dw $5a3f
	dw $5a8f
	dw $5ae2
	dw $5b35
	dw $5b82
	dw $5bbe
	dw $5bf5
	dw $5c31
	dw $5c73
	dw $5ca9
	dw $5ce7
	dw $5d11
	dw $5d45
	dw $5d8b
	dw $5dd3
	dw $5e22
	dw $5e64
	dw $5ea7
	dw $5ef3
	dw $5a8f
	dw $5f4c
	dw $5f88
	dw $5fc6
	dw $600f
	dw $605a
	dw $6081
	dw $60cb
	dw $60ff
	dw $6138
	dw $6187
	dw $61c7
	dw $6208
	dw $6243
	dw $6289
	dw $62c2
	dw $630c
	dw $635f
	dw $6396
	dw $63dd
	dw $6432
	dw $6495
	dw $64c7
	dw $6559
	dw $657a
	dw $65be
	dw $65e2
	dw $660b
	dw $6634

	dw $4000
	dw $4038
	dw $4081
	dw $40bb
	dw $40f6
	dw $412e
	dw $4182
	dw $41e1
	dw $422f
	dw $425c
	dw $4292
	dw $42bf
	dw $42fc
	dw $43b9
	dw $43fa
	dw $443a
	dw $4493
	dw $44bc
	dw $44db
	dw $4516
	dw $4549
	dw $4585
	dw $45d1
	dw $45fb
	dw $4635
	dw $4678
	dw $46b5
	dw $46de
	dw $472a
	dw $476c
	dw $47a7
	dw $47df
	dw $481a
	dw $4866
	dw $48ab
	dw $48de
	dw $48f6
	dw $4939
	dw $4973
	dw $49b0
	dw $49e4
	dw $4a19
	dw $4a46
	dw $4a65
	dw $4aae
	dw $4afb
	dw $4b1d
	dw $4b4b
	dw $4b9a
	dw $4bc8
	dw $4bf5
	dw $4c26
	dw $4c63
	dw $4c99
	dw $4cfa
	dw $4d44
	dw $4d85
	dw $4dcf
	dw $4e02
	dw $4e47
	dw $4e87
	dw $4ec7
	dw $4ee8
	dw $4f10
	dw $4f4c
	dw $4fa1
	dw $4fc6
	dw $4fe1
	dw $5008
	dw $5067
	dw $50d6
	dw $5124
	dw $5155
	dw $51b6
	dw $51e0
	dw $51ee
	dw $522b
	dw $5269
	dw $52a0
	dw $52f2
	dw $532f
	dw $5367
	dw $53a0
	dw $53bd
	dw $53fe
	dw $546d
	dw $54c8
	dw $550b
	dw $554f
	dw $5582
	dw $55a9
	dw $55ea
	dw $562b
	dw $565f
	dw $56ac
	dw $56f3
	dw $5725
	dw $5748
	dw $577f
	dw $57a8
	dw $57d4
	dw $57fe
	dw $5836
	dw $5872
	dw $58a2
	dw $58de
	dw $5937
	dw $5990
	dw $59b8
	dw $5a00
	dw $5a55
	dw $5a8d
	dw $5aa9
	dw $5ae6
	dw $5b17
	dw $5b58
	dw $5b7b
	dw $5ba5
	dw $5bd9
	dw $5c2c
	dw $5c5b
	dw $5cb5
	dw $5cfa
	dw $5d49
	dw $5d79
	dw $5dc2
	dw $5dfc
	dw $5e2a
; 0x24200

Unknown_24200:

INCBIN "baserom.gbc", 16384*9+$200, $268e-$200

; 0x2668e

	db "Have you heard  "
	db "of the Flying   "
	db "Rooster?  They  "
	db "say it lived in "
	db "Mabe Village a  "
	db "long time ago..."
	db "I wonder if it^s"
	db "true..."
	db $ff

	db "Aaaah, Little   "
	db "Marin... I want "
	db "her to come back"
	db "again...Her song"
	db "is the best..."
	db $ff

	db "I dreamed that  "
	db "I turned into a "
	db "carrot last     "
	db "night...  What  "
	db "an odd dream..."
	db $ff

	db "Eh?  How can an "
	db "animal talk?    "
	db "How?  Hey, I^m  "
	db "just a rabbit,  "
	db "so I don^t know!"
	db $ff

	db "Ahhh!  It^s her!"
	db "Little Marin!!"
	db $ff

	db "If you have no  "
	db "courage,then    "
	db "you have no     "
	db "strength.       "
	db "Gravestones     "
	db "won^t move for  "
	db "cowards."
	db $ff

	db "I^m not afraid. "
	db "I just decided  "
	db "to wait at home."
	db $ff

	db "This is my first"
	db "walk with you,  "
	db "#####."
	db $ff

	db ". . . . ."
	db $ff

	db "This cliff will "
	db "be our secret   "
	db "place. "
	db $ff

	db "Aren^t you going"
	db "to say anything?"
	db $ff

	db "Oh how I love   "
	db "pictures! Why   "
	db "don^t you take  "
	db "a picture when  "
	db "no one is       "
	db "around? You can "
	db "call it . . ."
	db $ff

	db "You^ve got the  "
	db "Blue Clothes!   "
	db "Your damage will"
	db "be reduced by   "
	db "half!"
	db $ff

	db "You^ve got the  "
	db "Red Clothes!    "
	db "Your body is    "
	db "full of energy! "
	db $ff

	db "Red for offense,"
	db "blue for        "
	db "defense. Which  "
	db "do you choose?  "
	db "    RED  BLUE"
	db $fe

	db "Are you sure?   "
	db "    YES  NO"
	db $fe

	db "The fairy queen "
	db "is waiting for  "
	db "you."
	db $ff

	db "Do you have the "
	db "powder? If not, "
	db "you must go     "
	db "back."
	db $ff

	db "Our colors are  "
	db "never the same! "
	db "If I am red, he "
	db "is blue! If he  "
	db "is red, I am    "
	db "blue! What color"
	db "is my cloth?    "
	db "    Red  Blue"
	db $fe

	db "BOO! I am no    "
	db "weakling! Your  "
	db "pitiful sword is"
	db "no match for me!"
	db $ff

	db "I am sorry, but "
	db "this is the     "
	db "Color Dungeon.  "
	db "Only those with "
	db "the power of    "
	db "color may enter."
	db "If you can tell "
	db "who wears red   "
	db "and who wears   "
	db "blue, you may   "
	db "enter.          "
	db "Farewell."
	db $ff

	db "Here is your    "
	db "clue. Make      "
	db "all the red     "
	db "blue."
	db $ff

	db "No,  no. Take a "
	db "closer look and "
	db "try again."
	db $ff

	db "Don^t tell      "
	db "anyone."
	db $ff

	db "Do you want to  "
	db "read this book? "
	db "    YES  NO"
	db $fe

	db "New world of    "
	db "color under the "
	db "5 gravestones.  "
	db "                "
	db "   3"
	db $f0

	db "  4"
	db $f3

	db "  5"
	db $f0

	db "      2"
	db $f2

	db "  1"
	db $f1

	db "       Try with "
	db "all    your migh"
	db "t. Opena new pat"
	db "h!     Whoever i"
	db "s      worthy re"
	db "ceives the power"
	db " of    color. I "
	db "wonder what the "
	db "world  of color "
	db "is?"
	db $ff

	db "Welcome, #####. "
	db "I admire you for"
	db "coming this far."
	db "I will give you "
	db "the power of    "
	db "color. If you   "
	db "want offense,   "
	db "choose red. If  "
	db "you want defense"
	db "choose blue.    "
	db "Which power do  "
	db "you want?       "
	db "    RED  BLUE"
	db $fe

	db "You fool! Your  "
	db "sword won^t     "
	db "work! Try       "
	db "something else!"
	db $ff

	db "What a greedy   "
	db "fool! You want  "
	db "more power?! A  "
	db "buffoon like you"
	db "might as well   "
	db "give up and     "
	db "go home!"
	db $ff

	db "Relax and close "
	db "your eyes."
	db $ff

	db "I will now take "
	db "you out."
	db $ff

	db "Blue is safe.   "
	db "Yellow is       "
	db "caution. Red is "
	db "danger."
	db $ff

	db "Yellow is       "
	db "caution. Red is "
	db "danger,Take     "
	db "your time."
	db $ff

	db "Blue. Start     "
	db "over. Yellow is "
	db "caution. Red is "
	db "danger."
	db $ff

	db "Hey, that looks "
	db "great! I^ll call"
	db "it ^##### Plays "
	db "With BowWow!^   "
	db "Now get closer  "
	db "to BowWow!"
	db $ff

	db "Grrrr!"
	db $ff

	db "#####, get      "
	db "closer!"
	db $ff

	db "Grrrr! Grrrr!!"
	db $ff

	db "Much closer! OK,"
	db "I^m ready.      "
	db "Smile!"
	db $ff

	db "Grrrr! Grrrr!!  "
	db "GRRRR!"
	db $ff

	db "Ha ha ha! Do it!"
	db "Do it!  Do it   "
	db "moooore! ... ..."
	db "Hunh?  No, it^s "
	db "nothing... I    "
	db "didn^t mean it."
	db $ff

	db "Not very good..."
	db "Eh?  What?  Did "
	db "I say something?"
	db "No, you^re hear-"
	db "ing things..."
	db $ff

	db "#####, do you   "
	db "always look in  "
	db "other people^s  "
	db "drawers?"
	db $ff

	db "Great!  Dig it! "
	db "Dig it!  Dig to "
	db "the center of   "
	db "the earth!!"
	db $ff

	db "Whew!  What a   "
	db "surprise!"
	db $ff

	db "Ohh!  I^m sorry!"
	db "Are you okay?!  "
	db "#####?"
	db $ff

	db "Hey Mon!"
	db $ff

	db "You know me, I  "
	db "like short names"
	db "the best..."
	db $ff

	db "It can display  "
	db "millions of     "
	db "polygons!"
	db $ff

	db "I definitely    "
	db "need it, as soon"
	db "as possible!"
	db $ff

	db "Turn aside the  "
	db "spined ones with"
	db "a shield..."
	db $ff

	db "First, defeat   "
	db "the imprisoned  "
	db "Pols Voice,     "
	db "Last, Stalfos..."
	db $ff

	db $ff

	db "Far away...     "
	db "Do not fear,    "
	db "dash and fly!"
	db $ff

	db "The glint of the"
	db "tile will be    "
	db "your guide..."
	db $ff

	db "Dive under where"
	db "torchlight beams"
	db "do cross..."
	db $ff

	db "Enter the space "
	db "where the eyes  "
	db "have walls..."
	db $ff

	db "The riddle is   "
	db "solved when the "
	db "pillars fall!"
	db $ff

	db "Fill all the    "
	db "holes with the  "
	db "rock that rolls,"
	db "this ("
	db $ee

	db ") is the key!"
	db $ff

	db "If there is a   "
	db "door that you   "
	db "can^t open, move"
	db "a stone block."
	db $ff

	db "Make every block"
	db "design the same."
	db "A new path will "
	db "open."
	db $ff

	db "Part of the     "
	db "floor is raised."
	db "Tap the blue    "
	db "crystal."
	db $ff

	db "To defeat the   "
	db "black monster   "
	db "with the hard   "
	db "shell, feed him "
	db "something ex-   "
	db "plosive."
	db $ff

	db "Poke suspicious "
	db "parts of the    "
	db "wall with your  "
	db "sword and listen"
	db "to the sounds it"
	db "makes."
	db $ff

	db "If you can^t    "
	db "destroy a       "
	db "skeleton with   "
	db "your sword, try "
	db "using a bomb."
	db $ff

	db "To open a       "
	db "treasure chest, "
	db "use the pots    "
	db "around it."
	db $ff

	db "Hop on top of   "
	db "the crystals to "
	db "move forward."
	db $ff

	db "If you can^t go "
	db "over the poles, "
	db "try throwing    "
	db "things you have "
	db "in your hands."
	db $ff

	db "Jump off the    "
	db "floor above to  "
	db "reach the chest "
	db "on the table."
	db $ff

	db "To defeat the   "
	db "monsters who    "
	db "hold the key,   "
	db "attack them from"
	db "a higher place."
	db $ff

	db "If the statue   "
	db "looks strange,  "
	db "shoot it with   "
	db "the bow."
	db $ff

	db "Let^s take a    "
	db "picture!        "
	db "    YES  NO"
	db $fe

	db "No picture?! Are"
	db "you pullin^ my  "
	db "leg?            "
	db "    Yes  No way"
	db $fe

	db "What a bummer!"
	db $ff

	db "Beautiful! I^ll "
	db "call this ^Game "
	db "Over.^"
	db $ff

	db "What^s your     "
	db "name, young man?"
	db "#####? Well     "
	db "here^s your     "
	db "album, #####.   "
	db "Give it a look  "
	db "before you      "
	db "leave!"
	db $ff

	db "Let^s see if we "
	db "can fill that   "
	db "album!"
	db $ff

	db "11 shots left!  "
	db "What kind of    "
	db "picture should  "
	db "I take?"
	db $ff

	db "10 shots left!  "
	db "What kind of    "
	db "picture should  "
	db "I take?"
	db $ff

	db "9 shots left!   "
	db "What kind of    "
	db "picture should  "
	db "I take?"
	db $ff

	db "8 shots left!   "
	db "What kind of    "
	db "picture should  "
	db "I take?"
	db $ff

	db "7 shots left!   "
	db "What kind of    "
	db "picture should  "
	db "I take?"
	db $ff

	db "6 shots left!   "
	db "What kind of    "
	db "picture should  "
	db "I take?"
	db $ff

	db "5 shots left!   "
	db "What kind of    "
	db "picture should  "
	db "I take?"
	db $ff

	db "4 shots left!   "
	db "What kind of    "
	db "picture should  "
	db "I take?"
	db $ff

	db "3 shots left!   "
	db "What kind of    "
	db "picture should  "
	db "I take?"
	db $ff

	db "2 shots left!   "
	db "What kind of    "
	db "picture should  "
	db "I take?"
	db $ff

	db "1 shots left!   "
	db "What kind of    "
	db "picture should  "
	db "I take?"
	db $ff

	db "Oh no! You^re   "
	db "out of film!    "
	db "Don^t forget to "
	db "look at your    "
	db "album!"
	db $ff

	db "Hi! I^m the     "
	db "photographer!   "
	db "What a great    "
	db "photo moment!   "
	db "I^ll call this  "
	db "^Heads Up!^"
	db $ff

	db "Hey, this       "
	db "represents your "
	db "adventures      "
	db "perfectly!"
	db $ff

	db "I^ll call this  "
	db "one ^Close      "
	db "Call.^ Hmm."
	db $ff

	db "I^m too close."
	db $ff

	db "I should back up"
	db "."
	db $ff

	db "Aaaaaah!"
	db $ff

	db "I^m going back  "
	db "to the store.   "
	db "Bye!"
	db $ff

	db "See me later,   "
	db "when you^re     "
	db "alone!"
	db $ff

	db "Are you sure?   "
	db "    YES  NO"
	db $fe

	db "Ah how I love   "
	db "pictures. Hey,  "
	db "#####! What are "
	db "you doing here? "
	db $ff

	db "  VERO "
	db $cf

	db $ff

	db "Si tu vois      "
	db "les pointes,    "
	db "pense % utiliser"
	db "ton Bouclier."
	db $ff

	db "D^abord un lapin"
	db "et en dernier,  "
	db "un spectre..."
	db $ff

	db "Si loin...      "
	db "Ne crains rien. "
	db "Fonce et vole!"
	db $ff

	db "La lueur des    "
	db "tuiles sera     "
	db "ton guide..."
	db $ff

	db "Plonge l% o=    "
	db "se croisent     "
	db "les lumi+res    "
	db "des flambeaux..."
	db $ff

	db "Fracasse        "
	db "le mur          "
	db "des Yeux        "
	db "du Masque!"
	db $ff

	db "Le r*bus est    "
	db "r*solu si les 4 "
	db "piliers tombent."
	db $ff

	db "Comble tous     "
	db "les trous avec  "
	db "le roc qui roule"
	db "et cette "
	db $ee

	db " est  la solutio"
	db "n!"
	db $ff

	db "Si une porte ne "
	db "s^ouvre pas,    "
	db "d*place un bloc."
	db $ff

	db "Si les blocs se "
	db "ressemblent, un "
	db "nouveau chemin  "
	db "s^ouvrira."
	db $ff

	db "Une partie du   "
	db "sol s^*l+ve.    "
	db "Actionne le     "
	db "cristal bleu."
	db $ff

; 0x27fb7

