## Dice Roll Game

You roll a 10-sided die repeatedly.
On the <img src="/diceroll/tex/55a049b8f161ae7cfeb0197d75aff967.svg?invert_in_darkmode&sanitize=true" align=middle width=9.86687624999999pt height=14.15524440000002pt/>th roll the numbers 1, 2, ...n are a lose, and the others result in a win.

There are many ways to win the game. To win on the nth roll one must get 're-rolls' for all prior turns, and a 10 on this one.

There are <img src="/diceroll/tex/2e8426cc30dfee4e334ec6ab0c1cd357.svg?invert_in_darkmode&sanitize=true" align=middle width=204.38730344999996pt height=24.65753399999998pt/> ways to get re-rolls up through turn <img src="/diceroll/tex/efcf8d472ecdd2ea56d727b5746100e3.svg?invert_in_darkmode&sanitize=true" align=middle width=38.17727759999999pt height=21.18721440000001pt/> which is actually <img src="/diceroll/tex/ab367ba00b76806ff75b6e9aec69963c.svg?invert_in_darkmode&sanitize=true" align=middle width=52.23585015pt height=28.92634470000001pt/>

out of a possible <img src="/diceroll/tex/c358c7892a8d29402af42bc861a3f88c.svg?invert_in_darkmode&sanitize=true" align=middle width=41.39101064999999pt height=26.76175259999998pt/> possible rolls. If we add the condition of winning this turn, that has probability <img src="/diceroll/tex/bbe56a4adda015427dc0338af0ce9433.svg?invert_in_darkmode&sanitize=true" align=middle width=32.876837399999985pt height=24.65753399999998pt/>, So the probability of winning *on* turn <img src="/diceroll/tex/55a049b8f161ae7cfeb0197d75aff967.svg?invert_in_darkmode&sanitize=true" align=middle width=9.86687624999999pt height=14.15524440000002pt/> is
<p align="center"><img src="/diceroll/tex/56697184ebf8e911b070a23c705c8449.svg?invert_in_darkmode&sanitize=true" align=middle width=110.73649949999998pt height=34.7253258pt/></p>

<p align="center"><img src="/diceroll/tex/73c790bcd150863d631d80064e6fb6c5.svg?invert_in_darkmode&sanitize=true" align=middle width=139.50856425pt height=37.9216761pt/></p>

Now all we need to do is sum this up from <img src="/diceroll/tex/3d2be9e2108301e9097fa4bc51046641.svg?invert_in_darkmode&sanitize=true" align=middle width=40.00371704999999pt height=21.18721440000001pt/> to <img src="/diceroll/tex/36faef2233328aac16161a226bbad072.svg?invert_in_darkmode&sanitize=true" align=middle width=40.00371704999999pt height=21.18721440000001pt/> using Wolfram|Alpha which gives <img src="/diceroll/tex/58411774d921ba06c4d1337388faa28c.svg?invert_in_darkmode&sanitize=true" align=middle width=115.06893254999997pt height=24.65753399999998pt/> or <img src="/diceroll/tex/97e4435f17d283dae96d924ebc749bf8.svg?invert_in_darkmode&sanitize=true" align=middle width=84.01857089999999pt height=24.65753399999998pt/>

