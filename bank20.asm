; $14:$0000 = 0x50000

; 2=opens shutters.  4=defeats all enemies.  6=a treasure chest appears at position 28.  8=a key falls at position 32.  A=a staircase will appear at position 18.  C=the miniboss flag is set, shutter opens, warp to start of dungeon is opened.
; Events
	const_def
	const EVENT_0
	const EVENT_1
	const EVENT_2
	const EVENT_3
	const EVENT_4
	const EVENT_5
	const EVENT_6
	const EVENT_7
	const EVENT_8
	const EVENT_9
	const EVENT_A
	const EVENT_B
	const EVENT_C
	const EVENT_D
	const EVENT_E
	const EVENT_F

; 1=must defeat all enemies.  2=push a block.  3=push a trigger.  4=?  5=light all torches.  6=level 2 nightmare key puzzle, that is you need to destroy a Pols Voice first, then a keese, then a staflos.  7=push two blocks together, can be in any form as long as they are both movable blocks.  8=kill special enemies, which are defined as enemies that can't normally be destroyed like traps and sparks.  9=level 4 tile puzzle must be completed.  A=defeat boss 4 or 7 to open shutter door.  B=one way shutter, or throw somthing at it to open.  C=throw the horse heads at a wall to stand them up.  D=smash a chest to open, allways get a nightmare key, allways opens at a specific spot.  E="Fill in the holes with the rock that rolls".  F=fire an arrow at a statue, might be sprite related.
; EventTriggers
	const_def
	const EVENT_TRIGGER_0
	const EVENT_TRIGGER_1
	const EVENT_TRIGGER_2

EventData: ; 0x50000
	db $00
	db $00
	db EVENT_2 << 4 | EVENT_TRIGGER_1
	db EVENT_A << 4 | EVENT_TRIGGER_1
	db $22, $00, $21, $00, $00, $00, $61, $00, $00, $61, $00, $00
	db $00, $C1, $21, $63, $61, $21, $81, $00, $00, $00, $00, $00, $00, $00, $00, $00
; 0x50020

INCBIN "baserom.gbc", 16384*20+$20, $220-$20


RoomOrderData: ; 0x50220

INCBIN "baserom.gbc", 16384*20+$220, $660-$220


ChestData: ; 0x50660

INCBIN "baserom.gbc", 16384*20+$660, $917-$660


ScreenTemplateData: ; 0x50917

INCBIN "baserom.gbc", 16384*20+$917, $1931-$917


