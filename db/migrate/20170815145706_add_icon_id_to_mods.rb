class AddIconIdToMods < ActiveRecord::Migration[5.1]
  def change
    add_column :mods, :icon_id, :integer
  end
end
