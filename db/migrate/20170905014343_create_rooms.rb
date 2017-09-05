class CreateRooms < ActiveRecord::Migration[5.1]
  def change
    create_table :rooms do |t|
      t.string :name
      t.integer :studio_id
      t.string :picture
      t.text :description
      t.decimal :price_hour
      t.decimal :price_weekend
      t.decimal :price_late
      t.integer :category_event

      t.timestamps
    end
  end
end
