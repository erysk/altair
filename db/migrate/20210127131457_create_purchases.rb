class CreatePurchases < ActiveRecord::Migration[6.1]
  def change
    create_table :purchases do |t|
      t.integer :amount, null: false, default: 0
      t.date :purchased_at, null: false
      t.integer :category_id, null: false, index: true

      t.timestamps
    end
  end
end
