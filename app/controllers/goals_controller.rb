class GoalsController < ApplicationController
  before_action :set_goal, only: [:show, :edit, :update, :destroy]

def index
  @goals = Goal.all
end

def new
  if !!flash[:data]
    @goal = Goal.new(flash[:data])
  else
    @goal = Goal.new
  end
end

def create
 @goal= Goal.create(goal_params)
  if @goal.valid?
   redirect_to goal_path(@goal)
  else
   flash[:errors] = @goal.errors.full_messages
   flash[:data] = goal_params
   redirect_to new_goal_path
  end
end

def show
  @categories = Category.all
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
  params.require(:goal).permit(:goal_name, :user_id, :frequency, :duration, :category_name)
end

end
