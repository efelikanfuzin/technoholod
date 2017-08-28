class AddSlugToStock < ActiveRecord::Migration
  def change
    add_column :stocks, :slug, :string
  end
end
