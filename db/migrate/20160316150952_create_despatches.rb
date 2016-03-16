class CreateDespatches < ActiveRecord::Migration
  def change
    create_table :despatches do |t|
      t.date :day
      t.integer :product_id
      t.float :quantity
      t.string :unit
      t.integer :client_id
      t.integer :d_c_number

      t.timestamps null: false
    end
  end
end
