class ProjectsController < ApplicationController
  def index
    @projects = Project.limit(10).order(id: :desc)

    page = Page.find_by(name: :projects)
    set_meta_tags page.slice(:title, :description, :keywords) if page
  end

  def show
    (@project = Project.friendly.find(params[:id])) || not_found

    return unless @project

    @photos = @project.photos
    set_meta_tags @project.slice(:title, :description, :keywords)
  end
end
