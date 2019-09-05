# frozen_string_literal: true

class PagesController < ApplicationController
  before_action :update_meta_tags

  def index
    @stocks = Stock.limit(7)
    @reviews = Review.can_show
  end

  def about; end

  def contacts; end

  def feedback
    UserMailer.feedback(feedback_params.to_h).deliver_later if verify_recaptcha

    redirect_to root_path
  end

  def products
    @products = Product.all.group_by(&:products_type)
  end

  private

  def feedback_params
    params.permit(:name, :phone, :message)
  end

  def update_meta_tags
    page = Page.find_by(name: params[:action])
    set_meta_tags page.slice(:title, :description, :keywords) if page
  end
end
