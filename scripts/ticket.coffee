QS = require "querystring"

module.exports = (robot) ->
	robot.hear /#([0-9]{0,1300})/, (message) ->
		ticketnumber = escape(message.match[1])
		message.send ticketnumber
#		name = message.message.user.name
#		message.send "A link for your liking: http://eax.dk/"+ticketnumber+" , "+name
		message.send "No"

