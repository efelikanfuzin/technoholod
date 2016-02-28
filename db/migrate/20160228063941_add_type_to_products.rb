class AddTypeToProducts < ActiveRecord::Migration
  def change
    add_column :products, :products_type, :integer
  end
end
