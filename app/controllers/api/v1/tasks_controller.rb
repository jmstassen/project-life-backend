class Api::V1::TasksController < ApplicationController
  
  def index
    @tasks = Task.all
    render json: @tasks
  end    

  def create
    @task.new(task_params)
    if @task.save
      render json: @task, status: :accepted
    else
      render json: { errors: @task.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def task_params
    params.permit(:name, :size, :date, :status, :project_id)
  end


end
