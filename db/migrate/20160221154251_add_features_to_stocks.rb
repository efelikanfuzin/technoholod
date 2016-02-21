class AddFeaturesToStocks < ActiveRecord::Migration
  def change
    add_column :stocks, :features, :string
  end
end
