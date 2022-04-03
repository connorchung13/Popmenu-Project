class CreateBreakfasts < ActiveRecord::Migration[7.0]
  def change
    create_table :breakfasts do |t|
      t.string :item_name
      t.string :item_description
      t.decimal :item_price

      t.timestamps
    end
  end
end
