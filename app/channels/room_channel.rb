class RoomChannel < ApplicationCable::Channel
  def subscribed
    stream_from "room_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(data)
    puts data
    room = Room.find(data['room_id'])
    message = room.messages.create(content: data['message'], user: current_user_cable)
    ActionCable.server.broadcast "room_channel", dom_element: render_message_partial(message)
  end

  private
  def render_message_partial(message)
    ApplicationController.render(partial: 'messages/message', locals: { message: message })
  end
end