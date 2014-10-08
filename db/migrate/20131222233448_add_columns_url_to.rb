class AddColumnsUrlTo < ActiveRecord::Migration
  def change
    add_column :doors, :door_url, :string
    add_column :main_catalogs, :main_catalog_url, :string
  end
end
