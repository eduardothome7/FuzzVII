class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :title
      t.integer :user_id
      t.integer :calendar_id
      t.decimal :total_amount
      t.datetime :start_at
      t.decimal :duration
      t.text :invites
      t.text :description
      t.integer :status_id

      t.timestamps
    end
  end
end
