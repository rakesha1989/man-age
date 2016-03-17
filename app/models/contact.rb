class Contact < ActiveRecord::Base

		belongs_to :client
	belongs_to :supllier

	validates_presence_of :name, :designation, :email, :mobile, :client_id
	validates_numericality_of :mobile 
	validates_length_of :mobile, is: 10
	validates_uniqueness_of :email, :name
	validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
end
