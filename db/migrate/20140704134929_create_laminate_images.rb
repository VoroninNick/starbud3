class CreateLaminateImages < ActiveRecord::Migration
  def change
    create_table :laminate_images do |t|
      t.string :name
      t.has_attached_file :image
      t.has_attached_file :thumb
      t.integer :laminate_id

      t.timestamps
    end
  end
end
