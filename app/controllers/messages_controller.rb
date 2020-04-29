class MessagesController < ApplicationController
  def index
    @messages = Message.all
  end

  def create
    @messages = Message.new
  end

end
