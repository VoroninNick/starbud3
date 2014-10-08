class CreateDDoorCollections < ActiveRecord::Migration
  def change
    create_table :d_door_collections do |t|
      t.string :name
      t.string :slug
      t.belongs_to :d_door_brand
      t.has_attached_file :image
      t.text :description

      t.timestamps
    end
  end
end
