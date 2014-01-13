class CreateFloorTechnicalData < ActiveRecord::Migration
  def change
    create_table :floor_technical_data do |t|
      t.string :name
      t.integer :floor_id
      t.has_attached_file :image
      t.string :alt_image
      t.string :description_image
      t.string :title_image

      t.timestamps
    end
  end
end
