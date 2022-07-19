class UsersController < ApplicationController
  def top
  end

  def show
    @user = User.find(params[:id])
    @books = @user.books
    @book_new = Book.new
  end

  def edit
    @user = User.find(params[:id])
  end
  
  def index
    @book_new = Book.new
    @user = User.all
  end

  def update
     @user = User.find(params[:id])
     @user.update(user_params)
     redirect_to user_path(@user.id)
  end

   private

  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction)
  end

end
