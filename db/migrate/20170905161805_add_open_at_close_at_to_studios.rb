class AddOpenAtCloseAtToStudios < ActiveRecord::Migration[5.1]
  def change
    add_column :studios, :open_at, :datetime
    add_column :studios, :close_at, :datetime
    add_column :studios, :telephone, :string
    add_column :studios, :celphone, :string
    add_column :studios, :facebook, :string
    add_column :studios, :instagram, :string
    add_column :studios, :site, :string
  end
end
