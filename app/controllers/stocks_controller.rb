class StocksController < ActionController::Base
  before_action :get_stock, only: :show

  def show
  end

  private

  def get_stock
    @stock = Stock.find_by(id: params[:id])
    render status: 404 and return unless @stock
  end
end
