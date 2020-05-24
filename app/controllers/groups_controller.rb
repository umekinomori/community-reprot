class GroupsController < ApplicationController

  def show
    @group = Group.find(params[:id])
  end

  def new
    @gorup = Group.new
  end


  def create
    @group = Group.new(group_params)
    if @group.save
       redirect_to :root
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
  
end
