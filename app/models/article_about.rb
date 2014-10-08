class ArticleAbout < ActiveRecord::Base
attr_accessible :main_article_about_us

  rails_admin do
    navigation_label 'Про нас'
    label 'Головна стаття на сторінку Про нас'
    label_plural 'Головна стаття на сторінку Про нас'

    list do

    end
    edit do
      field :main_article_about_us, :ck_editor do
        label 'Контент'
        help ''
      end
    end
  end
end
