class AddClassToMods < ActiveRecord::Migration[5.1]
  def change
    add_column :mods, :bg_color, :string
  end
end
