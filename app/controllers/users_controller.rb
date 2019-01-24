class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

    def index
      @users = User.all
    end

    def new
      if !!flash[:data]
        @user = User.new(flash[:data])
      else
        @user = User.new
      end
    end

    def create
     @user = User.create(user_params)
      if @user.valid?
       redirect_to login_path
      else
       flash[:errors] = @user.errors.full_messages
       flash[:data] = user_params
       redirect_to login_path
      end
    end

    def show
      @goals = Goal.all
    end

    def edit
    end

    def update
      if @user.update(user_params)
       redirect_to user_path(@user)
      else
       flash[:errors] = @user.errors.full_messages
       flash[:data] = user_params
       redirect_to edit_user_path
      end
    end

    def destroy
      @user.destroy
      redirect_to users_path
    end

    private

    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :photo)
    end

end
