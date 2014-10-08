class AddAncestryToSubCatalog < ActiveRecord::Migration
  def change
    def self.up
      add_column :sub_catalogs, :ancestry, :string
      add_index :sub_catalogs, :ancestry
    end

    def self.down
      remove_index :sub_catalogs, :ancestry
      remove_column :sub_catalogs, :ancestry
    end
  end
end
