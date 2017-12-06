class AvatarsController < ApplicationController
  
  def create
    @user = User.find(params[:user_id])
    @avatar = Avatar.new(avatar_params)
    @avatar.user = @user
    @avatar.save
    # Three lines above can be replaced with 
    # @user.create_avatar(params)
    redirect_to user_path(@user)
  end

def destroy
  @user = User.find(params[:user_id])
  @avatar = Avatar.find(params[:id])
  @avatar.user = @user
  @avatar.destroy
  redirect_to user_path(@user)
end

private

def avatar_params
  params.require(:avatar).permit(:avatarpic)
end

end
 
 