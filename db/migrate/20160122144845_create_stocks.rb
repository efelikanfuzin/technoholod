class CreateStocks < ActiveRecord::Migration
  def change
    create_table :stocks do |t|
      t.string :title
      t.text :description
      t.integer :price
      t.integer :sale_price
      t.integer :amount
      t.string :tags

      t.timestamps null: false
    end
  end
end
