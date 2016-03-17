class PurchaseOrder < ActiveRecord::Base

		belongs_to :supplier
	belongs_to :material


	validates_presence_of :supplier_id, :p_o_date, :shipping_address, :material_id, :quantity, :description, :amount, :tax, :unit, :rate
	
end
