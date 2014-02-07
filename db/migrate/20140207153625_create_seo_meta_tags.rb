class CreateSeoMetaTags < ActiveRecord::Migration
  def change
    create_table :seo_meta_tags do |t|
      t.text :index_title
      t.text :index_keywords
      t.text :index_descriptions

      t.text :about_us_title
      t.text :about_us_keywords
      t.text :about_us_descriptions

      t.text :promotion_title
      t.text :promotion_keywords
      t.text :promotion_descriptions

      t.text :contacts_title
      t.text :contacts_keywords
      t.text :contacts_descriptions

      t.text :terms_of_used_title
      t.text :terms_of_used_keywords
      t.text :terms_of_used_descriptions

      t.text :site_map_title
      t.text :site_map_keywords
      t.text :site_map_descriptions

      t.text :publication_title
      t.text :publication_keywords
      t.text :publication_descriptions

      t.timestamps
    end
  end
end
