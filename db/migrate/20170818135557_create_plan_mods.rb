class CreatePlanMods < ActiveRecord::Migration[5.1]
  def change
    create_table :plan_mods do |t|
      t.integer :plan_id
      t.integer :mod_id

      t.timestamps
    end
  end
end
