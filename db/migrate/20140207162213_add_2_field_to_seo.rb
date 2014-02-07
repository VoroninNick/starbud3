class Add2FieldToSeo < ActiveRecord::Migration
  def change
    add_column :seo_meta_tags, :useful_video_title, :text
    add_column :seo_meta_tags, :useful_video_keyword, :text
    add_column :seo_meta_tags, :useful_video_description, :text

    add_column :seo_meta_tags, :interest_news_title, :text
    add_column :seo_meta_tags, :interest_news_keyword, :text
    add_column :seo_meta_tags, :interest_news_description, :text
  end
end
