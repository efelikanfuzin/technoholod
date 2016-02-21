class StocksController < ApplicationController
  layout 'application'
  before_action :get_stock, only: :show

  def show
  end

  def index
    @stocks = Stock.limit(20)
  end

  private

  def get_stock
    @stock = Stock.find_by(id: params[:id]) or not_found
  end
end
