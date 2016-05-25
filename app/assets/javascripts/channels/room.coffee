$ ->
  current_users = $('#current_users')
  message_list = $('#message_list')
  send_box = $("#message_text")
  $(document).on 'keypress', (event) ->
    if send_box.length && event.keyCode is 13
      App.room.speak send_box.val()
      send_box.val('')
      event.preventDefault()

  App.room = App.cable.subscriptions.create "RoomChannel",
    connected: ->
      # Called when the subscription is ready for use on the server

    disconnected: ->
      # Called when the subscription has been terminated by the server

    received: (data) ->
      # Called when there's incoming data on the websocket for this channel
      switch data['mode']
        when 'message_received' then message_list.append(data['dom_element'])
        when 'users_changed' then current_users.replaceWith(data['dom_element'])
        else alert 'unknown action received: ' + data['mode']


    speak: (message) ->
      @perform 'speak', message: message, room_id: message_list.data('room_id')
