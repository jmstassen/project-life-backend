class Api::V1::ProjectsController < ApplicationController

  def index
    projects = Project.all
    render json: ProjectSerializer.new(projects)
  end    
    
  def create
    @project = Project.new(project_params)
    if @project.save
      render json: ProjectSerializer.new(@project), status: :accepted
    else
      render json: { errors: @project.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    @project = Project.find(params[:id])
    @project.update(project_params)
    if @project.save
      render json: ProjectSerializer.new(@project), status: :accepted
    else
      render json: { errors: @project.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy

    render json: {projectId: @project.id}
  end
    
  private
    
  def project_params
    params.require(:project).permit(:title)
  end
    
end    

