class Api::V1::TasksController < ApplicationController
  def index
    taskst = Task.all
    render json: TaskSerializer.format_tasks(tasks)
  end

  def show
    task = Task.find(params[:id])
    render json: TaskSerializer.format_task(task)
  end

  def create
    task = Task.create(task_params)
    render json: TaskSerializer.format_created_task(task)
  end
  
  def update
    render json: Task.update(params[:id], task_params)
  end
  
  def destroy
    render json: Task.delete(params[:id])
  end

  private

  def task_params
    params.require(:task).permit(:title, :description)
  end
end