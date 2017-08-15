class CreateCategoryMods < ActiveRecord::Migration[5.1]
  def change
    create_table :category_mods do |t|
      t.string :title
      t.string :name
      t.string :icon_id

      t.timestamps
    end
  end
end
