class Product < ActiveRecord::Base

		has_many :invoices, dependent: :destroy
	has_many :material_products
	has_many :materials, through: :material_products
	has_many :product_categories
	has_many :categories, through: :product_categories
	belongs_to :client
	has_many :despatches, dependent: :destroy


	validates_presence_of :name, :available_stock, :dwg_no, :client_id, :unit_cost, :category_ids, :material_ids
	validates_numericality_of :available_stock, :unit_cost
end
