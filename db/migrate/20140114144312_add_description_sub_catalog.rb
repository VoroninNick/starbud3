class AddDescriptionSubCatalog < ActiveRecord::Migration
  def change
    add_column :sub_catalogs, :description, :text
  end
end
