class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  def index
    @tasks = Task.all
  end

  def new
    if !!flash[:data]
      @task = Task.new(flash[:data])
    else
      @task = Task.new
    end
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
  end

  def edit
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
    redirect_to tasks_path
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:first_name, :last_name, :password, :email, :photo)
  end
end
