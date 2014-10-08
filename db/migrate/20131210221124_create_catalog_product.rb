class CreateCatalogProduct < ActiveRecord::Migration
  def change
    create_table :catalog_products do |t|
      t.string :name
      t.text :descriptions
      t.integer :catalog_brand_id
      t.integer :catalog_collection_id

      t.timestamps
    end
  end
end
