class CreatePaybills < ActiveRecord::Migration
  def change
    create_table :paybills do |t|
      t.integer :supplier_id
      t.string :payment_method
      t.date :payment_date
      t.string :bill_no
      t.integer :refernce_no
      t.text :description
      t.decimal :amount
      t.float :tax

      t.timestamps null: false
    end
  end
end
