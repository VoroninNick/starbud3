class CreateColorBaseboardImages < ActiveRecord::Migration
  def change
    create_table :color_baseboard_images do |t|
      t.string :name
      t.has_attached_file :image
      t.has_attached_file :thumb
      t.integer :color_baseboard_id

      t.timestamps
    end
  end
end
