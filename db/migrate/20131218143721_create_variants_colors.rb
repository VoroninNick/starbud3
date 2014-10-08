class CreateVariantsColors < ActiveRecord::Migration
  def change
    create_table :variants_colors do |t|
      t.integer :dor_id
      t.integer :dor_variant_id
      t.has_attached_file :image
      t.string :alt_image
      t.string :description_image
      t.string :title_image

      t.timestamps
    end
  end
end
