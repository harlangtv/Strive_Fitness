class GoalsController < ApplicationController
    before_action :set_goal, only: [:show, :edit, :update, :destroy]
    # before_action :authorized

  def index
      @goals = current_user.goals
  end

  def new
    @goal = Goal.new
  end

  def create
    # updated the create method to give a user id based on sessions
    @user = User.find(session[:user_id])
    @goal= Goal.new(goal_params)
    @goal.user_id = @user.id
    if @goal.valid?
    @goal.save
     redirect_to user_path(@goal.user)
    else
     flash[:errors] = @goal.errors.full_messages
     flash[:data] = goal_params
     redirect_to new_goal_path
    end
  end

  def show
  end

  def edit
  end

  def update
    if @goal.update(goal_params)
     redirect_to goal_path(@goal.user)
    else
     flash[:errors] = @goal.errors.full_messages
     flash[:data] = goal_params
     redirect_to edit_goal_path
    end
  end

  def destroy
    @goal.destroy
    redirect_to user_path(@goal.user)
  end

  private

  def set_goal
    @goal = Goal.find(params[:id])
  end

  def goal_params
    params.require(:goal).permit(:goal_name, :frequency, :duration, :category_name, category_ids: [])
  end

end
