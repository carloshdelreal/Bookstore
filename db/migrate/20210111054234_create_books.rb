class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title
      t.integer :year_published
      t.string :isbn
      t.decimal :price, precision: 10, scale: 2
      t.boolean :out_of_print
      t.integer :views
      t.references :supplier, null: false, foreign_key: true
      t.references :author, null: false, foreign_key: true

      t.timestamps
    end
  end
end
