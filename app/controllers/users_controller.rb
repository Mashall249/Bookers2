class UsersController < ApplicationController
  def edit
    @user =User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update
    redirect_to users_path(current_user.id)

  def show
    @user = User.find(params[:id])
    @post_images = @user.post_images
  end

  def index
    @user = Users.all
end
