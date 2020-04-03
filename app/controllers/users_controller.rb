class UsersController < ApplicationController
  def index
  end


  def all
    @users = User.all
  end
end
