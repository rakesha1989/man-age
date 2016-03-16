class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.string :address
      t.string :phone_number
      t.text :info
      t.string :pan_no
      t.string :tin_no
      t.string :contact_person
      t.string :cst_reg

      t.timestamps null: false
    end
  end
end
