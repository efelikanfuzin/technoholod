class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :full_name, null: false
      t.string :job, null: false
      t.string :content, null: false
      t.string :photo, null: false
      t.boolean :show, deafult: false

      t.timestamps
    end
  end
end
