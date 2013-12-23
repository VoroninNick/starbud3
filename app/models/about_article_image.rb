class AboutArticleImage < ActiveRecord::Base
  attr_accessible :about_article_id, :image, :alt_image, :description_image, :title_image

  has_attached_file :image

  belongs_to :about_article
  rails_admin do
    navigation_label 'Про нас'
    label 'Фотографії для статті'
    label_plural 'Фотографії для статті'

    list do
      field :image
      field :alt_image
      field :description_image
      field :title_image
    end

    edit do
      field :image, :paperclip do
        label 'Image'
      end
      field :alt_image
      field :description_image
      field :title_image
    end
  end
end
