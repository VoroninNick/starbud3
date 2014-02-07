class SeoMetaTags < ActiveRecord::Base
  attr_accessible :index_title, :index_keywords, :index_descriptions, :about_us_title, :about_us_keywords, :about_us_descriptions, :promotion_title, :promotion_keywords, :promotion_descriptions

  attr_accessible :contacts_title, :contacts_keywords, :contacts_descriptions, :terms_of_used_title, :terms_of_used_keywords, :terms_of_used_descriptions, :site_map_title, :site_map_keywords, :site_map_descriptions

  attr_accessible :publication_title, :publication_keywords, :publication_descriptions

  attr_accessible :useful_video_title, :useful_video_keyword, :useful_video_description, :interest_news_title, :interest_news_keyword, :interest_news_description


  rails_admin do

    navigation_label 'S E O'
    label 'SEO на статичні сторінки'
    label_plural 'SEO на статичні сторінки'

    list do
      field :index_title
      field :about_us_title
      field :promotion_title
      field :contacts_title
      field :terms_of_used_title
      field :site_map_title
      field :publication_title
      field :useful_video_title
      field :interest_news_title
    end
    edit do

      field :index_title do
        label "Головна"
        help "Title"
      end
      field :index_keywords do
        label "Головна"
        help "Keywords"
      end
      field :index_descriptions do
        label "Головна"
        help "Description"
      end

      field :about_us_title do
        label "Про_нас"
        help "Title"
      end
      field  :about_us_keywords do
        label "Про_нас"
        help "Keywords"
      end
      field :about_us_descriptions do
        label "Про_нас"
        help "Description"
      end

      field :promotion_title do
        label "Акції"
        help "Title"
      end
      field  :promotion_keywords do
        label "Акції"
        help "Keywords"
      end
      field  :promotion_descriptions do
        label "Акції"
        help "Description"
      end

      field :contacts_title do
        label "Контакти"
        help "Title"
      end
      field :contacts_keywords do
        label "Контакти"
        help "Keywords"
      end
      field :contacts_descriptions do
        label "Контакти"
        help "Description"
      end

      field :terms_of_used_title do
        label "Правила використання"
        help "Title"
      end
      field :terms_of_used_keywords do
        label "Правила використання"
        help "Keywords"
      end
      field :terms_of_used_descriptions do
        label "Правила використання"
        help "Description"
      end

      field :site_map_title do
        label "Карта сайту"
        help "Title"
      end
      field  :site_map_keywords do
        label "Карта сайту"
        help "Keywords"
      end
      field  :site_map_descriptions do
        label "Карта сайту"
        help "Description"
      end

      field :publication_title do
        label "Корисні статті"
        help "Title"
      end
      field :publication_keywords do
        label "Корисні статті"
        help "Keywords"
      end
      field :publication_descriptions do
        label "Корисні статті"
        help "Description"
      end

      field :useful_video_title do
        label "Цікаві відео"
        help "Title"
      end
      field :useful_video_keyword do
        label "Цікаві відео"
        help "Keywords"
      end
      field :useful_video_description do
        label "Цікаві відео"
        help "Description"
      end

      field :interest_news_title do
        label "Свіжі новини"
        help "Title"
      end
      field :interest_news_keyword do
        label "Свіжі новини"
        help "Keywords"
      end
      field :interest_news_description do
        label "Свіжі новини"
        help "Description"
      end

    end
  end

end
