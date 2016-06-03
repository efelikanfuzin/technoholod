class ProjectsController < ApplicationController
  def index
    @projects = Project.limit(10)
  end

  def show
    @project = Project.find_by(id: params[:id])
    @photos = @project.photos
  end
end
