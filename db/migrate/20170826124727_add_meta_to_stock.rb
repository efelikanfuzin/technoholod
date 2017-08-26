class AddMetaToStock < ActiveRecord::Migration
  def change
    add_column :stocks, :meta_description, :string, default: ''
    add_column :stocks, :meta_keywords, :string, default: ''
  end
end
