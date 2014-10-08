class CreateForBrands < ActiveRecord::Migration
  def change
    create_table :for_brands do |t|
      t.integer :sub_catalog_id

      t.timestamps
    end
  end
end
