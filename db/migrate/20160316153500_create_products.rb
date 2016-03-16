class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :dwg_no
      t.integer :available_stock
      t.integer :client_id
      t.integer :unit_cost

      t.timestamps null: false
    end
  end
end
