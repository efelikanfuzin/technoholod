class BlogsController < ApplicationController
  def index
    @products = Product.all
    @blog_posts = Blog.limit(5)
  end

  def show
    # @products = Product.all
    @post = Blog.find_by(id: params[:id])
  end
end
