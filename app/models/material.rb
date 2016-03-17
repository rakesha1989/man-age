class Material < ActiveRecord::Base
	
		has_many :material_products
	has_many :products, through: :material_products
	has_many :purchase_orders, dependent: :destroy
	has_many :productions, dependent: :destroy
	has_many :despatches, dependent: :destroy

	validates_presence_of :name, :stock, :unit
	
end
