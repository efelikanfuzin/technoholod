class ProductsController < ApplicationController
  def show
    # slug = params[:id].to_slug.normalize(transliterations: :russian).to_s
    @product = Product.friendly.find(params[:id])
    @products = Product.all
    render status: 404 and return unless @product
  end
end
