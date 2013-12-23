class RemoteColumnDorVariantId < ActiveRecord::Migration
  def change
    remove_column :variants_colors, :dor_variant_id
  end
end
