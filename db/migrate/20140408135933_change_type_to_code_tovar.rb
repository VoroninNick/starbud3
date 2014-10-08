class ChangeTypeToCodeTovar < ActiveRecord::Migration
  def change
    change_column :related_products, :code_product, :string
    change_column :int_exts, :cpde_product, :string
    change_column :exteriors, :code_product, :string
  end
end
