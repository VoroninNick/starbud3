class CreateDPlinthBrands < ActiveRecord::Migration
  def change
    create_table :d_plinth_brands do |t|
      t.string :name
      t.string :slug
      t.has_attached_file :image
      t.text :description

      t.timestamps
    end
  end
end
