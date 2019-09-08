# frozen_string_literal: true

class BlogsController < ApplicationController
  def index
    if params[:search].present?
      @search_results_posts =
        Blog.search_by_title_and_content(params[:search])
            .page(params[:page])
            .order(id: :desc)
            .per(5)

      respond_to do |format|
        format.js { render partial: 'search-results' }
      end
    else
      @blog_posts = Blog.page(params[:page])
                        .order(id: :desc)
                        .per(5)
    end

    page = Page.find_by(name: :blogs)
    set_meta_tags page.slice(:title, :description, :keywords) if page
  end

  def show
    (@post = Blog.friendly.find(params[:id])) || not_found
    id_not_slug? && redirect_to(blog_path(@post), status: :moved_permanently)

    set_meta_tags @post.slice(:title, :description, :keywords) if @post
  end
end
