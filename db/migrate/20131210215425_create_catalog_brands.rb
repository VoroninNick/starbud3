class CreateCatalogBrands < ActiveRecord::Migration
  def change
    create_table :catalog_brands do |t|
      t.string :name
      t.has_attached_file :image
      t.string :country
      t.integer :catalog_id

      t.timestamps
    end
  end
end
