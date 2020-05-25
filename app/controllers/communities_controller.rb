class CommunitiesController < ApplicationController
  

  def new
    @community = Community.new
  end

  def create
    @community = Community.new(community_params)
    if @community.save
      redirect_to :root
    else 
      redirect_to action:'new'
    end
  end

  def index
    @communitys = Community.all
  end


  private
  def community_params
    params.require(:community).permit(:ancestry, :volunter, :district).merge(user_id: current_user.id)
  end


end
