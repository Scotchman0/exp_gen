# EXP_GEN: Experience Generator/tracker

This system is designed to help you "gamify" your projects and tasks into achievable EXP gains.

EXP does nothing and the points don't matter, but it sure does feel good to earn. 

Leveling up: Results in a positive reinforcement message echoed to console + reward message generally in the form of "Take a break, you earned it!" Designed to entice you to work until you hit a level up, and then take a break doing something you want to do. 

# Installation:
1. clone this repository to a local directory in your system:

> git clone https://github.com/scotchman0/exp_gen.git

2. cd into the cloned directory and make a symlink to your home/username/bin folder:

>$ mkdir ~/bin

>$ ln -s /home/username/path/to/exp_gen/exp ~/bin/exp

because ~/bin is part of your $PATH variable by default (if it isn't see below) it should become executable automatically when you call 'exp' in the command line. 

3. run exp once to generate the level_up files to get an overview of the syntax/usage, or get started with the below command options: $ exp (status|add|timer|timeloop) [e]  --> e=experience to gain

> $ exp help
===========================================================================================
# Earning EXP:
There are several ways to earn EXP:

1. exp command line manual addition:
$ exp add [e]
using the exp add command and including a value [e] will add or subtract that much EXP from your running total.
Just finished a git commit/finished a chapter/completed a workout?

> $ exp add 5
> 
> earned '5' exp!


2. Tracking a task via timer. (work for n minutes and earn EXP gain either repeatedly every n or at end of timer)
command options: timer or timeloop:

> $ exp timer 5
> 
> wait how long before gaining '5' exp? (in minutes - whole integers only)
> 
> 10
> 
> now waiting for '600' seconds, press ctrl+c to cancel
> 
> ...[after waiting 600 seconds]...
> 
> earned '5' exp!


> $ exp timeloop 5
> 
> wait how long before gaining '5' exp? (in minutes - whole integers only)
> 
> this will loop forever until manually stopped with ctrl+c - good for study blocks
> 
> $ 5
> 
> now waiting for '300' seconds, press ctrl+c to cancel
> 
> earned '5' exp!
> 
> now waiting for '300' seconds, press ctrl+c to cancel
> 
> earned '5' exp!
> 
> ...

# Check your level/exp gain:

> exp status

![exp status](https://user-images.githubusercontent.com/35974491/122405010-aefa4200-cf4d-11eb-9843-ae4bf00b7254.png)


# Leveling: 

![level_up](https://user-images.githubusercontent.com/35974491/122405235-e0730d80-cf4d-11eb-86a6-28327fff3eb5.png)


Leveling occurs on a growth scale, so earning EXP goes further in the beginning than in the late game, but I also recognize that sometimes you just want to earn EXP and level up like crazy sometimes so there's a few ways that this will work. You can also always go in and set the level caps yourself, just modify ~/.exp_gen/exp_gen.conf and add the line: level_CAP=50 (or whatever modified lower/higher static value you wish to have set). To reset back to normal mode just run $ exp normal_mode and it'll undo your changes.

Easy mode:
adjusts all the level caps to 50XP

run:
> $ exp easy_mode 

> $ exp normal_mode to return to regular exp gain, shown below.


You may modify these values all you want in the exp file. 


Level 				EXP needed

0-10		|		  100

11-20		|		  110

21-30		|		  125

31-40		|		  150

41-50		|		  175

51-60		|		  200

61-70		|		  225

71-80		|		  250

81-90		|		  275

91-100	|			300

101-150	|			325

151-200		|		350

201-250		|		375

251-300			|	400

301-400		|		425

401-500		|		450

501-600		|		475

601-10000		|	500 #if you're up here I'll be amazed.


----------------------------------------

# other commands:
Uninstall:

> exp uninstall_exp #removes all contents in ~/.exp_gen/* (which were generated on first time exp launch)

(don't forget to delete your symlink in ~/bin or else when you call exp again it'll put these files back).

Get help with commands:

> exp help

To reset all your progress/levels back to zero - run:

> $ exp reset_progress



