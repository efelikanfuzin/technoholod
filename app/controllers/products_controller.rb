# frozen_string_literal: true

class ProductsController < ApplicationController
  def show
    @product = Product.friendly.find(params[:id])
    set_meta_tags(
      title: @product.title,
      description: @product.meta_description,
      keywords: @product.meta_keywords
    )
    @products = Product.all.group_by(&:products_type)

    render(status: :not_found) && return unless @product
  end
end
