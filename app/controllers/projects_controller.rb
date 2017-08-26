class ProjectsController < ApplicationController
  def index
    @projects = Project.limit(10)

    page = Page.find_by(name: :projects)
    set_meta_tags page.slice(:title, :description, :keywords) if page
  end

  def show
    @project = Project.find_by(id: params[:id])
    if @project
      @photos = @project.photos
      set_meta_tags @project.slice(:title, :description, :keywords)
    end
  end
end
