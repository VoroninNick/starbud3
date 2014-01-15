class CreateRelatedProducts < ActiveRecord::Migration
  def change
    create_table :related_products do |t|
      t.string :name
      t.integer :code_product
      t.has_attached_file :image_interior
      t.has_attached_file :image_structure
      t.integer :action_id
      t.integer :collection_id
      t.integer :brand_id
      t.integer :sub_catalog_id

      t.timestamps
    end
  end
end
