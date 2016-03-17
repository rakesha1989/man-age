class Company < ActiveRecord::Base

		has_one :account, dependent: :destroy
	has_many :clients, dependent: :destroy
	has_many :suppliers, dependent: :destroy
	has_many :employees, dependent: :destroy

	validates_presence_of :name, :adress, :vat_sales, :p_a_n_number, :t_i_n_no, :vat_purchase, :owner
	validates_numericality_of :vat_sales, :vat_purchase
	validates_uniqueness_of :name

end
