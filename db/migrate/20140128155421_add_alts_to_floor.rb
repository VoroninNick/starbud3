class AddAltsToFloor < ActiveRecord::Migration
  def change
    add_column :floors, :alt_inter, :string
    add_column :floors, :title_inter, :string
    add_column :floors, :desc_inter, :text

    add_column :floors, :alt_struct, :string
    add_column :floors, :title_struct, :string
    add_column :floors, :desc_struct, :text

    add_column :floors, :alt_per, :string
    add_column :floors, :title_per, :string
    add_column :floors, :desc_per, :text

  end
end
