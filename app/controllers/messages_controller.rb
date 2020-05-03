class MessagesController < ApplicationController
  def show
    @messages = Message.new
    @messages = Message.includes(:user)
  end

  private

  def message_params
    params.require(:message).permit(:content).merge(user_id: current_user.id)
  end

end
