class CreateCategoryEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :category_events do |t|
      t.string :name
      t.string :description
      t.integer :icon_id

      t.timestamps
    end
  end
end
