class Product < ActiveRecord::Base
	
 attr_accessible :product_name, :product_brand, :product_title, :product_image, :product_price, :product_cut_price, :product_quantity, :is_available, :sold_online, :featured_product, :is_active   

 #belongs_to :catalog

  validates :product_name, :product_image, :presence=>true 
  validates :product_title, :product_brand, :product_price ,:presence => true

  self.table_name='tbl_product'
  self.primary_key='product_id'
end
