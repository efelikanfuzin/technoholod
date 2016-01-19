class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :name
      t.string :title
      t.string :description
      t.string :keywords

      t.timestamps null: false
    end
  end
end
