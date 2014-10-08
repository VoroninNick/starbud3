class AboutArticleImage < ActiveRecord::Base
  attr_accessible :about_article_id, :image, :alt_image, :description_image, :title_image

  has_attached_file :image, styles:{
      thumb: "400x400>", large: "1000x1000>"
  },url:'/assets/images/about_us/certeficate/:id/image_:style.:extension',
                    path:':rails_root/public:url'

  belongs_to :about_article
  rails_admin do
    navigation_label 'Про нас'
    label 'Сертифікат'
    label_plural 'Сертифікати'

    list do
      field :image
      field :alt_image
      #field :description_image
      field :title_image
    end

    edit do
      field :image, :paperclip do
        label 'Зображення'
        help 'Розмір зображенн, якщо вертикальне то висота - 1000px, а якщо горизонтальне то ширина - 1000px.'
      end
      field :alt_image
      #field :description_image
      field :title_image
    end
  end
end
