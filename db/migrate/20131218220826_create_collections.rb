class CreateCollections < ActiveRecord::Migration
  def change
    create_table :collections do |t|
      t.string :name
      t.has_attached_file :image
      t.text :descriptions
      t.integer :actions_label_id
      t.integer :brand_id
      t.string :collection_url

      t.timestamps
    end
  end
end
