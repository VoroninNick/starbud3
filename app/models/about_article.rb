class AboutArticle < ActiveRecord::Base
  attr_accessible :content, :name, :index_article

  has_many :about_article_images

  accepts_nested_attributes_for :about_article_images#, :allow_destroy => true
  attr_accessible :about_article_images_attributes#, :allow_destroy => true

  attr_accessible :id_article_about_us

  before_validation :id_article_about_us
  def generate_id_article_about_us
    self.id_article_about_us ||= name.parameterize
  end


  rails_admin do
    navigation_label 'Про нас'
    label 'Стаття на сторінку про нас'
    label_plural 'Статті на сторінку про нас'

    list do
      field :content
      field :name
      field :index_article

    end
    edit do
      field :name  do
        label 'Назва статті'
        help 'Введена назва статті, використовується для назв пунктів бокового меню.'
        end
      field :index_article do
        label 'Індекс позиції в меню'
        help 'Введіть будьласка порядковий номер, за яким буде відсортоване бокове меню.'
      end
      field :content, :ck_editor do
        label 'Контент'
      end
      field :about_article_images do
        label 'Сертифікати'
        help 'Це поле призначається виключно для сертифікатів.'
      end

    end
  end
end
