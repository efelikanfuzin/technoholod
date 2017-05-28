class PagesController < ApplicationController
  def index
    @stocks = Stock.limit(7)
  end

  def about
  end

  def contacts
  end

  def feedback
    if verify_recaptcha
      UserMailer.feedback(feedback_params).deliver_later
    end

    redirect_to root_path
  end

  def products
    @product = Product.all
  end

  private

  def feedback_params
    params.permit(:name, :phone, :message)
  end
end
