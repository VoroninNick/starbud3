class CreateCatalogCollection < ActiveRecord::Migration
  def change
    create_table :catalog_collections do |t|
      t.string :name
      t.text :descriptions
      t.string :actions_label
      t.integer :catalog_brand_id

      t.timestamps
    end
  end
end
