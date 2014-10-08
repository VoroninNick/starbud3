class CreateAboutArticleImages < ActiveRecord::Migration
  def change
    create_table :about_article_images do |t|
      t.integer :about_article_id
      t.has_attached_file :image
      t.string :alt_image
      t.string :description_image
      t.string :title_image

      t.timestamps
    end
  end
end
