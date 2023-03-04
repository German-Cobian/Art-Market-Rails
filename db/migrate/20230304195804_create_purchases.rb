class CreatePurchases < ActiveRecord::Migration[7.0]
  def change
    create_table :purchases do |t|
      t.integer :quantity
      t.decimal :total

      t.timestamps
    end
  end
end
