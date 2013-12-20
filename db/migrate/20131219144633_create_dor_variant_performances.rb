class CreateDorVariantPerformances < ActiveRecord::Migration
  def change
    create_table :dor_variant_performances do |t|
      t.integer :dor_id
      t.has_attached_file :image
      t.string :alt_image
      t.string :description_image
      t.string :title_image


      t.timestamps
    end
  end
end
