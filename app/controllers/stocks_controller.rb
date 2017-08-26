class StocksController < ApplicationController
  before_action :get_stock, only: :show

  def show
    set_meta_tags @stock.slice(:title, :meta_description, :meta_keywords)
  end

  def index
    @stocks = Stock.limit(20)
  end

  def create
    UserMailer.stock_order(stock_params).deliver_later
    redirect_to stocks_path
  end

  private

  def get_stock
    @stock = Stock.find_by(id: params[:id]) or not_found
  end

  def stock_params
    params.permit(:stock_id, :name, :phone)
  end
end
