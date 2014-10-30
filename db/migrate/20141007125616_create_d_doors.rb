class CreateDDoors < ActiveRecord::Migration
  def change
    create_table :d_doors do |t|
      t.string :name
      t.string :slug
      t.belongs_to :d_door_collection
      t.belongs_to :render_interior
      t.has_attached_file :image
      t.has_attached_file :icon
      t.boolean :public
      t.integer :index_sort

      t.timestamps
    end
  end
end