; 0x51931
	db "Whoa, boy! Where"
	db "ya off to in    "
	db "such a hurry?   "
	db "Set a spell, I  "
	db "got somethin^ ta"
	db "tell ya!"
	db $ff

	db "What a relief! I"
	db "thought you^d   "
	db "never wake up!  "
	db "You were tossing"
	db "and turning...  "
	db "What?  Zelda?   "
	db "No, my name^s   "
	db "Marin!  You must"
	db "still be feeling"
	db "a little woozy. "
	db "You are on      "
	db "Koholint Island!"
	db $ff

	db "Follow the lane "
	db "south to reach  "
	db "the beach where "
	db "I found you.    "
	db "Since you washed"
	db "ashore, lots of "
	db "nasty monsters  "
	db "have been in the"
	db "area, so be     "
	db "careful, okay?"
	db $ff

	db "Hi!  Tarin went "
	db "to the forest to"
	db "look for toad-  "
	db "stools, but I^d "
	db "rather sing.    "
	db "Listen to this, "
	db "it^s called the "
	db "^Ballad of the  "
	db "Wind Fish.^"
	db $ff

	db "Hey!  That^s a  "
	db "nice Ocarina you"
	db "have there! Will"
	db "you accompany   "
	db "me as I sing?"
	db $ff

	db "I just love to  "
	db "sing-- what can "
	db "I say?  What do "
	db "you like to do, "
	db "#####?"
	db $ff

	db "#####, Tarin^s  "
	db "taking a nap at "
	db "home.  I don^t  "
	db "know how he can "
	db "sleep on such a "
	db "nice day!  It   "
	db "makes me want to"
	db "sing a song...  "
	db "Yes, the song is"
	db "^Ballad of the  "
	db "Wind Fish!^"
	db $ff

	db "Eh? It^s locked!"
	db "You can open the"
	db "door with the   "
	db "Nightmare Key."
	db $ff

	db "You got a Piece "
	db "of Power!  You  "
	db "can feel the    "
	db "energy flowing  "
	db "through you!"
	db $ff

	db "Ahhh... It has  "
	db "the Sleepy Toad-"
	db "stool, it does! "
	db "We^ll mix it up "
	db "something in a  "
	db "jiffy, we will!"
	db $ff

	db "The last thing I"
	db "kin remember was"
	db "bitin^ into a   "
	db "big juicy toad- "
	db "stool... Then, I"
	db "had the darndest"
	db "dream... I was a"
	db "raccoon!  Yeah, "
	db "sounds strange, "
	db "but it sure was "
	db "fun!"
	db $ff

	db "I^m all tucker^d"
	db "out...  I think "
	db "I better set a  "
	db "spell before I  "
	db "head home..."
	db $ff

	db "Double double,  "
	db "toil and trouble"
	db "a toadstool mix "
	db "makes powder for"
	db "tricks!"
	db $ff

	db "As a raccoon, my"
	db "nose is verrry  "
	db "sensitive, ta   "
	db "stuff like dust "
	db "and powder..."
	db $ff

	db "It^s the toad-  "
	db "stool you picked"
	db "in the woods.   "
	db "What is it for? "
	db "You hold it over"
	db "your head and a "
	db "mellow aroma    "
	db "wafts into your "
	db "nostrils."
	db $ff

	db "You pick the    "
	db "toadstool... As "
	db "you hold it over"
	db "your head, a    "
	db "mellow aroma    "
	db "flows into your "
	db "nostrils."
	db $ff

	db "Hrrrm...Snore..."
	db "Hunh?... If^n ya"
	db "don^ know...call"
	db "old man Ulrira! "
	db "Zonk...Snore..."
	db $ff

	db "I^m tired... I^m"
	db "goin^ ta sleep  "
	db "now... Zzzzzz..."
	db $ff

	db "Well that was a "
	db "surprise!  Hey! "
	db "I^ll tell you a "
	db "secret! Use your"
	db "sword to poke at"
	db "dungeon walls..."
	db "If you hear a   "
	db "hollow clank,   "
	db "you can break   "
	db "the wall with a "
	db "Bomb!"
	db $ff

	db "You^ve learned  "
	db "the ^Ballad of  "
	db "the Wind Fish!^ "
	db "This song will  "
	db "always remain in"
	db "your heart!"
	db $ff

	db "Please remember "
	db "this song!  You "
	db "should play it  "
	db "every once in a "
	db "while to keep it"
	db "fresh in your   "
	db "mind!"
	db $ff

	db "Please!  I want "
	db "you to learn it!"
	db "This song is my "
	db "favorite!"
	db $ff

	db "So, how do you  "
	db "like it?  It^s  "
	db "really touching,"
	db "isn^t it?  Does "
	db "it stick in your"
	db "mind?           "
	db "    Yes  No"
	db $fe

	db "Hi there, big   "
	db "guy!  I^m Crazy "
	db "Tracy!  I^ve got"
	db "a little secret "
	db "for sale that^ll"
	db "pump you up!"
	db $ff

	db "Will you give me"
	db "28 Rupees for my"
	db "secret?         "
	db "    Give Don^t"
	db $fe

	db "How about it?   "
	db "42 Rupees for my"
	db "little secret..."
	db "    Give Don^t"
	db $fe

	db "All right, come "
	db "here and I^ll   "
	db "rub it on you!  "
	db "...There... I^ve"
	db "applied my own  "
	db "secret medicine!"
	db "It will take    "
	db "effect when you "
	db "lose all hearts!"
	db "Drop by again,  "
	db "big guy!"
	db $ff

	db "Beat it, then!  "
	db "Come back when  "
	db "you have some   "
	db "cash!"
	db $ff

	db "... ... ... ... "
	db "But I won^t sell"
	db "it to you!"
	db $ff

	db "Well!  I^m only "
	db "offering you a  "
	db "secret that will"
	db "make you strong!"
	db "You^re such a   "
	db "chicken!!"
	db $ff

	db "...You^re so    "
	db "cute!  I^ll give"
	db "you a 7 Rupee   "
	db "discount!"
	db $ff

	db "You got Marin!  "
	db "Is this your big"
	db "chance?"
	db $ff

	db "GRRRR..."
	db $ff

	db "Heh heh heh ho! "
	db "You^re goin^ ta "
	db "be lost, thanks "
	db "to me!  Heh heh!"
	db $ff

	db "BOW WOW!        "
	db "BOW WOW!"
	db $ff

	db "YIP YIP!        "
	db "YIP YIP!"
	db $ff

	db "Let^s heal your "
	db "wounds and get  "
	db "rid of all that "
	db "stress... Close "
	db "your eyes and   "
	db "relax..."
	db $ff

	db "You dirty rat!  "
	db "You k-k-k...beat"
	db "my brothers!    "
	db "You^ll pay!!    "
	db "I^ll never      "
	db "forget you!"
	db $ff

	db "Hey runt!  You  "
	db "think you can   "
	db "take me?!  All  "
	db "right boys, get "
	db "this punk out   "
	db "of my face!"
	db $ff

	db "Yep!  Those^re  "
	db "my boys!  I^m   "
	db "Papahl, pleased "
	db "ta meetcha! I^ll"
	db "be lost in the  "
	db "hills later, so "
	db "keep a look out "
	db "for me, hear?"
	db $ff

	db "Yes!!  Yes!!    "
	db "Break them!     "
	db "Break them all! "
	db "... ... ... ... "
	db "What?  What^s   "
	db "wrong?"
	db $ff

	db "Aye Caramba!    "
	db "Kid, you have a "
	db "lot to learn,   "
	db "trying to buy   "
	db "something you   "
	db "have no use for!"
	db $ff

	db "You^ve got a    "
	db "Heart!  Thump!  "
	db "One of your     "
	db "Heart Containers"
	db "is filled!"
	db $ff

	db "Bow & Arrow Set "
	db "Only 980 Rupees!"
	db "    Buy  No Way"
	db $fe

	db "   10 Arrows    "
	db "   10 Rupees    "
	db "    Buy  Don^t"
	db $fe

	db "Hey!  Welcome!  "
	db "See something   "
	db "you like?!  Just"
	db "bring it here!"
	db $ff

	db "Hey! You! Stop! "
	db "You gotta pay!  "
	db "Put it back!"
	db $ff

	db "  Deluxe Shovel "
	db "   200 Rupees!  "
	db "Seems expensive!"
	db "    Buy  No Way!"
	db $fe

	db "   Three Hearts "
	db "    10 Rupees!  "
	db "    Buy  Don^t"
	db $fe

	db "     Shield     "
	db "    20 Rupees!  "
	db "    Buy  Don^t"
	db $fe

	db "    Ten Bombs   "
	db "    10 Rupees   "
	db "    Buy  Don^t"
	db $fe

	db "Sorry, kid!  You"
	db "don^t have the  "
	db "Rupees!  Come   "
	db "back when you   "
	db "have the cash!"
	db $ff

	db "Thanks a lot!   "
	db "And come again!"
	db $ff

	db "Guess what?  You"
	db "got it for free."
	db "Are you proud of"
	db "yourself?"
	db $ff

	db "I wasn^t kidding"
	db "when I said pay!"
	db "Now, you^ll pay "
	db "the ultimate    "
	db "price!!"
	db $ff

	db "Hunh?  It sounds"
	db "like the castle "
	db "gate opened! You"
	db "can easily leave"
	db "the castle now!"
	db $ff

	db "  TRENDY GAME!  "
	db " One Play 10 Rs."
	db "    Play No"
	db $fe

	db "The A and B     "
	db "Buttons move the"
	db "crane...The rest"
	db "is just timing! "
	db "Go over to the  "
	db "buttons to play!"
	db "Good Luck!"
	db $ff

	db "It^s a Shield!  "
	db "There is space  "
	db "for your name!"
	db $ff

	db "Challenge Again?"
	db "    Play No"
	db $fe

	db "Good Luck!"
	db $ff

	db "We^re closing up"
	db "for today!  Come"
	db "again, anytime!"
	db $ff

	db "You got some    "
	db "Magic Powder!   "
	db "Try to sprinkle "
	db "it on many      "
	db "things!"
	db $ff

	db "It^s 30 Rupees! "
	db "You can play the"
	db "game three more "
	db "times with this!"
	db $ff

	db "Cough Cough...  "
	db "Don^t sprinkle  "
	db "that on me...   "
	db "...I^ll have to "
	db "curse you!      "
	db "Cough Cough..."
	db $ff

	db "You got a Yoshi "
	db "Doll!  Recently,"
	db "he seems to be  "
	db "showing up in   "
	db "many games!"
	db $ff

	db "How about some  "
	db "fishing, little "
	db "buddy? I^ll only"
	db "charge you 10   "
	db "Rupees...       "
	db "    Fish Not Now"
	db $fe

	db "You have to have"
	db "more passion!   "
	db "Live a little!"
	db $ff

	db "Okay, here^s how"
	db "you do it.  Use "
	db $f2

	db " and "
	db $f3

	db " on the "
	db $ee

	db "to aim a cast.  "
	db "Once you hook a "
	db "fish, press the "
	db "Button rapidly  "
	db "to reel him in!"
	db $ff

	db "Why not try one "
	db "more time,      "
	db "little buddy?   "
	db "    Cast Not Now"
	db $fe

	db "Wow! That one   "
	db "got away!  Want "
	db "to try again?   "
	db "    Cast Not Now"
	db $fe

	db "Wow! Nice Fish! "
	db "It^s a lunker!! "
	db "I^ll give you a "
	db "20 Rupee prize! "
	db "Try again?      "
	db "    Cast Not Now"
	db $fe

	db "This pond^s all "
	db "fished out.  Why"
	db "not try your    "
	db "luck in the sea?"
	db "    Okay No"
	db $fe

	db "Did I say that? "
	db "Forget it, okay?"
	db "Run along now..."
	db $ff

	db "It^s a runt!    "
	db "I^ll only give  "
	db "you a 5 Rupees  "
	db "prize for that. "
	db "You should try  "
	db "again!          "
	db "    Okay No"
	db $fe

	db "You^re short of "
	db "Rupees?  Don^t  "
	db "worry about it. "
	db "You just come   "
	db "back when you   "
	db "have more money,"
	db "little buddy."
	db $ff

	db "You^ve got a    "
	db "Piece of Heart! "
	db "Press SELECT on "
	db "the Subscreen   "
	db "to see."
	db $ff

	db "You collected   "
	db "four Pieces of  "
	db "Heart.  Now, you"
	db "have a complete "
	db "Heart Container!"
	db $ff

	db "Brrrr... This is"
	db "a block of solid"
	db "ice!  It^s very "
	db "cold!"
	db $ff

	db "NYAH NYAH! You  "
	db "can^t hurt me as"
	db "long as I have  "
	db "my bottle!"
	db $ff

	db "Waaaah! You- you"
	db "broke my bottle!"
	db "Why, you... You "
	db "make me hopping "
	db "mad!!!"
	db $ff

	db "Well, #####, ya "
	db "finally snapped "
	db "out of it...    "
	db "Name^s Tarin... "
	db "Hope yer feelin^"
	db "better...  What?"
	db "How did I know  "
	db "your name?  You "
	db "think it^s weird"
	db "eh?  Well, I saw"
	db "it on the back  "
	db "of this shield!"
	db $ff

	db "Oh, yeah... Some"
	db "other stuff like"
	db "this washed up  "
	db "on the beach... "
	db "If^n you go look"
	db "watch out for   "
	db "monsters! Ever  "
	db "since you showed"
	db "up, #####, I^ve "
	db "seen ^em all    "
	db "over the place!"
	db $ff

	db "Level 1--       "
	db "     Tail Cave"
	db $ff

	db "Level 2--       "
	db "   Bottle Grotto"
	db $ff

	db "Level 3--       "
	db "      Key Cavern"
	db $ff

	db "Level 4--       "
	db " Angler^s Tunnel"
	db $ff

	db "Level 5--       "
	db "   Catfish^s Maw"
	db $ff

	db "Level 6--       "
	db "     Face Shrine"
	db $ff

	db "Level 7--       "
	db "   Eagle^s Tower"
	db $ff

	db "Level 8--       "
	db "     Turtle Rock"
	db $ff

	db "Wind Fish^s Egg "
	db $ff

	db "Mountain Bridge "
	db $ff

	db "Sale^s House O^ "
	db "    Bananas"
	db $ff

	db "Pothole Field"
	db $ff

	db "    House By    "
	db "     The Bay"
	db $ff

	db "   Trendy Game"
	db $ff

	db "  Town Tool Shop"
	db $ff

	db "Marin and       "
	db "   Tarin^s House"
	db $ff

	db "   Witch^s Hut"
	db $ff

	db "  Yarna Desert"
	db $ff

	db "  Ukuku Prairie"
	db $ff

	db "Mysterious Woods"
	db $ff

	db "  Mt. Tamaranch "
	db $ff

	db "     Tal Tal    "
	db " Mountain Range "
	db $ff

	db "  Signpost Maze "
	db $ff

	db "  Mabe Village  "
	db $ff

	db " Animal Village "
	db $ff

	db "    Cemetery    "
	db $ff

	db "   Rapids Ride  "
	db $ff

	db "Koholint Prairie"
	db $ff

	db " Toronbo Shores"
	db $ff

	db "  Martha^s Bay"
	db $ff

	db "East of the Bay"
	db $ff

	db "  Goponga Swamp"
	db $ff

	db "   Face Shrine "
	db $ff

	db " Kanalet Castle"
	db $ff

	db "Tal Tal Heights"
	db $ff

	db "Tabahl Wasteland"
	db $ff

	db "  South of the  "
	db "    Village"
	db $ff

	db "  Fishing Pond  "
	db $ff

	db "Madam MeowMeow^s"
	db "     House      "
	db " Beware of Dog!"
	db $ff

	db "Old Man Ulrira^s"
	db "     House      "
	db $ff

	db "Weird Mr. Write "
	db $ff

	db " Crazy Tracy^s  "
	db "  Health Spa"
	db $ff

	db "Quadruplet^s    "
	db "      House"
	db $ff

	db "  Dream Shrine  "
	db $ff

	db "Telephone Booth "
	db $f1

	db " Signpost Maze "
	db $ff

	db "Seashell Mansion"
	db $ff

	db "Richard^s Villa "
	db $ff

	db "     Hen House  "
	db $ff

	db "Village Library "
	db $ff

	db "    Raft Shop   "
	db $ff

	db "    Warp Hole   "
	db $ff

	db "This rock has   "
	db "many cracks...  "
	db "There must be   "
	db "some way to     "
	db "shatter it..."
	db $ff

	db "Oh? What a weird"
	db "object!  There  "
	db "must be some way"
	db "to tackle this  "
	db "obstacle."
	db $ff

	db "Hunh?  This rock"
	db "has a key hole! "
	db "You should come "
	db "back with a key!"
	db $ff

	db "Wow!  This looks"
	db "pretty heavy!   "
	db "You won^t be    "
	db "able to lift it "
	db "with just your  "
	db "bare hands..."
	db $ff

	db "Well, it^s an   "
	db "Ocarina, but you"
	db "don^t know how  "
	db "to play it..."
	db $ff

	db "No!  No!  Poor  "
	db "hen!  Stop that!"
	db $ff

	db "You found the   "
	db "Power Bracelet! "
	db "At last, you can"
	db "pick up pots and"
	db "stones!"
	db $ff

	db "You got your    "
	db "shield back!    "
	db "Press the button"
	db "and repel       "
	db "enemies with it!"
	db $ff

	db "Ahhh... Yess... "
	db "That dust was so"
	db "refreshing...   "
	db "For that, I^ll  "
	db "tell you a hint!"
	db "Use a Bomb in a "
	db "place where the "
	db "sand swallows   "
	db "you... There is "
	db "a treat on the  "
	db "other side of   "
	db "the wall... Bye!"
	db $ff

	db "You^ve got the  "
	db "Hook Shot!  Its "
	db "chain stretches "
	db "long when you   "
	db "use it!"
	db $ff

	db "You^ve got the  "
	db "Magic Rod!  Now "
	db "you can burn    "
	db "things! Burn it!"
	db "Burn, baby burn!"
	db $ff

	db "You^ve got the  "
	db "Pegasus Boots!  "
	db "If you hold down"
	db "the Button, you "
	db "can dash!"
	db $ff

	db "You^ve got the  "
	db "Ocarina!  You   "
	db "should learn to "
	db "play many songs!"
	db $ff

	db "You^ve got the  "
	db "Roc^s Feather!  "
	db "It feels like   "
	db "your body is a  "
	db "lot lighter!"
	db $ff

	db "You^ve got a    "
	db "Shovel!  Now you"
	db "can feel the joy"
	db "of digging!"
	db $ff

	db "You^ve got some "
	db "Magic Powder!   "
	db "Try sprinkling  "
	db "it on a variety "
	db "of things!"
	db $ff

	db "You^ve got a    "
	db "bomb! Way to    "
	db "go!"
	db $ff

	db "You found your  "
	db "Sword!  It must "
	db "be yours because"
	db "it has your name"
	db "engraved on it!"
	db $ff

	db "You^ve got the  "
	db "Flippers! If you"
	db "press the B     "
	db "Button while you"
	db "swim, you can   "
	db "dive underwater!"
	db $ff

	db "You^ve got the  "
	db "Magnifying Lens!"
	db "This will reveal"
	db "many things you "
	db "couldn^t see    "
	db "before!"
	db $ff

	db "You^ve got a    "
	db "new Sword!  You "
	db "should put your "
	db "name on it right"
	db "away!"
	db $ff

	db "You found the   "
	db "secret medicine!"
	db "You should apply"
	db "this and see    "
	db "what happens!"
	db $ff

	db "You^ve got the  "
	db "Tail Key!  Now  "
	db "you can open the"
	db "Tail Cave gate!"
	db $ff

	db "You^ve got the  "
	db "Slime Key!  Now "
	db "you can open the"
	db "gate in Ukuku   "
	db "Prairie!"
	db $ff

	db "You^ve got the  "
	db "Angler Key!"
	db $ff

; 0x53f48
