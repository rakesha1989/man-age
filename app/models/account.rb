class Account < ActiveRecord::Base

	belongs_to :company
	belongs_to :invoice
	belongs_to :pay_bill
	belongs_to :recieve_payment
	belongs_to :expense

end
