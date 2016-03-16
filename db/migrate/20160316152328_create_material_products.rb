class CreateMaterialProducts < ActiveRecord::Migration
  def change
    create_table :material_products do |t|
      t.integer :material_id
      t.integer :product_id

      t.timestamps null: false
    end
  end
end
