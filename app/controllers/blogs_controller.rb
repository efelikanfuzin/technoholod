class BlogsController < ApplicationController
  def index
    @blog_posts = Blog.limit(5)
  end

  def show
    @post = Blog.find_by(id: params[:id])
  end
end
