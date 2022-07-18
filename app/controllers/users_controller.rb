class UsersController < ApplicationController
  def top
  end

  def show
    @user = User.find(params[:id])
    @post_images = @user.post_images
  end

  def edit
    @user = User.find(params[:id])
  end

 def update
    @user = find(params[:id])
    @user.update
    redirect_to user_path(user.id)
 end


  private

  def user_params
    params.require(:user).permit(:name, :profile_image)
  end

end
