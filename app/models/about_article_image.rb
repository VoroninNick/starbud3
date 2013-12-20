class AboutArticleImage < ActiveRecord::Base
  attr_accessible :about_article_id, :image, :alt_image, :description_image, :title_image

  has_attached_file :image

  belongs_to :about_article
  rails_admin do
  navigation_label 'Про нас'
  end
end
