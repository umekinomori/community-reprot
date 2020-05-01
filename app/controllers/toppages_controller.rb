class ToppagesController < ApplicationController
  def show
    @users = User.all
    
  end

end
