class PagesController < ApplicationController
  def index
    @stocks = Stock.limit(7)
  end

  def about
  end

  def products
    @product = Product.all
  end
end
