class ToppagesController < ApplicationController
  def show
    @user = User.all
  end

end
