class CreateArticleAbouts < ActiveRecord::Migration
  def change
    create_table :article_abouts do |t|
      t.text :main_article_about_us

      t.timestamps
    end
  end
end
