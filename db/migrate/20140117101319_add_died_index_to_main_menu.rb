class AddDiedIndexToMainMenu < ActiveRecord::Migration
  def change
    add_column :main_catalogs, :index_main_catalog, :integer
  end
end
