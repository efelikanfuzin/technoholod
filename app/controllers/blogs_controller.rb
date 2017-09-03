class BlogsController < ApplicationController
  def index
    @blog_posts = Blog.page(params[:page]).order(id: :desc).per(5)

    page = Page.find_by(name: :blogs)
    set_meta_tags page.slice(:title, :description, :keywords) if page
  end

  def show
    @post = Blog.friendly.find(params[:id]) or not_found
    set_meta_tags @post.slice(:title, :description, :keywords) if @post
  end
end
