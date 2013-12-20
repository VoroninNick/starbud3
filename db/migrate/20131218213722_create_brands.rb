class CreateBrands < ActiveRecord::Migration
  def change
    create_table :brands do |t|
      t.string :name
      t.has_attached_file :image
      t.string :country
      t.integer :sub_catalog_id
      t.string :brand_url

      t.timestamps
    end
  end
end
