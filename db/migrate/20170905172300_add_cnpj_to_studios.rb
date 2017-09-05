class AddCnpjToStudios < ActiveRecord::Migration[5.1]
  def change
    add_column :studios, :cnpj, :string
  end
end
