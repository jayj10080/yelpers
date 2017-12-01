class AvatarsController < ApplicationController
  
  def create
    @user = User.find(params[:user_id])
    @user.avatars.create(avatar_params)
    redirect_to user_path(@user)
  end

private

def avatar_params
  params.require(:avatar).permit(:avatarpic)
end

end
