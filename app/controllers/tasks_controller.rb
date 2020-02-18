class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    safe_params = params.require(:task).permit(:title, :details)
    task = Task.new(safe_params)
    task.save
  end
end
