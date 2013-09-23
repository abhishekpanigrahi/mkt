class Catalog < ActiveRecord::Base
  # attr_accessible :title, :body

  self.table_name='tbl_product'
  self.primary_key='product_id'
end
