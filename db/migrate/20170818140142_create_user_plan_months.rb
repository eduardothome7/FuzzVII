class CreateUserPlanMonths < ActiveRecord::Migration[5.1]
  def change
    create_table :user_plan_months do |t|
      t.integer :user_plan_id
      t.integer :month
      t.integer :year
      t.integer :until_month_day
      t.string :status
      t.decimal :value
      t.integer :created_at

      t.timestamps
    end
  end
end
