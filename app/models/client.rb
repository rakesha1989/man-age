class Client < ActiveRecord::Base

		has_many :contacts, dependent: :destroy
  has_many :invoices, dependent: :destroy
  has_many :despatches, dependent: :destroy
  has_many :invoices, dependent: :destroy
  has_many :recieve_payments, dependent: :destroy
  
  validates_presence_of :name, :address, :phone_number, :p_a_n_number, :t_i_n_number
 
	validates_length_of :phone_number, is: 10
  validates_uniqueness_of :name
  
end
