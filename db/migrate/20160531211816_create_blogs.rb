class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.text :preview
      t.text :content
      t.string :preview_img
      t.string :keywords
      t.string :description
      t.string :title

      t.timestamps null: false
    end
  end
end
