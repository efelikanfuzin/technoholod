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
    real_user? && UserMailer.feedback(feedback_params.to_h).deliver_later

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
    page && set_meta_tags(page.slice(:title, :description, :keywords))
  end

  def real_user?
    params[:second_email].blank? &&
      (Time.current.to_i - params[:timestamp].to_i) > 5
  end
end
