class MainController < ApplicationController
  def index
    @title = "Головна"
    @interesting_news = InterestNews.order('updated_at desc').limit(2)
    @interest_video = VideoOnMainPage.order('updated_at desc').limit(3)
    @publication_main_page = Publication.order('updated_at desc').limit(4)
  end
  def about
    @title = "Про нас"
    @about_us = AboutArticle.order('updated_at desc')

  end
  def catalog
    @title = "Каталог"
    @main_catalog = MainCatalog.all()
    @brand = Brand.order('updated_at desc')
  end
  def actions
    @title = "Акції"
    @promotion_item = Promotion.order('updated_at desc')
    #require 'timespan'
    #time_span_from_dates = Date.diff(Promotion.first.begin_promotion, Promotion.first.end_promotion)
  end
  def publications
    @title = "Публікації"
  end

  def contacts
    @title = "Контакти"
  end
end
