class CreateAttendences < ActiveRecord::Migration
  def change
    create_table :attendences do |t|
      t.integer :employee_id
      t.date :day
      t.boolean :morning
      t.boolean :after_noon

      t.timestamps null: false
    end
  end
end
