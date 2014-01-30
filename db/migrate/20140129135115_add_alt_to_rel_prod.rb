class AddAltToRelProd < ActiveRecord::Migration
  def change
    add_column :related_products, :alt_inter, :string
    add_column :related_products, :title_inter, :string
    add_column :related_products, :desc_inter, :text

    add_column :related_products, :alt_struct, :string
    add_column :related_products, :title_struct, :string
    add_column :related_products, :desc_struct, :text

    add_column :related_products, :alt_per, :string
    add_column :related_products, :title_per, :string
    add_column :related_products, :desc_per, :text
  end
end
