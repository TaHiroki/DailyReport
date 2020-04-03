class UsersController < ApplicationController
  def index
    @user = User.find_by(id: 1)
  end

  def new

  end

  def create
    @user = User.new
    @user.name = params[:name]
    @user.email = params[:email]
    @user.password = params[:password]
    @user.delete_flag = 0
    @user.user_img = "default.png"
    @user.save
    redirect_to("/reports/index")
  end


  def all
    @users = User.all
  end
end
