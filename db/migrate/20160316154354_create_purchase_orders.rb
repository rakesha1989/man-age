class CreatePurchaseOrders < ActiveRecord::Migration
  def change
    create_table :purchase_orders do |t|
      t.integer :supplier_id
      t.date :p_o_date
      t.text :shipping_address
      t.string :ship_to
      t.text :description
      t.decimal :quantity
      t.string :unit
      t.string :rate
      t.decimal :amount
      t.float :tax
      t.text :message
      t.integer :material_id

      t.timestamps null: false
    end
  end
end
