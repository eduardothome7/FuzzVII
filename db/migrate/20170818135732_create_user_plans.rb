class CreateUserPlans < ActiveRecord::Migration[5.1]
  def change
    create_table :user_plans do |t|
      t.integer :user_id
      t.integer :plan_id
      t.string :payment_type
      t.float :value
      t.integer :duration_months
      t.string :status
      t.datetime :created_at
      t.datetime :cancelled_at

      t.timestamps
    end
  end
end
