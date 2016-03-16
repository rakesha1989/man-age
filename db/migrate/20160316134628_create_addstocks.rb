class CreateAddstocks < ActiveRecord::Migration
  def change
    create_table :addstocks do |t|
      t.decimal :stock
      t.string :unit
      t.integer :material_id

      t.timestamps null: false
    end
  end
end
