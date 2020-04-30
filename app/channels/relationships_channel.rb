class RelationshipsChannel < ApplicationCable::Channel
  def subscribed 
     stream_from "relationship_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(content)
    Message.create!(content: data['message'])
    template = ApplicationController.renderer.render(partial: 'messages/message', locals: {message: message})
    ActionCable.server.broadcast 'relationship_channel', template
  end
end



