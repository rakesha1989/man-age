class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :designation
      t.string :email
      t.string :mobile
      t.integer :client_id

      t.timestamps null: false
    end
  end
end
