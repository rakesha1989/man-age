class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.integer :employee_id
      t.string :gender
      t.date :joining_date
      t.date :date_of_birth
      t.float :salary
      t.string :address
      t.string :mobile
      t.string :email

      t.timestamps null: false
    end
  end
end
