class AddNToStudios < ActiveRecord::Migration[5.1]
  def change
    add_column :studios, :n, :string
    add_column :studios, :ngb, :string
  end
end
