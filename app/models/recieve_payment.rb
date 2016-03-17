class RecievePayment < ActiveRecord::Base

	belongs_to :client
	belongs_to :invoice
	has_many :accounts, dependent: :destroy

	validates_presence_of :client_id, :invoice_id, :payment_date, :payment_method, :reference_no, :amount_recieved, :deposited_to
	
end
