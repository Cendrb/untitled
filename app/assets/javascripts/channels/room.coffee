App.room = App.cable.subscriptions.create "RoomChannel",
  connected: ->
# Called when the subscription is ready for use on the server

  disconnected: ->
# Called when the subscription has been terminated by the server

  received: (data) ->
    alert(data['message'])
# Called when there's incoming data on the websocket for this channel

  speak: (message) ->
    @perform 'speak', message: message

$(document).on 'keypress', (event) ->
  if event.keyCode is 13
    App.room.speak $("#message_text").val()
    $("#message_text").val('')
    event.preventDefault()