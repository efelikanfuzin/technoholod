class StocksController < ApplicationController
  before_action :set_stock, only: :show

  def show
    set_meta_tags @stock.slice(:title, :meta_description, :meta_keywords)
  end

  def index
    page = Page.find_by(name: :stocks)
    set_meta_tags page.slice(:title, :description, :keywords) if page

    @stocks = Stock.limit(20)
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
