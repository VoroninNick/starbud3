class CreateMainCatalogs < ActiveRecord::Migration
  def change
    create_table :main_catalogs do |t|
      t.string :name
      t.has_attached_file :image

      t.timestamps
    end
  end
end
