class AvatarsController < ApplicationController
  
  def create
    @user = User.find(params[:user_id])
    @avatar = Avatar.new(avatar_params)
    # @user.avatar.build(avatar_params)
    @avatar.user = @user
    @avatar.save
    redirect_to user_path(@user)
  end

private

def avatar_params
  params.require(:avatar).permit(:avatarpic)
end

end
 