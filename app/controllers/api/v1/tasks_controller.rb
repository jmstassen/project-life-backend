class Api::V1::TasksController < ApplicationController
  
  def index
    tasks = Task.all
    render json: TaskSerializer.new(tasks)
  end    

  def create
    @task = Task.new(task_params)
    options = {}
    options[:is_collection] = false
    if @task.save
      render json: TaskSerializer.new(@task, options), status: :accepted
    else
      render json: { errors: task.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    options = {}
    options[:is_collection] = false
    if @task.save
      render json: TaskSerializer.new(@task, options), status: :accepted
    else
      render json: { errors: task.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.delete

    render json: {taskId: @task.id}
  end


  private

  def task_params
    params.require(:task).permit(:name, :size, :date, :status, :project_id)
  end


end
