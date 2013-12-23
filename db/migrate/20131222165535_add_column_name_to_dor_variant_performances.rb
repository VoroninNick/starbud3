class AddColumnNameToDorVariantPerformances < ActiveRecord::Migration
  def change
    add_column :dor_variant_performances, :name, :string
  end
end
