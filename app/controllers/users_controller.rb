class UsersController < ApplicationController
  def index
    @user = User.find_by(id: 1)
  end


  def all
    @users = User.all
  end
end
