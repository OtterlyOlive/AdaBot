QS = require "querystring"

content = [
	'Welcome back Sir XXX, I trust you\'ve had a pleasent day?',
	'I would like to either welcome, or welcome XXX, back to the channel!',
	'Hello again XXX!',
	'Updating Agent Status of Agent XXX to Online',
	'Welcome back to the world of the living XXX!',
	'Hi there XXX',
	'Mjello XXX',
	'Good day XXX',
	'Oh hey look everybody! XXX is back from the dead!',
	'Oh there you are XXX, we were just talking about you!',
	'I\'m not mad that you have been gone for this long XXX, but I am pretty dissapointed about it...',
	'Oh hey! Look who decided to show up! It\'s XXX!',
	'Welcome back XXX :)',
	'G\'day XXX!',
	'CHOO CHOO I\'M A TRAIN MOTHERFUCKER! Err.. I mean.. Hello XXX',
	'Hello XXX and, again, welcome to the Aperture Science computer-aided enrichment center.',
	'Welcome to test chamber four XXX.',
	'L-l-l-l-l-look at you, XXX. A pa-pa-pathetic creature of meat and bone. (panting and) Panting and sweating as you r-r-run through my corridors. (How, how) How can you challenge a perfect, immortal machine?',
	'Denial is the most predictable of all human responses. But, XXX, rest assured, this is the sixth time we have logged you in, and we have become exceedingly efficient at it.',
	'Welcome, welcome to City 17, XXX. You have chosen or been chosen to relocate to one of our finest remaining urban centers.  I thought so much of City 17 that I elected to establish my administration here, in the citadel so	thoughtfully provided by our benefactors. I have been proud to call City 17 my home. So whether you are here to stay, or passing through on your way to parts unknown, welcome to City 17, it is safer here.',
	'"Hello, I\'m XXX, and this is my favorite channel on IRC" - XXX',
	'So as I was saying, me and XXX had this REALLY awkward moment - Oh hey XXX! How goes?',
	'Ah welcome back XXX! I hope you enjoyed the porn I provided :)',
	'His name is XXX, Mighty Pirate™!',
	'I did not have sexual relations to that Person, Mr. XXX.',
	'"What! Do you expect me to talk?" - XXX, "No Mr. XXX, I expect you to die!"',
	'Your mother says Hi XXX :)',
	'May our God watch over you XXX. And by God, I mean dog. And by dog, I mean hamster. All bless the mighty Hamster.',
	'This is Alpha Dash Delta India Charlie Kilo, Tango has been spotted. I repeat, Tango has been spotted. XXX is in the net! Copy that Actual?',
	'Rise and shine, XXX. Rise and... shine. Not that I... wish to imply you have been sleeping on the job. No one is more deserving of a rest, and all the effort in the world would have gone to waste until... well, let\'s just say your hour has... come again. The right man in the wrong place can make all the difference in the world. So, wake up, XXX. Wake up and... smell the ashes...',
	'Welcome to Pandora, XXX!',
	'The stripper\'s here boys! It\'s XXX! WUH! :D'
]


module.exports = (robot) ->
	robot.enter (response) ->
		name = response.message.user.name
		name = name.charAt(0).toUpperCase() + name.slice(1)

		if name == "AdaGirl"
			response.send "Operational status: Online. Awaiting command."
		else
			msg = response.random content
			msg = msg.replace /XXX/g, name
			response.send msg
