class UsersController < ApplicationController
  before_action :is_matching_login_user, only: [:edit, :update]

  def edit
    @user =User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
    redirect_to users_path(@user.id)
    else 
      render :edit
  end

  def show
    @user = User.find(params[:id])
  end

  def index
    @user = Users.all
  end

  private

  def user_params
    params.require(:user).permit(:name, :profile_image)
  end

  def is_matching_login_user
    user = User.find(params[:id])
    unless user.id == current_user.id
      redirect_to user_path
    end
  end

end