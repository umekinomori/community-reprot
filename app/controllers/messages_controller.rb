class MessagesController < ApplicationController
  before_action :set_user

  def index
    @message = Message.new
    @messages = Message.includes(:user)
  end



  def create
    @message = Messages.new(message_params)
    @message.save
    redirect_to root_path
  end



  private
  def message_params
    params.require(:message).permit(:content).merge(user_id: current_user.id)
  end

  def set_user
    
  end
end
