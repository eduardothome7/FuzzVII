class CreateStudios < ActiveRecord::Migration[5.1]
  def change
    create_table :studios do |t|
      t.string :name
      t.string :social_name
      t.string :email
      t.text :description
      t.integer :user_id
      t.string :cep
      t.string :address
      t.string :city
      t.string :uf
      t.string :picture

      t.timestamps
    end
  end
end
