class CreateSubCatalogs < ActiveRecord::Migration
  def change
    create_table :sub_catalogs do |t|
      t.string :name
      t.has_attached_file :image
      t.integer :main_catalog_id

      t.timestamps
    end
  end
end
