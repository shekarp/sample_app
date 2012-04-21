class UsersController < ApplicationController
  def show
    @title = "Show"
    @user = User.find(params[:id])
  end
  def new
    @title = "Sign up"
    @user = User.new
  end

  def create
    @title = "Sign up"
    @user = User.new(params[:user])
    if @user.save
      redirect_to @user
    else
      render 'new'
    end
  end
end
