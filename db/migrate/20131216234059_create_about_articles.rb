class CreateAboutArticles < ActiveRecord::Migration
  def change
    create_table :about_articles do |t|
      t.text :content
      t.string :name

      t.timestamps
    end
  end
end
