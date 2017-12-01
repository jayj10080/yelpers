class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @avatar = Avatar.new
  end
  
end
