class AddPreviewToStocks < ActiveRecord::Migration
  def change
    add_column :stocks, :preview, :string
  end
end
