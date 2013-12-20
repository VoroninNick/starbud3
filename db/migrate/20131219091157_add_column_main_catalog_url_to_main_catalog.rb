class AddColumnMainCatalogUrlToMainCatalog < ActiveRecord::Migration
  def change
    add_column :main_catalogs, :main_catalogs_url, :string
  end
end
