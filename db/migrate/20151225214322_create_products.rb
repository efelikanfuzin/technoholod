class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.integer :price
      t.string :description
      t.string :avatar
      t.json :photos
      t.string :status

      t.timestamps null: false
    end
  end
end
