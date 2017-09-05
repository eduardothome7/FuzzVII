class CreateCategoriesProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :categories_products do |t|
      t.integer :mod_id
      t.integer :plan_id
    end
  end
end
