class AddMetaToProduct < ActiveRecord::Migration
  def change
    add_column :products, :meta_description, :string, default: ''
    add_column :products, :meta_keywords, :string, default: ''
  end
end
