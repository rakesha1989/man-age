class CreateSuppliers < ActiveRecord::Migration
  def change
    create_table :suppliers do |t|
      t.string :name
      t.text :address
      t.string :phone_number
      t.text :info
      t.string :pan_no
      t.string :tin_no
      t.string :cst_reg
      t.string :contact_person

      t.timestamps null: false
    end
  end
end
