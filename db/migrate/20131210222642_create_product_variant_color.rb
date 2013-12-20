class CreateProductVariantColor < ActiveRecord::Migration
  def change
    create_table :product_variant_colors do |t|
      t.string :name
      t.has_attached_file :image
      t.integer :product_variant_id

      t.timestamps
    end
  end
end
