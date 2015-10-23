QS = require "querystring"

# forked from hilotter's "CountDownTimer (CoffeeScript)" http://jsdo.it/hilotter/io9a

countDown = ->
  target = new Date '2015/10/23 16:00:00'
  ancillaryTarget = new Date '2015/10/25 16:00:00'
    
  targetString = "until the revealing of this Gecko Jam's Theme!"
  
  today = new Date
  diff = target - today
  
  if diff <= 0
    diff = ancillaryTarget - today
    targetString = "left of this Gecko Jam!"
  
  daySec = 24 * 60 * 60 * 1000
  d = Math.floor (diff / daySec)
  h = Math.floor ((diff % daySec) / (60 * 60 * 1000))
  m = Math.floor ((diff % daySec) / (60 * 1000)) % 60
  s = Math.floor ((diff % daySec) / 1000) % 60 % 60
  mi = Math.floor ((diff % daySec) / 10) % 100
	
  return "#{d} days, #{h} hours, #{m} minutes and #{s} seconds #{targetString}";

module.exports = (robot) ->
	robot.hear /Celestine\?/, (message) ->
		message.send "Affirmative Commander."

	robot.hear /Thanks Celestine/, (message) ->
		name = message.message.user.name
		message.send "You're welcome "+name+"!"

	robot.hear /This is actual. Copy that. Fire at will/, (message) ->
		message.send "Copy that Actual"

	robot.hear /This is actual, initiate omega protocol/, (message) ->
		message.send "Copy that Actual. Starting complete humanity wipeout. Please hold"

	robot.hear /putted/, (message) ->
		message.send "I'm pretty sure you mean 'put', "+message.message.user.name+" :)"

	robot.hear /!time/, (message) ->
		message.send countDown()
