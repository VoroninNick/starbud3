class CreateSeoDynamics < ActiveRecord::Migration
  def change
    create_table :seo_dynamics do |t|
      t.text :meta_title
      t.text :meta_keywords
      t.text :meta_descriptions

      t.integer :door_id
      t.integer :floor_id
      t.integer :int_ext_id
      t.integer :exterior_id
      t.integer :related_product_id

      t.integer :collection_id
      t.integer :brand_id
      t.integer :sub_catalog_id

      t.integer :publication_id
      t.integer :interest_news_id

      t.timestamps
    end
  end
end
