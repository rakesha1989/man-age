class Employee < ActiveRecord::Base

		belongs_to :company
	has_one :attendance, dependent: :destroy

	validates_presence_of :gender, :email, :mobile, :address, :salary, :date_of_birth, :joining_date
	validates_presence_of :first_name, :message => " Enter your name please"
	validates_length_of :mobile, is: 10
	validates_uniqueness_of :email, :first_name
	validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }


end
