class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  # before_action :authorized

  def index
    @tasks = Task.all
  end

  def new
    @user = User.find(session[:user_id])
    @goals = @user.goals
    @task = Task.new
  end

  def create
   @task= Task.create(task_params)
    if @task.valid?
     redirect_to task_path(@task)
    else
     flash[:errors] = @task.errors.full_messages
     flash[:data] = task_params
     redirect_to new_task_path
    end
  end

  def show
    @goals = Goal.all
    @user = @task.goal.user
  end

  def edit
    @goals = Goal.all
  end

  def update
    if @task.update(task_params)
     redirect_to task_path(@task)
    else
     flash[:errors] = @task.errors.full_messages
     flash[:data] = task_params
     redirect_to edit_task_path
    end
  end

  def destroy
    @task.destroy
    redirect_to user_path(@task.goal.user)
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:task_name,:goal_id, :completed, :date,:duration)
  end
end
