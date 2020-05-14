class GroupsController < ApplicationController
  before_action :group_card, only: :create
  def show
  end

  def new
    @gorup = Group.new
  end


  def create
    @group = Group.new(group_params)
    if @group.save
      redirect_to root_path, notice: '登録しました'
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
