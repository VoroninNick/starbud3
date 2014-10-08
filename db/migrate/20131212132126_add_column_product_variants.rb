class AddColumnProductVariants < ActiveRecord::Migration
  def change
    add_column :catalog_products, :product_variants_id, :integer
  end
end
