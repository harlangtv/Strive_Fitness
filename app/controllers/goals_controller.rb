class GoalsController < ApplicationController
    before_action :set_goal, only: [:show, :edit, :update, :destroy]

    before_action :authorized

  def index
    if logged_in?
      @goals = current_user.goals
    else
      @goals = Goal.all
    end
  end

  def new
    @goal = Goal.new
  end

  def create
    @user = User.find_by_id(params[:id])
    @goal= Goal.create(goal_params)

   # byebug
    if @goal.valid?
     redirect_to goal_path(@goal)
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
     redirect_to goal_path(@goal)
    else
     flash[:errors] = @goal.errors.full_messages
     flash[:data] = goal_params
     redirect_to edit_goal_path
    end
  end

  def destroy
    @goal.destroy
    redirect_to goals_path
  end

  private

  def set_goal
    @goal = Goal.find(params[:id])
  end

  def goal_params
    params.require(:goal).permit(:goal_name, :user_id, :frequency, :duration, :category_name, category_ids: [])
  end

end
