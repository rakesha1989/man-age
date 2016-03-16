class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.integer :company_id
      t.integer :invoice_id
      t.integer :bill_id
      t.integer :recieve_payment_id
      t.integer :expense_id

      t.timestamps null: false
    end
  end
end
