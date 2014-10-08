class CreatePdfCatalogs < ActiveRecord::Migration
  def change
    create_table :pdf_catalogs do |t|
      t.string :title
      t.has_attached_file :path
      t.integer :selected_catalog

      t.timestamps
    end
  end
end
