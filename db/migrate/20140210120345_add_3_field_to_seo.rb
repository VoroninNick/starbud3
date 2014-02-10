class Add3FieldToSeo < ActiveRecord::Migration
  def change
    add_column :seo_meta_tags, :floor_title, :text
    add_column :seo_meta_tags, :floor_keyword, :text
    add_column :seo_meta_tags, :floor_description, :text

    add_column :seo_meta_tags, :int_ext_title, :text
    add_column :seo_meta_tags, :int_ext_keyword, :text
    add_column :seo_meta_tags, :int_ext_description, :text

    add_column :seo_meta_tags, :exterior_title, :text
    add_column :seo_meta_tags, :exterior_keyword, :text
    add_column :seo_meta_tags, :exterior_description, :text

    add_column :seo_meta_tags, :related_product_title, :text
    add_column :seo_meta_tags, :related_product_keyword, :text
    add_column :seo_meta_tags, :related_product_description, :text
  end
end
