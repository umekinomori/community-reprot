class MessagesController < ApplicationController
  def show
    @messages = Message.new
    @messages = Message.includes(:user)
    @user = User.find(params[:id])
  end

end
