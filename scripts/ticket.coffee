QS = require "querystring"

module.exports = (robot) ->
	robot.hear /.#([:digit:])./, (message) ->
		ticketnumber = escape(msg.match[1])
		name = message.message.user.name
		message.send "A link for your liking: http://eax.dk/"+ticketnumber+" , "+name

