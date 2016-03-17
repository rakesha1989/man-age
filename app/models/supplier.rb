class Supplier < ActiveRecord::Base

		belongs_to :company

	
	validates_presence_of :name, :address, :phone_number, :p_a_n_no, :t_i_n_no
	validates_length_of :phone_number, is: 10
	validates_uniqueness_of :name
end
