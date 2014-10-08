class CreateCreateCatalogs < ActiveRecord::Migration
  def change
    create_table :create_catalogs do |t|
      t.string :name
      t.has_attached_file :image

      t.timestamps
    end
  end
end
