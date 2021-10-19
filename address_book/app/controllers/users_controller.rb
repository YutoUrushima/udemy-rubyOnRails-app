class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    @user.save
      redirect_to users_path
  end

  def edit
  end

  def update
  end

  def show
  end
  
  private
  def user_params
    params[:user].permit(:name, :phone)
  end
  
end
