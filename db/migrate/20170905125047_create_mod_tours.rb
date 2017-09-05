class CreateModTours < ActiveRecord::Migration[5.1]
  def change
    create_table :mod_tours do |t|
      t.string :title
      t.integer :mod_id
      t.string :picture
      t.text :description
      t.string :background
      t.string :a_link

      t.timestamps
    end
  end
end
