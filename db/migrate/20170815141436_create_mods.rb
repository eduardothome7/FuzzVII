class CreateMods < ActiveRecord::Migration[5.1]
  def change
    create_table :mods do |t|
      t.string :name
      t.string :title
      t.text :description
      t.string :icon
      t.string :slug
      t.integer :category_mod_id

      t.timestamps
    end
  end
end
