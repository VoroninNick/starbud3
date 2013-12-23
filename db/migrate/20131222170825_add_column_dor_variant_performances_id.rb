class AddColumnDorVariantPerformancesId < ActiveRecord::Migration
  def change
    add_column :variants_colors, :dor_variant_performances_id, :integer
  end
end
