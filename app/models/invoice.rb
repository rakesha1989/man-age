class Invoice < ActiveRecord::Base

	belongs_to :client
	belongs_to :product
	has_many :accounts, dependent: :destroy

	validates_presence_of :client_id, :invoice_number, :day, :terms, :due_date, :product_id, :description, :quantity, :unit, :rate, :amount, :tax 
	validates_numericality_of :amount, :tax, :rate, :quantity
end
