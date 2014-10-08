class CreateColorWallImages < ActiveRecord::Migration
  def change
    create_table :color_wall_images do |t|
      t.string :name
      t.has_attached_file :image
      t.has_attached_file :thumb
      t.integer :color_wall_id

      t.timestamps
    end
  end
end
