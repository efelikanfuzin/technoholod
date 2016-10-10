class BlogsController < ApplicationController
  def index
    @blog_posts = Blog.page(params[:page]).per(5)
  end

  def show
    @post = Blog.find_by(id: params[:id])
  end
end
