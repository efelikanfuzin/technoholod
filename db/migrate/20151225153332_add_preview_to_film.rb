class AddPreviewToFilm < ActiveRecord::Migration
  def change
    add_column :films, :preview, :string
  end
end
