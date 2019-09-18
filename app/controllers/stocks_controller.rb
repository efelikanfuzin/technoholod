# frozen_string_literal: true

class StocksController < ApplicationController
  before_action :set_stock, only: :show

  def show
    id_not_slug? && redirect_to(stock_path(@stock), status: :moved_permanently)

    set_meta_tags(
      title: @stock.title,
      description: @stock.meta_description,
      keywords: @stock.meta_keywords
    )
  end

  def index
    page = Page.find_by(name: :stocks)
    set_meta_tags(page.slice(:title, :description, :keywords)) if page

    @stocks = Stock.page(params[:page]).order(id: :desc).per(8)
  end

  def create
    UserMailer.stock_order(stock_params.to_h).deliver_later
    redirect_to stocks_path
  end

  private

  def set_stock
    (@stock = Stock.friendly.find(params[:id])) || not_found
  end

  def stock_params
    params.permit(:stock_id, :name, :phone)
  end
end
