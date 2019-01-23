class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  # before_action :require_login

    def index
      @users = User.all
      # return head(:forbidden) unless session.include? :user_id
    end

    def new
      if !!flash[:data]
        @user = User.new(flash[:data])
      else
        @user = User.new
      end
    end

    def create
     # return head(:forbidden) unless session.include? :user_id
     @user= User.create(user_params)
      if @user.valid?
       redirect_to user_path(@user)
      else
       flash[:errors] = @user.errors.full_messages
       flash[:data] = user_params
       redirect_to login_path
      end
    end

    def show
      # return head(:forbidden) unless session.include? :user_id
      @goals = Goal.all
    end

    def edit
    end

    def update
      # return head(:forbidden) unless session.include? :user_id
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

    # def require_login
    #    return head(:forbidden) unless session.include? :user_id
    # end

end
