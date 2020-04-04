class UsersController < ApplicationController
  def index
    @user = User.find_by(id: 1)
  end

  def new
      @user = User.new
  end

  def create
    @user = User.new
    @user.name = params[:name]
    @user.email = params[:email]
    @user.password = params[:password]
    @user.delete_flag = 0
    @user.user_img = "default.png"
    if @user.save
      flash[:notice] = "作成しました"
      redirect_to("/reports/index")
    else
      render("users/new")
    end
  end

  def edit
    @user = User.find_by(id: params[:id])
  end

  def update
    @user = User.find_by(id: params[:id])
    @user.name = params[:name]
    @user.email = params[:email]
    @user.password = params[:password]
    if params[:user_img]
      @user.user_img = "user#{@user.id}.png"
      image = params[:user_img]
      File.binwrite("public/user-image/#{@user.user_img}", image.read)
    end

    if @user.save
      flash[:notice] = "編集しました"
      render("users/index")
    else
      render("users/edit")
    end
  end


  def all
    @users = User.all
  end
end
