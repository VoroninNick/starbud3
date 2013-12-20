class AboutArticle < ActiveRecord::Base
  attr_accessible :content, :name

  has_many :about_article_images
  attr_accessible :about_article_images

  #accepts_nested_attributes_for :about_article_images#, :allow_destroy => true
  accepts_nested_attributes_for :about_article_images, :allow_destroy => true
  #attr_accessible :about_article_images_attributes#, :allow_destroy => true



  rails_admin do
    navigation_label 'Про нас'
    label 'Стаття на сторінку про нас'
    label_plural 'Статті на сторінку про нас'

    list do
      field :content
      field :name

    end
    edit do
      field :name
      field :content, :ck_editor do
      end
      field :about_article_images
    end
  end
end
