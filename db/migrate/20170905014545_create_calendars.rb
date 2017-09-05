class CreateCalendars < ActiveRecord::Migration[5.1]
  def change
    create_table :calendars do |t|
      t.string :title
      t.integer :room_id
      t.datetime :start_at
      t.datetime :end_at
      t.decimal :hour_interval
      t.decimal :hour_limit
      t.string :color
      t.boolean :public

      t.timestamps
    end
  end
end
