# frozen_string_literal: true

class ProjectsController < ApplicationController
  def index
    @projects = Project.page(params[:page]).order(id: :desc).per(5)

    page = Page.find_by(name: :projects)
    set_meta_tags page.slice(:title, :description, :keywords) if page
  end

  def show
    (@project = Project.friendly.find(params[:id])) || not_found

    return unless @project
    if id_not_slug?
      redirect_to(project_path(@project), status: :moved_permanently)
    end

    @photos = @project.photos
    set_meta_tags @project.slice(:title, :description, :keywords)
  end
end
