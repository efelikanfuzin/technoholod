class AddIndexForSlug < ActiveRecord::Migration[5.2]
  def change
    add_index :blogs, :slug
    add_index :projects, :slug
    add_index :stocks, :slug
    add_index :pages, :name
  end
end
