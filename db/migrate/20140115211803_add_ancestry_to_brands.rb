class AddAncestryToBrands < ActiveRecord::Migration
  def change
    def self.up
      add_column :brands, :ancestry, :string
      add_index :brands, :ancestry
    end

    def self.down
      remove_index :brands, :ancestry
      remove_column :brands, :ancestry
    end
  end
end
