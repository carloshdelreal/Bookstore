class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.time :date_submitted
      t.integer :status
      t.decimal :subtotal, precision: 10, scale: 2
      t.decimal :shipping, precision: 10, scale: 2
      t.decimal :tax, precision: 10, scale: 2
      t.decimal :total, precision: 10, scale: 2
      t.references :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
