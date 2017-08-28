class AddTotalPriceToPlans < ActiveRecord::Migration[5.1]
  def change
    add_column :plans, :price, :decimal
  end
end
