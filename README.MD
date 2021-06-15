# EXP_GEN: Experience Generator/tracker

This system is designed to help you "gamify" your projects and tasks into achievable EXP gains.

EXP does nothing and the points don't matter, but it sure does feel good to earn. 

Leveling up: Results in a positive reinforcement message echoed to console + reward message generally in the form of "Take a break, you earned it!" with -n ammount of time attached. Designed to entice youto work until you hit a level up, and then take a break doing something you want to do. 

There are several ways to earn EXP:

1. exp command line manual addition:
$ exp add +n
using the exp add command and the modifier (+/-) will add or subtract that much EXP from your running total.


2. Tracking a task via timer. (work for n minutes and earn EXP gain either repeatedly every n or at end of timer)
$ exp time n +e (alt: $ exp -timer n) - n time in minutes, e=exp to add
$ exp timeloop n +e (alt: $ exp -timer -repeat n) - n time in minutes, e= exp to add.

examples:
$ exp time 15 +5
at 15 minutes, alerts user and provides 5 EXP gain

$ exp timeloop 30 +10
every 30 minutes, adds +10 EXP gain (user alerted at level up)


3. Tracking a task via keyboard monitoring. (This does absolutely nothing more than count how many times you press the keys, and does exactly 0 logging of your keypresses).
I'm very big on privacy, so please see the logging format of the code, and determine for yourself that this will not track/record or send your data anywhere. this software runs entirely locally and has no network capabilities. 

$ exp log n +e (where n=number of keys pressed to capture, generally you should set this higher than 1000 to make this useful, and e= experience to add when accomplished 

$ exp logloop n +e (same as above, but adds e every n keypresses).


# Leveling: 
Leveling occurs on a logrythmic scale, so earning EXP goes further in the beginning than in the late game, but I also recognize that sometimes you just want to earn EXP and level up like crazy sometimes so there's a few ways that this will work. You can also always go in and set the level caps yourself.

DEFAULT:
levels 1-10 are each achieved at 50xp
11-20 -> 75xp

21-30 -> 100xp

31-40 -> 125xp

41-50 -> 150xp

51-60 -> 175xp

61-70 -> 200xp

71-100 -> 225xp

100-200 -> 250xp

201-300 -> 275xp
...

Easy mode:
adjusts all the level caps to 50XP





