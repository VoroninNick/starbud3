class SeoDynamic < ActiveRecord::Base
  attr_accessible :meta_title, :meta_keywords, :meta_descriptions

  attr_accessible :door_id

  attr_accessible :collection_id, :brand_id, :sub_catalog_id

  attr_accessible :publication_id, :interest_news_id

  belongs_to :door

  belongs_to :collection
  belongs_to :brand
  belongs_to :sub_catalog

  belongs_to :publication
  belongs_to :interest_news

  rails_admin do
    visible false
    navigation_label 'S E O'
    label 'SEO на динамічні сторінки'
    label_plural 'SEO на динамічні сторінки'
    #accepts_nested_attributes_for :door
    nested do
      field :meta_title
      field :meta_keywords
      field :meta_descriptions
    end
  end
end
