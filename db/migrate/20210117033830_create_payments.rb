class CreatePayments < ActiveRecord::Migration[6.1]
  def change
    create_table :payments do |t|
      t.integer :amount, null: false
      t.date :payment_at, null: false, default: Date.current
      t.references :category, null: false

      t.timestamps
    end
  end
end
