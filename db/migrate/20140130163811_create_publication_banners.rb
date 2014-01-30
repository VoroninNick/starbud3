class CreatePublicationBanners < ActiveRecord::Migration
  def change
    create_table :publication_banners do |t|
      t.string :title
      t.has_attached_file :image
      t.text :short_description
      t.text :description
      t.integer :index_sorting
      t.string :link

      t.timestamps
    end
  end
end
