class UsersController < ApplicationController
    def index
      @users = User.all
      render json: @users
    end
  
    def create
      @user = User.new(name: params[:name], email: params[:email])
      if @user.save
        render json: @user
      else
        render json: { error: "Unable to create user." }
      end
    end
  end