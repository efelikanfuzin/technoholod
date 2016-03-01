class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.string :keywords
      t.string :description
      t.string :preview_img
      t.text :content
      t.text :preview
    end
  end
end
