class CreateProductVariants < ActiveRecord::Migration
  def change
    create_table :product_variants do |t|
      t.string :name
      t.has_attached_file :image
      t.integer :catalog_product_id

      t.timestamps
    end
  end
end
