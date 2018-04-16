# frozen_string_literal: true

class ProductsController < ApplicationController
  def show
    @product = Product.friendly.find(params[:id])
    set_meta_tags @product.slice(:title, :meta_description, :meta_keywords)
    @products = Product.all

    render(status: :not_found) && return unless @product
  end
end
