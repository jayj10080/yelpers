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
 

 # <% if current_user.avatar.present? %>  
 #      <%= link_to image_tag(current_user.avatar.avatarpic), user_path(current_user), class: 'profile-pic' %> 
 #      <% else %>
 #      <%= link_to image_tag('user.png'), user_path(current_user), class: 'profile-pic' %>
 #      <% end %>





#  <div class="dropdown profile-pic caret">

# <%= image_tag ('user.png'), class: 'dropdown-toggle caret', data: { toggle: 'dropdown' } %>
#   <span class="caret"></span>
#   <ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
#     <li><a tabindex="-1" href="#">Action</a></li>
#     <li><a tabindex="-1" href="#">Another action</a></li>
#     <li><a tabindex="-1" href="#">Something else here</a></li>
#     <li class="divider"></li>
#     <li><a tabindex="-1" href="#">Separated link</a></li>
#   </ul>
# </div>




# <div class="dropdown profile-pic">
#     <button class="dropdown-toggle" type="button" id="menu1" data-toggle="dropdown">
#      <%= image_tag 'user.png' %>
#        <span class="caret"></span>
#     </button>
#     <ul class="dropdown-menu" role="menu" aria-labelledby="menu1">
#       <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Menu item 1</a></li>
#       <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Menu item 2</a></li>
#       <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Menu item 3</a></li>
#       <li role="presentation" class="divider"></li>
#       <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Menu item 4</a></li>
#     </ul>
#   </div>
 