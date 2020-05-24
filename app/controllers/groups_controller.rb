class GroupsController < ApplicationController
  before_action :group_card, only: :create
  def show
    @group = Group.find(params[:id])
  end

  def new
    @gorup = Group.new
  end


  def create
    @group = Group.new(group_params)
    if @group.savev
    else
      render :new
    end
  end


  def edit
    @goup  = Group.find(params[:id])
  end

  private
  def group_params
    params.require(:group).permit(:district).merge(user_id: current_user.id)
  end
  
  def group_card
    @group = Group.find_by(user_id: current_user.id)
  end
end
