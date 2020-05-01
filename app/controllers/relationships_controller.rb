class RelationshipsController < ApplicationController

  def show
    @users = User.all
    @messages = Message.all
  end

  def follow
    current_user.follow(params[:id])
    redirect_to root_path
  end

  def unfollow
    current_user.unfollow(params[:id])
    redirect_to root_path
  end

end
