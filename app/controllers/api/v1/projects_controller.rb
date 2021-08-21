class Api::V1::ProjectsController < ApplicationController

  def index
    projects = Project.all
    render json: ProjectSerializer.new(projects)
  end    
    
  def create
    project = Project.new(project_params)
    if project.save
      render json: project, status: :accepted
    else
      render json: { errors: project.errors.full_messages }, status: :unprocessable_entity
    end
  end
    
  private
    
  def project_params
    params.require(:project).permit(:title)
  end
    
end    

