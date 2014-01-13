class CreateFloors < ActiveRecord::Migration
  def change
    create_table :floors do |t|
      t.string :name
      t.has_attached_file :image_interior
      t.has_attached_file :image_structure
      t.has_attached_file :image_perspective
      t.integer :action_id
      t.integer :collection_id
      t.integer :brand_id

      t.timestamps
    end
  end
end
