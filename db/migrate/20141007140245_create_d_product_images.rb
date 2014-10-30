class CreateDProductImages < ActiveRecord::Migration
  def change
    create_table :d_product_images do |t|
      t.string :title
      t.string :alt
      t.has_attached_file :image
      t.has_attached_file :thumb
      t.integer :imageable_id
      t.string :imageable_type

      t.timestamps
    end
  end
end
