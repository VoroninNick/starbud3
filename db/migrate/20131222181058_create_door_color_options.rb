class CreateDoorColorOptions < ActiveRecord::Migration
  def change
    create_table :door_color_options do |t|
      t.string :name
      t.integer :door_variants_fulfillment_options_id
      t.has_attached_file :image
      t.string :alt_image
      t.string :description_image
      t.string :title_image

      t.timestamps
    end
  end
end
