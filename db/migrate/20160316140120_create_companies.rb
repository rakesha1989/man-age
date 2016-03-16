class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :pan_no
      t.string :tin
      t.float :vat_sales
      t.float :vat_purchase
      t.string :address
      t.string :owner

      t.timestamps null: false
    end
  end
end
