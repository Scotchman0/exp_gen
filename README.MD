# EXP_GEN: Experience Generator/tracker

This system is designed to help you "gamify" your projects and tasks into achievable EXP gains.

EXP does nothing and the points don't matter, but it sure does feel good to earn. 

Leveling up: Results in a positive reinforcement message echoed to console + reward message generally in the form of "Take a break, you earned it!" with -n ammount of time attached. Designed to entice youto work until you hit a level up, and then take a break doing something you want to do. 

There are several ways to earn EXP:

1. exp command line manual addition:
$ exp add [e]
using the exp add command and including a value [e] will add or subtract that much EXP from your running total.

> $ exp add 5
> earned '5' exp!


2. Tracking a task via timer. (work for n minutes and earn EXP gain either repeatedly every n or at end of timer)
command options: timer or timeloop:

> $ exp timer 5
> wait how long before gaining '5' exp? (in minutes - whole integers only)
> 10
> now waiting for '600' seconds, press ctrl+c to cancel
> ...[after waiting 600 seconds]...
> earned '5' exp!

> $ exp timeloop 5
> wait how long before gaining '5' exp? (in minutes - whole integers only)
> this will loop forever until manually stopped with ctrl+c - good for study blocks
> $ 5
> now waiting for '300' seconds, press ctrl+c to cancel
> earned '5' exp!
> now waiting for '300' seconds, press ctrl+c to cancel
> earned '5' exp!
> ...

3. Future planned implementation: tagging to task completion via other cli tasks, or keyboard button press counting (note - I have no interest in keylogging but it might be fun to see if it'll give me exp every 500 keys I push. If I can do this safely without recording actual keypress DATA I'll think about it. currently not implemented.)

# Leveling: 
Leveling occurs on a growth scale, so earning EXP goes further in the beginning than in the late game, but I also recognize that sometimes you just want to earn EXP and level up like crazy sometimes so there's a few ways that this will work. You can also always go in and set the level caps yourself, just modify the block 
...

Easy mode:
adjusts all the level caps to 50XP

run: $ exp easy_mode to set, $ exp normal_mode to return to regular exp gain, shown below.


You may modify these values all you want in the exp file. 


Level 				EXP needed
0-10				  100

11-20				  110

21-30				  125

31-40				  150

41-50				  175

51-60				  200

61-70				  225

71-80				  250

81-90				  275

91-100				300

101-150				325

151-200				350

201-250				375

251-300				400

301-400				425

401-500				450

501-600				475

601-10000			500 #if you're up here I'll be amazed.


To reset all your progress/levels back to zero - run:
> $ exp reset_progress
