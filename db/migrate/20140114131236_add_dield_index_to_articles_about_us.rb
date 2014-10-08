class AddDieldIndexToArticlesAboutUs < ActiveRecord::Migration
  def change
    add_column :about_articles, :index_article, :integer
  end
end
