class AddColumnNameToVariantsColors < ActiveRecord::Migration
  def change
    add_column :variants_colors, :name, :string
  end
end
