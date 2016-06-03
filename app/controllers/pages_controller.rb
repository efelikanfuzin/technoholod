class PagesController < ApplicationController
  def index
    @stocks = Stock.limit(7)
    # UserMailer.welcome_email.deliver_now
  end

  def about
  end

  def contacts
  end

  def products
    @product = Product.all
  end
end
