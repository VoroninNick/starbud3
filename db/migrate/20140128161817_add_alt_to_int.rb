class AddAltToInt < ActiveRecord::Migration
  def change
    add_column :int_exts, :alt_inter, :string
    add_column :int_exts, :title_inter, :string
    add_column :int_exts, :desc_inter, :text

    add_column :int_exts, :alt_struct, :string
    add_column :int_exts, :title_struct, :string
    add_column :int_exts, :desc_struct, :text

    add_column :int_exts, :alt_per, :string
    add_column :int_exts, :title_per, :string
    add_column :int_exts, :desc_per, :text
  end
end
