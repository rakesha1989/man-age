class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.integer :supplier_id
      t.string :payee_name
      t.string :payment_method
      t.date :payment_date
      t.string :email
      t.integer :reference_no
      t.text :description
      t.string :amount
      t.float :tax

      t.timestamps null: false
    end
  end
end
