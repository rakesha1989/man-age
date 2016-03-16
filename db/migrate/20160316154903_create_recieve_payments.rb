class CreateRecievePayments < ActiveRecord::Migration
  def change
    create_table :recieve_payments do |t|
      t.integer :client_id
      t.integer :invoice_id
      t.string :email
      t.date :payment_date
      t.string :payment_method
      t.integer :reference_no
      t.string :amount_recieved
      t.string :deposited_to

      t.timestamps null: false
    end
  end
end
