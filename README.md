# aces-acm_TrystQuizUp
The Application made by aces-acm for their tryst quiz up event. It is meant to hold an onsite cum online event where in players, however many, see questions and realtime scores of themselves on a large sceen in front of them and open a buttons tab in their smartphones, tablets or laptops to answer the questions on-screen.

DATABASE SETUP:-
1. Make a database in mysql with the name 'myDB'

2. Make two table in 'myDB'

A. 'Members' :
CREATE TABLE `Members` (
`id` int(6) unsigned NOT NULL,
`firstname` varchar(30) NOT NULL,
`lastname` varchar(30) NOT NULL,
`email` varchar(50) DEFAULT NULL,
`mobile` bigint(10) NOT NULL,
`button_status` tinyint(1) NOT NULL DEFAULT '0',
`score` int(6) unsigned DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=409 DEFAULT CHARSET=latin1;

B. 'Questions' :
CREATE TABLE `Questions` (
`ID` int(2) NOT NULL DEFAULT '0',
`question` varchar(520) DEFAULT NULL,
`A` varchar(82) DEFAULT NULL,
`B` varchar(71) DEFAULT NULL,
`C` varchar(101) DEFAULT NULL,
`D` varchar(89) DEFAULT NULL,
`correctans` varchar(1) DEFAULT NULL,
`current` int(11) NOT NULL,
`points` int(11) NOT NULL DEFAULT '10'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


HOW TO PLAY:-
3. You can see the sample queries kept for updating these tables and you can just plug in your data in them to update these tables faster.

4. The 'id' column in memebers should be unique and will be used by the audience for logging in the app.

5. Once database is ready, the audience can open the login.html and log in with their unique id given by you.

6. Their answering buttons will be shown to them which will be disabled initially.

7. On a projector or large screen open questions.html and scores.html simultaneously.

8. Every player should be able to see his/her name in scores.html

9. Now as soon as you press 'Next Question' in questions.html, buttons of every player will be enabled and they will get 1 chance to choose an answer. Once the player presses an option, his buttons will be disabled again till you press 'Next Question' on the screen and the next question appears.

10. Timing is done manually, so it is upto you how much time to give/Question.