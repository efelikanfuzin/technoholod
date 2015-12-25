class CreateFilms < ActiveRecord::Migration
  def change
    create_table :films do |t|
      t.string :name
      t.string :info

      t.timestamps null: false
    end
  end
end
