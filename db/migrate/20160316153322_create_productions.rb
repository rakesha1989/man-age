class CreateProductions < ActiveRecord::Migration
  def change
    create_table :productions do |t|
      t.integer :material_id
      t.decimal :quantity
      t.string :unit
      t.integer :product_id

      t.timestamps null: false
    end
  end
end
