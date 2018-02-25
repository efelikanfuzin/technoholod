class ProductsController < ApplicationController
  def show
    # slug = params[:id].to_slug.normalize(transliterations: :russian).to_s
    @product = Product.friendly.find(params[:id])
    set_meta_tags @product.slice(:title, :meta_description, :meta_keywords)
    @products = Product.all

    render(status: 404) && return unless @product
  end
end
