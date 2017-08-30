class AddSslugToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :slug, :string, default: ''
  end
end
