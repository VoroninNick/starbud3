class AddIdArticleAboutUs < ActiveRecord::Migration
  def change
    add_column :about_articles, :id_article_about_us, :string
  end
end
