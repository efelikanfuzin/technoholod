class AddPhotosToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :photos, :json
  end
end
