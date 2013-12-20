class AddColumnSubCatalogUrlToSubCatalog < ActiveRecord::Migration
  def change
    add_column :sub_catalogs, :sub_catalog_url, :string
  end
end
