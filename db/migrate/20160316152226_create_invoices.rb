class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.integer :client_id
      t.integer :invoice_number
      t.date :day
      t.text :terms
      t.date :due_date
      t.integer :product_id
      t.string :description
      t.decimal :quantity
      t.string :unit
      t.decimal :rate
      t.decimal :amount
      t.float :tax
      t.text :message

      t.timestamps null: false
    end
  end
end
