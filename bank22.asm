SECTION "bank22", ROMX, BANK[$16]
SpriteData: ; 0x58000
	dw Sprite_59186
	dw Sprite_5918D
	dw Sprite_59192
	dw Sprite_59195
	dw $5198, $519B, $519E, $51A3
	dw $51A4, $51A9, $51AA, $51AF, $51B4, $51B9, $51BE, $51BF
; 0x58020

INCBIN "baserom.gbc", 16384*22+$20, $1186-$20

Sprite_59186: ; 0x59186
	db $67, $29, $24, $35, $26, $7A, $FF
Sprite_5918D: ; 0x5918D
	db $46, $61, $53, $7A, $FF
Sprite_59192: ; 0x59192
	db $64, $0B, $FF
Sprite_59195: ; 0x59195

INCBIN "baserom.gbc", 16384*22+$1195, $1701-$1195


; 0x59701
	db "You^ve got the  "
	db "Face Key!"
	db $ff

	db "You^ve got the  "
	db "Bird Key!"
	db $ff

	db "At last, you got"
	db "a Map!  Press   "
	db "the START Button"
	db "to look at it!"
	db $ff

	db "You^ve got the  "
	db "Compass!  Now,  "
	db "you can see     "
	db "where the chests"
	db "and Nightmare   "
	db "are hidden! This"
	db "Compass has a   "
	db "new feature-- a "
	db "tone will tell  "
	db "you if a key is "
	db "hidden in a room"
	db "when you enter! "
	db $ff

	db "You found a     "
	db "stone beak!     "
	db "Let^s find the  "
	db "owl statue that "
	db "belongs to it."
	db $ff

	db "You^ve got the  "
	db "Nightmare^s Key!"
	db "Now you can open"
	db "the door to the "
	db "Nightmare^s     "
	db "Lair!"
	db $ff

	db "You got a Small "
	db "Key!  You can   "
	db "open a locked   "
	db "door."
	db $ff

	db "   You got 20   "
	db "     Rupees!    "
	db "      JOY!"
	db $ff

	db "    You got 50  "
	db "      Rupees!   "
	db "    Very Nice!"
	db $ff

	db "   You got 100  "
	db "     Rupees!    "
	db "  You^re Happy!"
	db $ff

	db "   You got 200  "
	db "     Rupees!    "
	db "You^re Ecstatic!"
	db $ff

	db "Leave me alone! "
	db "I^m trying to   "
	db "sit still so    "
	db "Schule can paint"
	db "my portrait!"
	db $ff

	db "BUZZZZZ! BUZZZZ!"
	db "   OUTZZZIDER!  "
	db $ff

	db "NEENER NEENER!  "
	db "You can^t find  "
	db "me!  NYAH NYAH!"
	db $ff

	db "BLOOOP! BLOOOP! "
	db "  GLUB!  GLUB!  "
	db "OGGGH!  FOOOOD! "
	db "BLOOOOP!  GLUB!"
	db $ff

	db "Ssso...you are  "
	db "the outsssider, "
	db "come to wake the"
	db "Wind Fisssh...  "
	db "KEEE-HEE-HEEEH! "
	db "I shall eat you!"
	db $ff

	db "HO HO HO!       "
	db "I^m your bad guy"
	db "this time!!     "
	db "HO HO HO!"
	db $ff

	db "TSSSK, TSSSK!   "
	db "You don^t ssseem"
	db "to know what    "
	db "kind of island  "
	db "thisss iss...   "
	db "KEEE-HEEE-HEEE! "
	db "What a fool...  "
	db "KEE-HEE-HEH!!"
	db $ff

	db "Hey dummy! Need "
	db "a hint?  My weak"
	db "point is... !!  "
	db "Whoops!  There I"
	db "go, talking too "
	db "much again..."
	db $ff

	db "Okay, listen up!"
	db "If the Wind Fish"
	db "wakes up, every-"
	db "thing on this   "
	db "island will be  "
	db "gone forever!   "
	db "And I do mean..."
	db "EVERYTHING!"
	db $ff

	db "My energy...    "
	db "gone...I...lost!"
	db "But you will be "
	db "lost too, if the"
	db "Wind Fish wakes!"
	db "Same as me...you"
	db "...are...in...  "
	db "his...dream..."
	db $ff

	db "BAH!  I^m not   "
	db "going to hold   "
	db "back!  I^m going"
	db "to make you wish"
	db "you were never  "
	db "born!!"
	db $ff

	db "CRACKLE-FWOOOSH!"
	db "You^re finished!"
	db "I will never let"
	db "you play the    "
	db "Instruments of  "
	db "the Sirens!!"
	db $ff

	db "C-C-CRACKLE!    "
	db "Why did you come"
	db "here?  If it    "
	db "weren^t for you,"
	db "nothing would   "
	db "have to change! "
	db "You cannot wake "
	db "the Wind Fish!  "
	db "Remember, you..."
	db "too...are in... "
	db "...the dream..."
	db $ff

	db "Hoot!  Ho, brave"
	db "lad, on your    "
	db "quest to wake   "
	db "the dreamer!    "
	db "Welcome to the  "
	db "Mysterious Wood!"
	db "Much of mystery "
	db "you will find on"
	db "this uncharted  "
	db "Koholint island!"
	db "I^m afraid you  "
	db "may find it a   "
	db "trifle difficult"
	db "to leave the    "
	db "island while the"
	db "Wind Fish naps. "
	db "...By the by,   "
	db "have you ever   "
	db "visited the Tail"
	db "Cave, which is  "
	db "south of the    "
	db "village?  Go    "
	db "there with the  "
	db "key you find in "
	db "this forest...  "
	db "The Wind Fish is"
	db "watching...Hoot!"
	db $ff

	db "Hoot!  Take the "
	db "key and go to   "
	db "the Tail Cave.  "
	db "Retrieve the    "
	db "Instrument that "
	db "is hidden there!"
	db "Go now!  The    "
	db "Wind Fish is    "
	db "waiting!  Hooot!"
	db $ff

	db "Hoooot!  That is"
	db "an ^Instrument  "
	db "of the Sirens!^ "
	db "I have to admit,"
	db "at first I did  "
	db "not believe you "
	db "were real...    "
	db "That Instrument,"
	db "along with the  "
	db "seven others in "
	db "the set, has the"
	db "power to wake   "
	db "the Wind Fish!  "
	db "You must collect"
	db "them all!  I was"
	db "instructed to   "
	db "give you direc- "
	db "tions...  Your  "
	db "next goal is    "
	db "north, in       "
	db "Goponga Swamp!! "
	db "Hoot, indeed!"
	db $ff

	db "Hoot!  That is a"
	db "fearsome looking"
	db "animal you have "
	db "there!  Do not  "
	db "forget, the next"
	db "Instrument is in"
	db "Goponga Swamp!"
	db $ff

	db "Hoooot! The Wind"
	db "Fish sleeps long"
	db "and dreamily in "
	db "the Egg above..."
	db "When you play   "
	db "the eight Siren "
	db "Instruments in  "
	db "front of the Egg"
	db "he will awaken. "
	db "This, my friend,"
	db "is the only way "
	db "for you to leave"
	db "the island! Hoo!"
	db $ff

	db "Hoot!  How many "
	db "Instruments     "
	db "have you gotten "
	db "so far?  When   "
	db "you play the    "
	db "Instruments in  "
	db "front of the    "
	db "Egg, the Wind   "
	db "Fish will wake  "
	db "and you will    "
	db "leave this      "
	db "island.  Now,   "
	db "you must hasten "
	db "to the Yarna    "
	db "Desert!  The    "
	db "dark, monstrous "
	db "inhabitants of  "
	db "the sand will   "
	db "show you the    "
	db "way! Hoot Hoot!"
	db $ff

	db "Hoot!  The shape"
	db "of the key shows"
	db "a fish, swimming"
	db "up a cascade of "
	db "water!  Go now  "
	db "to the mountain "
	db "waterfall!  A   "
	db "leap from the   "
	db "top and you will"
	db "reach your goal!"
	db $ff

	db "Hoot!  There are"
	db "two shrines, one"
	db "to the north,   "
	db "the other to the"
	db "south.  First,  "
	db "head south,     "
	db "where ancient   "
	db "ruins speak of  "
	db "the Wind Fish..."
	db "You will learn  "
	db "much there..."
	db $ff

	db "Hoot!  I see you"
	db "have read the   "
	db "relief...  While"
	db "it does say the "
	db "island is but a "
	db "dream of the    "
	db "Wind Fish, no   "
	db "one is really   "
	db "sure...  Just as"
	db "you cannot know "
	db "if a chest holds"
	db "treasure until  "
	db "you open it, so "
	db "you cannot tell "
	db "if this is a    "
	db "dream until you "
	db "awaken...  The  "
	db "only one who    "
	db "knows for sure  "
	db "is the Wind     "
	db "Fish...  Trust  "
	db "your feelings..."
	db "Someday you will"
	db "know for sure..."
	db $ff

	db "Hoot!  The many "
	db "monsters of this"
	db "island fear that"
	db "the Wind Fish is"
	db "about to awaken!"
	db "The monsters^   "
	db "power is real!  "
	db "They may conquer"
	db "the island and  "
	db "destroy their   "
	db "foes!  That day "
	db "may come soon!  "
	db "Now, go to the  "
	db "mountain tower! "
	db "Fly like a bird!"
	db "Hoot! Hoot!"
	db $ff

	db "Hoot hoot!      "
	db "Your path is    "
	db "not easy, but   "
	db "you are almost  "
	db "there. Go east. "
	db "The Wind Fish   "
	db "is getting      "
	db " restless."
	db $ff

	db "Hoot!  It has   "
	db "been some time  "
	db "since our paths "
	db "crossed, lad.   "
	db "You must dive   "
	db "into the waters "
	db "of Martha^s Bay "
	db "to enter the    "
	db "Catfish^s Maw..."
	db "The closer you  "
	db "get to the Wind "
	db "Fish, the more  "
	db "restless he     "
	db "sleeps.  Carry  "
	db "onward!  Hoot!"
	db $ff

	db "Hoot!  That girl"
	db "sang her song in"
	db "front of the    "
	db "Egg! Her ^Ballad"
	db "of the Wind     "
	db "Fish^ is a song "
	db "of awakening!   "
	db "Did she actually"
	db "intend to wake  "
	db "the Wind Fish?! "
	db "The next Sirens^"
	db "Instrument is in"
	db "the west.  Play "
	db "your melodies so"
	db "the unliving    "
	db "stones might    "
	db "hear!  Show your"
	db "courage!  The   "
	db "Wind Fish waits "
	db "for you!  Hoot!"
	db $ff

	db "The time has    "
	db "come... The Wind"
	db "Fish awaits...  "
	db "Enter the Egg..."
	db "Hoot! Hoot!"
	db $ff

	db "Hoot! Young lad,"
	db "I mean... #####,"
	db "the hero!  You  "
	db "have defeated   "
	db "the Nightmares! "
	db "You have proven "
	db "your wisdom,    "
	db "courage and     "
	db "power!          "
	db "... ... ... ... "
	db "As part of the  "
	db "Wind Fish^s     "
	db "spirit, I am the"
	db "guardian of his "
	db "dream world...  "
	db "But one day, the"
	db "Nightmares      "
	db "entered the     "
	db "dream and began "
	db "wreaking havoc. "
	db "Then you, #####,"
	db "came to rescue  "
	db "the island...   "
	db "I have always   "
	db "trusted in your "
	db "courage to turn "
	db "back the Night- "
	db "mares.  Thank   "
	db "you, #####... My"
	db "work is done... "
	db "The Wind Fish   "
	db "will wake soon. "
	db "Good bye...Hoot!"
	db $ff

	db "... ... ... ... "
	db " ... ... ... ..."
	db " I AM THE WIND  "
	db "      FISH...   "
	db " LONG HAS BEEN  "
	db "  MY SLUMBER... "
	db " IN MY DREAMS..."
	db " AN EGG APPEARED"
	db "     AND WAS    "
	db "SURROUNDED BY AN"
	db "  ISLAND, WITH  "
	db "PEOPLE, ANIMALS,"
	db "AN ENTIRE WORLD!"
	db "... ... ... ... "
	db "  BUT, VERILY,  "
	db "IT BE THE NATURE"
	db "  OF DREAMS TO  "
	db "END! WHEN I DOST"
	db "AWAKEN, KOHOLINT"
	db " WILL BE GONE..."
	db "ONLY THE MEMORY "
	db " OF THIS DREAM  "
	db "LAND WILL EXIST "
	db "  IN THE WAKING "
	db "      WORLD...  "
	db " SOMEDAY, THOU  "
	db "MAY RECALL THIS "
	db " ISLAND...  THAT"
	db " MEMORY MUST BE "
	db " THE REAL DREAM "
	db "     WORLD...   "
	db "... ... ... ... "
	db " COME, #####... "
	db "LET US AWAKEN..."
	db "   TOGETHER!!"
	db $ff

	db " PLAY THE EIGHT "
	db "  INSTRUMENTS!  "
	db "PLAY THE SONG OF"
	db "   AWAKENING!!"
	db $ff

	db "Mermaid Statue  "
	db $ff

	db "...#####, you   "
	db "have beaten all "
	db "the Nightmares! "
	db "Climb the stairs"
	db "before you!"
	db $ff

	db "Ach! Vat are you"
	db "looking at vith "
	db "zat magnifying  "
	db "lens?  Stop it  "
	db "at vonce!"
	db $ff

	db "  Hoot!  Hoot!  "
	db "So you are the  "
	db "lad who owns the"
	db "sword...  Now I "
	db "understand why  "
	db "the monsters are"
	db "starting to act "
	db "so violently... "
	db "A courageous lad"
	db "has come to wake"
	db "the Wind Fish..."
	db "It is said that "
	db "you cannot leave"
	db "the island      "
	db "unless you wake "
	db "the Wind Fish..."
	db "You should now  "
	db "go north, to the"
	db "Mysterious      "
	db "Forest.  I will "
	db "wait for you    "
	db "there!  Hoot!"
	db $ff

	db "Annoyance!  You "
	db "are only getting"
	db "in the way!"
	db $ff

	db "Ribbit!  Ribbit!"
	db "Hey, man, I^m   "
	db "Mamu, on vocals!"
	db "Brother, you    "
	db "look like you   "
	db "don^t know      "
	db "squat about     "
	db "music!  Ribbit!"
	db $ff

	db "Ribbit!  Ribbit!"
	db "I^m Mamu, on    "
	db "vocals!  But I  "
	db "don^t need to   "
	db "tell you that,  "
	db "do I?  Everybody"
	db "knows me!  Want "
	db "to hang out and "
	db "listen to us    "
	db "jam?  For 300   "
	db "Rupees, we^ll   "
	db "let you listen  "
	db "to a previously "
	db "unreleased cut! "
	db "What do you do? "
	db "    Pay  Leave"
	db $fe

	db "Thank you...    "
	db "Thank you very  "
	db "much... Croak!"
	db $ff

	db "Well, that^s a  "
	db "shame, but we   "
	db "don^t play for  "
	db "free!"
	db $ff

	db "You^ve learned  "
	db "The Frog^s Song "
	db "of Soul!  It^s a"
	db "very moving     "
	db "tune... It can  "
	db "even liven up   "
	db "unliving things!"
	db $ff

	db "If you play this"
	db "song, you^ll    "
	db "make everything "
	db "around you feel "
	db "more alive!"
	db $ff

	db "Hey, Kid!  You  "
	db "woke me up from "
	db "a fine nap!!    "
	db "...Thanks a lot!"
	db "But now, I^ll   "
	db "get my revenge! "
	db "Are you ready?! "
	db "    Yes  N-No"
	db $fe

	db "I^ll let you    "
	db "carry more Magic"
	db "Powder!  He He! "
	db "Are you ready?! "
	db "    Yes  N-No"
	db $fe

	db "Okay, I^ll let  "
	db "you carry more  "
	db "Bombs! He He He!"
	db "Are you ready?! "
	db "    Yes  N-No"
	db $fe

	db "Fine, I^ll let  "
	db "you have more   "
	db "arrows! Heh Heh!"
	db "Are you ready?! "
	db "    Yes  N-No"
	db $fe

	db "Heh Heh Heh!    "
	db "You deserve it! "
	db "Now look at all "
	db "that junk you   "
	db "have to carry!  "
	db "Hah!  Take care!"
	db "See you again!"
	db $ff

	db "??  There is a  "
	db "picture carved  "
	db "on the wall, but"
	db "you can^t see it"
	db "because it^s too"
	db "dark in here..."
	db $ff

	db "TO THE FINDER..."
	db "  THE ISLE OF   "
	db "KOHOLINT, IS BUT"
	db "  AN ILLUSION..."
	db " HUMAN, MONSTER,"
	db " SEA, SKY... A  "
	db "SCENE ON THE LID"
	db " OF A SLEEPER^S "
	db "  EYE...  AWAKE "
	db "THE DREAMER, AND"
	db "  KOHOLINT WILL "
	db "VANISH MUCH LIKE"
	db "  A BUBBLE ON A "
	db "NEEDLE... CAST- "
	db "AWAY, YOU SHOULD"
	db "KNOW THE TRUTH! "
	db "... ... ... ... "
	db "What?  Illusion?"
	db $ff

	db "You^ve found a  "
	db "Gold Leaf! Press"
	db "START to see    "
	db "how many you^ve "
	db "collected!"
	db $ff

	db "At last!  You^ve"
	db "got the final   "
	db "Golden Leaf!    "
	db "Now go and see  "
	db "Richard about   "
	db "that key..."
	db $ff

	db "You^ve got a    "
	db "Guardian Acorn! "
	db "It will reduce  "
	db "the damage you  "
	db "take by half!"
	db $ff

	db "You^ve got the  "
	db "Mirror Shield!  "
	db "You can now turn"
	db "back the beams  "
	db "you couldn^t    "
	db "block before!"
	db $ff

	db "You^ve got a    "
	db "more Powerful   "
	db "Bracelet!  Now  "
	db "you can almost  "
	db "lift a whale!"
	db $ff

	db "You found a     "
	db "Secret Seashell!"
	db "If you collect a"
	db "lot of these,   "
	db "something good  "
	db "is bound to     "
	db "happen!"
	db $ff

	db "Want to go on a "
	db "raft ride for a "
	db "hundred Rupees? "
	db "    Yes  No Way"
	db $fe

	db "Okay, the raft  "
	db "is ready for you"
	db "outside!  Enjoy!"
	db $ff

	db "Waterfall at the"
	db "    Shrine"
	db $ff

	db " South of the   "
	db "    Shrine"
	db $ff

	db "Entrance to the "
	db " Animal Village"
	db $ff

	db "We were born of "
	db "nightmares... To"
	db "take over this  "
	db "world, we made  "
	db "the Wind Fish   "
	db "sleep endlessly!"
	db "If the Wind Fish"
	db "doesn^t wake up,"
	db "this island will"
	db "never disappear!"
	db "We would have   "
	db "been the masters"
	db "of this place..."
	db "But you had to  "
	db "come here and   "
	db "disrupt our     "
	db "plans!  Heh heh!"
	db "You can never   "
	db "defeat us!!!    "
	db "Let^s rumble!"
	db $ff

	db "This island is  "
	db "going to dis-   "
	db "appear...  Our  "
	db "world is going  "
	db "to disappear... "
	db "Our world...    "
	db "Our... world... "
	db $ff

	db "Wow!  #####, can"
	db "I try this?!    "
	db "What do you say?"
	db "    Okay No Way"
	db $fe

	db "C^mon!  I want  "
	db "to do it! Can I?"
	db "It looks so fun!"
	db "    Yes  Okay"
	db $fe

	db "You^re good!    "
	db "You^re a pro,   "
	db "aren^t you?     "
	db "... ... ... ... "
	db "Well, beat it!  "
	db "Pros aren^t     "
	db "allowed in here!"
	db $ff

	db "Go away!"
	db $ff

	db "Quit it!"
	db $ff

	db "This is not a   "
	db "chest...  What? "
	db "You knew that?  "
	db "Okay."
	db $ff

	db "##### checked   "
	db "the chest.  Wow!"
	db "This is a nice  "
	db "chest!"
	db $ff

	db "It^s all ready, "
	db "it is!  Take    "
	db "care, as there^s"
	db "not much there! "
	db "Why not try a   "
	db "bit in my hut?"
	db $ff

	db "Hey!  What are  "
	db "ya doin^ in my  "
	db "chest?!  Where^d"
	db "you learn ta do "
	db "such a thing?!"
	db $ff

	db "You^ve got the  "
	db "Full Moon Cello!"
	db $ff

	db "You^ve got the  "
	db "Conch Horn!"
	db $ff

	db "You^ve got the  "
	db "Sea Lily^s Bell!"
	db $ff

	db "You^ve got the  "
	db "Surf Harp!"
	db $ff

	db "You^ve got the  "
	db "Wind Marimba!"
	db $ff

	db "You^ve got the  "
	db "Coral Triangle!"
	db $ff

	db "You^ve got the  "
	db "Organ of        "
	db "  Evening Calm!"
	db $ff

	db "You^ve got the  "
	db "Thunder Drum!"
	db $ff

	db "r?          OUI "
	db " NON"
	db $fe

	db "J^adore les     "
	db "photos! H*,     "
	db "#####! Que fais-"
	db "tu dans le coin?"
	db $ff

; 0x5bfff

;INCBIN "baserom.gbc", 16384*22+$1701, $4000-$1701
