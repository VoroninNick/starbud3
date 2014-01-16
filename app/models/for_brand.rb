class ForBrand < ActiveRecord::Base
  belongs_to :sub_catalog, :class_name => "ForBrand"
  has_many :brands, :class_name => "ForBrand", :foreign_key => "sub_catalog_id"
end
