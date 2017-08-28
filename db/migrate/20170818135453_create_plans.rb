class CreatePlans < ActiveRecord::Migration[5.1]
  def change
    create_table :plans do |t|
      t.string :name
      t.string :description
      t.decimal :month_price
      t.integer :icon_id

      t.timestamps
    end
  end
end
