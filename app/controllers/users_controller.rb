class UsersController < ApplicationController

  def index
    @user = current_user
    @users = User.all
  end

  def create
  end

  def show
    @user = User.find(params[:id])
    @book = Book.new
    @books = Book.all
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)
    redirect_to users_path(user.id)
  end
  
  private
  def user_params
  params.require(:user).permit(:name, :profile_image_id, :introduction)
  end

end

