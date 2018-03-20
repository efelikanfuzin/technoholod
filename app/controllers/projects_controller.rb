class ProjectsController < ApplicationController
  def index
    @projects = Project.all.order(id: :desc)

    page = Page.find_by(name: :projects)
    set_meta_tags page.slice(:title, :description, :keywords) if page
  end

  def show
    @project = Project.friendly.find(params[:id]) or not_found
    if @project
      @photos = @project.photos
      set_meta_tags @project.slice(:title, :description, :keywords)
    end
  end
end
